<?php
namespace Home\Controller;
use Think\Controller;
class AdminController extends Controller{
	public function index(){
		$this->display();
	}

	public function get_content(){
		$title=I('post.title');
		$type=I('post.type');
		$content=I('post.content');

		$data['type']=$type;
		$data['title']=$title;
		$data['content']=$content;
		$data['user']=cookie('login_user_name');
		$data['time']=date("Y-m-d");
		// echo $title."type : ".$type."Contents is :".$content;
		// 将收到的数据查到数据库中
		$Contents=M('passage');
		$res=$Contents->add($data);
		if($res){
			echo "恭喜你,文章发表成功 !";
		}else{
			echo "Sorry , please try again !";
		}

	}
	// 读取文章列表
	public function read_content(){
		$Contents=M('passage');
		// $res=$Contents->select();
		// show_bug($res);
		// 选择类型是 1 的文章
		$res1=$Contents->where('type=1')->getField('title',6);
		show_bug($res1);

		// $this->assign("info",$res);
		// $this->display();
// echo "<hr/>";
// 		$res2=$Contents->where('type=2')->getField('title',6);
// 		show_bug($res2);
// echo "<hr/>";
// 		$res3=$Contents->where('type=3')->getField('title',6);
// 		show_bug($res3);		
// echo "<hr/>";
// 		$res4=$Contents->where('type=4')->getField('title',6);
// 		show_bug($res4);
		// $this->display();
		echo "<hr/>";
		echo "title one is ".$res1[0];
		echo "<hr/>";
		$this->assign("items",$res1);
		$this->display();

	}


































	public function add_passage(){
		$title=I('post.title');
		$type=I('post.type');
		$content=I('post.content');
		echo "tilt is : ".$title."<br/>";
		echo "type is : ".$type."<br/>";
		echo "content is :".$content."<br/>";

// 文件上传类
		    $upload = new \Think\Upload();// 实例化上传类    
		    $upload->maxSize   =     3145728 ;// 设置附件上传大小    
		    $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
		    $upload->savePath  =      './'; // 设置附件上传目录    // 上传文件     
		    $info   =   $upload->upload();   
		show_bug($info);
		echo "name:".$info['myfile']['name']."<br/>";
		echo "path: ".$info['myfile']['savepath']."<br/>";
		echo "all path: "."Uploads/".$info['myfile']['savepath'];
	   if(!$info) {// 上传错误提示错误信息        
	    	echo "Sorry !";   
	    }else{// 上传成功        
	    	echo "Success !";    
	    }

}
// 测试的方法

	public function upload(){    
		$upload = new \Think\Upload();// 实例化上传类    
		$upload->maxSize   =     3145728 ;// 设置附件上传大小    
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型    
		$upload->savePath  =      './'; // 设置附件上传目录    // 上传文件     
		$info   =   $upload->upload();    
	if(!$info) {// 上传错误提示错误信息        
		$this->error($upload->getError());    
	}else{// 上传成功        
		$this->success('上传成功！');    
	}
    }
}

?>