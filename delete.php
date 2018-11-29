<?php 
include( 'connect.php' );

if( $_GET ) {
	$id = $_GET['id'];
	$sql = "delete from USER_ACCOUNT where id=$id";
	test_sqlCode( $database, $sql );

	header( "location: read.php" );
}
?>