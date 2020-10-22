var express = require('express');
var router = express.Router();
var connection = require('../../config/connection');


router.get('/', function(req, res, next) {



// router.get('/adminhome', function(req, res,next) {
//   connection.query('SELECT * FROM adpay as adpay WHERE date BETWEEN "2020/09/01" AND "2020/09/31" ', function(err,results){

//     if (err) throw err;
//     console.log(results);
//     res.render('adminhome',{results:results[0].adpay});
  

//   });

//   //console.log('Working');
  
// });

// router.get('/dash', function(req, res) {
 
//   connection.query('SELECT SUM( electricty + water + salary + other )net FROM expenses WHERE month = "january" ' ,function(err,results) {

//     if (err) throw err;
//     console.log(results);
//     res.render('adminhome',{results:results[0].net});

//   });
 });



module.exports = router;
