<?php 
require_once( 'connect.php' );

if( $_GET ) {
	$id_val = $_GET['id_val'];
	$type_val = $_GET['type_val'];

	$sql = "delete from $type_val where id=?";
	$stmt = $database->stmt_init();
	$stmt->prepare( $sql );
	$stmt->bind_param( 'i', $id_val );
	$stmt->execute();

	header( "location: read.php?type_val=$type_val" );
}
?>