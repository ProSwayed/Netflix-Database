<?php
	$servername = "deltona.birdnest.org";
	$username = "my.USERNAME";
	$password = "PASSWORD";
	$databasename = "my_USERNAME_netflix";

	function test_sqlCode( $db, $code ) {
		if( $db->query( $code ) === TRUE )
		    echo "Code run successfully: " . $code . "<br>";
		else
		    echo "Code run unsuccessfully: "  . $code . " | Error: " . $db->error . "<br>";
	}

	$database = new mysqli( $servername, $username, $password, $databasename );
	if( $database->connect_error )
		die( "Connection failed: " . $database->connect_error );

	//$sql_dropdb = "drop database if exists " . $databasename;
	//$sql_create = "create database " . $databasename;
	//$sql_use = "use " . $databasename;

	//test_sqlCode( $database, $sql_dropdb );
	//test_sqlCode( $database, $sql_create );
	//test_sqlCode( $database, $sql_use );
?>