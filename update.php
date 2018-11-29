<?php
include( 'connect.php' );

if( $_GET ) {
	$id = $_GET['id'];
	$sql = mysqli_query( $database, "select * from USER_ACCOUNT where id=$id" );

	$data = mysqli_fetch_array( $sql );
	$fname = $data['FirstName'];
	$lname = $data['LastName'];
	$email = $data['Email'];
	$phone = $data['Phone'];
	$address = $data['StreetAddress'];
	$city = $data['City'];
	$state = $data['State'];
	$zip = $data['Zip'];
	$password = $data['Salt'];
}

if( $_POST ) {
	$id = $_POST['id'];
	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zip = $_POST['zip'];
	$password = $_POST['password'];

	$sql = "update USER_ACCOUNT set Email='$email', FirstName='$fname', LastName='$lname', Phone='$phone', StreetAddress='$address', City='$city', State='$state', Zip='$zip', Salt='$password', Hash=SHA1( '$password' ) where id=$id";
	test_sqlCode( $database, $sql );
}
?>

<!DOCTYPE html>
<html>
	<head>
		<title>CRUD: Create, Read, Update, Delete</title>
	</head>
	<body>
		<h1>Update User Account</h1>
		<form method="post" action="<?php echo htmlspecialchars( $_SERVER["PHP_SELF"] );?>">
			<div class="input-group">
				<input type="hidden" name="id" value="<?php echo $id; ?>">
			</div>
			<div class="input-group">
				<label>First Name</label>
				<input type="text" name="fname" value="<?php echo $fname; ?>">
			</div>
			<div class="input-group">
				<label>Last Name</label>
				<input type="text" name="lname" value="<?php echo $lname; ?>">
			</div>
			<div class="input-group">
				<label>Email</label>
				<input type="text" name="email" value="<?php echo $email; ?>">
			</div>
			<div class="input-group">
				<label>Phone Number</label>
				<input type="text" name="phone" value="<?php echo $phone; ?>">
			</div>
			<div class="input-group">
				<label>Street Address</label>
				<input type="text" name="address" value="<?php echo $address; ?>">
			</div>
			<div class="input-group">
				<label>City</label>
				<input type="text" name="city" value="<?php echo $city; ?>">
			</div>
			<div class="input-group">
				<label>State</label>
				<input type="text" name="state" value="<?php echo $state; ?>">
			</div>
			<div class="input-group">
				<label>Zip</label>
				<input type="text" name="zip" value="<?php echo $zip; ?>">
			</div>
			<div class="input-group">
				<label>Password</label>
				<input type="text" name="password" value="<?php echo $password; ?>">
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