CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE translations (
    id SERIAL PRIMARY KEY,
    key VARCHAR(255) NOT NULL,
    lang VARCHAR(5) NOT NULL, -- 'en' or 'sv'
    value TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(key, lang)
);

CREATE TABLE pricelists (
    article_no VARCHAR(20) PRIMARY KEY,
    product_service VARCHAR(255) NOT NULL,
    in_price DECIMAL(12, 2) DEFAULT 0,
    price DECIMAL(12, 2) DEFAULT 0,
    unit VARCHAR(50) DEFAULT 'st',
    in_stock DECIMAL(12, 2) DEFAULT 0,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX idx_pricelists_article_no ON pricelists(article_no);
CREATE INDEX idx_translations_lang ON translations(lang);
CREATE INDEX idx_translations_key ON translations(key);
