const express = require('express');
const router = express.Router();

// Example route
router.get('/hello', (req, res) => {
    res.send('Hello from the /hello route');
});

module.exports = router;
