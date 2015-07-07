-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2015 �?07 �?07 �?09:50
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `db_junshi`
--
CREATE DATABASE IF NOT EXISTS `db_junshi` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `db_junshi`;

-- --------------------------------------------------------

--
-- 表的结构 `tb_comment`
--

CREATE TABLE IF NOT EXISTS `tb_comment` (
  `pass_id` int(10) NOT NULL COMMENT '文章id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `say` text COLLATE utf8_unicode_ci NOT NULL COMMENT '发表的评论',
  `time` date NOT NULL COMMENT '发表的时间',
  `ip` char(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '评论者的ip地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `tb_member`
--

CREATE TABLE IF NOT EXISTS `tb_member` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `passwd` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tb_member`
--

INSERT INTO `tb_member` (`user_id`, `username`, `passwd`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'lovezbs', 'daec8b5a2243abb742f4e2fcf358d77e');

-- --------------------------------------------------------

--
-- 表的结构 `tb_passage`
--

CREATE TABLE IF NOT EXISTS `tb_passage` (
  `pass_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章的id',
  `type` tinyint(4) NOT NULL COMMENT '文章分类',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '文章标题',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '文章内容',
  `user` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '发起人',
  `time` date NOT NULL COMMENT '发表时间',
  PRIMARY KEY (`pass_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- 转存表中的数据 `tb_passage`
--

INSERT INTO `tb_passage` (`pass_id`, `type`, `title`, `content`, `user`, `time`) VALUES
(1, 1, 'This is title', '&lt;p&gt;This is the contents&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(2, 2, '中美关系', '&lt;p&gt;和平发展&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(3, 3, '大家好好学习呀', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0028.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;和平共处五项原则&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(4, 3, 'hello , this is the tile ', '&lt;p&gt;这是内容&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0028.gif&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(5, 4, '大家好,我的名字叫张兵帅', '&lt;p&gt;非常高兴能够见到你们,在这里给大家问候啦,嘿嘿&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0008.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0020.gif&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(6, 4, '大家好,我的名字叫张兵帅', '&lt;p&gt;非常高兴能够见到你们,在这里给大家问候啦,嘿嘿&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0008.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0020.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436239013886454.jpg&quot; title=&quot;1436239013886454.jpg&quot; alt=&quot;4f6c4720cb430348502f344ca153748b.jpg&quot; width=&quot;242&quot; height=&quot;116&quot; style=&quot;width: 242px; height: 116px;&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(7, 4, '7777777777777777777777777', '&lt;p&gt;非常高兴能够见到你们,在这里给大家问候啦,嘿嘿&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0008.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0020.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436239297845359.jpg&quot; title=&quot;1436239297845359.jpg&quot; alt=&quot;psuCAU20ZXB.jpg&quot; width=&quot;194&quot; height=&quot;163&quot; style=&quot;width: 194px; height: 163px;&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(8, 1, '中美关系的研究', '8888888888888888888888888888', 'lovezbs', '2015-07-07'),
(9, 1, '中美关系的研究', '中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。', 'lovezbs', '2015-07-07'),
(10, 1, 'lovezbs', '&lt;p&gt;lovezbs&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(11, 1, 'bing', '&lt;p&gt;bign&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(12, 4, 'PHP中curl_init和file_get_contents配合使用', '​    ​在PHP源码的扩展库中默认存在curl的扩展，编译就可以直接安装。\n但之前测试过一个远程xml获取代码，使用了curl函数，在刚搭建的vps上无法运行。\n通过探针查看，发现curl扩展并没有安装上去。\n\n本来可以重新在apache上添加curl扩展的，但是考虑到以后有些主机并不一定支持curl，为了增加程序的兼容性，于是对源代码做了如下更改：\n\nfunction malu_get_url_content($getxml) {\nif(function_exists(''curl_init'')) {\n$ch = curl_init();\n$timeout = 60;  //curl超时时间\ncurl_setopt ($ch, CURLOPT_URL, $getxml);\ncurl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);\ncurl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);\n$file_contents = curl_exec($ch);\ncurl_close($ch);\necho " (curl) ";\n} else {\n$ctx = stream_context_create(array(\n''http'' => array(\n''timeout'' => 60 //设置一个超时时间，单位为秒\n)\n)\n);\n$file_contents = file_get_contents($getxml, 0,$ctx);\necho " (file_get) ";\n}\nreturn $file_contents;\n}\n\n以上函数直接使用，$getxml变量传递URL信息，返回变量$file_contents传出获取到的内容。\n\n对于判断函数还可以这样写：\n\nif(function_exists(''file_get_contents'')) {\n\n优先判断是否支持file_get_contents，这样一来可以根据需要自己调整。两函数均进行了超时控制，防止远程链接失效而导致服务器负载过大。\n', 'lovezbs', '2015-07-07'),
(13, 3, '在PHP源码的扩展库中默认存在curl的扩展，编译就可以直接安装。', '​    ​在PHP源码的扩展库中默认存在curl的扩展，编译就可以直接安装。\n但之前测试过一个远程xml获取代码，使用了curl函数，在刚搭建的vps上无法运行。\n通过探针查看，发现curl扩展并没有安装上去。\n\n本来可以重新在apache上添加curl扩展的，但是考虑到以后有些主机并不一定支持curl，为了增加程序的兼容性，于是对源代码做了如下更改：\n\nfunction malu_get_url_content($getxml) {\nif(function_exists(''curl_init'')) {\n$ch = curl_init();\n$timeout = 60;  //curl超时时间\ncurl_setopt ($ch, CURLOPT_URL, $getxml);\ncurl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);\ncurl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);\n$file_contents = curl_exec($ch);\ncurl_close($ch);\necho " (curl) ";\n} else {\n$ctx = stream_context_create(array(\n''http'' => array(\n''timeout'' => 60 //设置一个超时时间，单位为秒\n)\n)\n);\n$file_contents = file_get_contents($getxml, 0,$ctx);\necho " (file_get) ";\n}\nreturn $file_contents;\n}\n\n以上函数直接使用，$getxml变量传递URL信息，返回变量$file_contents传出获取到的内容。\n\n对于判断函数还可以这样写：\n\nif(function_exists(''file_get_contents'')) {\n\n优先判断是否支持file_get_contents，这样一来可以根据需要自己调整。两函数均进行了超时控制，防止远程链接失效而导致服务器负载过大。\n', 'lovezbs', '2015-07-07'),
(14, 3, 'WebSocket 是什么原理？为什么可以实现持久连接？', '&lt;h1 style=&quot;box-sizing: border-box; margin: 0px; font-size: 20px; font-family: ', 'lovezbs', '2015-07-07'),
(15, 2, 'oneoneone onenfoneajf', '&lt;p&gt;fawefewagvwegvweg&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(16, 4, 'hello world', '&lt;p&gt;hello zhang !&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(17, 3, '大家好,我的名字叫张兵帅,非常高兴见到大家,在这个平台', '&lt;p&gt;嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0002.gif&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(18, 1, 'hello world', '&lt;p&gt;hello world', 'lovezbs', '2015-07-07'),
(19, 1, 'zbs', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0028.gif&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(20, 1, 'zbs', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0028.gif&quot;/&gt; lala&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(21, 1, 'zbs', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: ', 'lovezbs', '2015-07-07'),
(22, 1, '中国位于', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(23, 1, 'afa', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(24, 1, 'afa', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(25, 1, 'afa', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(26, 1, 'xxxx', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(27, 1, 'aaa', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(28, 2, 'bbbbbb', '&lt;p&gt;是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(29, 3, 'ccccccc', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0003.gif&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(30, 4, 'shutdown -a 禁止计算机自动关机', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0004.gif&quot;/&gt;', 'lovezbs', '2015-07-07'),
(31, 4, 'shutdown -a 禁止计算机自动关机', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0004.gif&quot;/&gt;现在笔记本每次连接无线,必须输入 : netsh winsock reset 才可以上网&lt;/p&gt;&lt;p&gt;每次都输入其实,没有什么大不了的,关键是输入完之后,电脑要重新启动,这&lt;/p&gt;&lt;p&gt;点让我无法忍受, 现在查了一下 , shutdown -a 可以阻止其自动关机,正好&lt;/p&gt;&lt;p&gt;解决了我的问题&lt;/p&gt;&lt;p&gt;附加:一些常用的命令&lt;/p&gt;&lt;p&gt;shutdown.exe -a　取消关机&lt;/p&gt;&lt;p&gt;shutdown.exe -s 关机&lt;/p&gt;&lt;p&gt;shutdown.exe -f　强行关闭应用程序&lt;/p&gt;&lt;p&gt;shutdown.exe -m \\\\计算机名　控制远程计算机&lt;/p&gt;&lt;p&gt;shutdown.exe -i　显示“远程关机”图形用户界面，但必须是Shutdown的第一个参数&lt;/p&gt;&lt;p&gt;shutdown.exe -l　注销当前用户&lt;/p&gt;&lt;p&gt;shutdown.exe -r　关机并重启&lt;/p&gt;&lt;p&gt;shutdown.exe -s -t 时间　设置关机倒计时&lt;/p&gt;&lt;p&gt;shutdown.exe -h 休眠&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(32, 3, 'ddddddddddddddd', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436248058105049.jpg&quot; title=&quot;1436248058105049.jpg&quot; alt=&quot;detail.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;现在笔记本每次连接无线,必须输入 : netsh winsock reset 才可以上网&lt;/p&gt;&lt;p&gt;每次都输入其实,没有什么大不了的,关键是输入完之后,电脑要重新启动,这&lt;/p&gt;&lt;p&gt;点让我无法忍受, 现在查了一下 , shutdown -a 可以阻止其自动关机,正好&lt;/p&gt;&lt;p&gt;解决了我的问题&lt;/p&gt;&lt;p&gt;附加:一些常用的命令&lt;/p&gt;&lt;p&gt;shutdown.exe -a　取消关机&lt;/p&gt;&lt;p&gt;shutdown.exe -s 关机&lt;/p&gt;&lt;p&gt;shutdown.exe -f　强行关闭应用程序&lt;/p&gt;&lt;p&gt;shutdown.exe -m \\\\计算机名　控制远程计算机&lt;/p&gt;&lt;p&gt;shutdown.exe -i　显示“远程关机”图形用户界面，但必须是Shutdown的第一个参数&lt;/p&gt;&lt;p&gt;shutdown.exe -l　注销当前用户&lt;/p&gt;&lt;p&gt;shutdown.exe -r　关机并重启&lt;/p&gt;&lt;p&gt;shutdown.exe -s -t 时间　设置关机倒计时&lt;/p&gt;&lt;p&gt;shutdown.exe -h 休眠&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(33, 2, 'JSON为什么那样红为什么要用json', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ', 'lovezbs', '2015-07-07'),
(34, 2, 'JSON为什么那样红为什么要用json', '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: ', 'lovezbs', '2015-07-07'),
(35, 2, 'ffffffffffffffffffff', '&lt;p&gt;son.org是一种简洁有效的数据载体,是一种用字符串表示复杂js对象的方式，后端好生成，前端0解释,接下来详细介绍json风行的几点原因&lt;/p&gt;&lt;p&gt;现在解释JSON是什么，大家都会说我老土吧，&lt;/p&gt;&lt;p&gt;', 'lovezbs', '2015-07-07'),
(36, 2, 'aaaaaaaaaaaaaaaaa', '&lt;p&gt;son.org是一种简洁有效的数据载体,是一种用字符串表示复杂js对象的方式，后端好生成，前端0解释,接下来详细介绍json风行的几点原因&lt;/p&gt;&lt;p&gt;现在解释JSON是什么，大家都会说我老土吧，&lt;/p&gt;&lt;p&gt;这里我想分析一下json红的原因，我们又得到什么启示呢。', 'lovezbs', '2015-07-07'),
(37, 2, 'mmmmmmmmmmmm', '&lt;p&gt;mmmmmmmmmmaaaaaaaaaaaaa&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(38, 2, 'mmmmmmmmmmmm', '&lt;p&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(39, 2, 'nnnnnnnnnnnnn', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(40, 2, 'nnnnnnnnnnnnn', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0003.gif&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07');
INSERT INTO `tb_passage` (`pass_id`, `type`, `title`, `content`, `user`, `time`) VALUES
(41, 2, 'xxxxxxxx', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0003.gif&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;中国位于亚洲东部，太平洋西岸，&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(42, 2, 'xxxxxxxx', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0003.gif&quot;/&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436251990110432.jpg&quot; title=&quot;1436251990110432.jpg&quot; alt=&quot;detail.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;中国位于亚洲东部，太平洋西岸，&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(43, 2, 'eeeeeeeeeee', '&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;据日本《东洋经济周刊》报道称，2014年12月，网络上流传出已经下水的“海警2901”号海警船的样子。据报道，“海警2901”排水量超过1万吨，配备有76毫米速射炮。　　“海警2901”搭载的76毫米速射炮与一些军舰上使用的主炮属于同等型号。日本海上自卫队的部分护卫舰也装备了这一型号。此前，世界上只有美国海岸警卫队的巡逻船装备该口径的速射炮。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　中国国家海洋局在2014年1月的全国海洋工作会议上决定全力推进20艘新建海警船的建造工作。中国媒体报道称，其中有10艘3000吨级的巡逻船，还有4艘4000吨级、4艘5000吨级和2艘1万吨级的巡逻船。目前部分巡逻船已部署到位。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0042.gif&quot;/&gt;文章称，中国海警局以前拥有的排水量最大的巡逻船只有4000吨级，无法对抗日本海上保安厅的“敷岛”级巡逻船。中国希望在东海部署1万吨级的巡逻船，在尖阁诸岛(即我钓鱼岛及其附属岛屿)周边占据比日本海上保安厅更大的优势。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　对于外国执法机构船舶的活动，是很难通过警察权来应对的，因为这要比国际法规定比较明确的海军活动更难应对。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　文章称，当前日本关于安全保障法制的讨论是为了填补本国此前在应对方面的空白，但如果只扩大自卫队活动，不同时强化警察和海上保安厅的力量，仍很难应对中国海警局的巡逻船。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(44, 3, '简氏爆料武汉建造500吨微型潜艇 军事用途成迷', '&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;', 'lovezbs', '2015-07-07'),
(45, 3, '外媒曝中国新反潜机独特功能：可指挥水下滑翔机', '&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;', 'lovezbs', '2015-07-07'),
(46, 3, '外媒曝中国新反潜机独特功能：可指挥水下滑翔机', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(47, 3, '外媒曝中国新反潜机独特功能：可指挥水下滑翔机', '&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436252356290077.jpg&quot; title=&quot;1436252356290077.jpg&quot; alt=&quot;203_144377_137413.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(48, 2, '照片出自谷歌地图卫星照片', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436252576589965.jpg&quot; title=&quot;1436252576589965.jpg&quot; alt=&quot;U9298P27T1D834575F26DT20150707095114.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;', 'lovezbs', '2015-07-07'),
(49, 2, '照片出自谷歌地图卫星照片', '&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20150707/1436252576589965.jpg&quot; title=&quot;1436252576589965.jpg&quot; alt=&quot;U9298P27T1D834575F26DT20150707095114.jpg&quot;/&gt;&lt;span style=&quot;font-family: Simsun; font-size: 20px; font-weight: bold;&quot;&gt;1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂的中华文化，在语言、文字、建筑、饮食、哲学、文学、医学、历法、戏曲、音乐、绘画等各方各面都有显著的特色，并且强烈影响了周边国家中国位于亚洲东部，太平洋西岸，陆地面积约960万平方千米，东部和南部大陆海岸线1.8万多千米，内海和边海的水域面积约470多万平方千米；海域分布有大小岛屿7600多个，其中台湾岛最大；同14国接壤，与8国隔海相望；共34个省级行政区划，分别是23个省、4个直辖市、5个自治区、2个特别行政区；首都北京。 [1] 中国是一个以华夏文明为主体、以汉族为主体民族的统一多民族国家。中国境内56个民族统称为中华民族，龙是中华民族的象征。距今约5000年前，以中原地区为中心开始出现规模较大的部落。约公元前21世纪，中国第一个朝代夏朝建立，此后历经商、周、秦、汉、晋、隋、唐、宋、元、明、清等朝代，直至20世纪初辛亥革命后，君主专制政体退出中国历史，取而代之的是共和政体。1912年1月1日中华民国成立，1949年10月1日中华人民共和国成立。 作为五千年历史的文明古国，中国孕育出灿烂&lt;/span&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(50, 2, 'admin', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0061.gif&quot;/&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0055.gif&quot;/&gt;admin&lt;/p&gt;&lt;p&gt;admin hello&lt;/p&gt;', 'lovezbs', '2015-07-07'),
(51, 4, 'Come on baby ', '&lt;p&gt;You should work hard , for the exam', 'admin', '0000-00-00'),
(52, 4, 'Come on baby ', '&lt;p&gt;You should work hard , for the exam', 'admin', '0000-00-00'),
(53, 4, 'Come on baby ', '&lt;p&gt;You should work hard , for the exam', 'admin', '0000-00-00'),
(54, 1, 'sfafawef', '&lt;p&gt;&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0003.gif&quot;/&gt;afwa&lt;/p&gt;', 'admin', '2015-07-07'),
(55, 2, 'com om ', '&lt;p&gt;lalla&lt;img src=&quot;http://img.baidu.com/hi/jx2/j_0004.gif&quot;/&gt;&lt;/p&gt;', 'lovezbs', '2015-07-07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
