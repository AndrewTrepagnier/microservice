-- Evergreen Financial Services
-- Seed Data for Co-ownership Money Pool Platform
-- Demo data representing various real-world use cases

-- ============================================
-- POOL CATEGORIES
-- ============================================

INSERT INTO evergreen.pool_categories (category_id, name, description, icon, suggested_governance) VALUES
    (gen_random_uuid(), 'Community Garden', 'Shared funds for community garden maintenance, supplies, and improvements', 'seedling', 'democratic'),
    (gen_random_uuid(), 'Emergency Services', 'Fire stations, volunteer EMT groups, and emergency response teams', 'fire', 'admin_controlled'),
    (gen_random_uuid(), 'Co-Parenting', 'Divorced or separated parents managing shared child expenses', 'users', 'consensus'),
    (gen_random_uuid(), 'Elder Care', 'Families pooling resources to support grandparents or elderly relatives', 'heart', 'democratic'),
    (gen_random_uuid(), 'Sports Team', 'Youth and adult sports teams, equipment, travel, and league fees', 'trophy', 'admin_controlled'),
    (gen_random_uuid(), 'Neighborhood Association', 'HOA alternatives, block party funds, shared neighborhood improvements', 'home', 'democratic'),
    (gen_random_uuid(), 'Education Fund', 'Family education savings, tutoring co-ops, homeschool groups', 'book', 'democratic'),
    (gen_random_uuid(), 'Religious Community', 'Church groups, mission trips, community outreach programs', 'church', 'democratic'),
    (gen_random_uuid(), 'Creative Collective', 'Artist co-ops, shared studio space, equipment pooling', 'palette', 'consensus'),
    (gen_random_uuid(), 'Vacation Club', 'Friends or family saving together for group trips', 'plane', 'democratic'),
    (gen_random_uuid(), 'Pet Care', 'Multi-pet households, neighborhood pet sitting co-ops', 'paw', 'consensus'),
    (gen_random_uuid(), 'Home Renovation', 'Shared property owners, family compounds, duplex maintenance', 'hammer', 'consensus'),
    (gen_random_uuid(), 'Investment Club', 'Groups pooling capital for collective investment decisions', 'chart', 'democratic'),
    (gen_random_uuid(), 'Healthcare', 'Medical expense sharing, therapy groups, wellness programs', 'medical', 'admin_controlled'),
    (gen_random_uuid(), 'Other', 'Custom pool type for unique arrangements', 'folder', 'democratic');

-- ============================================
-- USERS (50 diverse users)
-- ============================================

