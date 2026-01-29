-- Evergreen Financial Services
-- Co-ownership Money Pool Platform Schema
-- "Genuine co-ownership for communities, families, and teams"

CREATE SCHEMA evergreen;

-- ============================================
-- CORE USER MANAGEMENT
-- ============================================

CREATE TABLE evergreen.users (
    user_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    address_line1 VARCHAR(255),
    address_line2 VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50) DEFAULT 'USA',
    kyc_verified BOOLEAN DEFAULT FALSE,
    kyc_verified_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- POOL CATEGORIES & TEMPLATES
-- ============================================

CREATE TABLE evergreen.pool_categories (
    category_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100) UNIQUE NOT NULL,
    description TEXT,
    icon VARCHAR(50),
    suggested_governance VARCHAR(50), -- 'democratic', 'admin_controlled', 'consensus'
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================================
-- MONEY POOLS (Joint Accounts)
-- ============================================

CREATE TABLE evergreen.pools (
    pool_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    category_id UUID NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    purpose TEXT,
    target_amount NUMERIC(15,2),
    current_balance NUMERIC(15,2) DEFAULT 0.00,
    currency VARCHAR(3) DEFAULT 'USD',
    governance_type VARCHAR(50) NOT NULL DEFAULT 'democratic', -- 'democratic', 'admin_controlled', 'consensus'
    withdrawal_approval_threshold INTEGER DEFAULT 1, -- number of approvals needed
    withdrawal_approval_percentage NUMERIC(5,2), -- OR percentage of members (NULL if using threshold)
    contribution_frequency VARCHAR(20), -- 'weekly', 'biweekly', 'monthly', 'quarterly', 'one_time'
    is_public BOOLEAN DEFAULT FALSE, -- discoverable by others
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES evergreen.pool_categories(category_id),
    FOREIGN KEY (created_by) REFERENCES evergreen.users(user_id)
);

-- ============================================
-- POOL MEMBERSHIP
-- ============================================

CREATE TABLE evergreen.pool_members (
    member_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pool_id UUID NOT NULL,
    user_id UUID NOT NULL,
    role VARCHAR(50) NOT NULL DEFAULT 'member', -- 'owner', 'admin', 'member', 'viewer'
    ownership_percentage NUMERIC(5,2), -- optional: weighted ownership
    contribution_amount NUMERIC(12,2), -- agreed contribution amount
    can_withdraw BOOLEAN DEFAULT TRUE,
    can_approve BOOLEAN DEFAULT TRUE,
    can_invite BOOLEAN DEFAULT FALSE,
    joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    invited_by UUID,
    status VARCHAR(20) DEFAULT 'active', -- 'active', 'suspended', 'left'
    FOREIGN KEY (pool_id) REFERENCES evergreen.pools(pool_id),
    FOREIGN KEY (user_id) REFERENCES evergreen.users(user_id),
    FOREIGN KEY (invited_by) REFERENCES evergreen.users(user_id),
    UNIQUE(pool_id, user_id)
);

-- ============================================
-- TRANSACTIONS
-- ============================================

