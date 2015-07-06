// 登录表单的出来
$(function(){
	$("#login_btn").click(function(){
		var $username=$("#username").val();
		var $passwd=$("#passwd").val();
		var matchstr = /^[a-z][a-z_0-9]*$/i;
		$res=matchstr.test($username);
	if($res!=false&&$passwd!=""){
		$(".alert_name").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;用户名输入正确 !</span>");
		$(".alert_passwd").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;密码输入正确 ! </span>");
	}else if($res!=false&&$passwd==""){
		$(".alert_name").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;用户名输入正确 !</span>");
		$(".alert_passwd").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;请填写密码 ! </span>");
	}else if($res==false&&$passwd!=""){
		$(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");
		$(".alert_passwd").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;密码正确 ! </span>");
	}else{
		$(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");
		$(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");	}
	});
});