<?php 
require_once( 'connect.php' );

if( $_GET ) {
	$id_val = $_GET['id_val'];
	$type_val = $_GET['type_val'];

	$stmt = $database->stmt_init();
	$stmt->prepare( "select * from $type_val where id=?" );
	$stmt->bind_param( 'i', $id_val );
	$stmt->execute();
	$results = $stmt->get_result();

	$stmtcol = $database->stmt_init();
	$stmtcol->prepare( "show columns from $type_val" );
	$stmtcol->execute();
	$colresults = $stmtcol->get_result();
	while( $col = $colresults->fetch_array() )
		$columns[] = $col['Field'];
}
?>

<!DOCTYPE html>
<html>
	<head>
		<title>CRUD: Create, Read, Update, Delete</title>
	</head>
	<body>
		<table>
			<thead>
				<tr>
					<?php foreach( $columns as $col ) { ?>
						<td><?php echo add_space_before_capital( $col ); ?></td>
					<?php } ?>
				</tr>
			</thead>
			<?php while( $row = $results->fetch_array() ) { ?>
				<tr>
					<?php foreach( $columns as $col ) { ?>
						<td><?php echo $row[$col]; ?></td>
					<?php } ?>
				</tr>
			<?php } ?>
		</table>
		<a href="read.php?type_val=<?php echo $type_val; ?>">Read <?php echo to_lower( remove_underscore( $type_val ) ); ?></a>
		<br />
		<a href="index.php">Go Home</a>
	</body>
</html>