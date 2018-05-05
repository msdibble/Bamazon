var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("cli-table");
require("dotenv").config();
// Creating connection to the database

var purchases = [];

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: process.env.ROOT_PASSWORD,
    database: "bamazon_db"
});

// Connecting to the database
connection.connect(function(error){
    if(error) throw error;
    displayTable();
});

// Showing the table to the customer
function displayTable() {
    var query = "SELECT Item_ID, Product_Name, Price FROM products";
    connection.query(query, function(error,result){
        if(error) throw error;
        for(var i = 0; i < result.length; i++){
            console.log("Product ID:" + result[i].Item_ID + "\n" + "|" + "Product Name:" + result[i].Product_Name + "\n" + "|" + "Price:" + result[i].Price);
        };
        customerRequest();
    });
   
};

// Customer decides which product they would like to purchase and how much
function customerRequest(){
    connection.query("SELECT * FROM products", function(error, results){
        inquirer.prompt([
            {
                name: "searchID",
                type: "input",
                message: "What is the ID number of the product you would like to purchase?"
            },
     
            {
                name: "quantity",
                type: "input",
                message: "How much of your selected product would you like to purchase?"
            }
        ]).then(function(answer){
            connection.query("SELECT * FROM products WHERE Item_ID=?")
            var IDanswer = answer.searchID; 
                console.log("ID for chosen item:" + IDanswer);
            var quantAnswer = answer.quantity;
                console.log("Amount for selected item:" + quantAnswer);
        }); 
    });  
};

// Stop the ordering
function stopOrder() {
    connection.end();
}


