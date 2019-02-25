-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-02-09 10:38:15
-- 服务器版本： 10.1.35-MariaDB
-- PHP 版本： 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `bms`
--

-- --------------------------------------------------------

--
-- 表的结构 `book`
--
CREATE database bms;

CREATE TABLE `book` (
  `id` char(100) NOT NULL COMMENT '图书编号（主键）',
  `typeid` int(11) DEFAULT NULL COMMENT '图书类型编号',
  `bookname` varchar(30) DEFAULT NULL COMMENT '图书名称',
  `author` varchar(30) DEFAULT NULL COMMENT '作者',
  `publish` varchar(30) DEFAULT NULL COMMENT '出版社',
  `publishdate` date DEFAULT NULL COMMENT '出版日期',
  `des` varchar(255) DEFAULT NULL COMMENT '介绍',
  `unitprice` varchar(10) DEFAULT NULL COMMENT '单价',
  `pricture` int(255) NOT NULL COMMENT '库存'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `book`
--

INSERT INTO `book` (`id`, `typeid`, `bookname`, `author`, `publish`, `publishdate`, `des`, `unitprice`, `pricture`) VALUES
('1', 0, '《霍乱时期的爱情》', '马尔克斯', '南海出版公司', '2015-06-01', '《霍乱时期的爱情》内容简介：《霍乱时期的爱情》是加西亚·马尔克斯获得诺贝尔文学奖之后完成的*部小说。讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的、羞怯的、柏拉图式的、放荡的、转瞬即逝的、生死相依的……马尔克斯曾说：“这一部是我*好的作品，是我发自内心的创作。”是20世纪*重要的经典文学巨著之一，被誉为“人类有史以来*伟大的爱情小说”。', '10.0', 0),
('10', 2, '《Python基础教程》', '芒努斯·利·海特兰德', '人民邮电出版社', '2018-02-01', '《Python基础教程》涉及的范围较广，既能为初学者夯实基础，又能帮助程序员提升技能，适合各个层次的Python开发人员阅读参考。', '66.40', 0),
('11', 2, '《Java从入门到精通》', '明日科技', '清华大学出版社', '2016-09-01', '《Java从入门到精通（第4版）》从初学者角度出发，通过通俗易懂的语言、丰富多彩的实例，详细介绍了使用Java语言进行程序开发需要掌握的知识。全书分为28章，包括初识Java，熟悉Eclipse开发工具，Java语言基础，流程控制，字符串，数组，类和对象，包装类，数字处理类，接口、继承与多态，类的高级特性，异常处理......', '54.90', 0),
('112', 0, '《活着》', '余华', '作家出版社', '2012-08-01', '《活着》是一部充满血泪的小说。余华通过一位中国农民的苦难生活 讲述了人如何去承受巨大的苦难；讲述了眼泪的丰富和宽广；讲述了*望 的不存在：讲述了人是为了活着本身而活着…… 《活着》这部小说荣获意大利格林扎纳·卡佛文学奖*高奖项(1998年 )，台湾《中国时报》10本好书奖(1994年)，香港“博益”15本好书奖 (1990年)；并入选香港《亚洲周刊》评选的“20世纪中文小说百年百强” ；入选中国百位批评家和文学编辑评选的“九十年代*有影响的10部作品 ”。', '100', 0),
('12', 2, '《码农翻身》', '刘欣', '电子工业出版社', '2018-05-01', '本书用故事的方式讲解了软件编程的若干重要领域， 侧重于基础性、原理性的知识。第1章讲述计算机的基础知识，包括程序的运行原理，进程、线程、文件系统、I/O系统、数据库原理、TCP/IP，Socket，编译原理的概述，递归等。第2章侧重Java的基础知识，包括Java的历史、JVM、序列化、持久化、JDBC、JSP、动态代理、泛型、注解、日志、JMS、CAS等......', '34.50', 9),
('13', 2, '《算法》', 'Robert Sedgewick　Kevin Wayne', '人民邮电出版社', '2012-10-11', '本书力图研究当今最重要的计算机算法并将一些最基础的技能传授给广大求知者。它适合用做计算机科学进阶教材，面向已经熟悉了计算机系统并掌握了基本编程技能的学生。本书也可用于自学，或是作为开发人员的参考手册，因为书中实现了许多实用算法并详尽分析了它们的性能特点和用途。这本书取材广泛，很适合作为该领域的入门教材。', '78.20', 9),
('14', 2, '《大数据之路》', '阿里巴巴数据技术及产品部', '电子工业出版社', '2017-07-08', '在Alibaba集团内，数据人员面临的现实情况是：集团数据存储已经达到EB级别，部分单张表每天的数据记录数高达几千亿条；在2016年“双11购物狂欢节”的24小时中，支付金额达到了1207亿元人民币，支付峰值高达12万笔/秒，下单峰值达17.5万笔/秒，媒体直播大屏处理的总数据量高达百亿级别且所有数据都需要做到实时、准确地对外披露……巨大的信息量给数据采集、存储和计算都带来了极大的挑战。', '39.5', 9),
('2', 0, '《平凡的世界》', '路遥', '北京十月文艺出版社', '2017-06-01', '这是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人公面对困境艰苦奋斗的精神，对今天的大学生朋友仍有启迪。这是一部全景式地表现中国当代城乡社会生活的长篇小说，本书共三部。作者在近十年问广阔背景上，通过复杂的矛盾纠葛，刻划了社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', '54.00', 6),
('3', 0, '《解忧杂货店》', '东野圭吾', '南海出版社', '2014-05-01', '日本著名作家东野圭吾的《解忧杂货店》，出版当年即获中央公论文艺奖。作品超越推理小说的范围，却比推理小说更加扣人心弦。\r\n　　僻静的街道旁有一家杂货店，只要写下烦恼投进店前门卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答：因男友身患绝症，年轻女孩静子在爱情与梦想间徘徊；克郎为了音乐梦想离家漂泊，却在现实中寸步难行；少年浩介面临家庭巨变，挣扎在亲情与未来的迷茫中……', '19.70', 9),
('4', 0, '《追风筝的人》', '卡勒德·胡塞尼', '上海人民出版社', '2006-05-01', '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。\r\n　　成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？', '18.00', 9),
('5', 1, '《曼巴精神：科比自传》', '科比·布莱恩特', '金城出版社', '2018-11-01', '《曼巴精神》是篮球巨星科比·布莱恩特的自传，也是他对自己篮球生涯的惟一一次全面总结。\r\n这是一本存有大量科比笔迹的出版物，科比的亲笔手书贯穿全书始终，足见科比对这本书用心至深。\r\n本书以“曼巴精神”为主旨，将带读者进入科比的精神世界，发现这位篮球史上传奇球星的成功秘密。', '93.00', 8),
('6', 1, '《我的前半生》', '爱新觉罗溥仪', '北京联合出版有限公司', '2018-09-01', '爱新觉罗•溥仪是秦始皇确立皇帝制度以来的*后一位君主，是清朝的亡国之君，1912年2月，他跌下统治地位的时候年仅六岁。《我的前半生》（全本）是溥仪的自传，溥仪从自己的家族背景写起，回顾了他在入宫做了皇帝、遭遇辛亥革命、满清皇帝退位、中华民国成立、北洋军阀混战、出宫、客寓天津，做伪满洲国皇帝、逃亡、直至解放后接受改造，成为普通公民的全部经历。', '62.70', 8),
('7', 1, '《乔布斯传》', '明道', '中国华侨出版社', '2013-10-01', '《乔布斯传：神一样的男人》叙述了乔布斯曲折的经历和复杂的个性，分析了他人生中难以被人理解的几大疑点。', '14.60', 9),
('8', 1, '《曾国藩传》', '梅寒', '江苏凤凰文艺出版社', '2018-08-01', '《曾国藩传》讲述了晚晴重臣曾国藩跌宕起伏的一生。', '24.00', 9),
('9', 1, '《拿破仑传》', '埃米尔·路德维希', '长江文艺出版社', '2013-06-01', '《拿破仑》是享誉世界的德国传记大师埃米尔·路德维希的代表作，是拿破仑传记中的经典作品之一。\r\n\r\n本书描述了拿破仑叱咤风云的一生中经历过的各次重大战役及其辉煌的军事成就。拿破仑代表一个时代，被称为一代“军事巨人”，同时也是一个伟大的政治天才。作者通过翔实的史料，将拿破仑的伟大魅力和历史功过真实生动地展现在读者面前。史实与细致入微的心理刻画，以及栩栩如生的人物描写的完美结合使本书兼具文学性与可读性。\r\n\r\n本书是根据德文原文翻译出版，是一部忠实于原著的译本。', '23.80', 9);

-- --------------------------------------------------------

--
-- 表的结构 `booktype`
--

CREATE TABLE `booktype` (
  `id` int(11) NOT NULL COMMENT '图书类型编号（主键）',
  `typename` varchar(30) DEFAULT NULL COMMENT '图书类型名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `booktype`
--

INSERT INTO `booktype` (`id`, `typename`) VALUES
(0, '小说'),
(1, '传记'),
(2, '计算机');

-- --------------------------------------------------------

--
-- 表的结构 `borrowbook`
--

CREATE TABLE `borrowbook` (
  `borrowid` int(255) NOT NULL,
  `readerid` char(20) NOT NULL COMMENT '读者编号（组合主键）',
  `bookid` char(10) NOT NULL COMMENT '图书编号（组合主键）',
  `borrowdate` date DEFAULT NULL COMMENT '借阅日期',
  `returndate` date DEFAULT NULL COMMENT '归还日期',
  `fine` varchar(10) DEFAULT '0.00' COMMENT '罚金'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `borrowbook`
--

INSERT INTO `borrowbook` (`borrowid`, `readerid`, `bookid`, `borrowdate`, `returndate`, `fine`) VALUES
(1, '1612205109', '0', '2018-12-19', NULL, '0.00'),
(2, '1612205109', '112', '2018-12-19', NULL, '0.00'),
(3, '1612205101', '12', '2018-12-01', '2018-12-13', '1.00'),
(4, '1612205109', '2', '2018-12-19', NULL, '0.00'),
(5, '1612205109', '5', '2018-12-19', NULL, '0.00'),
(6, '1612205109', '6', '2018-12-19', NULL, '0.00'),
(7, '1612205109', '7', '2018-09-08', '2018-10-05', '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `reader`
--

CREATE TABLE `reader` (
  `readerid` varchar(20) NOT NULL COMMENT '读者编号（主键）',
  `name` char(20) DEFAULT NULL COMMENT '读者姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` char(4) DEFAULT NULL COMMENT '性别',
  `phone` char(11) DEFAULT NULL COMMENT '联系电话'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `reader`
--

INSERT INTO `reader` (`readerid`, `name`, `age`, `sex`, `phone`) VALUES
('1612205109', '邹彬', 18, '男', '175701123');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(100) UNSIGNED ZEROFILL NOT NULL COMMENT '用户编号（主键）',
  `name` varchar(20) DEFAULT NULL COMMENT '用户名称',
  `password` varchar(20) DEFAULT '000000' COMMENT '用户密码'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
(0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000019, '1612205109', '000000'),
(0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000020, 'root', '123456');

--
-- 转储表的索引
--

--
-- 表的索引 `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `booktype`
--
ALTER TABLE `booktype`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `borrowbook`
--
ALTER TABLE `borrowbook`
  ADD PRIMARY KEY (`borrowid`);

--
-- 表的索引 `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`readerid`) USING BTREE;

--
-- 表的索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `borrowbook`
--
ALTER TABLE `borrowbook`
  MODIFY `borrowid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '用户编号（主键）', AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