INSERT INTO evergreen.users (user_id, email, phone, first_name, last_name, date_of_birth, address_line1, city, state, postal_code, kyc_verified, kyc_verified_at) VALUES
    -- Community Garden Members
    (gen_random_uuid(), 'maria.santos@email.com', '(512) 555-0101', 'Maria', 'Santos', '1978-03-15', '234 Sunflower Lane', 'Austin', 'TX', '78701', TRUE, '2025-06-01'),
    (gen_random_uuid(), 'david.chen@email.com', '(512) 555-0102', 'David', 'Chen', '1985-07-22', '567 Garden View Dr', 'Austin', 'TX', '78702', TRUE, '2025-06-02'),
    (gen_random_uuid(), 'priya.sharma@email.com', '(512) 555-0103', 'Priya', 'Sharma', '1990-11-08', '890 Bloom Street', 'Austin', 'TX', '78703', TRUE, '2025-06-03'),
    (gen_random_uuid(), 'marcus.johnson@email.com', '(512) 555-0104', 'Marcus', 'Johnson', '1972-01-30', '123 Harvest Road', 'Austin', 'TX', '78704', TRUE, '2025-06-04'),
    
    -- Volunteer Fire Department
    (gen_random_uuid(), 'chief.williams@email.com', '(802) 555-0201', 'Robert', 'Williams', '1965-09-12', '45 Main Street', 'Montpelier', 'VT', '05602', TRUE, '2025-05-15'),
    (gen_random_uuid(), 'sarah.miller@email.com', '(802) 555-0202', 'Sarah', 'Miller', '1988-04-25', '78 Oak Avenue', 'Montpelier', 'VT', '05602', TRUE, '2025-05-16'),
    (gen_random_uuid(), 'james.thompson@email.com', '(802) 555-0203', 'James', 'Thompson', '1979-12-03', '112 Elm Court', 'Montpelier', 'VT', '05602', TRUE, '2025-05-17'),
    (gen_random_uuid(), 'emily.davis@email.com', '(802) 555-0204', 'Emily', 'Davis', '1995-06-18', '234 Pine Road', 'Montpelier', 'VT', '05602', TRUE, '2025-05-18'),
    (gen_random_uuid(), 'michael.brown@email.com', '(802) 555-0205', 'Michael', 'Brown', '1982-08-09', '567 Maple Lane', 'Montpelier', 'VT', '05602', TRUE, '2025-05-19'),
    
    -- Co-Parenting Family (Martinez-Wilson)
    (gen_random_uuid(), 'carlos.martinez@email.com', '(303) 555-0301', 'Carlos', 'Martinez', '1982-05-20', '789 Aspen Way', 'Denver', 'CO', '80202', TRUE, '2025-04-10'),
    (gen_random_uuid(), 'jennifer.wilson@email.com', '(303) 555-0302', 'Jennifer', 'Wilson', '1984-10-15', '456 Mountain View', 'Denver', 'CO', '80203', TRUE, '2025-04-11'),
    
    -- Elder Care Family (Supporting Grandma Rosa)
    (gen_random_uuid(), 'anthony.rossi@email.com', '(212) 555-0401', 'Anthony', 'Rossi', '1975-02-28', '123 Brooklyn Ave', 'New York', 'NY', '11201', TRUE, '2025-03-20'),
    (gen_random_uuid(), 'lisa.rossi@email.com', '(212) 555-0402', 'Lisa', 'Rossi', '1977-07-14', '456 Queens Blvd', 'New York', 'NY', '11375', TRUE, '2025-03-21'),
    (gen_random_uuid(), 'marco.rossi@email.com', '(212) 555-0403', 'Marco', 'Rossi', '1980-11-30', '789 Staten Island', 'New York', 'NY', '10301', TRUE, '2025-03-22'),
    (gen_random_uuid(), 'gina.rossi@email.com', '(212) 555-0404', 'Gina', 'Rossi', '1983-04-05', '321 Bronx Park', 'New York', 'NY', '10458', TRUE, '2025-03-23'),
    (gen_random_uuid(), 'rosa.rossi@email.com', '(212) 555-0405', 'Rosa', 'Rossi', '1945-08-15', '654 Manhattan Ave', 'New York', 'NY', '10025', TRUE, '2025-03-24'),
    
    -- Youth Soccer Team Parents
    (gen_random_uuid(), 'coach.patterson@email.com', '(404) 555-0501', 'Kevin', 'Patterson', '1980-01-12', '100 Stadium Drive', 'Atlanta', 'GA', '30301', TRUE, '2025-07-01'),
    (gen_random_uuid(), 'amanda.lee@email.com', '(404) 555-0502', 'Amanda', 'Lee', '1985-03-25', '200 Soccer Field Ln', 'Atlanta', 'GA', '30302', TRUE, '2025-07-02'),
    (gen_random_uuid(), 'brian.oconnor@email.com', '(404) 555-0503', 'Brian', 'O''Connor', '1978-09-08', '300 Goal Post Way', 'Atlanta', 'GA', '30303', TRUE, '2025-07-03'),
    (gen_random_uuid(), 'diana.washington@email.com', '(404) 555-0504', 'Diana', 'Washington', '1982-06-17', '400 Midfielder Court', 'Atlanta', 'GA', '30304', TRUE, '2025-07-04'),
    (gen_random_uuid(), 'eric.nguyen@email.com', '(404) 555-0505', 'Eric', 'Nguyen', '1979-11-29', '500 Striker Street', 'Atlanta', 'GA', '30305', TRUE, '2025-07-05'),
    (gen_random_uuid(), 'fatima.hassan@email.com', '(404) 555-0506', 'Fatima', 'Hassan', '1986-02-14', '600 Keeper Lane', 'Atlanta', 'GA', '30306', TRUE, '2025-07-06'),
    (gen_random_uuid(), 'greg.taylor@email.com', '(404) 555-0507', 'Greg', 'Taylor', '1981-08-03', '700 Defense Drive', 'Atlanta', 'GA', '30307', TRUE, '2025-07-07'),
    (gen_random_uuid(), 'helen.park@email.com', '(404) 555-0508', 'Helen', 'Park', '1984-12-21', '800 Penalty Box Rd', 'Atlanta', 'GA', '30308', TRUE, '2025-07-08'),
    
    -- Neighborhood Block Association
    (gen_random_uuid(), 'susan.wright@email.com', '(206) 555-0601', 'Susan', 'Wright', '1970-04-10', '101 Cedar Street', 'Seattle', 'WA', '98101', TRUE, '2025-02-15'),
    (gen_random_uuid(), 'tom.anderson@email.com', '(206) 555-0602', 'Tom', 'Anderson', '1968-07-23', '103 Cedar Street', 'Seattle', 'WA', '98101', TRUE, '2025-02-16'),
    (gen_random_uuid(), 'rachel.kim@email.com', '(206) 555-0603', 'Rachel', 'Kim', '1992-01-05', '105 Cedar Street', 'Seattle', 'WA', '98101', TRUE, '2025-02-17'),
    (gen_random_uuid(), 'omar.hassan@email.com', '(206) 555-0604', 'Omar', 'Hassan', '1975-10-18', '107 Cedar Street', 'Seattle', 'WA', '98101', TRUE, '2025-02-18'),
    (gen_random_uuid(), 'nancy.clark@email.com', '(206) 555-0605', 'Nancy', 'Clark', '1960-05-30', '109 Cedar Street', 'Seattle', 'WA', '98101', TRUE, '2025-02-19'),
    (gen_random_uuid(), 'paul.garcia@email.com', '(206) 555-0606', 'Paul', 'Garcia', '1988-09-12', '111 Cedar Street', 'Seattle', 'WA', '98101', TRUE, '2025-02-20'),
    
    -- Artist Collective
    (gen_random_uuid(), 'zoe.artist@email.com', '(503) 555-0701', 'Zoe', 'Blackwood', '1991-03-08', '22 Art District Way', 'Portland', 'OR', '97201', TRUE, '2025-08-01'),
    (gen_random_uuid(), 'river.stone@email.com', '(503) 555-0702', 'River', 'Stone', '1989-06-15', '44 Gallery Row', 'Portland', 'OR', '97201', TRUE, '2025-08-02'),
    (gen_random_uuid(), 'maya.rivers@email.com', '(503) 555-0703', 'Maya', 'Rivers', '1994-12-01', '66 Studio Lane', 'Portland', 'OR', '97201', TRUE, '2025-08-03'),
    (gen_random_uuid(), 'kai.woods@email.com', '(503) 555-0704', 'Kai', 'Woods', '1987-08-22', '88 Canvas Court', 'Portland', 'OR', '97201', TRUE, '2025-08-04'),
    
    -- Vacation Club Friends
    (gen_random_uuid(), 'alex.summers@email.com', '(415) 555-0801', 'Alex', 'Summers', '1990-05-05', '100 Beach Blvd', 'San Francisco', 'CA', '94102', TRUE, '2025-01-10'),
    (gen_random_uuid(), 'jamie.winters@email.com', '(415) 555-0802', 'Jamie', 'Winters', '1991-02-20', '200 Ocean Ave', 'San Francisco', 'CA', '94103', TRUE, '2025-01-11'),
    (gen_random_uuid(), 'casey.spring@email.com', '(415) 555-0803', 'Casey', 'Spring', '1989-11-11', '300 Bay Street', 'San Francisco', 'CA', '94104', TRUE, '2025-01-12'),
    (gen_random_uuid(), 'morgan.falls@email.com', '(415) 555-0804', 'Morgan', 'Falls', '1992-07-30', '400 Pier Road', 'San Francisco', 'CA', '94105', TRUE, '2025-01-13'),
    (gen_random_uuid(), 'taylor.brooks@email.com', '(415) 555-0805', 'Taylor', 'Brooks', '1988-04-15', '500 Marina Way', 'San Francisco', 'CA', '94106', TRUE, '2025-01-14'),
    (gen_random_uuid(), 'jordan.lake@email.com', '(415) 555-0806', 'Jordan', 'Lake', '1993-09-25', '600 Harbor Lane', 'San Francisco', 'CA', '94107', TRUE, '2025-01-15'),
    
    -- Healthcare Expense Sharing
    (gen_random_uuid(), 'dr.patel@email.com', '(602) 555-0901', 'Raj', 'Patel', '1976-03-18', '100 Health Way', 'Phoenix', 'AZ', '85001', TRUE, '2025-09-01'),
    (gen_random_uuid(), 'nurse.jones@email.com', '(602) 555-0902', 'Patricia', 'Jones', '1980-08-05', '200 Wellness Ave', 'Phoenix', 'AZ', '85002', TRUE, '2025-09-02'),
    (gen_random_uuid(), 'mark.smith@email.com', '(602) 555-0903', 'Mark', 'Smith', '1973-12-22', '300 Care Lane', 'Phoenix', 'AZ', '85003', TRUE, '2025-09-03'),
    (gen_random_uuid(), 'linda.johnson@email.com', '(602) 555-0904', 'Linda', 'Johnson', '1985-06-10', '400 Medical Drive', 'Phoenix', 'AZ', '85004', TRUE, '2025-09-04'),
    
    -- Home Renovation (Duplex Co-owners)
    (gen_random_uuid(), 'frank.duplex@email.com', '(312) 555-1001', 'Frank', 'Morrison', '1971-09-28', '500 Shared Home Ln Unit A', 'Chicago', 'IL', '60601', TRUE, '2025-10-01'),
    (gen_random_uuid(), 'grace.duplex@email.com', '(312) 555-1002', 'Grace', 'Chen', '1979-02-14', '500 Shared Home Ln Unit B', 'Chicago', 'IL', '60601', TRUE, '2025-10-02'),
    
    -- Additional diverse users
    (gen_random_uuid(), 'yuki.tanaka@email.com', '(808) 555-1101', 'Yuki', 'Tanaka', '1986-10-10', '10 Aloha Street', 'Honolulu', 'HI', '96801', TRUE, '2025-11-01'),
    (gen_random_uuid(), 'sofia.rodriguez@email.com', '(305) 555-1102', 'Sofia', 'Rodriguez', '1994-01-25', '20 Calle Ocho', 'Miami', 'FL', '33101', TRUE, '2025-11-02'),
    (gen_random_uuid(), 'aiden.murphy@email.com', '(617) 555-1103', 'Aiden', 'Murphy', '1983-05-17', '30 Fenway Park', 'Boston', 'MA', '02101', TRUE, '2025-11-03'),
    (gen_random_uuid(), 'olivia.smith@email.com', '(615) 555-1104', 'Olivia', 'Smith', '1997-08-08', '40 Music Row', 'Nashville', 'TN', '37201', TRUE, '2025-11-04');

