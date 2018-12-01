<?php 
require_once( 'connect.php' );

if( $_REQUEST ) {
	select_database( $database, $_REQUEST['database'] );
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
			<a href="read.php?type_val=<?php echo $row[0]; ?>"><?php echo to_lower( remove_underscore( $row[0] ) ); ?></a>
			<br />
		<?php } ?>
		<br />
		<a href="databases.php">Go to databases</a>
	</body>
</html>