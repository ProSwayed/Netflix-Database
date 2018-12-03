<?php 
require_once( 'connect.php' );

$database_val = $databasename;

if( $_REQUEST ) {
	if( isSet( $_REQUEST['database_val'] ) ) {
		$database_val = $_REQUEST['database_val'];
		select_database( $database, $database_val );
	}
}

if( $_GET ) {
	$id_val = $_GET['id_val'];
	$type_val = reduce_escape_strings( $database, $_GET['type_val'] );

	$sql = "delete from $type_val where id=?";
	$stmt = $database->stmt_init();
	$stmt->prepare( $sql );
	$stmt->bind_param( 'i', $id_val );
	$stmt->execute();

	header( "location: read.php?type_val=$type_val&database_val=$database_val" );
}
?>