-- ============================================
-- MONEY POOLS
-- ============================================

-- We need to reference users and categories by their known values
-- Using subqueries to get the correct IDs

-- 1. Community Garden Pool
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by) 
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Community Garden'),
    'East Austin Community Garden Fund',
    'Shared fund for our 20-plot community garden on 5th Street',
    'Seeds, tools, water, mulch, shed repairs, and community events',
    5000.00,
    3247.50,
    'democratic',
    2,
    'monthly',
    TRUE,
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com');

-- 2. Volunteer Fire Department
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Emergency Services'),
    'Montpelier Volunteer Fire Co. Equipment Fund',
    'Supporting our volunteer firefighters with equipment and training',
    'New turnout gear, training certifications, equipment maintenance',
    25000.00,
    18750.00,
    'admin_controlled',
    1,
    'monthly',
    TRUE,
    (SELECT user_id FROM evergreen.users WHERE email = 'chief.williams@email.com');

-- 3. Co-Parenting Fund
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Co-Parenting'),
    'Martinez-Wilson Kids Fund',
    'Shared expenses for Emma (12) and Lucas (9)',
    'School supplies, activities, medical copays, clothing, summer camp',
    NULL,
    1842.00,
    'consensus',
    2,
    'biweekly',
    FALSE,
    (SELECT user_id FROM evergreen.users WHERE email = 'carlos.martinez@email.com');

