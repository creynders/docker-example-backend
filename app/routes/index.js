var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express', envName: process.env.NODE_ENV || 'none' });
});

module.exports = router;
