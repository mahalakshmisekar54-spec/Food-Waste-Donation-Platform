-- Initial seed data for FoodWasteDonation system
-- Insert Admin User (if missing)
INSERT IGNORE INTO users (id, name, email, password, role, phone, address) 
VALUES (1, 'System Admin', 'admin@fooddonation.org', 'admin123', 'ADMIN', '9876543210', '123 HQ Central Way, Metro City');
-- Insert Donor User
INSERT IGNORE INTO users (id, name, email, password, role, phone, address) 
VALUES (2, 'Green Valley Hotel', 'donor@greenvalley.com', 'donor123', 'DONOR', '9876543211', '45 Grand Avenue, Downtown');
-- Insert Donor entity
INSERT IGNORE INTO donors (donor_id, user_id, organization_name) 
VALUES (1, 2, 'Green Valley Hospitality Group');
-- Insert NGO User
INSERT IGNORE INTO users (id, name, email, password, role, phone, address) 
VALUES (3, 'Hope Foundation', 'ngo@hopefoundation.org', 'ngo123', 'NGO', '9876543212', '89 Care Street, Midtown');
-- Insert NGO entity
INSERT IGNORE INTO ngos (ngo_id, user_id, ngo_name, verification_status) 
VALUES (1, 3, 'Hope Foundation NGO', 'VERIFIED');
-- Insert Sample Donation
INSERT IGNORE INTO donations (donation_id, food_name, food_type, quantity, expiry_time, pickup_address, status, donor_id) 
VALUES (1, 'Fresh Buffet Surplus Meals', 'Prepared Food', '25 Packets', '2026-12-31 22:00:00', '45 Grand Avenue, Downtown', 'AVAILABLE', 1);
