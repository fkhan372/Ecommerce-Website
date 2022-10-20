<?php
    // to avoid 'headers already sent...' warning
    ob_start();

    // start the session
    session_start();
    require_once 'config.php';

    // read the values
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];

    // SQL query to select a row based on username
    $query = "Select * from tblUsers where username = '$username';";

    // execute the query
    $result = mysqli_query($conn, $query);

    // check if a row was fetched
    if (mysqli_num_rows($result) > 0)
    {
        $row = mysqli_fetch_assoc($result);     // read the row
        $hashed_password = $row['password'];    // read the hashed password from the row

        if (password_verify($password, $hashed_password))
        {
            // create the session for the user
            $_SESSION['username'] = $username;

            // redirect to member's page
            header('location:view_product.php');
            ob_end_flush();
            die();
        }
    }

    // otherwise redirect to login page
    header('location:login.php?result=fail');
?>
