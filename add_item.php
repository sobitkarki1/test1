<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "itemdb";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . mysqli_connect_error());
}
 if(isset($_POST['submit']))
 {
    $name = $_POST['name'];
    $description = $_POST['description'];
    $image = $_FILES['image']['tmp_name']; // Temporary file path of the uploaded image

    // Validate uploaded file type
    if ($imageType !== 'image/jpeg') {
        die("Only JPEG images are allowed.");
    }

    $imgData = addslashes(file_get_contents($image));
    $minimum_price = $_POST['min_price'];

    $sql_query = "INSERT INTO item_details (name,description,image,minimum_price) VALUES ('$name','$description','$imgData','$minimum_price')"; 

    if (mysqli_query($conn,$sql_query))
    {
        echo"New Details Entry inserted successfully !";
    }
    else{
    echo "Error: " . $sql . "" . mysqli_error($conn);
    }
    mysqli_close($conn);
 }
 ?>
