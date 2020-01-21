<!--------  view all users and delete users  -------->
<!doctype html>
 <html>
  <head>
      <title>admin</title>
	  <link rel ="stylesheet" href="css/bootstrap.min.css">
	  <link rel ="stylesheet" href="css/style.css">
	 
	  
  <style>
  
  </style>
  <script>
			
		</script>
  </head>
  <body>
  <div>
		<div class="container-fliud">
        <nav class="navbar navbar-expand navbar-light topbar mb-4 static-top shadow bg-gradient-primary">
		<!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle  bg-light">
            <i class="fa fa-bars"></i>
          </button>
		 <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto pr-5 p-hide">

            <!-- Nav Item - Alerts -->
            <li class="nav-item ">
              <a class="nav-link " href="index.php">
                <i class="fas fa-home"><p> Home</p></i>
              </a>
            </li>
			<li class="nav-item ">
              <a class="nav-link " href="doctorlist.php">
                <i class="fas fa-home"><p> Doctors</p></i>
              </a>
            </li>
			<li class="nav-item ">
              <a class="nav-link " href="usersall.php">
                <i class="fas fa-home"><p> Users</p></i>
              </a>
			<li class="nav-item ">
              <a class="nav-link " href="index.php">
                <i class="fas fa-home"><p> Logout</p></i>
              </a>
            </li>
          </ul>

        </nav>
		</div>
	
	</div>
	<div >
	<!--------  table to display all users  -------->
	<table class="table table-striped card-text bg-light">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Name</th>
							<th scope="col">Gender</th>
							<th scope="col">Age</th>
							<th scope="col">Emailid</th>
							<th scope="col">MobileNo</th>
							<th scope="col">Nationalid</th>
						</tr>
					</thead>
					<tbody>
						<?php
							require_once 'connection.php';
							session_start();
							$var=$_SESSION['user'];
							$sql="select * from user";
							$result=mysqli_query($conn,$sql);
							while($row=mysqli_fetch_assoc($result))
							{
						?>
						<tr>
						<form action="action.php" method="post">
							<td scope="row"><input type="text" value="<?php echo $row['Uid'];?>" name="id" readonly></td>
							<td scope="row"><?php echo $row['Name'];?></td>
							<td scope="row"><?php echo $row['Gender'];?></td>
							<td scope="row"><?php echo $row['Age'];?></td>
							<td scope="row"><?php echo $row['Emailid'];?></td>
							<td scope="row"><?php echo $row['MobileNo'];?></td>
							<td scope="row"><?php echo $row['NationalId'];?></td>
							<td><input type="submit" value="Delete" class="btn-danger" name="deleteuser"></td>
						</form>
						</tr>
						<?php
							}
						?>
					</tbody>
				</table>
	</div>
  </body>
</html>