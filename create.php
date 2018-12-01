<?php
require_once( 'connect.php' );

if( $_POST ) {
	$sql_code = "";
	$types = '';

	foreach( $columns as $col ) {
		if( $col != 'id' && $col != 'Hash' ) {
			$sql_code .= "?, ";
			$types .= gettype( $_POST[$col] )[0];
			$arrVals[] = &$_POST[$col];
		}
		else if( $col == 'Hash' ) {
			$sql_code .= "SHA1( ? ), ";
			$types .= gettype( $_POST['Salt'] )[0];
			$arrVals[] = &$_POST['Salt'];
		}
		else if( $col == 'id' )
			$sql_code .= "NULL, ";
	}

	$sql_code = "insert into $type_val values ( " . substr( $sql_code, 0, -2 ) . " )";
	
	$stmt = $database->stmt_init();
	$stmt->prepare( $sql_code );
	array_unshift( $arrVals, $types );
	call_user_func_array( array( $stmt, 'bind_param' ), $arrVals );
	$stmt->execute();
}

if( $_REQUEST ) {
	$type_val = $_REQUEST['type_val'];

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
		<h1>Create <?php echo to_lower( remove_underscore( $type_val ) ); ?></h1>
		<form method="post" action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] );?>">
			<input type="hidden" name="type_val" value="<?php echo $type_val; ?>">
			<?php foreach( $columns as $col ) { if( field_should_be_visible( $col ) ) { ?>
				<div class="input-group">
					<label><?php echo add_space_before_capital( $col ); ?></label>
					<input type="text" name="<?php echo $col; ?>" value="">
				</div>
			<?php } } ?>
			<div class="input-group">
				<button class="btn" type="submit" name="save">Submit</button>
			</div>
		</form>
		<a href="read.php?type_val=<?php echo $type_val; ?>">Read <?php echo to_lower( remove_underscore( $type_val ) ); ?></a>
		<br />
		<a href="index.php">Go Home</a>
	</body>
</html>