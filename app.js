const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const PORT = process.env.PORT || 3000;

// Middleware
app.use(bodyParser.json());

// Sample in-memory database for amenities report submissions
let reports = [];

// Staff ID validation middleware
const validateStaffId = (req, res, next) => {
    const staffId = req.body.staffId;
    // Example validation (replace with actual logic)
    if (staffId && typeof staffId === 'string' && staffId.length === 6) {
        next();
    } else {
        res.status(400).json({ message: 'Invalid Staff ID. It must be a 6-character string.' });
    }
};

// Route for amenities report submission
app.post('/report', validateStaffId, (req, res) => {
    const { staffId, amenity, details } = req.body;
    const report = { staffId, amenity, details, timestamp: new Date() };
    reports.push(report);
    res.status(201).json({ message: 'Report submitted successfully', report });
});

// Route for tracking reports
app.get('/reports', (req, res) => {
    res.status(200).json(reports);
});

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
