<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>登录界面</title>
	<!-- 引入css -->
	<link href="<?php echo (CSS_URL); ?>bootstrap.css" rel="stylesheet">
	<link href="<?php echo (CSS_URL); ?>style.css" rel="stylesheet">
	<link rel="icon" href="<?php echo (IMG_URL); ?>logo.ico" type="image/x-icon">


</head>
<body>

<!-- 页面主题的开始 -->
<div id="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3" >
		<h2>登录界面</h2>
			<form action="" method="post">
				用户名 : <input type="text" class="form-control" name="username" /> 
						<p class="alert_font">亲 , 请输入用户名</p>						
				<br/>
				密 码  : <input type="password" class="form-control" name="passwd" />
						<p class="alert_font">亲 , 请输入密码</p>
				<br/>
				<input type="reset" class="btn btn-success" value="重置 " />
				<input type="submit" class="btn btn-success" value="登录" />

			</form>
		</div>
	</div>
</div>
<!-- 页面主体的结束 -->