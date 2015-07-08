<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>404</title>
	<!-- 引入css -->
	<link href="<?php echo (CSS_URL); ?>bootstrap.css" rel="stylesheet">
	<link href="<?php echo (CSS_URL); ?>style.css" rel="stylesheet">
	<link rel="icon" href="<?php echo (IMG_URL); ?>logo.ico" type="image/x-icon">


</head>
<body>
<div class="container" style="margin-top:60px;">
	<div class="row well" >
	<a href="<?php echo U("Index/index");?>">
		<img class="img-responsive" src="<?php echo (IMG_URL); ?>logo2.png">
	</a>
	</div>
	<div class="row text-center alert alert-danger">
		 <h2>
			<span class="glyphicon glyphicon-exclamation-sign">
				
			</span> &nbsp;&nbsp;&nbsp;
		 404 Not find , we are trying our best to find the page !
		 </h2>

	</div>

	<div class="row">
		<img class="img-responsive center-block" src="<?php echo (IMG_URL); ?>404.jpg"/>
	</div>

</div>
</body>
</html>