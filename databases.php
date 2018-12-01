<?php 
require_once( 'connect.php' );

$stmt = $database->stmt_init();
$stmt->prepare( "show databases" );
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
			<a href="index.php?database=<?php echo $row[0] ?>"><?php echo $row[0]; ?></a>
			<br />
		<?php } ?>
	</body>
</html>