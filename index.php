<?php

if(isset($_POST['name'])){
    $server = "localhost";
    $username = "root";
    $password = "";

    $con = mysqli_connect($server , $username , $password);

    if(!$con){
        die(" Connection to this database are failed due to".mysqli_connect_error());
    }
    // echo "Sucess Connectin to the db";

    $name = $_POST['name'];
    $gender = $_POST['gender'];
    $age = $_POST['age'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $desc = $_POST['desc'];
    
    $sql = " INSERT INTO `trip`.`trip` (`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('$name ', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());";
    // echo $sql;

    if($con->query($sql) == true){
        // echo "Sucessfully inserted";

    }
    else{
        echo "error:$sql <br> $con->error" ;
    }

    $con->close();
}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome To Travel form</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Mochiy+Pop+One&family=Poppins:ital,wght@1,500&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="style.css">
</head>
<body>
    <img class="bg" src="https://images.collegedunia.com/public/college_data/images/campusimage/1419224390snjb8.jpg" alt="">
    <div class="container">
        <h1>Welcome to SNJB Coe Form</h1>
        <P>Enter Your Deatails To Participation to conform details for us trip </P>
       
       
        <p class ="submitmsg ">Thanks For Submitting Form We Are Meet Soon</p>

        <form action="index.php" method="post">

            <input type="text" name="name" id="name" placeholder="Enter Your Name ">

            <input type="text" name="age" id="age" placeholder="Enter Your Age">

            <input type="text" name="gender" id="gender" placeholder="Enter Your Gender">

            <input type="text" name="email" id="email" placeholder="Ener Yur Email">

            <input type="text" name="phone" id="phone" placeholder="Enter Your Mobile No ">

            <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter Other Information "> </textarea>

            <button class="btn">SUBMIT</button>
        </form>
    </div>
    
    <script src="">index.js</script>

   
</body>
</html>