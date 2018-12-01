<?php 
require_once( 'connect.php' );

if( $_GET ) {
	$type_val = $_GET['type_val'];

	$stmt = $database->stmt_init();
	$stmt->prepare( "select * from $type_val" );
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
		<a href="create.php?type_val=<?php echo $type_val; ?>">Create <?php echo to_lower( remove_underscore( $type_val ) ); ?></a>
		<table>
			<thead>
				<tr>
					<?php foreach( $columns as $col ) { if( field_should_be_visible( $col ) && $col != 'Salt' ) { ?>
						<td><?php echo add_space_before_capital( $col ); ?></td>
					<?php } } ?>
					<th colspan="3">Action</th>
				</tr>
			</thead>
			<?php while( $row = $results->fetch_array() ) { ?>
				<tr>
					<?php foreach( $columns as $col ) { if( field_should_be_visible( $col ) && $col != 'Salt' ) { ?>
						<td><?php echo $row[$col]; ?></td>
					<?php } } ?>
					<td><a href="read_single.php?id_val=<?php echo $row['id']; ?>&type_val=<?php echo $type_val; ?>">Read</a></td>
					<td><a href="update.php?id_val=<?php echo $row['id']; ?>&type_val=<?php echo $type_val; ?>">Edit</a></td>
					<td><a href="delete.php?id_val=<?php echo $row['id']; ?>&type_val=<?php echo $type_val; ?>">Delete</a></td>
				</tr>
			<?php } ?>
		</table>
		<a href="index.php">Go Home</a>
	</body>
</html>