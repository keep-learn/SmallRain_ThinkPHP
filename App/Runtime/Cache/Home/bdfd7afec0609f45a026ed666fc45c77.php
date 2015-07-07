<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>

<?php if(is_array($info)): foreach($info as $key=>$v): echo ($key); ?>|<?php echo ($v["title"]); ?>:<?php echo (htmlspecialchars_decode($v["content"])); ?>
	 <hr/><?php endforeach; endif; ?>
</body>
</html>