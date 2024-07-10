<!DOCTYPE html>
<html lang="en">
	<header>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Career Guidance</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<style>
			.images{
				width:150px;
				height:150px;
				cursor:pointer;
				margin:10px;
			}
			.images:hover{
				-webkit-transform: scale(1.2);
				-moz-transform: scale(1.2);
				-o-transform: scale(1.2);
				transform: scale(1.2);
				transition: all 0.3s;
				-webkit-transition: all 0.3s;
			}
		</style>
	</header>
	<body>
		<div class="container">			
			<div class="page-header">
				<h1>E-resources</br> <small>Available Files For Download</small> </h1>
			</div>
			<div class="panel panel-default">
				<div class="panel-body">
					<a href="../dash.php?q=11" class="btn btn-info">Go Back</a>
					<h3>Uploaded Files:</h3>
					<br/>
					<?php 
						$conn = mysqli_connect("localhost","root","","project");
						
						$query = "SELECT *FROM UserFiles";
						
						$result = mysqli_query($conn, $query);
						
						if(mysqli_num_rows($result) > 0)
						{
						?>
						<table>
						<tr> 
							<td></td>
						</tr>
						<?php
							while($row = mysqli_fetch_assoc($result))
							{
								$url = $row["FilePath"]."/".$row["FileName"];
					?>
					<tr>
							<td style="width:70%">	<i><?php echo $row['FileName'] ?></i></td>
							<td>	<a href="<?php echo $url; ?>"><i class="fa fa-download"></i> Download</a></br></td>
					</tr> 
                          <?php
							} ?>
							</table>
					<?Php	}
						else
						{
					?>
						<p>There are no files uploaded to display.</p>
					<?php
						}
					?>					
				</div>
			</div>
		</div>
		
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jQuery.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>		
	</body>
</html>