<?php
require_once( 'connect.php' );

$database_val = $databasename;

if( $_REQUEST ) {
	$type_val = $_REQUEST['type_val'];
	$id_val = $_REQUEST['id_val'];
	if( isSet( $_REQUEST['database_val'] ) ) {
		$database_val = $_REQUEST['database_val'];
		select_database( $database, $database_val );
	}

	$stmt = $database->stmt_init();
	$stmt->prepare( "select * from $type_val where id=?" );
	$stmt->bind_param( 'i', $id_val );
	$stmt->execute();
	$data = $stmt->get_result()->fetch_array();

	$stmtcol = $database->stmt_init();
	$stmtcol->prepare( "show columns from $type_val" );
	$stmtcol->execute();
	$colresults = $stmtcol->get_result();
	while( $col = $colresults->fetch_array() )
		$columns[] = $col['Field'];

	$new_data = array();
	foreach( $columns as $col )
		$new_data[$col] = $data[$col];
}

if( $_POST ) {
	$sql_code = "";
	$types = '';

	foreach( $columns as $col ) {
		if( field_should_be_visible( $col ) ) {
			$sql_code .= $col . "=?, ";
			$types .= gettype( $_POST[$col] )[0];
			$arrVals[] = &$_POST[$col];
		}
		else if( $col == 'Hash' ) {
			$sql_code .= $col . "=SHA1( ? ), ";
			$types .= gettype( $_POST['Salt'] )[0];
			$arrVals[] = &$_POST['Salt'];
		}
	}
	$sql_code = "update $type_val set " . substr( $sql_code, 0, -2 ) . " where id=$id_val";

	$stmt = $database->stmt_init();
	$stmt->prepare( $sql_code );
	array_unshift( $arrVals, $types );
	call_user_func_array( array( $stmt, 'bind_param' ), $arrVals );
	$stmt->execute();

	header( "Refresh:0; url=update.php?id_val=$id_val&type_val=$type_val&database_val=$database_val" );
}
?>

<!DOCTYPE html>
<html>
	<head>
		<title>CRUD: Create, Read, Update, Delete</title>
	</head>
	<body>
		<h1>Update <?php echo to_lower( remove_underscore( $type_val ) ); ?></h1>
		<form method="post" action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] );?>">
			<input type="hidden" name="id_val" value="<?php echo $id_val; ?>">
			<input type="hidden" name="type_val" value="<?php echo $type_val; ?>">
			<input type="hidden" name="database_val" value="<?php echo $database_val; ?>">
			<?php foreach( $columns as $col ) { if( field_should_be_visible( $col ) ) { ?>
				<div class="input-group">
					<label><?php echo add_space_before_capital( $col ); ?></label>
					<input type="text" name="<?php echo $col; ?>" value="<?php echo $new_data[$col];?>">
				</div>
			<?php } } ?>
			<div class="input-group">
				<button class="btn" type="submit" name="save">Save</button>
			</div>
		</form>
		<a href="read.php?type_val=<?php echo $type_val; ?>&database_val=<?php echo $database_val; ?>">Read <?php echo to_lower( remove_underscore( $type_val ) ); ?></a>
		<br />
		<a href="index.php?database_val=<?php echo $database_val; ?>">Go Home</a>
	</body>
</html>