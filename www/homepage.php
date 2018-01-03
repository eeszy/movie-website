<html>
	<head>	
	<title>CS 143 project1b</title>
	<meta charset="utf-8">
	<style>
	img {
    	max-width: 100%;
    	height: auto;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="mycss.css" />
		<!--<title>MovieDB: Add Actor/Director</title>-->
		<center><h1>Movie Database Search</h1></center>
        <center><h3>by Zhaoyu Sun, Zeyang Ma</h3></center>
	</head>
	<body>
	<div class = "back">
		<a class = "button" href="homepage.php"> Home </a>
		
		<div class="dropdown">
			<span><button class="button">Two Browsering</button></span>
			<div class = "dropdown-content">
				<a href="Show_A.php">Actor Information</a><br>
            	<a href="Show_M.php">Movie Information</a>
			</div>
		</div>
        <div class="dropdown">
		<span><button class = "button">Add New Content</button></span>
			<div class = "dropdown-content">
		    	<a href="Add_A_D.php">Add Actor/Director Information</a><br>
		        <a href="Add_M.php">Add Movie Information</a><br>
            	<a href="Add_M_A_R.php">Add Movie and Actor Relation</a><br>
            	<a href="Add_M_D_R.php">Add Movie and Director Relation</a><br>
            	<a href="Add_R.php">Add Movie Comments</a>
			</div>
		</div>
		<div class="dropdown">
			<span><button class = "button">Search</button></span>
			<div class = "dropdown-content">
				<a href="search.php">Search/Actor Movie</a>
			</div>
		</div>
	</div>
	<img src="http://365jia.cn/uploads/news/folder_106203/images/1125084zt4g4jtrdng0k0k.jpg" alt="Norway" width="1500" height="500">
	</body>
</html>