const express = require('express');
const db = require('../config/db');
const authMiddleware = require('../middleware/auth');

const router = express.Router();


router.get('/', authMiddleware, async (req, res) => {
    try {
        const result = await db.query(
            'SELECT * FROM pricelists ORDER BY article_no'
        );
        res.json(result.rows);
    } catch (error) {
        res.status(500).json({ message: 'Server error' });
    }
});

router.patch('/:id', authMiddleware, async (req, res) => {
    try {
        const { id } = req.params;
        const updates = req.body;

        const keys = Object.keys(updates);
        const values = Object.values(updates);

        const setClause = keys.map((key, i) => `${key} = $${i + 1}`).join(', ');

        const result = await db.query(
            `UPDATE pricelists SET ${setClause}, updated_at = NOW() 
             WHERE article_no = $${keys.length + 1} RETURNING *`,
            [...values, id]
        );

        res.json(result.rows[0]);
    } catch (error) {
        res.status(500).json({ message: 'Server error' });
    }
});

module.exports = router;
