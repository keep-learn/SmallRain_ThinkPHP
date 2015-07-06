// 登录表单的出来
// $(function(){
// 	$("#login_btn").click(function(){
// 		var $username=$("#username").val();
// 		var $passwd=$("#passwd").val();
// 		var matchstr = /^[a-z][a-z_0-9]*$/i;
// 		$res=matchstr.test($username);
// 	if($res!=false&&$passwd!=""){
// 		$(".alert_name").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;用户名输入正确 !</span>");
// 		$(".alert_passwd").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;密码输入正确 ! </span>");
// 	}else if($res!=false&&$passwd==""){
// 		$(".alert_name").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;用户名输入正确 !</span>");
// 		$(".alert_passwd").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;请填写密码 ! </span>");
// 	}else if($res==false&&$passwd!=""){
// 		$(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");
// 		$(".alert_passwd").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;密码正确 ! </span>");
// 	}else{
// 		$(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");
// 		$(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");	}
// 	});
// });
// 密码项目
// 用户名列
$(function(){
    
      
   
    $("#username").keyup(function(){  
        var $username=$("#username").val();
        var matchstr = /^[a-z][a-z_0-9]*$/i;
        $res=matchstr.test($username);
    if($username.length>10||$username.length<5){
             $(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;格式不正确 !</span>");            
    }else{
        if($res==false){
             $(".alert_name").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;用户名输入错误 !</span>");            
        }else{
             $(".alert_name").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;用户名格式正确 !</span>");            
        }
    }
    });
     $("#passwd").keyup(function(){
         var $passwd=$("#passwd").val();
        if($passwd==""){
             $(".alert_passwd").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;请填写密码 ! </span>");
        }else if($passwd.length>10||$passwd.length<5){
              $(".alert_passwd").html("<span  class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;格式不正确 ! </span>");           
        }else{
             $(".alert_passwd").html("<span  class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;密码格式正确 ! </span>");
        }
    });
});

// 用户注册,检查密码强度
// 事件
$(function(){
  $("#passwd").keyup(function(){
        $var=$("#passwd").val();
        AuthPasswd($var);
  });
});
function AuthPasswd(string) {
    if(string.length >=6&&string.length <=16) {
        if(/[a-zA-Z]+/.test(string) && /[0-9]+/.test(string) && /\*+/.test(string)) {
            noticeAssign(1);
        }else if(/[a-zA-Z]+/.test(string) || /[0-9]+/.test(string) || /\W+\D+/.test(string)) {
            if(/[a-zA-Z]+/.test(string) && /[0-9]+/.test(string)) {
                noticeAssign(-1);
            }else if(/\[a-zA-Z]+/.test(string) && /\W+\D+/.test(string)) {
                noticeAssign(-1);
            }else if(/[0-9]+/.test(string) && /\W+\D+/.test(string)) {
                noticeAssign(-1);
            }else{
                noticeAssign(0);
            }
        }
    }else{
        noticeAssign(null); 
    }
}
// 检查密码强度的函数
function noticeAssign(num) {
    if(num == 1) {

        $('#weak').css({backgroundColor:'#009900'});
        $('#middle').css({backgroundColor:'#009900'});
        $('#strength').css({backgroundColor:'#009900'});
        $('#strength').html('密码强度 很 强');
        $('#middle').html('');
        $('#weak').html('');
    }else if(num == -1){

        $('#weak').css({backgroundColor:'#ffcc33'});
        $('#middle').css({backgroundColor:'#ffcc33'});
        $('#strength').css({backgroundColor:''});
        $('#weak').html('');
        $('#middle').html('密码强度 中');
        $('#strength').html('');
    }else if(num ==0) {

        $('#weak').css({backgroundColor:'#C69324'});
        $('#middle').css({backgroundColor:''});
        $('#strength').css({backgroundColor:''});
        $('#weak').html('密码强度 弱');
        $('#middle').html('');
        $('#strength').html('');
    }else{

        $('#weak').html('密码长度不正确 ! ');
        $('#middle').html('&nbsp;');
        $('#strength').html('&nbsp;');
        $('#weak').css({backgroundColor:'#dd0000'});
        $('#middle').css({backgroundColor:''});
        $('#strength').css({backgroundColor:''});
    }
}


// 检查两次密码是否相同
$(function(){
	$("#passwd_two").keyup(function(){
	var $passwd_one=$("#passwd").val();
	var $passwd_two=$("#passwd_two").val();
		if($passwd_one==$passwd_two){
			$(".passwd_alert").html("<span   class='glyphicon glyphicon-ok' aria-hidden='true' style='color:green'>&nbsp;&nbsp;&nbsp;两次密码相同</span>");
		}else{
	 		$(".passwd_alert").html("<span   class='glyphicon glyphicon-remove' aria-hidden='true' style='color:red'>&nbsp;&nbsp;&nbsp;两次密码不相同</span>");
		}
	});
});