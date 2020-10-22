var express = require('express');
var router = express.Router();
var connection = require('../../config/connection');


const totExpenses = 'SELECT SUM( electricty + water + salary + other )net FROM expenses ';
const totIncome = 'SELECT SUM( sales + spareparts + ads) total FROM income  ';
const netprofit = 'SELECT (SELECT SUM( sales + spareparts + ads) FROM income) - (SELECT SUM( electricty + water + salary + other ) FROM expenses) as netprofit';


router.get('/', function(req, res, next) {

  connection.query(totExpenses,function(err,results){
    if (err) throw err;
    console.log(results);

    connection.query(totIncome,function(err,income){
      if (err) throw err;
      console.log(income);

      connection.query(netprofit,function(err,profit){
        if (err) throw err;
      console.log(profit);
      res.render('netprofit',{results:results[0].net, income:income[0].total, profit:profit[0].netprofit});
  });
});
});
});



  router.post('/',function(req,res){
    const exdata = {
      year:req.body.year,
      income:req.body.income,
      expenses:req.body.expenses,
      netprofit:req.body.netprofit
    };
    
  connection.query("INSERT INTO incomestat SET?", exdata, function(err,result){
      if(err) throw err;
      res.redirect('incomestat');
  
    });
  });
  

  module.exports = router;