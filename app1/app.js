const express = require('express');
const mysql = require('mysql2');

const app = express();

const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME
});

app.get('/', (req, res) => {
  db.query('SELECT * FROM users LIMIT 5', (err, results) => {
    if (err) {
      return res.status(500).send(err.message);
    }

    res.json({
      app: 'NodeJS App',
      data: results
    });
  });
});

app.listen(3000, () => {
  console.log('Server berjalan di port 3000');
});