-- 4. Elder Care - Grandma Rosa Fund
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Elder Care'),
    'Nonna Rosa Care Fund',
    'Rossi family support for Grandma Rosa',
    'In-home care assistance, medications, grocery delivery, transportation',
    NULL,
    4520.75,
    'democratic',
    2,
    'monthly',
    FALSE,
    (SELECT user_id FROM evergreen.users WHERE email = 'anthony.rossi@email.com');

-- 5. Youth Soccer Team
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Sports Team'),
    'Atlanta Thunder U12 Team Fund',
    'Atlanta Thunder youth soccer team - 2025-2026 season',
    'League fees, uniforms, equipment, tournament travel, end-of-season party',
    8000.00,
    5675.00,
    'admin_controlled',
    1,
    'monthly',
    FALSE,
    (SELECT user_id FROM evergreen.users WHERE email = 'coach.patterson@email.com');

-- 6. Neighborhood Association
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_percentage, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Neighborhood Association'),
    'Cedar Street Block Fund',
    'Our little corner of Seattle - neighbors helping neighbors',
    'Block parties, shared lawn equipment, holiday decorations, emergency supplies',
    2000.00,
    1125.00,
    'democratic',
    50.00,
    'quarterly',
    TRUE,
    (SELECT user_id FROM evergreen.users WHERE email = 'susan.wright@email.com');

