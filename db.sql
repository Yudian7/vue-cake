#xz_news[id/title/ctime/img_url/point/content]
USE xz;
CREATE TABLE xz_news(
   id  INT PRIMARY KEY AUTO_INCREMENT,
   title  VARCHAR(255),
   ctime  DATETIME,
   img_url VARCHAR(255),
   point   INT,
   content VARCHAR(2000)
);
INSERT INTO xz_news VALUES(null,'草莓奶油蛋糕',now(),
'http://127.0.0.1:3000/cake01.png',10,'甜润奶油，与草莓的自然甜度搭配');
INSERT INTO xz_news VALUES(null,'黑森林',now(),
'http://127.0.0.1:3000/cake02.png',11,'樱桃酒味，从巧克力卷的缝隙飘出');
INSERT INTO xz_news VALUES(null,'栗蓉暗香',now(),
'http://127.0.0.1:3000/cake03.png',25,'栗泥毛线球，点缀比利时黑巧克力豆');
INSERT INTO xz_news VALUES(null,'小重组(迷迭香套组)',now(),
'http://127.0.0.1:3000/cake04.png',30,'均一，轻褐的千层酥，三种“重组可能”');
INSERT INTO xz_news VALUES(null,'小重组(树莓套组)',now(),
'http://127.0.0.1:3000/cake04.png',22,'均一，轻褐的千层酥，三种“重组可能”');
INSERT INTO xz_news VALUES(null,'小重组(蓝莓套组)',now(),
'http://127.0.0.1:3000/cake04.png',5,'均一，轻褐的千层酥，三种“重组可能”');
INSERT INTO xz_news VALUES(null,'重组',now(),
'http://127.0.0.1:3000/cake04.png',33,'均一，轻褐的千层酥，三种“重组可能”');
INSERT INTO xz_news VALUES(null,'百利甜情人',now(),
'http://127.0.0.1:3000/cake05.png',22,'新切的水果与刚折的玫瑰，甜美、渐浓');
INSERT INTO xz_news VALUES(null,'榴莲飘飘',now(),
'http://127.0.0.1:3000/cake06.png',15,'丰厚乳脂奶油，打入足量榴莲果肉');
INSERT INTO xz_news VALUES(null,'枣儿',now(),
'http://127.0.0.1:3000/cake07.png',7,'红枣奶油戚风，与姜撞奶慕斯');
INSERT INTO xz_news VALUES(null,'芒果奶油蛋糕',now(),
'http://127.0.0.1:3000/cake08.png',8,'芒果百香果慕斯夹心');
INSERT INTO xz_news VALUES(null,'百香果酸乳酪慕斯',now(),
'http://127.0.0.1:3000/cake08.png',55,'冰淇淋口感，不同层次的酸与冰凉');
INSERT INTO xz_news VALUES(null,'心语心愿',now(),
'http://127.0.0.1:3000/cake10.png',24,'椰子香气，蛋糕坯的颗粒感平衡奶油的软滑，烛光');
INSERT INTO xz_news VALUES(null,'黑白巧克力慕斯',now(),
'http://127.0.0.1:3000/cake11.png',33,'白巧克力慕斯的甜，与黑巧克力酱的苦');
INSERT INTO xz_news VALUES(null,'朗姆芝士',now(),
'http://127.0.0.1:3000/cake12.png',35,'清香柠檬与乳酪夹心，微苦、微醺');
INSERT INTO xz_news VALUES(null,'冻慕斯与焗芝士',now(),
'http://127.0.0.1:3000/cake13.png',36,'马斯卡彭慕斯，叠加法国软芝士');
INSERT INTO xz_news VALUES(null,' 6口味',now(),
'http://127.0.0.1:3000/cake14.png',88,'多口味，精装小份');

INSERT INTO xz_news VALUES(null,'草莓奶油蛋糕',now(),
'http://127.0.0.1:3000/cake01.png',10,'甜润奶油，与草莓的自然甜度搭配');
INSERT INTO xz_news VALUES(null,'黑森林',now(),
'http://127.0.0.1:3000/cake02.png',11,'樱桃酒味，从巧克力卷的缝隙飘出');
INSERT INTO xz_news VALUES(null,'朗姆芝士',now(),
'http://127.0.0.1:3000/cake12.png',35,'清香柠檬与乳酪夹心，微苦、微醺');
INSERT INTO xz_news VALUES(null,'冻慕斯与焗芝士',now(),
'http://127.0.0.1:3000/cake13.png',36,'马斯卡彭慕斯，叠加法国软芝士');




