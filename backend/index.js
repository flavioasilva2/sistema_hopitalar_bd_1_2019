#!/usr/bin/env node

const express = require('express');
const app = express();

const pg = require('pg');
const dbClient = new pg.Client({
  connectionString: "postgresql://app:app_pass@127.0.0.1:5432/app"
})

dbClient.connect();

dbClient.query('SELECT NOW()', (err, res) => {
  console.log(err, res)
  dbClient.end()
});

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.listen(3000, function () {
  console.log('Example app listening on port 3000!');
});
