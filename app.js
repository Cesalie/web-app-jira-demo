const express = require('express');
const app = express();

// Home route
app.get('/', (req, res) => {
    res.send("Home Page");
});

// New features route
app.get('/new', (req, res) => {
    res.send("New features Welcome");
});

// Start the server
app.listen(3000, () => {
    console.log("Server running on ports1 3000");
});

