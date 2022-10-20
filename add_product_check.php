<?php

// connect with database
$host = 'localhost';        // database server name
$user = 'khan372_admin';      // your database username
$pswd = 'khan372_test';      // your database password
$dbName = 'khan372_sheridan';        // database name

$conn = mysqli_connect($host, $user, $pswd, $dbName);

// if connection wasn't established
if (empty($conn))
{
    die("Connection failed: <br>" . mysqli_connect_error());
}



// read the values from the text fields
$productName = $_REQUEST['productName'];
$productPrice = $_REQUEST['productPrice'];



// query to insert into table tbl_products
$query="INSERT INTO `product`(`product_name`, `product_price`) VALUES('$productName',$productPrice)";

// execute the query
$result = mysqli_query($conn, $query);

// check if 1 record was added
if ($result == 1)
{
    // redirect back to add-product.php page, along with the query string 'result'
    header("location:add_product.php?result=success");
} else
{
    header("location:add_product.php?result=fail");
}
?>