CREATE TABLE evergreen.transactions (
    transaction_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pool_id UUID NOT NULL,
    initiated_by UUID NOT NULL,
    transaction_type VARCHAR(50) NOT NULL, -- 'contribution', 'withdrawal', 'transfer_in', 'transfer_out', 'fee', 'interest'
    amount NUMERIC(12,2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    description TEXT,
    reference_number VARCHAR(100),
    status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'approved', 'completed', 'rejected', 'cancelled'
    external_account_last4 VARCHAR(4), -- last 4 digits of external account
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    completed_at TIMESTAMP,
    FOREIGN KEY (pool_id) REFERENCES evergreen.pools(pool_id),
    FOREIGN KEY (initiated_by) REFERENCES evergreen.users(user_id)
);

-- ============================================
-- WITHDRAWAL REQUESTS & APPROVALS
-- ============================================

CREATE TABLE evergreen.withdrawal_requests (
    request_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pool_id UUID NOT NULL,
    requested_by UUID NOT NULL,
    amount NUMERIC(12,2) NOT NULL,
    reason TEXT,
    urgency VARCHAR(20) DEFAULT 'normal', -- 'low', 'normal', 'high', 'emergency'
    status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'approved', 'rejected', 'cancelled', 'completed'
    approvals_received INTEGER DEFAULT 0,
    approvals_required INTEGER NOT NULL,
    expires_at TIMESTAMP,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP,
    FOREIGN KEY (pool_id) REFERENCES evergreen.pools(pool_id),
    FOREIGN KEY (requested_by) REFERENCES evergreen.users(user_id)
);

CREATE TABLE evergreen.withdrawal_approvals (
    approval_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    request_id UUID NOT NULL,
    user_id UUID NOT NULL,
    decision VARCHAR(20) NOT NULL, -- 'approved', 'rejected', 'abstained'
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (request_id) REFERENCES evergreen.withdrawal_requests(request_id),
    FOREIGN KEY (user_id) REFERENCES evergreen.users(user_id),
    UNIQUE(request_id, user_id)
);

-- ============================================
-- SCHEDULED CONTRIBUTIONS
-- ============================================

CREATE TABLE evergreen.scheduled_contributions (
    schedule_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pool_id UUID NOT NULL,
    user_id UUID NOT NULL,
    amount NUMERIC(12,2) NOT NULL,
    frequency VARCHAR(20) NOT NULL, -- 'weekly', 'biweekly', 'monthly', 'quarterly'
    day_of_week INTEGER, -- 0-6 for weekly
    day_of_month INTEGER, -- 1-31 for monthly
    next_due_date DATE NOT NULL,
    external_account_id VARCHAR(100), -- linked bank account reference
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pool_id) REFERENCES evergreen.pools(pool_id),
    FOREIGN KEY (user_id) REFERENCES evergreen.users(user_id)
);

-- ============================================
-- INVITATIONS
-- ============================================

CREATE TABLE evergreen.invitations (
    invitation_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pool_id UUID NOT NULL,
    invited_by UUID NOT NULL,
    email VARCHAR(255) NOT NULL,
    role VARCHAR(50) DEFAULT 'member',
    suggested_contribution NUMERIC(12,2),
    personal_message TEXT,
    token VARCHAR(100) UNIQUE NOT NULL,
    status VARCHAR(20) DEFAULT 'pending', -- 'pending', 'accepted', 'declined', 'expired'
    expires_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    responded_at TIMESTAMP,
    FOREIGN KEY (pool_id) REFERENCES evergreen.pools(pool_id),
    FOREIGN KEY (invited_by) REFERENCES evergreen.users(user_id)
);

-- ============================================
-- POOL ACTIVITY LOG (Audit Trail)
-- ============================================

CREATE TABLE evergreen.activity_log (
    log_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    pool_id UUID NOT NULL,
    user_id UUID,
    action_type VARCHAR(100) NOT NULL,
    action_details JSONB,
    ip_address INET,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (pool_id) REFERENCES evergreen.pools(pool_id),
    FOREIGN KEY (user_id) REFERENCES evergreen.users(user_id)
);

-- ============================================
-- EXTERNAL LINKED ACCOUNTS
-- ============================================

CREATE TABLE evergreen.linked_accounts (
    account_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    institution_name VARCHAR(100) NOT NULL,
    account_type VARCHAR(50) NOT NULL, -- 'checking', 'savings'
    account_last4 VARCHAR(4) NOT NULL,
    routing_number_last4 VARCHAR(4),
    account_nickname VARCHAR(100),
    is_verified BOOLEAN DEFAULT FALSE,
    is_primary BOOLEAN DEFAULT FALSE,
    plaid_access_token VARCHAR(255), -- encrypted reference
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES evergreen.users(user_id)
);

-- ============================================
-- INDEXES FOR PERFORMANCE
-- ============================================

CREATE INDEX idx_pool_members_pool ON evergreen.pool_members(pool_id);
CREATE INDEX idx_pool_members_user ON evergreen.pool_members(user_id);
CREATE INDEX idx_transactions_pool ON evergreen.transactions(pool_id);
CREATE INDEX idx_transactions_user ON evergreen.transactions(initiated_by);
CREATE INDEX idx_transactions_status ON evergreen.transactions(status);
CREATE INDEX idx_withdrawal_requests_pool ON evergreen.withdrawal_requests(pool_id);
CREATE INDEX idx_withdrawal_requests_status ON evergreen.withdrawal_requests(status);
CREATE INDEX idx_scheduled_contributions_next ON evergreen.scheduled_contributions(next_due_date);
CREATE INDEX idx_activity_log_pool ON evergreen.activity_log(pool_id);
CREATE INDEX idx_invitations_token ON evergreen.invitations(token);
