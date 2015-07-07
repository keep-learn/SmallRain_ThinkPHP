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
<div id="container" style="background:url('<?php echo (IMG_URL); ?>login_bg.jpg');
	background-position:center;position:fixed;background-size:100% 100%;position:absolute;top:0;bottom:0;right:0;left:0;">
	<div class="row">
		<div class="col-md-6 col-sm-6 col-xs-6  col-md-offset-3 col-sm-offset-3 col-xs-offset-3" style="margin-top:100px;background:rgba(255,255,255,0.8);padding:30px;padding-bottom:60px;" >
		<h2 class="text-center">登录界面</h2>
	<form action="/Smallrain/index.php/Home/Index/do_login" method="post">		
				用户名 : <input id="username"  type="text" class="form-control" name="username" /> <br/>
						<p class="alert_font alert_name">填写 : 用户名以字母开头的,数字字母下划线组合(5---10位)</p> 					
				<br/>
				密 码  : <input id="passwd"   type="password" class="form-control" name="passwd" /><br/>
						<p class="alert_font alert_passwd">亲 , 请输入密码(5---10位)</p>
				<br/>
				<input type="reset" class="btn btn-success" value="重置 " /> &nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" id="login_btn" class="btn btn-success" value="登录" />
	</form>
			
		</div>
	</div>
</div>
<!-- 页面主体的结束 -->


<!-- 引入js -->
<script src="<?php echo (JS_URL); ?>jquery-1.11.1.js"></script>
<script src="<?php echo (JS_URL); ?>do_form.js"></script>