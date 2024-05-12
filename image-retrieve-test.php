<?php
// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "itemdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to retrieve images from the database
$sql = "SELECT * FROM item_details";
$result = $conn->query($sql);

// Display retrieved images
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $imageData = $row['image'];
        $imageType = "image/jpeg"; // mime_content_type($imageData);
        $base64Image = base64_encode($imageData); // Convert image data to base64

        //  // Display the image
        //  echo '<img src="data:' . $imageType . ';base64,' . $base64Image . '" alt="Image" width="25%"> <br><br>';

        // Output the image directly
        header("Content-type: $imageType");
        echo $imageData;
    }
} else {
    echo "No images found.";
}

// Close connection
$conn->close();
?>