-- 7. Artist Collective
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Creative Collective'),
    'Portland Arts Collective Studio Fund',
    'Shared studio space and supplies for emerging artists',
    'Rent contribution, shared supplies, gallery show fees, website hosting',
    3000.00,
    2150.00,
    'consensus',
    3,
    'monthly',
    TRUE,
    (SELECT user_id FROM evergreen.users WHERE email = 'zoe.artist@email.com');

-- 8. Vacation Club
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Vacation Club'),
    'Adventure Squad 2026 Trip Fund',
    'College friends reuniting for annual adventure trip',
    'Group trip to Costa Rica - flights, accommodations, activities',
    12000.00,
    7800.00,
    'democratic',
    4,
    'monthly',
    FALSE,
    (SELECT user_id FROM evergreen.users WHERE email = 'alex.summers@email.com');

-- 9. Healthcare Sharing
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Healthcare'),
    'Phoenix Wellness Circle',
    'Community healthcare cost sharing group',
    'Shared medical expenses, preventive care, wellness programs',
    NULL,
    8425.00,
    'admin_controlled',
    2,
    'monthly',
    FALSE,
    (SELECT user_id FROM evergreen.users WHERE email = 'dr.patel@email.com');

-- 10. Duplex Co-owners
INSERT INTO evergreen.pools (pool_id, category_id, name, description, purpose, target_amount, current_balance, governance_type, withdrawal_approval_threshold, contribution_frequency, is_public, created_by)
SELECT 
    gen_random_uuid(),
    (SELECT category_id FROM evergreen.pool_categories WHERE name = 'Home Renovation'),
    '500 Shared Home Maintenance Fund',
    'Joint fund for our shared duplex property',
    'Roof repairs, HVAC maintenance, landscaping, shared utilities',
    15000.00,
    6750.00,
    'consensus',
    2,
    'monthly',
    FALSE,
    (SELECT user_id FROM evergreen.users WHERE email = 'frank.duplex@email.com');

-- ============================================
-- POOL MEMBERSHIPS
-- ============================================

-- Community Garden Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    'owner', 50.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'david.chen@email.com'),
    'admin', 50.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'priya.sharma@email.com'),
    'member', 50.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'marcus.johnson@email.com'),
    'member', 50.00, TRUE, TRUE, FALSE;