#创建表 xz_comment 评论表
CREATE TABLE xz_comment(
  id INT PRIMARY KEY AUTO_INCREMENT,
  content VARCHAR(2000),
  ctime DATETIME,
  nid   INT
);
INSERT INTO xz_comment VALUES(null,'口感丝滑松软，除了贵没毛病。',now(),1);
INSERT INTO xz_comment VALUES(null,'生巧克力的口感，没吃蒲公英之前觉得这个很棒，停不下来，过了蒲公英就不想吃这个了，没有对比没有伤害。',now(),1);
INSERT INTO xz_comment VALUES(null,'和日本白色恋人一个口味，但更便宜',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存的蛋糕，超级好吃',now(),1);
INSERT INTO xz_comment VALUES(null,'下午茶必备首选、',now(),1);
INSERT INTO xz_comment VALUES(null,'口感丝滑松软',now(),1);
INSERT INTO xz_comment VALUES(null,'口感丝滑松软',now(),1);
INSERT INTO xz_comment VALUES(null,'口感丝滑松软',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);
INSERT INTO xz_comment VALUES(null,'颜值与美味并存',now(),1);


#创建商品表
#xz_product
#id       INT
#name     VARCHAR(255)
#img_url  VARCHAR(255)
#price    DECIMAL(10,2) 
#bank     INT

CREATE TABLE xz_product(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  img_url VARCHAR(255),
  price DECIMAL(5,2),
  bank  INT
);
INSERT INTO xz_product VALUES(1,'黑白巧克力慕斯(千阳号)','http://127.0.0.1:3000/img/birth/01.jpg',358.00,6);
INSERT INTO xz_product VALUES(2,'彼尔德(Party)黑白巧克力慕斯','http://127.0.0.1:3000/img/birth/02.jpg',298.00,3);
INSERT INTO xz_product VALUES(3,'杰瑞','http://127.0.0.1:3000/img/birth/06.jpg',298.00,6);
INSERT INTO xz_product VALUES(4,'撒粉款大耳朵图图黑白巧克力慕斯','http://127.0.0.1:3000/img/birth/03.jpg',398.00,1);
INSERT INTO xz_product VALUES(5,'(撒粉款黑猫警长)黑白巧克力慕斯','http://127.0.0.1:3000/img/birth/04.jpg',398.00,9);
INSERT INTO xz_product VALUES(6,'(撒粉款孙悟空)黑白巧克力慕斯','http://127.0.0.1:3000/img/birth/05.jpg',398.00,7);




#购物车:
#xz_cart
#id     编号
#count  数量
#price  价格
#name   商品名称
#pid    商品编号
#uid    用户编号

#SELECT id,count,price,name,pid,uid
#FROM  xz_cart
#WHERE  uid = ?
# pno2-029282823-
CREATE TABLE xz_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  pid INT,
  price DECIMAL(10,2),
  count INT
);
INSERT INTO xz_cart VALUES(null,1,1,10,1);
INSERT INTO xz_cart VALUES(null,1,2,12,2);

#分析:查询购物信息
#[id,uid,price,count],[name]
#xz_cart              xz_product
#多表查询套路
#-将所有表名保存FROM 后
#FROM xz_cart,xz_product
#-为每一张表起一个别名
#FROM xz_cart c,xz_product p
#-查找两张表1个列有关系(= != <= >= )
#WHERE  c.pid = p.id 

SELECT c.uid,c.id,c.count,c.price,p.name
FROM xz_cart c,xz_product p
WHERE  c.pid = p.id 

#用户注册
# 用户登录:id name pwd 
# 用户信息:avatar phone addr ..
# 创建xz_cart xz_login    
CREATE TABLE xz_login(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(25)
  pwd  VARCHAR(32)
);
INSERT INTO xz_login VALUES(null,'tom',md5('123'));
INSERT INTO xz_login VALUES(null,'jerry',md5('123'));

#创建美食表
#xz_shoplist
#id        INT             编号
#img_url   VARCHAR(255)    美食图片
#dname     VARCHAR(255)    店铺名称
#dphone    VARCHAR(25)     店铺电话
#daddr     VARCHAR(255)    店铺地址
#dtime     VARCHAR(25)     店铺营业时间
#dpoint    INT             评分

CREATE TABLE xz_shoplist(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  dname   VARCHAR(255),
  dphone  VARCHAR(25),
  daddr   VARCHAR(255),
  dtime   VARCHAR(25),
  dpoint  INT
);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店1','13999999999','万寿路','9:00~21:00',80);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店2','13999999999','万寿路','9:00~21:00',85);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店3','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店4','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店5','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店6','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店7','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店8','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店9','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店10','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店11','13999999999','万寿路','9:00~21:00',90);
INSERT INTO xz_shoplist VALUES(null,'http://127.0.0.1:3000/niu.png','牛排店12','13999999999','万寿路','9:00~21:00',90);



#小程序--消息列表
#xz_message
#id     INT
#title  VARCHAR(255)
#ctime  DATETIME
#img_url VARCHAR(255)
#desc2   VARCHAR(255)
#content VARCHAR(2000)

CREATE TABLE xz_message(
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  ctime DATETIME,
  img_url VARCHAR(255),
  desc2   VARCHAR(255),
  content VARCHAR(2000)
);
INSERT INTO xz_message VALUES(null,'年终大促1','2019-01-28','http://127.0.0.1:3000/img/banner1.png','好消息好消息','年终大促');
INSERT INTO xz_message VALUES(null,'年终大促2','2019-02-28','http://127.0.0.1:3000/img/banner2.png','好消息好消息','年终大促');
INSERT INTO xz_message VALUES(null,'年终大促3','2019-03-28','http://127.0.0.1:3000/img/banner3.png','好消息好消息','年终大促');
INSERT INTO xz_message VALUES(null,'年终大促4','2019-04-28','http://127.0.0.1:3000/img/banner4.png','好消息好消息','年终大促');
INSERT INTO xz_message VALUES(null,'年终大促5','2019-05-28','http://127.0.0.1:3000/img/banner5.png','好消息好消息','年终大促');







