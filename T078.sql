/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t078`;
CREATE DATABASE IF NOT EXISTS `t078` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t078`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootil5n0/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootil5n0/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootil5n0/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `guanyuwomen`;
CREATE TABLE IF NOT EXISTS `guanyuwomen` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `yiyuanjianjie` longtext COMMENT '医院简介',
  `keshijieshao` longtext COMMENT '科室介绍',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuanyouxiang` varchar(200) DEFAULT NULL COMMENT '医院邮箱',
  `xiangqing` longtext COMMENT '详情',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='关于我们';

DELETE FROM `guanyuwomen`;
INSERT INTO `guanyuwomen` (`id`, `addtime`, `yiyuanmingcheng`, `yiyuandizhi`, `yiyuanjianjie`, `keshijieshao`, `lianxidianhua`, `yiyuanyouxiang`, `xiangqing`, `yiyuantupian`) VALUES
	(31, '2021-04-19 10:07:07', '医院名称1', '医院地址1', '医院简介1', '科室介绍1', '13823888881', '773890001@qq.com', '详情1', 'http://localhost:8080/springbootil5n0/upload/guanyuwomen_yiyuantupian1.jpg'),
	(32, '2021-04-19 10:07:07', '医院名称2', '医院地址2', '医院简介2', '科室介绍2', '13823888882', '773890002@qq.com', '详情2', 'http://localhost:8080/springbootil5n0/upload/guanyuwomen_yiyuantupian2.jpg'),
	(33, '2021-04-19 10:07:07', '医院名称3', '医院地址3', '医院简介3', '科室介绍3', '13823888883', '773890003@qq.com', '详情3', 'http://localhost:8080/springbootil5n0/upload/guanyuwomen_yiyuantupian3.jpg'),
	(34, '2021-04-19 10:07:07', '医院名称4', '医院地址4', '医院简介4', '科室介绍4', '13823888884', '773890004@qq.com', '详情4', 'http://localhost:8080/springbootil5n0/upload/guanyuwomen_yiyuantupian4.jpg'),
	(35, '2021-04-19 10:07:07', '医院名称5', '医院地址5', '医院简介5', '科室介绍5', '13823888885', '773890005@qq.com', '详情5', 'http://localhost:8080/springbootil5n0/upload/guanyuwomen_yiyuantupian5.jpg'),
	(36, '2021-04-19 10:07:07', '医院名称6', '医院地址6', '医院简介6', '科室介绍6', '13823888886', '773890006@qq.com', '详情6', 'http://localhost:8080/springbootil5n0/upload/guanyuwomen_yiyuantupian6.jpg');

DROP TABLE IF EXISTS `jiaofeiqingdan`;
CREATE TABLE IF NOT EXISTS `jiaofeiqingdan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `feiyongbianhao` varchar(200) DEFAULT NULL COMMENT '费用编号',
  `feiyongxiangmu` longtext COMMENT '费用项目',
  `feiyongjiage` int DEFAULT NULL COMMENT '费用价格',
  `feiyongxiangqing` longtext COMMENT '费用详情',
  `jianmianjine` int DEFAULT NULL COMMENT '减免金额',
  `jianmianyuanyin` longtext COMMENT '减免原因',
  `shifujine` varchar(200) DEFAULT NULL COMMENT '实付金额',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `feiyongbianhao` (`feiyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='缴费清单';

DELETE FROM `jiaofeiqingdan`;
INSERT INTO `jiaofeiqingdan` (`id`, `addtime`, `feiyongbianhao`, `feiyongxiangmu`, `feiyongjiage`, `feiyongxiangqing`, `jianmianjine`, `jianmianyuanyin`, `shifujine`, `zhanghao`, `xingming`, `sfsh`, `shhf`, `ispay`) VALUES
	(111, '2021-04-19 10:07:07', '费用编号1', '费用项目1', 1, '费用详情1', 1, '减免原因1', '实付金额1', '账号1', '姓名1', '是', '', '未支付'),
	(112, '2021-04-19 10:07:07', '费用编号2', '费用项目2', 2, '费用详情2', 2, '减免原因2', '实付金额2', '账号2', '姓名2', '是', '', '未支付'),
	(113, '2021-04-19 10:07:07', '费用编号3', '费用项目3', 3, '费用详情3', 3, '减免原因3', '实付金额3', '账号3', '姓名3', '是', '', '未支付'),
	(114, '2021-04-19 10:07:07', '费用编号4', '费用项目4', 4, '费用详情4', 4, '减免原因4', '实付金额4', '账号4', '姓名4', '是', '', '未支付'),
	(115, '2021-04-19 10:07:07', '费用编号5', '费用项目5', 5, '费用详情5', 5, '减免原因5', '实付金额5', '账号5', '姓名5', '是', '', '未支付'),
	(116, '2021-04-19 10:07:07', '费用编号6', '费用项目6', 6, '费用详情6', 6, '减免原因6', '实付金额6', '账号6', '姓名6', '是', '', '未支付');

DROP TABLE IF EXISTS `keshileixing`;
CREATE TABLE IF NOT EXISTS `keshileixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='科室类型';

DELETE FROM `keshileixing`;
INSERT INTO `keshileixing` (`id`, `addtime`, `leixing`) VALUES
	(41, '2021-04-19 10:07:07', '类型1'),
	(42, '2021-04-19 10:07:07', '类型2'),
	(43, '2021-04-19 10:07:07', '类型3'),
	(44, '2021-04-19 10:07:07', '类型4'),
	(45, '2021-04-19 10:07:07', '类型5'),
	(46, '2021-04-19 10:07:07', '类型6');

DROP TABLE IF EXISTS `menzhenxinxi`;
CREATE TABLE IF NOT EXISTS `menzhenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshibianhao` varchar(200) DEFAULT NULL COMMENT '科室编号',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `yishixingming` longtext COMMENT '医师姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `zhuanyetezhang` longtext COMMENT '专业特长',
  `guahaofei` int DEFAULT NULL COMMENT '挂号费',
  `xiangqing` longtext COMMENT '详情',
  `zhibanbiao` longtext COMMENT '值班表',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='门诊信息';

DELETE FROM `menzhenxinxi`;
INSERT INTO `menzhenxinxi` (`id`, `addtime`, `keshibianhao`, `keshileixing`, `yishixingming`, `zhicheng`, `zhuanyetezhang`, `guahaofei`, `xiangqing`, `zhibanbiao`, `tupian`) VALUES
	(51, '2021-04-19 10:07:07', '科室编号1', '科室类型1', '医师姓名1', '医师', '专业特长1', 1, '详情1', '值班表1', 'http://localhost:8080/springbootil5n0/upload/menzhenxinxi_tupian1.jpg'),
	(52, '2021-04-19 10:07:07', '科室编号2', '科室类型2', '医师姓名2', '医师', '专业特长2', 2, '详情2', '值班表2', 'http://localhost:8080/springbootil5n0/upload/menzhenxinxi_tupian2.jpg'),
	(53, '2021-04-19 10:07:07', '科室编号3', '科室类型3', '医师姓名3', '医师', '专业特长3', 3, '详情3', '值班表3', 'http://localhost:8080/springbootil5n0/upload/menzhenxinxi_tupian3.jpg'),
	(54, '2021-04-19 10:07:07', '科室编号4', '科室类型4', '医师姓名4', '医师', '专业特长4', 4, '详情4', '值班表4', 'http://localhost:8080/springbootil5n0/upload/menzhenxinxi_tupian4.jpg'),
	(55, '2021-04-19 10:07:07', '科室编号5', '科室类型5', '医师姓名5', '医师', '专业特长5', 5, '详情5', '值班表5', 'http://localhost:8080/springbootil5n0/upload/menzhenxinxi_tupian5.jpg'),
	(56, '2021-04-19 10:07:07', '科室编号6', '科室类型6', '医师姓名6', '医师', '专业特长6', 6, '详情6', '值班表6', 'http://localhost:8080/springbootil5n0/upload/menzhenxinxi_tupian6.jpg');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb3 COMMENT='系统公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(141, '2021-04-19 10:07:07', '标题1', '简介1', 'http://localhost:8080/springbootil5n0/upload/news_picture1.jpg', '内容1'),
	(142, '2021-04-19 10:07:07', '标题2', '简介2', 'http://localhost:8080/springbootil5n0/upload/news_picture2.jpg', '内容2'),
	(143, '2021-04-19 10:07:07', '标题3', '简介3', 'http://localhost:8080/springbootil5n0/upload/news_picture3.jpg', '内容3'),
	(144, '2021-04-19 10:07:07', '标题4', '简介4', 'http://localhost:8080/springbootil5n0/upload/news_picture4.jpg', '内容4'),
	(145, '2021-04-19 10:07:07', '标题5', '简介5', 'http://localhost:8080/springbootil5n0/upload/news_picture5.jpg', '内容5'),
	(146, '2021-04-19 10:07:07', '标题6', '简介6', 'http://localhost:8080/springbootil5n0/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `tijianbaogao`;
CREATE TABLE IF NOT EXISTS `tijianbaogao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `keshibianhao` varchar(200) DEFAULT NULL COMMENT '科室编号',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `tijianxiangmu` varchar(200) DEFAULT NULL COMMENT '体检项目',
  `jiancejieguo` longtext COMMENT '检测结果',
  `tijianshijian` datetime DEFAULT NULL COMMENT '体检时间',
  `yichangxiangmu` longtext COMMENT '异常项目',
  `baogaoshijian` datetime DEFAULT NULL COMMENT '报告时间',
  `yishigonghao` varchar(200) DEFAULT NULL COMMENT '医师工号',
  `yishixingming` varchar(200) DEFAULT NULL COMMENT '医师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='体检报告';

DELETE FROM `tijianbaogao`;
INSERT INTO `tijianbaogao` (`id`, `addtime`, `zhanghao`, `xingming`, `keshibianhao`, `keshileixing`, `tijianxiangmu`, `jiancejieguo`, `tijianshijian`, `yichangxiangmu`, `baogaoshijian`, `yishigonghao`, `yishixingming`) VALUES
	(71, '2021-04-19 10:07:07', '账号1', '姓名1', '科室编号1', '科室类型1', '体检项目1', '检测结果1', '2021-04-19 18:07:07', '异常项目1', '2021-04-19 18:07:07', '医师工号1', '医师姓名1'),
	(72, '2021-04-19 10:07:07', '账号2', '姓名2', '科室编号2', '科室类型2', '体检项目2', '检测结果2', '2021-04-19 18:07:07', '异常项目2', '2021-04-19 18:07:07', '医师工号2', '医师姓名2'),
	(73, '2021-04-19 10:07:07', '账号3', '姓名3', '科室编号3', '科室类型3', '体检项目3', '检测结果3', '2021-04-19 18:07:07', '异常项目3', '2021-04-19 18:07:07', '医师工号3', '医师姓名3'),
	(74, '2021-04-19 10:07:07', '账号4', '姓名4', '科室编号4', '科室类型4', '体检项目4', '检测结果4', '2021-04-19 18:07:07', '异常项目4', '2021-04-19 18:07:07', '医师工号4', '医师姓名4'),
	(75, '2021-04-19 10:07:07', '账号5', '姓名5', '科室编号5', '科室类型5', '体检项目5', '检测结果5', '2021-04-19 18:07:07', '异常项目5', '2021-04-19 18:07:07', '医师工号5', '医师姓名5'),
	(76, '2021-04-19 10:07:07', '账号6', '姓名6', '科室编号6', '科室类型6', '体检项目6', '检测结果6', '2021-04-19 18:07:07', '异常项目6', '2021-04-19 18:07:07', '医师工号6', '医师姓名6');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '2xmpegrgf1u1hyl0l8383ld3hymv1ogw', '2024-02-09 02:40:02', '2024-02-09 06:29:04'),
	(2, 11, '用户1', 'yonghu', '用户', '9y0y2g3slhartb4dq1oc3q1w0ao02fhy', '2024-02-09 02:49:06', '2024-02-09 06:30:22'),
	(3, 21, '医师1', 'yishi', '医师', 'g6f4lsv2vx4jfk4jprafrtv6r6z3mhcd', '2024-02-09 05:30:05', '2024-02-09 06:30:05');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-19 10:07:07');

DROP TABLE IF EXISTS `yaokuxinxi`;
CREATE TABLE IF NOT EXISTS `yaokuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `yaopinjieshao` longtext COMMENT '药品介绍',
  `zhuzhigongneng` longtext COMMENT '主治功能',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `gongyingchangjia` varchar(200) DEFAULT NULL COMMENT '供应厂家',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `xiangqing` longtext COMMENT '详情',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='药库信息';

DELETE FROM `yaokuxinxi`;
INSERT INTO `yaokuxinxi` (`id`, `addtime`, `yaopinmingcheng`, `yaopinleixing`, `yaopinjieshao`, `zhuzhigongneng`, `jiage`, `zhuyishixiang`, `gongyingchangjia`, `shengchanriqi`, `xiangqing`, `tupian`) VALUES
	(91, '2021-04-19 10:07:07', '药品名称1', '药品类型1', '药品介绍1', '主治功能1', 1, '注意事项1', '供应厂家1', '2021-04-19', '详情1', 'http://localhost:8080/springbootil5n0/upload/yaokuxinxi_tupian1.jpg'),
	(92, '2021-04-19 10:07:07', '药品名称2', '药品类型2', '药品介绍2', '主治功能2', 2, '注意事项2', '供应厂家2', '2021-04-19', '详情2', 'http://localhost:8080/springbootil5n0/upload/yaokuxinxi_tupian2.jpg'),
	(93, '2021-04-19 10:07:07', '药品名称3', '药品类型3', '药品介绍3', '主治功能3', 3, '注意事项3', '供应厂家3', '2021-04-19', '详情3', 'http://localhost:8080/springbootil5n0/upload/yaokuxinxi_tupian3.jpg'),
	(94, '2021-04-19 10:07:07', '药品名称4', '药品类型4', '药品介绍4', '主治功能4', 4, '注意事项4', '供应厂家4', '2021-04-19', '详情4', 'http://localhost:8080/springbootil5n0/upload/yaokuxinxi_tupian4.jpg'),
	(95, '2021-04-19 10:07:07', '药品名称5', '药品类型5', '药品介绍5', '主治功能5', 5, '注意事项5', '供应厂家5', '2021-04-19', '详情5', 'http://localhost:8080/springbootil5n0/upload/yaokuxinxi_tupian5.jpg'),
	(96, '2021-04-19 10:07:07', '药品名称6', '药品类型6', '药品介绍6', '主治功能6', 6, '注意事项6', '供应厂家6', '2021-04-19', '详情6', 'http://localhost:8080/springbootil5n0/upload/yaokuxinxi_tupian6.jpg');

DROP TABLE IF EXISTS `yaopinleixing`;
CREATE TABLE IF NOT EXISTS `yaopinleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='药品类型';

DELETE FROM `yaopinleixing`;
INSERT INTO `yaopinleixing` (`id`, `addtime`, `leixing`) VALUES
	(121, '2021-04-19 10:07:07', '类型1'),
	(122, '2021-04-19 10:07:07', '类型2'),
	(123, '2021-04-19 10:07:07', '类型3'),
	(124, '2021-04-19 10:07:07', '类型4'),
	(125, '2021-04-19 10:07:07', '类型5'),
	(126, '2021-04-19 10:07:07', '类型6');

DROP TABLE IF EXISTS `yishi`;
CREATE TABLE IF NOT EXISTS `yishi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishigonghao` varchar(200) NOT NULL COMMENT '医师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishixingming` varchar(200) NOT NULL COMMENT '医师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishigonghao` (`yishigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='医师';

DELETE FROM `yishi`;
INSERT INTO `yishi` (`id`, `addtime`, `yishigonghao`, `mima`, `yishixingming`, `xingbie`, `zhicheng`, `shouji`, `youxiang`, `shenfenzheng`, `tupian`) VALUES
	(21, '2021-04-19 10:07:07', '医师1', '123456', '医师姓名1', '男', '职称1', '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootil5n0/upload/yishi_tupian1.jpg'),
	(22, '2021-04-19 10:07:07', '医师2', '123456', '医师姓名2', '男', '职称2', '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootil5n0/upload/yishi_tupian2.jpg'),
	(23, '2021-04-19 10:07:07', '医师3', '123456', '医师姓名3', '男', '职称3', '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootil5n0/upload/yishi_tupian3.jpg'),
	(24, '2021-04-19 10:07:07', '医师4', '123456', '医师姓名4', '男', '职称4', '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootil5n0/upload/yishi_tupian4.jpg'),
	(25, '2021-04-19 10:07:07', '医师5', '123456', '医师姓名5', '男', '职称5', '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootil5n0/upload/yishi_tupian5.jpg'),
	(26, '2021-04-19 10:07:07', '医师6', '123456', '医师姓名6', '男', '职称6', '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootil5n0/upload/yishi_tupian6.jpg');

DROP TABLE IF EXISTS `yishikaiyao`;
CREATE TABLE IF NOT EXISTS `yishikaiyao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `keshibianhao` varchar(200) DEFAULT NULL COMMENT '科室编号',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `fuyongjiliang` varchar(200) DEFAULT NULL COMMENT '服用剂量',
  `fuyongzhouqi` varchar(200) DEFAULT NULL COMMENT '服用周期',
  `beizhu` longtext COMMENT '备注',
  `yishigonghao` varchar(200) DEFAULT NULL COMMENT '医师工号',
  `yishixingming` varchar(200) DEFAULT NULL COMMENT '医师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='医师开药';

DELETE FROM `yishikaiyao`;
INSERT INTO `yishikaiyao` (`id`, `addtime`, `zhanghao`, `xingming`, `keshibianhao`, `keshileixing`, `yaopinmingcheng`, `yaopinleixing`, `shuliang`, `fuyongjiliang`, `fuyongzhouqi`, `beizhu`, `yishigonghao`, `yishixingming`) VALUES
	(81, '2021-04-19 10:07:07', '账号1', '姓名1', '科室编号1', '科室类型1', '药品名称1', '药品类型1', 1, '服用剂量1', '服用周期1', '备注1', '医师工号1', '医师姓名1'),
	(82, '2021-04-19 10:07:07', '账号2', '姓名2', '科室编号2', '科室类型2', '药品名称2', '药品类型2', 2, '服用剂量2', '服用周期2', '备注2', '医师工号2', '医师姓名2'),
	(83, '2021-04-19 10:07:07', '账号3', '姓名3', '科室编号3', '科室类型3', '药品名称3', '药品类型3', 3, '服用剂量3', '服用周期3', '备注3', '医师工号3', '医师姓名3'),
	(84, '2021-04-19 10:07:07', '账号4', '姓名4', '科室编号4', '科室类型4', '药品名称4', '药品类型4', 4, '服用剂量4', '服用周期4', '备注4', '医师工号4', '医师姓名4'),
	(85, '2021-04-19 10:07:07', '账号5', '姓名5', '科室编号5', '科室类型5', '药品名称5', '药品类型5', 5, '服用剂量5', '服用周期5', '备注5', '医师工号5', '医师姓名5'),
	(86, '2021-04-19 10:07:07', '账号6', '姓名6', '科室编号6', '科室类型6', '药品名称6', '药品类型6', 6, '服用剂量6', '服用周期6', '备注6', '医师工号6', '医师姓名6');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`) VALUES
	(11, '2021-04-19 10:07:07', '用户1', '123456', '姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001'),
	(12, '2021-04-19 10:07:07', '用户2', '123456', '姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002'),
	(13, '2021-04-19 10:07:07', '用户3', '123456', '姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003'),
	(14, '2021-04-19 10:07:07', '用户4', '123456', '姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004'),
	(15, '2021-04-19 10:07:07', '用户5', '123456', '姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005'),
	(16, '2021-04-19 10:07:07', '用户6', '123456', '姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006');

DROP TABLE IF EXISTS `yonghuquyao`;
CREATE TABLE IF NOT EXISTS `yonghuquyao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `shuliang` int DEFAULT NULL COMMENT '数量',
  `jiage` int DEFAULT NULL COMMENT '价格',
  `zongjia` varchar(200) DEFAULT NULL COMMENT '总价',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='用户取药';

DELETE FROM `yonghuquyao`;
INSERT INTO `yonghuquyao` (`id`, `addtime`, `yaopinmingcheng`, `yaopinleixing`, `shuliang`, `jiage`, `zongjia`, `zhanghao`, `xingming`, `sfsh`, `shhf`) VALUES
	(101, '2021-04-19 10:07:07', '药品名称1', '药品类型1', 1, 1, '总价1', '账号1', '姓名1', '是', ''),
	(102, '2021-04-19 10:07:07', '药品名称2', '药品类型2', 2, 2, '总价2', '账号2', '姓名2', '是', ''),
	(103, '2021-04-19 10:07:07', '药品名称3', '药品类型3', 3, 3, '总价3', '账号3', '姓名3', '是', ''),
	(104, '2021-04-19 10:07:07', '药品名称4', '药品类型4', 4, 4, '总价4', '账号4', '姓名4', '是', ''),
	(105, '2021-04-19 10:07:07', '药品名称5', '药品类型5', 5, 5, '总价5', '账号5', '姓名5', '是', ''),
	(106, '2021-04-19 10:07:07', '药品名称6', '药品类型6', 6, 6, '总价6', '账号6', '姓名6', '是', '');

DROP TABLE IF EXISTS `yuyueguahao`;
CREATE TABLE IF NOT EXISTS `yuyueguahao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshibianhao` varchar(200) DEFAULT NULL COMMENT '科室编号',
  `keshileixing` varchar(200) DEFAULT NULL COMMENT '科室类型',
  `yishixingming` varchar(200) DEFAULT NULL COMMENT '医师姓名',
  `guahaofei` int DEFAULT NULL COMMENT '挂号费',
  `guahaoshijian` datetime DEFAULT NULL COMMENT '挂号时间',
  `beizhu` longtext COMMENT '备注',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='预约挂号';

DELETE FROM `yuyueguahao`;
INSERT INTO `yuyueguahao` (`id`, `addtime`, `keshibianhao`, `keshileixing`, `yishixingming`, `guahaofei`, `guahaoshijian`, `beizhu`, `shouji`, `zhanghao`, `sfsh`, `shhf`, `ispay`) VALUES
	(61, '2021-04-19 10:07:07', '科室编号1', '科室类型1', '医师姓名1', 1, '2021-04-19 18:07:07', '备注1', '13823888881', '账号1', '是', '', '未支付'),
	(62, '2021-04-19 10:07:07', '科室编号2', '科室类型2', '医师姓名2', 2, '2021-04-19 18:07:07', '备注2', '13823888882', '账号2', '是', '', '未支付'),
	(63, '2021-04-19 10:07:07', '科室编号3', '科室类型3', '医师姓名3', 3, '2021-04-19 18:07:07', '备注3', '13823888883', '账号3', '是', '', '未支付'),
	(64, '2021-04-19 10:07:07', '科室编号4', '科室类型4', '医师姓名4', 4, '2021-04-19 18:07:07', '备注4', '13823888884', '账号4', '是', '', '未支付'),
	(65, '2021-04-19 10:07:07', '科室编号5', '科室类型5', '医师姓名5', 5, '2021-04-19 18:07:07', '备注5', '13823888885', '账号5', '是', '', '未支付'),
	(66, '2021-04-19 10:07:07', '科室编号6', '科室类型6', '医师姓名6', 6, '2021-04-19 18:07:07', '备注6', '13823888886', '账号6', '是', '', '未支付');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
