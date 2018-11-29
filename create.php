<?php
if( $_POST ) {
	include( 'connect.php' );

	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zip = $_POST['zip'];
	$password = $_POST['password'];

	$sql = "insert into USER_ACCOUNT values ( NULL, '$email', '$fname', '$lname', '$phone', '$address', '$city', '$state', '$zip', '$password', SHA1( '$password' ) )";
	test_sqlCode( $database, $sql );
}
?>

<!DOCTYPE html>
<html>
	<head>
		<title>CRUD: Create, Read, Update, Delete</title>
	</head>
	<body>
		<h1>Create User Account</h1>
		<form method="post" action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] );?>">
			<div class="input-group">
				<label>First Name</label>
				<input type="text" name="fname" value="">
			</div>
			<div class="input-group">
				<label>Last Name</label>
				<input type="text" name="lname" value="">
			</div>
			<div class="input-group">
				<label>Email</label>
				<input type="text" name="email" value="">
			</div>
			<div class="input-group">
				<label>Phone Number</label>
				<input type="text" name="phone" value="">
			</div>
			<div class="input-group">
				<label>Street Address</label>
				<input type="text" name="address" value="">
			</div>
			<div class="input-group">
				<label>City</label>
				<input type="text" name="city" value="">
			</div>
			<div class="input-group">
				<label>State</label>
				<input type="text" name="state" value="">
			</div>
			<div class="input-group">
				<label>Zip</label>
				<input type="text" name="zip" value="">
			</div>
			<div class="input-group">
				<label>Password</label>
				<input type="text" name="password" value="">
			</div>
			<div class="input-group">
				<button class="btn" type="submit" name="save">Save</button>
			</div>
		</form>
		<a href="read.php">Read USER ACCOUNT</a>
		<br />
		<a href="index.php">Go Home</a>
	</body>
</html>