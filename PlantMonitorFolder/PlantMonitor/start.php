<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale= 0.1">
    <title>PlantMonitor</title>
    <meta http-equiv="refresh" content="5"> 
</head>
	<body style="background-image: url('cool-background.png');background-attachment: fixed; background-size: 100% 100%;">
		<div style="position: absolute; left: 50%; top: 50%; transform: translate(-50%, -50%); text-align: center; font-family: Arial, sans-serif;font-size: 60px;">
				<?php
					$host = "localhost"; 
					$user = "root";      
					$password = "";      
					$database = "plantsensorvalues"; 

					$con = new mysqli($host, $user, $password, $database);


					if ($con->connect_error) {
						die("Connection ERROR: " . $con->connect_error);
					}


					$sql = "SELECT * FROM datas ORDER BY Date DESC LIMIT 1"; 
					$result = $con->query($sql);


					if ($result->num_rows > 0) {

						$row = $result->fetch_assoc();
						$temperature = $row['temperature'];
						$humidity = $row['humidity'];
						$moisture = $row['moisture'];
						
						echo "<p>Date: " . htmlspecialchars($row['Date']) . "</p>";
						
						echo "";
						
						echo "<p>Temperature: " . htmlspecialchars($row['temperature']) . "°C ";
						if ($temperature >= 16 && $temperature <= 29) {
							echo "| Good Temperature</p>";
						} 
						else if ($temperature >= 30) {
							echo "| Too Hot</p>";
						} 
						else {
							echo "| Too Cold</p>";
						}
						
						
						
						echo "<p>Humidity: " . htmlspecialchars($row['humidity']) . "% ";
						if ($humidity >= 31 && $humidity <= 69) {
							echo "| Good Humidity</p>";
						} 
						else if ($humidity >= 70) {
							echo "| Too Humid</p>";
						} 
						else {
							echo "| Too Dry</p>";
						}
						
						
						echo "<p>Moisture Value: " . htmlspecialchars($row['moisture']) . "  ";
						if ($moisture >= 0 && $moisture <= 299) {
							echo "| Soil Moisture is good</p>";
						} 
						else if ($moisture >= 700 && $moisture <= 1023) {
							echo "| Soil Moisture is dry</p>";
						} 
						else {
							echo "| Requires monitoring</p>";
						}						
						
					} 
					
					else {
						echo "<p>No data found.</p>";
					}
					$con->close();
				?>
		<div>
	</body>
</html>