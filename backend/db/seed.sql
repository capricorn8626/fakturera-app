-- Seed data for Fakturera App
-- Run this after schema.sql

-- Insert default user (password: "password123" - bcrypt hashed)
INSERT INTO users (email, password_hash, name) VALUES 
('admin@example.com', '$2a$10$rQnM1v1xZg5Y5Y5Y5Y5Y5OvJ5F5F5F5F5F5F5F5F5F5F5F5F5F5F', 'Admin User');

-- Insert Swedish translations
INSERT INTO translations (key, lang, value) VALUES
-- Login page
('login.title', 'sv', 'Logga in'),
('login.email', 'sv', 'E-post'),
('login.password', 'sv', 'Lösenord'),
('login.button', 'sv', 'Logga in'),
('login.forgotPassword', 'sv', 'Glömt lösenord?'),
('login.rememberMe', 'sv', 'Kom ihåg mig'),
('login.newCustomer', 'sv', 'Ny kund?'),
('login.createAccount', 'sv', 'Skapa konto'),
('login.or', 'sv', 'eller'),
-- Menu
('menu.home', 'sv', 'Hem'),
('menu.features', 'sv', 'Funktioner'),
('menu.pricing', 'sv', 'Priser'),
('menu.contact', 'sv', 'Kontakt'),
('menu.login', 'sv', 'Logga in'),
-- Pricelist
('pricelist.title', 'sv', 'Prislista'),
('pricelist.productNumber', 'sv', 'Produktnummer'),
('pricelist.productService', 'sv', 'Produkt/Tjänst'),
('pricelist.inPrice', 'sv', 'Inpris'),
('pricelist.price', 'sv', 'Pris'),
('pricelist.unit', 'sv', 'Enhet'),
('pricelist.inStock', 'sv', 'I lager'),
('pricelist.description', 'sv', 'Beskrivning'),
('pricelist.supplier', 'sv', 'Leverantör'),
('pricelist.search', 'sv', 'Sök'),
('pricelist.addNew', 'sv', 'Lägg till ny');

-- Insert English translations
INSERT INTO translations (key, lang, value) VALUES
-- Login page
('login.title', 'en', 'Log in'),
('login.email', 'en', 'Email'),
('login.password', 'en', 'Password'),
('login.button', 'en', 'Log in'),
('login.forgotPassword', 'en', 'Forgot password?'),
('login.rememberMe', 'en', 'Remember me'),
('login.newCustomer', 'en', 'New customer?'),
('login.createAccount', 'en', 'Create account'),
('login.or', 'en', 'or'),
-- Menu
('menu.home', 'en', 'Home'),
('menu.features', 'en', 'Features'),
('menu.pricing', 'en', 'Pricing'),
('menu.contact', 'en', 'Contact'),
('menu.login', 'en', 'Login'),
-- Pricelist
('pricelist.title', 'en', 'Price List'),
('pricelist.productNumber', 'en', 'Product Number'),
('pricelist.productService', 'en', 'Product/Service'),
('pricelist.inPrice', 'en', 'In Price'),
('pricelist.price', 'en', 'Price'),
('pricelist.unit', 'en', 'Unit'),
('pricelist.inStock', 'en', 'In Stock'),
('pricelist.description', 'en', 'Description'),
('pricelist.supplier', 'en', 'Supplier'),
('pricelist.search', 'en', 'Search'),
('pricelist.addNew', 'en', 'Add New');

-- Insert 20+ sample products
INSERT INTO products (user_id, product_number, product_name, in_price, price, unit, in_stock, description, supplier) VALUES
(1, 'PROD-001', 'Office Chair Deluxe', 150.00, 299.00, 'st', 25, 'Ergonomic office chair with lumbar support', 'IKEA'),
(1, 'PROD-002', 'Standing Desk 160cm', 250.00, 499.00, 'st', 12, 'Height adjustable standing desk', 'FlexiSpot'),
(1, 'PROD-003', 'Monitor 27" 4K', 200.00, 399.00, 'st', 30, 'Ultra HD monitor with USB-C', 'Samsung'),
(1, 'PROD-004', 'Wireless Keyboard', 35.00, 79.00, 'st', 100, 'Slim wireless keyboard', 'Logitech'),
(1, 'PROD-005', 'Wireless Mouse', 25.00, 59.00, 'st', 150, 'Ergonomic wireless mouse', 'Logitech'),
(1, 'PROD-006', 'USB-C Hub 7-in-1', 20.00, 49.00, 'st', 75, 'Multi-port USB-C adapter', 'Anker'),
(1, 'PROD-007', 'Webcam HD 1080p', 40.00, 89.00, 'st', 45, 'HD webcam with microphone', 'Logitech'),
(1, 'PROD-008', 'Headset Wireless', 80.00, 179.00, 'st', 35, 'Noise-cancelling wireless headset', 'Sony'),
(1, 'PROD-009', 'Laptop Stand', 15.00, 39.00, 'st', 60, 'Aluminum laptop stand', 'Rain Design'),
(1, 'PROD-010', 'Cable Management Kit', 8.00, 19.00, 'st', 200, 'Desk cable organizer set', 'Generic'),
(1, 'PROD-011', 'Desk Lamp LED', 25.00, 59.00, 'st', 40, 'Adjustable LED desk lamp', 'BenQ'),
(1, 'PROD-012', 'Monitor Arm', 30.00, 79.00, 'st', 25, 'Single monitor arm mount', 'AmazonBasics'),
(1, 'PROD-013', 'Footrest Ergonomic', 20.00, 45.00, 'st', 30, 'Adjustable footrest', 'Fellowes'),
(1, 'PROD-014', 'Whiteboard 90x60', 35.00, 79.00, 'st', 15, 'Magnetic whiteboard', 'Quartet'),
(1, 'PROD-015', 'Office Plant Pot', 5.00, 15.00, 'st', 100, 'Ceramic plant pot', 'IKEA'),
(1, 'PROD-016', 'Notebook A4 Premium', 3.00, 9.00, 'st', 500, 'Hardcover lined notebook', 'Moleskine'),
(1, 'PROD-017', 'Pen Set Executive', 10.00, 29.00, 'st', 80, 'Premium pen set', 'Parker'),
(1, 'PROD-018', 'Desk Organizer', 12.00, 29.00, 'st', 45, 'Wooden desk organizer', 'Generic'),
(1, 'PROD-019', 'Printer Paper A4', 15.00, 35.00, 'box', 200, '500 sheets per box', 'HP'),
(1, 'PROD-020', 'Stapler Heavy Duty', 8.00, 19.00, 'st', 60, 'Heavy duty stapler', 'Swingline'),
(1, 'PROD-021', 'Filing Cabinet 3-Drawer', 120.00, 249.00, 'st', 10, 'Metal filing cabinet', 'HON'),
(1, 'PROD-022', 'Shredder Cross-Cut', 50.00, 119.00, 'st', 15, 'Cross-cut paper shredder', 'Fellowes'),
(1, 'PROD-023', 'Extension Cord 3m', 10.00, 25.00, 'st', 100, '6-outlet power strip', 'Belkin'),
(1, 'PROD-024', 'Air Purifier Small', 45.00, 99.00, 'st', 20, 'HEPA air purifier', 'Levoit'),
(1, 'PROD-025', 'Coffee Mug Thermal', 12.00, 29.00, 'st', 75, 'Insulated travel mug', 'Yeti');
