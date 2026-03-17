

INSERT INTO users (email, password_hash, name) VALUES 
('admin@example.com', '$2b$10$BxlT8rZqgvMAeybiTf6fl.yvQGGZCv9Sst60Q2kPLgOOPEebwxqpm', 'John Andre');
-- password = password123

-- Swedish
INSERT INTO translations (key, lang, value) VALUES
-- Login page
('login.title', 'sv', 'Logga in'),
('login.email', 'sv', 'Epost adress'),
('login.password', 'sv', 'Lösenord'),
('login.button', 'sv', 'Logga in'),
('login.forgotPassword', 'sv', 'Glömt lösenord?'),
('login.emailLabel', 'sv', 'Skriv in din epost adress'),
('login.passwordLabel', 'sv', 'Skriv in ditt lösenord'),
('login.register','sv','Registrera dig'),
('login.emailRequired', 'sv', 'Vänligen skriv in en giltig epost adress'),
('login.passwordRequired', 'sv', 'Detta fält kan inte vara tomt'),
('login.passwordMinLength', 'sv', 'Detta fält måste innehålla minst 4 tecken.'),
('login.userNotExist', 'sv', 'Användaren finns inte'),
-- Menu
('menu.home', 'sv', 'Hem'),
('menu.order', 'sv', 'Beställ'),
('menu.ourCustomers', 'sv', 'Våra Kunder'),
('menu.about', 'sv', 'Om oss'),
('menu.contact', 'sv', 'Kontakta oss'),
('menu.language', 'sv', 'Svenska'),
('menu.flag', 'sv', 'https://storage.123fakturere.no/public/flags/SE.png');

-- English

INSERT INTO translations (key, lang, value) VALUES
-- Login page
('login.title', 'en', 'Log in'),
('login.email', 'en', 'Email address'),
('login.password', 'en', 'Password'),
('login.button', 'en', 'Log in'),
('login.forgotPassword', 'en', 'Forgotten password?'),
('login.emailLabel', 'en', 'Enter your email address'),
('login.passwordLabel', 'en', 'Enter your password'),
('login.register','en','Register'),
('login.emailRequired', 'en', 'Please enter a valid email address'),
('login.passwordRequired', 'en', 'This field cannot be empty'),
('login.passwordMinLength', 'en', 'This field must be at least 4 characters long.'),
('login.userNotExist', 'en', 'The user does not exist'),
-- Menu
('menu.home', 'en', 'Home'),
('menu.order', 'en', 'Order'),
('menu.ourCustomers', 'en', 'Our Customers'),
('menu.about', 'en', 'About us'),
('menu.contact', 'en', 'Contact Us'),
('menu.language', 'en', 'English'),
('menu.flag', 'en', 'https://storage.123fakturere.no/public/flags/GB.png');

INSERT INTO pricelists (article_no, product_service, in_price, price, unit, in_stock, description) VALUES
('1234567890', 'Office Chair Deluxe', 150.00, 299.00, 'st', 25, 'Ergonomic office chair with lumbar support'),
('1234567891', 'Standing Desk 160cm', 250.00, 499.00, 'st', 12, 'Height adjustable standing desk'),
('1234567892', 'Monitor 27" 4K', 200.00, 399.00, 'st', 30, 'Ultra HD monitor with USB-C'),
('1234567893', 'Wireless Keyboard', 35.00, 79.00, 'st', 100, 'Slim wireless keyboard'),
('1234567894', 'Wireless Mouse', 25.00, 59.00, 'st', 150, 'Ergonomic wireless mouse'),
('1234567895', 'USB-C Hub 7-in-1', 20.00, 49.00, 'st', 75, 'Multi-port USB-C adapter'),
('1234567896', 'Webcam HD 1080p', 40.00, 89.00, 'st', 45, 'HD webcam with microphone'),
('1234567897', 'Headset Wireless', 80.00, 179.00, 'st', 35, 'Noise-cancelling wireless headset'),
('1234567898', 'Laptop Stand', 15.00, 39.00, 'st', 60, 'Aluminum laptop stand'),
('1234567899', 'Cable Management Kit', 8.00, 19.00, 'st', 200, 'Desk cable organizer set'),
('1234567900', 'Desk Lamp LED', 25.00, 59.00, 'st', 40, 'Adjustable LED desk lamp'),
('1234567901', 'Monitor Arm', 30.00, 79.00, 'st', 25, 'Single monitor arm mount'),
('1234567902', 'Footrest Ergonomic', 20.00, 45.00, 'st', 30, 'Adjustable footrest'),
('1234567903', 'Whiteboard 90x60', 35.00, 79.00, 'st', 15, 'Magnetic whiteboard'),
('1234567904', 'Office Plant Pot', 5.00, 15.00, 'st', 100, 'Ceramic plant pot'),
('1234567905', 'Notebook A4 Premium', 3.00, 9.00, 'st', 500, 'Hardcover lined notebook'),
('1234567906', 'Pen Set Executive', 10.00, 29.00, 'st', 80, 'Premium pen set'),
('1234567907', 'Desk Organizer', 12.00, 29.00, 'st', 45, 'Wooden desk organizer'),
('1234567908', 'Printer Paper A4', 15.00, 35.00, 'box', 200, '500 sheets per box'),
('1234567909', 'Stapler Heavy Duty', 8.00, 19.00, 'st', 60, 'Heavy duty stapler'),
('1234567910', 'Filing Cabinet 3-Drawer', 120.00, 249.00, 'st', 10, 'Metal filing cabinet'),
('1234567911', 'Shredder Cross-Cut', 50.00, 119.00, 'st', 15, 'Cross-cut paper shredder'),
('1234567912', 'Extension Cord 3m', 10.00, 25.00, 'st', 100, '6-outlet power strip'),
('1234567913', 'Air Purifier Small', 45.00, 99.00, 'st', 20, 'HEPA air purifier'),
('1234567914', 'Coffee Mug Thermal', 12.00, 29.00, 'st', 75, 'Insulated travel mug');
