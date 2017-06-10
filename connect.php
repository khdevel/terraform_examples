<?php
/*
This file shoudl be stored in some S3 bucket.
Then it will be downloaded by the bootstrap.sh script.
*/
$hostname = "";
$username = "asterisk";
$password = "asterisk";
$dbname   = "asterisk";

//connection to the database
$dbhandle = mysql_connect($hostname, $username, $password) or die("Unable to connect to MySQL");
echo "Connected to MySQL using username - $username, password - $password, host - $hostname<br>";
$selected = mysql_select_db("$dbname",$dbhandle) or die("Unable to connect to MySQL DB - check the database name and try again.");
?>
