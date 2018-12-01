<?php 
require_once( 'connect.php' );

$database_val = $databasename;

if( $_REQUEST ) {
	if( isSet( $_REQUEST['database_val'] ) ) {
		$database_val = $_REQUEST['database_val'];
		select_database( $database, $database_val );
	}
}

$stmt = $database->stmt_init();
$stmt->prepare( "show tables" );
$stmt->execute();
$results = $stmt->get_result();
?>

<!DOCTYPE html>
<html>
	<head>
		<title>CRUD: Create, Read, Update, Delete</title>
	</head>
	<body>
		<?php while( $row = $results->fetch_array() ) { ?>
			<a href="read.php?type_val=<?php echo $row[0]; ?>&database_val=<?php echo $database_val; ?>"><?php echo to_lower( remove_underscore( $row[0] ) ); ?></a>
			<br />
		<?php } ?>
		<br />
		<a href="databases.php">Go to databases</a>
		<br />
		<a href="index.html">Go Home</a>
	</body>
</html>