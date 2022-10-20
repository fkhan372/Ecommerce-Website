<?php
    // connect to the database
    $host = 'localhost';                    // database server name
    $user = 'khan372_admin';                  // your database username
    $pswd = 'khan372_test';                  // your database password
    $dbName = 'khan372_sheridan';                    // database name

    $conn = mysqli_connect($host, $user, $pswd, $dbName);

    if (empty($conn))
    {
        die("Connection failed: " . mysqli_connect_error());
    }
    
?>