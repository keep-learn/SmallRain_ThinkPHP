<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
title : <?php echo ($info[0]['title']); ?>  <br/>
contents: <?php echo ($info[0]['content']); ?> <br/>
<hr/>
title : <?php echo ($info[1]['title']); ?>  <br/>
contents: <?php echo (htmlspecialchars_decode($info[1]['content'])); ?> <br/>
<hr/>
title : <?php echo ($info[2]['title']); ?>  <br/>
contents: <?php echo (htmlspecialchars_decode($info[2]['content'] )); ?> <br/>
<hr/>

title : <?php echo ($info[3]['title']); ?>  <br/>
contents: <?php echo (htmlspecialchars_decode($info[3]['content'] )); ?> <br/>
<hr/>
</body>
</html>