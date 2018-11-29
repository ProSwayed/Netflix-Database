<?php 
include( 'connect.php' );
$results = mysqli_query( $database, "select * from USER_ACCOUNT" );
?>

<!DOCTYPE html>
<html>
	<head>
		<title>CRUD: Create, Read, Update, Delete</title>
	</head>
	<body>
		<a href="create.php">Create User Account</a>
		<table>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Street Address</th>
					<th>City</th>
					<th>State</th>
					<th>Zip</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<?php while( $row = mysqli_fetch_array( $results ) ) { ?>
				<tr>
					<td><?php echo $row['FirstName']; ?></td>
					<td><?php echo $row['LastName']; ?></td>
					<td><?php echo $row['Email']; ?></td>
					<td><?php echo $row['Phone']; ?></td>
					<td><?php echo $row['StreetAddress']; ?></td>
					<td><?php echo $row['City']; ?></td>
					<td><?php echo $row['State']; ?></td>
					<td><?php echo $row['Zip']; ?></td>
					<td><a href="update.php?id=<?php echo $row['id']; ?>">Edit</a></td>
					<td><a href="delete.php?id=<?php echo $row['id']; ?>">Delete</a></td>
				</tr>
			<?php } ?>
		</table>
		<a href="index.php">Go Home</a>
	</body>
</html>