
CREATE DATABASE `users`
USE `users`;

DROP TABLE IF EXISTS `dbuser`;

CREATE TABLE `dbuser` (
  `userName` VARCHAR(10) PRIMARY KEY  NOT NULL,
  `userPasswd` VARCHAR(10) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT  INTO `dbuser`(`userName`,`userPasswd`) VALUES ('admin','123');

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_src` VARCHAR(100) PRIMARY KEY NOT NULL,
  `goods_name` VARCHAR(1000) NOT NULL,
  `goods_price` VARCHAR(100) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

INSERT  INTO `goods`(`goods_src`,`goods_name`,`goods_price`) 
VALUES ('04.jpg','WIS玻尿酸极润面膜24片套装玻尿酸补水保湿提亮肤色','119'),
('05.jpg','【第2件半价】美康粉黛绿眼膜去黑眼圈眼纹保湿补水','99.9'),
('06.jpg','娥佩兰 薏仁水薏苡仁化妆水爽肤水500ml','52'),
('07.jpg','HANAJIRUSHI 花印 清新净肤卸妆水（滋养型） 500ml+化妆棉','149.9'),
('08.jpg','御泥坊光感提亮补水保湿6件水乳护','99.9'),
('09.jpg','The Ordinary咖啡因眼部精华(祛黑眼圈) 30mlx2','138'),
('10.jpg','迪奥（Dior）烈艳蓝金唇膏-哑光999# 3.5g 传奇红（显色持久 显白 正红色）','238'),
('11.jpg','【限时秒抢】</span>澳洲进口Nulax乐康膏 芦荟西梅乐康片 果蔬防便秘排宿便 减肥塑身 40粒','96'),
('12.jpg','美顿美少女学生专属女士持久淡香水清新自然小众网红香水礼物 美小芸50ml','49.9'),
('13.jpg','G&M绵羊油维生素E面霜250g*2，开启肌肤水动力','65'),
('16.jpg','【买3免2】御泥坊清透盈润玻尿酸补水保湿面膜21片','99.9'),
('17.jpg','【官方授权】</span>SNP海洋燕窝补水眼膜60片/盒，修护锁水','66.6');
