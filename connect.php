<?php
	$servername = "deltona.birdnest.org";
	$username = "my.USERNAME";
	$password = "PASSWORD";
	$databasename = "my_USERNAME_netflix";

	function field_should_be_visible( $field ) {
		if( $field == 'id' || $field == 'Hash' )
			return false;
		return true;
	}

	function remove_underscore( $string ) {
		return str_replace( "_", " ", $string );
	}

	function add_space_before_capital( $string ) {
		return preg_replace( '/(?<!\ )[A-Z]/', ' $0', $string );
	}

	function to_lower( $string ) {
		return ucwords( strToLower( $string ) );
	}

	function reduce_escape_strings( $db, $string ) {
		return mysqli_real_escape_string( $db, $string );
	}

	$database = new mysqli( $servername, $username, $password, $databasename );
	if( $database->connect_error )
		die( "Connection failed: " . $database->connect_error );
?>