<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title></title>
</head>
<body>
<?php if(is_array($items)): $i = 0; $__LIST__ = $items;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i; echo ($v["pass_id"]); ?> <br/>
	 <?php echo ($v["title"]); ?> <br/><?php endforeach; endif; else: echo "" ;endif; ?>

<?php
var_dump($items); echo "<hr/>"; echo "hejh"; ?>

</body>
</html>