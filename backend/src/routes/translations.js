const express = require('express');
const db = require('../config/db');

const router = express.Router();


router.get('/', async (req, res) => {
    try {
        const { lang } = req.query;

        let query = 'SELECT key, lang, value FROM translations';
        let params = [];

        if (lang) {
            query += ' WHERE lang = $1';
            params.push(lang);
        }

        const result = await db.query(query, params);

        const translations = {};
        result.rows.forEach((row) => {
            if (!translations[row.lang]) {
                translations[row.lang] = {};
            }
            translations[row.lang][row.key] = row.value;
        });

        res.json(translations);
    } catch (error) {
        console.error('Get translations error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

router.get('/:lang', async (req, res) => {
    try {
        const { lang } = req.params;

        const result = await db.query(
            'SELECT key, value FROM translations WHERE lang = $1',
            [lang]
        );

        const translations = {};
        result.rows.forEach((row) => {
            translations[row.key] = row.value;
        });

        res.json(translations);
    } catch (error) {
        console.error('Get translations error:', error);
        res.status(500).json({ error: 'Internal server error' });
    }
});

module.exports = router;
