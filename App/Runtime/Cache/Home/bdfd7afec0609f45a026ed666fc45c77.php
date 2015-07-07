<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>


<?php
 foreach ($info as $key => $value) { echo $value['pass_id']; echo $value['title']; echo htmlspecialchars_decode($value['content'])."<br/>"; echo "<hr/>"; } ?>


</body>
</html>