-- Fire Department Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Montpelier Volunteer Fire Co. Equipment Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'chief.williams@email.com'),
    'owner', 100.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Montpelier Volunteer Fire Co. Equipment Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'sarah.miller@email.com'),
    'admin', 75.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Montpelier Volunteer Fire Co. Equipment Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'james.thompson@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Montpelier Volunteer Fire Co. Equipment Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'emily.davis@email.com'),
    'member', 50.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Montpelier Volunteer Fire Co. Equipment Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'michael.brown@email.com'),
    'member', 50.00, FALSE, FALSE, FALSE;

-- Co-Parenting Fund Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, ownership_percentage, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'carlos.martinez@email.com'),
    'owner', 50.00, 400.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, ownership_percentage, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'jennifer.wilson@email.com'),
    'owner', 50.00, 400.00, TRUE, TRUE, FALSE;

-- Rossi Family Elder Care Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'anthony.rossi@email.com'),
    'owner', 300.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'lisa.rossi@email.com'),
    'admin', 250.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'marco.rossi@email.com'),
    'member', 200.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'gina.rossi@email.com'),
    'member', 150.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'rosa.rossi@email.com'),
    'viewer', 0.00, FALSE, FALSE, FALSE;

-- Youth Soccer Team Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'coach.patterson@email.com'),
    'owner', 0.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'amanda.lee@email.com'),
    'admin', 75.00, FALSE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'brian.oconnor@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'diana.washington@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'eric.nguyen@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'fatima.hassan@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'greg.taylor@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'helen.park@email.com'),
    'member', 75.00, FALSE, FALSE, FALSE;

-- Neighborhood Association Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Cedar Street Block Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'susan.wright@email.com'),
    'owner', 50.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Cedar Street Block Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'tom.anderson@email.com'),
    'member', 50.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Cedar Street Block Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'rachel.kim@email.com'),
    'member', 50.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Cedar Street Block Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'omar.hassan@email.com'),
    'member', 50.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Cedar Street Block Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'nancy.clark@email.com'),
    'member', 50.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Cedar Street Block Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'paul.garcia@email.com'),
    'member', 50.00, TRUE, TRUE, FALSE;

-- Artist Collective Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Portland Arts Collective Studio Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'zoe.artist@email.com'),
    'owner', 150.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Portland Arts Collective Studio Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'river.stone@email.com'),
    'member', 150.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Portland Arts Collective Studio Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maya.rivers@email.com'),
    'member', 150.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Portland Arts Collective Studio Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'kai.woods@email.com'),
    'member', 150.00, TRUE, TRUE, TRUE;

-- Vacation Club Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'alex.summers@email.com'),
    'owner', 200.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'jamie.winters@email.com'),
    'member', 200.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'casey.spring@email.com'),
    'member', 200.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'morgan.falls@email.com'),
    'member', 200.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'taylor.brooks@email.com'),
    'member', 200.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'jordan.lake@email.com'),
    'member', 200.00, TRUE, TRUE, FALSE;

-- Healthcare Pool Members
INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Phoenix Wellness Circle'),
    (SELECT user_id FROM evergreen.users WHERE email = 'dr.patel@email.com'),
    'owner', 250.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Phoenix Wellness Circle'),
    (SELECT user_id FROM evergreen.users WHERE email = 'nurse.jones@email.com'),
    'admin', 200.00, TRUE, TRUE, TRUE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Phoenix Wellness Circle'),
    (SELECT user_id FROM evergreen.users WHERE email = 'mark.smith@email.com'),
    'member', 175.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Phoenix Wellness Circle'),
    (SELECT user_id FROM evergreen.users WHERE email = 'linda.johnson@email.com'),
    'member', 175.00, TRUE, TRUE, FALSE;

