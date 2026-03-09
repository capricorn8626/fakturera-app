-- Database Schema for Fakturera App
-- Run this in PostgreSQL after creating the database: fakturera_app

-- Users table for authentication
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Translations table for multi-language support (EN/SE)
CREATE TABLE translations (
    id SERIAL PRIMARY KEY,
    key VARCHAR(255) NOT NULL,
    lang VARCHAR(5) NOT NULL, -- 'en' or 'sv'
    value TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(key, lang)
);

-- Products table for pricelist
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    product_number VARCHAR(50),
    product_name VARCHAR(255) NOT NULL,
    in_price DECIMAL(10, 2) DEFAULT 0,
    price DECIMAL(10, 2) DEFAULT 0,
    unit VARCHAR(50) DEFAULT 'st',
    in_stock DECIMAL(10, 2) DEFAULT 0,
    description TEXT,
    supplier VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Index for faster queries
CREATE INDEX idx_products_user_id ON products(user_id);
CREATE INDEX idx_translations_lang ON translations(lang);
CREATE INDEX idx_translations_key ON translations(key);
