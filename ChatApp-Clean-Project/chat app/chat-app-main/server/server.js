const express = require('express');
const cors = require('cors');
const bodyParser = require('body-parser');
const connectDb = require('./config/database');
const router = require('./routes');
require('dotenv').config();


const app = express();
const port = process.env.PORT || 8000;



const corsOption = {
    origin: process.env.FRONTEND_URL ? [process.env.FRONTEND_URL, "https://avishjain9.github.io"] : true,
    credentials: true
};

connectDb();

//middleware
app.use(cors(corsOption));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));

app.get('/health', (req, res) => res.json({ status: 'ok', service: 'Chat App API' }));
app.get('/', (req, res) => res.json({ status: 'ok', service: 'Chat App API' }));

app.use('/api',router);

app.listen(port, '0.0.0.0', () => {
    console.log(`Server running on port ${port}`);
});