-- Duplex Co-owners
INSERT INTO evergreen.pool_members (pool_id, user_id, role, ownership_percentage, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = '500 Shared Home Maintenance Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'frank.duplex@email.com'),
    'owner', 50.00, 500.00, TRUE, TRUE, FALSE;

INSERT INTO evergreen.pool_members (pool_id, user_id, role, ownership_percentage, contribution_amount, can_withdraw, can_approve, can_invite)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = '500 Shared Home Maintenance Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'grace.duplex@email.com'),
    'owner', 50.00, 500.00, TRUE, TRUE, FALSE;

-- ============================================
-- SAMPLE TRANSACTIONS
-- ============================================

-- Community Garden Transactions
INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    'contribution', 50.00, 'Monthly contribution - January 2026', 'completed', '2026-01-01 10:00:00', '2026-01-01 10:00:00';

INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'david.chen@email.com'),
    'contribution', 50.00, 'Monthly contribution - January 2026', 'completed', '2026-01-02 09:30:00', '2026-01-02 09:30:00';

INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    'withdrawal', 125.50, 'Spring seed purchase - tomatoes, peppers, herbs', 'completed', '2026-01-15 14:00:00', '2026-01-16 10:00:00';

-- Co-Parenting Transactions
INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'carlos.martinez@email.com'),
    'contribution', 400.00, 'Biweekly contribution', 'completed', '2026-01-15 08:00:00', '2026-01-15 08:00:00';

INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'jennifer.wilson@email.com'),
    'contribution', 400.00, 'Biweekly contribution', 'completed', '2026-01-15 09:00:00', '2026-01-15 09:00:00';

INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'jennifer.wilson@email.com'),
    'withdrawal', 245.00, 'Emma''s basketball registration + equipment', 'completed', '2026-01-20 16:00:00', '2026-01-20 17:30:00';

-- Soccer Team Transactions
INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'coach.patterson@email.com'),
    'withdrawal', 1200.00, 'Spring league registration fee', 'completed', '2026-01-10 11:00:00', '2026-01-10 11:30:00';

INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'amanda.lee@email.com'),
    'contribution', 75.00, 'Monthly dues - January', 'completed', '2026-01-05 10:00:00', '2026-01-05 10:00:00';

-- Elder Care Transactions
INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'anthony.rossi@email.com'),
    'contribution', 300.00, 'Monthly contribution', 'completed', '2026-01-01 07:00:00', '2026-01-01 07:00:00';

INSERT INTO evergreen.transactions (pool_id, initiated_by, transaction_type, amount, description, status, created_at, completed_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Nonna Rosa Care Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'lisa.rossi@email.com'),
    'withdrawal', 450.00, 'In-home care aide - 2 weeks', 'completed', '2026-01-18 15:00:00', '2026-01-19 09:00:00';

-- ============================================
-- SAMPLE WITHDRAWAL REQUESTS
-- ============================================

-- Pending request for vacation fund
INSERT INTO evergreen.withdrawal_requests (pool_id, requested_by, amount, reason, urgency, status, approvals_received, approvals_required, expires_at, created_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'alex.summers@email.com'),
    2500.00,
    'Flight deposit for group booking - Costa Rica trip. Airline offering 20% discount if booked by Feb 15',
    'high',
    'pending',
    3,
    4,
    '2026-02-10 23:59:59',
    '2026-01-25 14:00:00';

-- Approved request for artist collective
INSERT INTO evergreen.withdrawal_requests (pool_id, requested_by, amount, reason, urgency, status, approvals_received, approvals_required, expires_at, created_at, resolved_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Portland Arts Collective Studio Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maya.rivers@email.com'),
    350.00,
    'Gallery exhibition entry fee - Portland First Thursday Art Walk',
    'normal',
    'approved',
    4,
    3,
    '2026-02-01 23:59:59',
    '2026-01-20 11:00:00',
    '2026-01-22 16:30:00';

-- ============================================
-- SAMPLE SCHEDULED CONTRIBUTIONS
-- ============================================

INSERT INTO evergreen.scheduled_contributions (pool_id, user_id, amount, frequency, day_of_month, next_due_date, is_active)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    50.00, 'monthly', 1, '2026-02-01', TRUE;

INSERT INTO evergreen.scheduled_contributions (pool_id, user_id, amount, frequency, day_of_month, next_due_date, is_active)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'carlos.martinez@email.com'),
    400.00, 'biweekly', NULL, '2026-02-01', TRUE;

INSERT INTO evergreen.scheduled_contributions (pool_id, user_id, amount, frequency, day_of_month, next_due_date, is_active)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'jamie.winters@email.com'),
    200.00, 'monthly', 15, '2026-02-15', TRUE;

-- ============================================
-- SAMPLE INVITATIONS
-- ============================================

INSERT INTO evergreen.invitations (pool_id, invited_by, email, role, suggested_contribution, personal_message, token, status, expires_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    'newgardener@email.com',
    'member',
    50.00,
    'Hi! We have a plot opening up in our community garden. Would love to have you join us!',
    'inv_garden_' || md5(random()::text),
    'pending',
    '2026-02-28 23:59:59';

INSERT INTO evergreen.invitations (pool_id, invited_by, email, role, suggested_contribution, personal_message, token, status, expires_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Atlanta Thunder U12 Team Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'coach.patterson@email.com'),
    'newsoccerparent@email.com',
    'member',
    75.00,
    'Welcome to the Atlanta Thunder! Please join our team fund for the upcoming season.',
    'inv_soccer_' || md5(random()::text),
    'pending',
    '2026-02-15 23:59:59';

-- ============================================
-- SAMPLE LINKED ACCOUNTS
-- ============================================

INSERT INTO evergreen.linked_accounts (user_id, institution_name, account_type, account_last4, routing_number_last4, account_nickname, is_verified, is_primary)
SELECT 
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    'Chase Bank', 'checking', '4523', '0021', 'Main Checking', TRUE, TRUE;

INSERT INTO evergreen.linked_accounts (user_id, institution_name, account_type, account_last4, routing_number_last4, account_nickname, is_verified, is_primary)
SELECT 
    (SELECT user_id FROM evergreen.users WHERE email = 'carlos.martinez@email.com'),
    'Wells Fargo', 'checking', '8891', '0102', 'Personal Account', TRUE, TRUE;

INSERT INTO evergreen.linked_accounts (user_id, institution_name, account_type, account_last4, routing_number_last4, account_nickname, is_verified, is_primary)
SELECT 
    (SELECT user_id FROM evergreen.users WHERE email = 'jennifer.wilson@email.com'),
    'Bank of America', 'checking', '3347', '0260', 'Primary Checking', TRUE, TRUE;

INSERT INTO evergreen.linked_accounts (user_id, institution_name, account_type, account_last4, routing_number_last4, account_nickname, is_verified, is_primary)
SELECT 
    (SELECT user_id FROM evergreen.users WHERE email = 'chief.williams@email.com'),
    'TD Bank', 'checking', '6672', '0311', 'Fire Dept Account', TRUE, TRUE;

INSERT INTO evergreen.linked_accounts (user_id, institution_name, account_type, account_last4, routing_number_last4, account_nickname, is_verified, is_primary)
SELECT 
    (SELECT user_id FROM evergreen.users WHERE email = 'alex.summers@email.com'),
    'Capital One', 'savings', '9901', '0550', 'Travel Savings', TRUE, TRUE;

-- ============================================
-- SAMPLE ACTIVITY LOG ENTRIES
-- ============================================

INSERT INTO evergreen.activity_log (pool_id, user_id, action_type, action_details, created_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'East Austin Community Garden Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'maria.santos@email.com'),
    'pool_created',
    '{"initial_members": 4, "governance": "democratic"}'::jsonb,
    '2025-06-15 10:00:00';

INSERT INTO evergreen.activity_log (pool_id, user_id, action_type, action_details, created_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Martinez-Wilson Kids Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'carlos.martinez@email.com'),
    'pool_created',
    '{"purpose": "co-parenting", "children": ["Emma", "Lucas"]}'::jsonb,
    '2025-04-20 14:30:00';

INSERT INTO evergreen.activity_log (pool_id, user_id, action_type, action_details, created_at)
SELECT 
    (SELECT pool_id FROM evergreen.pools WHERE name = 'Adventure Squad 2026 Trip Fund'),
    (SELECT user_id FROM evergreen.users WHERE email = 'alex.summers@email.com'),
    'withdrawal_request_created',
    '{"amount": 2500.00, "reason": "flight_deposit", "destination": "Costa Rica"}'::jsonb,
    '2026-01-25 14:00:00';
