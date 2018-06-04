CREATE DATABASE  IF NOT EXISTS `invitemsg` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `invitemsg`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: invitemsg
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (4,'123','老王','招聘文员 - 综合管理部','2018-04-12 12:13:59'),(5,'123','老王','招聘文员 - 综合管理部','2018-04-12 12:20:47'),(6,'123','老王','招聘信用卡推销员 - 信用部','2018-04-12 22:43:30'),(7,'小明','小明','Java开发工程师','2018-05-20 10:13:04');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fpass`
--

DROP TABLE IF EXISTS `fpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fpass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `sinfo` varchar(255) DEFAULT NULL,
  `fpass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fpass`
--

LOCK TABLES `fpass` WRITE;
/*!40000 ALTER TABLE `fpass` DISABLE KEYS */;
/*!40000 ALTER TABLE `fpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hbnews`
--

DROP TABLE IF EXISTS `hbnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `content` text,
  `savetime` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hbnews`
--

LOCK TABLES `hbnews` WRITE;
/*!40000 ALTER TABLE `hbnews` DISABLE KEYS */;
INSERT INTO `hbnews` VALUES (2,'2015届就业质量报告:南开天大毕业生近半数留津','人民网-财经频道 ','201404212124280001.jpg','<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">人民网北京4月21日电 （记者 乔雪峰）4月14日，海南决定从2014年1月1日起，调整企业退休人员基本养老金，每人每月增加70元。人民财经统计显示，截至4月18日，全国已有25个省区市已完成了调整企业退休人员基本养老金水平的工作，北京每月平均养老金水平达到3050元排在首位。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">据不完全统计，在25个省区市中，共有北京、青海、新疆、河北、甘肃、江苏、云南等8个省份公布了2014年企业退休人员月人均养老金水平，其中，北京每月平均养老金水平达到3050元排在第一位。青海、新疆、河北、甘肃、江苏、云南，月人均养老金水平分别为2593元、2298元、2100元、2065元、2027、 1820元。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">1月8日，国务院常务会议决定从2014年1月1日起，将企业退休人员基本养老金水平再提高10%，并向其中有特殊困难的群体适当倾斜。全国7400多万企业退休人员因此受益。根据惯例，各地自政策发布后即可着手准备制定上调的具体文件，先由省一级劳动保障厅来制定政策，再依据自身的情况来制定相应的细则。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">此次养老金的上调依然采取普遍调整和适当倾斜相结合的办法。其中，普遍调整基本都按缴费年限和绝对额普遍上调，并注重向退休时间早、待遇水平偏低的退休人员倾斜，就目前公布的基本养老金定额增长的数目来看，江苏每月普调40元，排在最后一位。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">但在具体的调整办法中，各个省区市不尽相同，以平均养老金水平最高的北京为例，具体来说，退休人员2013年年底前的基本养老金由高到低划分四档，分别是4770元(含)以上的每人每月增加60元；3770元(含)至4770元之间的每人每月增加70元；2773元(含)至3770元之间的每人每月增加100元；2773元以下每人每月增加150元。而且不光对企业退休、退职、退养人员最低养老金标准进行了调整，还相应提高了基本养老金的最低标准。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">在普通调整中，除了绝对额普遍上调，还有按退休人员缴费年限提高养老金，25个省份均明确了在定额增长的基础上，缴费年限每满一年，每月增发养老金2~5元不等。大部分省份养老金的调整还会对退休时间早、年龄偏大的退休人员倾斜，在普遍调整的基础上，不同高龄的人群每人每月可以多拿一定数目的养老金。仍以北京为例，65至69周岁的退休人员每人每月再增加90元；70至74周岁每人每月再增加110元；75至79周岁每人每月再增加130元；80周岁以上每人每月再增加150元。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">这是从2005年以来至今连续10年增加企业退休人员养老金了，企业退休人员的月平均养老金从2005年的714元，提高到2014年的2000元左右。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">人力资源和社会保障部新闻发言人李忠表示，今年企业退休人员养老金的上调标准是综合考虑了职工平均工资的增长、物价上涨、养老保险基金和财政承受能力，以及企业退休人员养老金水平等因素来确定的，还有一个非常重要的方面就是要坚持多缴多得、长缴多得，实现养老金水平的稳步提高。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">虽然养老金年年涨，但是肉、油、蔬菜也一直在涨价，开支一直在增加，每个月的养老金也仅够勉强维持生活，因此这样的调整在企业退休职工看来，含金量并不高。</p>\r\n<p checkedbycsshelper=\"true\" style=\"text-indent: 2em\">同时，养老金差距也不可忽视。差距不单存在于机关事业单位退休人员与企业退休人员之间，很多国企退休员工养老金也明显高于非国企员工。</p>','2018-04-12 14:00:22','新闻'),(3,'高校毕业生一次性求职创业补贴政策有调整','人民网','201404212127140002.jpg','<p>　<strong>英国：职业年金是养老金重要支柱</strong></p>\r\n<p>　　英国就业与养老金部2012年8月公布的数据显示，2012年，英国有13万退休人员每周只能领取7英镑的基本养老金，同时有13万人每周可领取200多英镑基本养老金。这意味着，在其现行的养老金制度下，退休者每年领取基本养老金差额最高可达1万英镑。曲大爷每月领到上千英镑养老金并非没有可能，但不是每个退休人员都像他一样&ldquo;幸运&rdquo;。</p>\r\n<p sizset=\"49\" sizcache=\"1\">　　目前，英国的养老<a class=\"ot1\" href=\"http://insurance.jrj.com.cn/\">保险</a>制度由国家养老金计划、职业养老金计划和个人养老金计划等三个支柱构成。</p>\r\n<p sizset=\"50\" sizcache=\"1\">　　国家养老金计划包括&ldquo;国家基本养老金计划&rdquo;和&ldquo;第二养老金计划&rdquo;，由政府提供，并由政府承担兜底责任。基本养老金已覆盖所有公营和私营部门的雇员。雇员和雇主共同缴费，形成 &ldquo;国民保险<a class=\"ot1\" href=\"http://fund.jrj.com.cn/\">基金</a>&rdquo;。该基金实行现收现付制，结余资金全部购买国债或存<a class=\"ot1\" href=\"http://bank.jrj.com.cn/\">银行</a>，禁止进行<a class=\"ot1\" href=\"http://stock.jrj.com.cn/\">股票</a>投资。第二养老金主要目标人群是非常规就业者，如中低收入者、长期患病或身体残疾的从业人员，任何已缴纳了基本养老金保费同时又没有职业养老金或私人养老金的雇员将自动加入第二养老金计划。在基本养老金缴费年限相同的情况下，第二养老金根据不同收入标准支付不同的养老金。</p>\r\n<p>　　由于基本养老金替代率较低，仅能保证员工退休后的基本生活需要，大部分人退休后的主要收入来源于职业养老金。职业养老金自2012 年10 月起成为更具强制性的职业年金，所有年收入7475 英镑以上、年龄在22 岁到法定退休年龄之间、没有参加任何职业养老计划的都将&ldquo;自动加入&rdquo;职业养老金计划。雇主缴纳雇员工资的3%，雇员本人缴纳4%，政府以税收让利的形式计入1%，合计8%的缴费注入雇员的个人账户。职业养老金计划积累的资金主要投资于以股票为主的资本市场。职业养老金参与者占英国全部人口的45%左右，已经成为英国养老金体系中最重要的组成部分。</p>\r\n<p sizset=\"53\" sizcache=\"1\">　　个人养老金计划包括私人养老金、养老<a class=\"ot1\" href=\"https://t.jrj.com/user/invite.jspa?ic=ckkf\">储蓄</a>和个人寿险等。私人养老金主要面向众多中小企业，包括大量个体工商业者、自雇人士和非常规就业者，个人可以自愿选择是否加入个人养老金计划，并且待遇水平与个人缴费相关联，体现多缴多得的原则。</p>\r\n<p>　　<strong>德国：鼓励发展&ldquo;补充养老保险&rdquo;</strong></p>\r\n<p>　　德国的养老保险制度包括法定养老保险、企业养老保险和私人养老保险三部分，后两者又被称为&ldquo;补充养老保险&rdquo;。</p>\r\n<p>　　在德国，法定养老保险的覆盖面较广，既包括一般的养老金，也包括职业康复待遇、职业能力或就业能力丧失养老金等。</p>\r\n<p>　　法定养老保险资金主要来源于雇主和雇员缴费，费率根据实际需要随时调整，目前的缴费比例为工资的19.5%，由雇主和雇员各负担一半。养老金根据退休者退休时的工资和工龄长短计算，但最高不超过退休前最后一个月工资的75%。</p>\r\n<p>　　此外，德国还大力鼓励企业养老保险和私人养老保险。与法定养老保险不同的是，企业养老保险采取&ldquo;直接支付原则&rdquo;，即职工在工作期间积攒了多少企业养老保险，退休后他就能得到相应数额的养老金。目前，德国法定养老保险、企业养老保险和私人养老保险所支付养老金的比例大约分别为70%、20%和10%。</p>','2018-04-12 14:00:22','新闻'),(4,'宏碁“求职大巴”全力相助毕业生','胡吉','201404212128330003.jpg','<p>央广网财经综合报道 近日，北京、青海、新疆、河北、甘肃、江苏、云南等省份公布了2014年企业退休人员月人均养老金水平，其中，北京每月平均养老金水平达到3050元排在第一位。青海、新疆、河北、甘肃、江苏、云南，月人均养老金水平分别为2593元、2298元、2100元、2065元、2027、 1820元。</p>\r\n<p>　　1月8日，国务院常务会议决定从2014年1月1日起，将企业退休人员基本养老金水平再提高10%，并向其中有特殊困难的群体适当倾斜。全国7400多万企业退休人员因此受益。根据惯例，各地自政策发布后即可着手准备制定上调的具体文件，先由省一级劳动保障厅来制定政策，再依据自身的情况来制定相应的细则。</p>\r\n<p>　　以北京为例，调整后，北京企业退休人员养老金每月人均增加277元,平均养老金水平将提高到3050元。此次调整将从2014年1月1日起执行，1、2月增加的养老金将在3月底之前为退休人员补发到位。</p>\r\n<p>　　<strong>按缴费年限调整基本养老金</strong></p>\r\n<p>　　《关于北京市2014年调整企业退休人员基本养老金的通知》中规定，缴费年限满10年及其以上的退休人员，缴费年限每满1年，每月增加3.5元；缴费年限不满10年的退休人员（不含建设征地农转工退休人员），每人每月增加35元；缴费年限不满15年的建设征地农转工退休人员，每人每月增加52.5元。</p>\r\n<p>　　<strong>分档调整 向低收入者倾斜</strong></p>\r\n<p>　　退休人员2013年年底前的基本养老金由低到高划分四档，分别是月养老金低于2773元的，每人每月增加150元；月养老金在2773元及其以上，低于3770元的，每人每月增加100元；月养老金在3770元及其以上，低于4770元的，每人每月增加70元；养老金在4770元及其以上的，每人每月增加60元。</p>\r\n<p>　　此次调整实施由少到多的绝对额标准逐渐加大倾斜力度，保障了待遇水平偏低的人员能够多增加基本养老金。</p>\r\n<p>　　<strong>按年龄划分 向高龄退休者倾斜</strong></p>\r\n<p>　　针对退休时间早、年龄偏大的退休人员，为了进一步提高他们的基本生活水平，体现中华民族爱老、敬老的优秀传统品德，自2007年起，北京在调整企业退休人员基本养老金时均向高龄退休人员适度倾斜。</p>\r\n<p>　　今年仍坚持这一做法，通知规定，2013年12月31日前年满65周岁不满70周岁的，每人每月再增加90元；年满70周岁不满75周岁的，每人每月再增加110元；年满75周岁不满80周岁的，每人每月再增加130元；年满80周岁及其以上的，每人每月再增加150元。</p>\r\n<p>　　<strong>附：</strong></p>\r\n<p>　　<strong>关于北京市2014年调整企业退休人员基本养老金的通知 </strong></p>\r\n<p>　　<strong>京人社养发[2014]48号 </strong></p>\r\n<p>　　<strong>2014年03月12日 </strong></p>\r\n<p>　　京人社养发[2014]48号</p>\r\n<p>　　2014年03月12日</p>\r\n<p>　　各区县人力资源和社会保障局，市属各企业主管局、总公司劳动处，各中央在京企业，各计划单列企业：</p>\r\n<p>　　为保障基本养老保险社会统筹范围内退休人员（含退职、退养人员，下同）的基本生活，经市政府批准，现对2014年基本养老金调整的有关问题通知如下：</p>\r\n<p>　　一、2013年12月31日前，经批准办理退休手续并按月享受基本养老保险待遇的人员（不含机关、财政全额供款和差额供款事业单位中执行机关、事业单位退休费计发办法和调整政策的劳动合同制工人），自2014年1月1日起调整基本养老金。</p>\r\n<p>　　二、退休人员按缴费年限（含视同缴费年限，不含折算工龄，下同）调整基本养老金。缴费年限满10年及其以上的退休人员，缴费年限每满1年，每月增加3.5元；缴费年限不满10年的退休人员（不含建设征地农转工退休人员），每人每月增加35元；缴费年限不满15年的建设征地农转工退休人员，每人每月增加52.5元。</p>\r\n<p>　　三、退休人员按下列绝对额调整基本养老金：按本通知规定调整基本养老金前，月养老金低于2773元的，每人每月增加150元；月养老金在2773元及其以上，低于3770元的，每人每月增加100元；月养老金在3770元及其以上，低于4770元的，每人每月增加70元；养老金在4770元及其以上的，每人每月增加60元。</p>\r\n<p>　　按绝对额增加养老金后（不含按本通知第二条增加的调整金额），上一档养老金水平低于下一档调整后上限的，按下一档调整后的上限确定（具体标准见附件）。</p>\r\n<p>　　四、按照《中共中央办公厅、国务院办公厅转发人事部等部门的通知》（中办发[2003]29号）精神，退休的军队转业干部按本通知第二条、第三条规定调整基本养老金后，低于3050元/月的，补足到3050元/月。</p>\r\n<p>　　五、按照原劳动和社会保障部、统战部、财政部、民政部《关于进一步解决原工商业者生活困难问题的通知》（劳社部发[2002]9号）精神，原工商业者按本通知第二条、第三条规定调整基本养老金后，低于3050元/月的，补足到3050元/月（不含退职的原工商业者）。</p>\r\n<p>　　六、经国家或本市高级专业技术职称评审委员会评审通过，并在退休前被单位聘用为高级专业技术职务的人员，按相应管理权限批准的高级政工师及劳动部门批准的高级技师，按本通知第二条、第三条调整基本养老金后，低于3050元/月的，补足到3050元/月（不含退职的高级专业技术人员）。</p>\r\n<p>　　七、建国前参加革命工作，按原劳动人事部《关于建国前参加工作的老工人退休待遇的通知》（劳人险[1983]3号）规定，享受原标准工资100%退休费的老工人，1937年7月7日至1945年9月2日参加革命工作的，每人每月增加440元；1945年9月3日至1949年9月30日参加革命工作的，每人每月增加420元。</p>\r\n<p>　　八、在按照上述规定增加基本养老金的基础上，2013年12月31日前年满 65周岁及其以上的退休人员，再按照下列标准增加基本养老金：</p>\r\n<p>　　年满65周岁不满70周岁的，每人每月再增加90元；年满70周岁不满75周岁的，每人每月再增加110元；年满75周岁不满80周岁的，每人每月再增加130元；年满80周岁及其以上的，每人每月再增加150元。</p>\r\n<p>　　九、按照本通知第七条、第八条规定增加的基本养老金，作为享受标准工资100%退休费的老工人每年增发1&mdash;3个月生活补助费的基数。其增加部分自本通知执行之月起，一次性全额发给。</p>\r\n<p>　　十、按照原北京市劳动和社会保障局《关于印发的通知》（京劳社养发[2001]74号），参加基本养老保险的有正常事业费的中央转制单位，转制前已退休（退职）人员基本养老金的调整，仍执行原劳动和社会保障部、原人事部、财政部、科技部、建设部《关于转制科研机构和工程勘察设计单位转制前离退休人员待遇调整等问题的通知》（劳社部发[2002]5号）的规定。</p>\r\n<p>　　十一、自2014年1月1日起，按月领取基本养老金的退休人员，月基本养老金的最低标准调整为1463元；按月领取退职生活费的退职人员，月退职生活费的最低标准调整为1331元；按月领取退养生活补助费的人员及按月领取养老生活补助费的原临时工养老人员（原签定短期劳动合同的人员），月退养生活补助费、养老生活补助费的最低标准调整为1210元。</p>\r\n<p>　　按照本通知规定调整基本养老金的人员，调整后仍不足上述最低标准的，补足到最低标准。</p>\r\n<p>　　十二、本通知执行中的有关问题，由北京市人力资源和社会保障局负责解释。</p>','2018-04-12 14:00:22','新闻'),(5,'黄山高校毕业生求职创业补贴扩面','黄华','201404212130330004.jpg','<div id=\"daodu\">[<b>导读</b>]<span id=\"ReportIDLogograph\">如何建立起与经济社会发展相适应、切实解决这一新型居民群体养老问题的社会养老保险制度，有效调动农民响应新型城镇化的积极性、主动性,切实实现统筹城乡发展、推进全面建设小康社会的进程，是摆在我们党和政府面前的一道难题，而推行了四五年，已在全国普遍开展的新型城乡居民养老保险政策，从一经开展，就显示出与城镇化建设极不适应的情况，面对这一困境，新型城乡养老保险该何去何从？</span></div>\r\n<p><span id=\"ReportIDtext\">　　近年来，随着我国经济社会发展改革的深入，新型城镇化成了保持社会经济发展增速的驱动力和地方政府推动社会经济发展的主导方向，在这一变革浪潮之下，农民，作为土地的主人，在逐步失去自己的农村家园，转变为新型城镇居民，他们的衣食住行、就业、养老等成了时代变革中的一道道难题，其中的养老问题更是影响社会发展稳定的重要因素。如何建立起与经济社会发展相适应、切实解决这一新型居民群体养老问题的社会养老保险制度，有效调动农民响应新型城镇化的积极性、主动性,切实实现统筹城乡发展、推进全面建设小康社会的进程，是摆在我们党和政府面前的一道难题，而推行了四五年，已在全国普遍开展的新型城乡居民养老保险政策，从一经开展，就显示出与城镇化建设极不适应的情况，面对这一困境，新型城乡养老保险该何去何从？<br />\r\n<br />\r\n<strong>　　新型城镇化对农村社会的冲击及产生的影响<br />\r\n</strong><br />\r\n　　新型城镇化对农村社会最直接的冲击是农民土地被征占，农民不能再依靠土地获取收益，传统的靠土地种植粮食作物和经济作物维持家庭生计甚至养老来源的方式已不复存在，这对已满60周岁以上年老的农民来说，只有现行的新型城乡居民养老保险政策提供的每月55元的基本养老金和子女偶尔的孝敬来维持生活。而对年轻一代的农民来说，自己老人的养老现状和本身文化素质不高、无特长和技能、无稳定的工作岗位、无力承担长期高额的职工养老保险缴纳费用，使他们对自己未来的养老问题更是忧虑不堪。这样的困境不但深深的困绕了农民，更直接的造成了我国目前的新型城镇化遭遇了来自这一群体的诸多阻碍和挑战，各级政府和相关部门不得不把主要精力和力量用于征地拆迁、农民安置等相关工作上，极大地影响了政府的行政能力，不断地产生各种各样的社会矛盾和问题。<br />\r\n</span></p>','2018-04-12 14:00:22','新闻'),(6,'求职装备分期购 宏碁携人人网送福利','保监会','201404212131420005.jpg','<p>&nbsp;&nbsp;&nbsp;&nbsp;单位：万元 公司名称 企业年金缴费 受托管理资产 投资管理资产 太平养老 364653.17 3252314.82 3330874.94 平安养老 540334.45 7602144.76 8464686.36 国寿养老 590340.04 10785810.13 7413854.95 长江养老 86700.05 3800618.07 3927893.39 泰康养老 74864.83 1041246.71 &mdash;&mdash; 合计 1656892.54 26482134.49 23137309.63 注：1、企业年金缴费、受托管理资产、投资管理资产的统计口径见表1。 2、以上数据来源于各养老保险公司报送保监会统计报表数据，未经审计，目前统计频度暂为季度报。</p>','2018-04-12 14:00:22','新闻'),(7,'如何看待亲友陪同求职者面试的现象?','彭锡 ','201603121149240005.jpg','<p>云南网讯 （记者 彭锡）4月21日，云南省人大举行《云南省<a target=\"_blank\" href=\"http://travel.hexun.com/\">旅游</a>条例》（以下简称《条例》）修订施行新闻发布会。记者了解到，该《条例》将于5月1日起施行，这也是我国去年10月1日《旅游法》颁布实施后，第一个与之衔接的地方性旅游法规。</p>\r\n<p>　　<strong>加大保障消费者合法权益</strong></p>\r\n<p>　　据介绍，《条例》共六十一条，由总则、旅游促进与发展、旅游资源保护与开发、旅游经营与服务、旅游监管与权益保障、<a target=\"_blank\" href=\"http://law.hexun.com/\">法律</a>责任及附则等七章组成。</p>\r\n<p>　　省人大常委会外侨工委副主任王云生表示，2005年《云南省旅游条例》施行，这对建立健全我省旅游执法体系，加强旅游行业管理，规范旅游市场秩序，促进我省旅游业发展起到了积极地推动作用。但随着经济的发展，我省旅游业发展出现了一些新情况与新问题，如旅游市场化程度极大提高，形成了多元主体相互竞争、共同发展的新格局，需要通过制度建设加强对旅游经营者和旅游从业人员的管理和规范，加大保障消费者合法权益的力度。</p>\r\n<p>　　&ldquo;特别是去年《中华人民共和国旅游法》正式实施后，我省的原《条例》需要根据上位法作相应修改，以维护法制统一。&rdquo;王云生说，&ldquo;3月28日，省十二届人大常委会第八次会议表决通过了《云南省旅游条例》，并将于今年5月1日起施行。&rdquo;</p>\r\n<p>　　他表示，《条例》的出台，标志着我省旅游法制化建设、依法治旅、依法兴旅迈出了新的步伐，为我省旅游强省建设提供了重要的法律支撑。<!--page--></p>\r\n<p>　　<strong>旅行社须参与旅游组合保险</strong></p>\r\n<p>　　记者获悉，即将实施的《条例》制定了一系列有创新性、特色化的规定，符合我省旅游业发展的客观需要，进一步突出强化了法规措施的针对性和可操作性。其中的一个特点是规定旅行社、旅游住宿企业、旅游车船企业等及其它一些高风险旅游项目经营者应当参与<a target=\"_blank\" href=\"http://stockdata.stock.hexun.com/002059.shtml\">云南旅游</a>(<a target=\"_blank\" href=\"http://stockdata.stock.hexun.com/002059.shtml\">002059</a>,<a target=\"_blank\" href=\"http://guba.hexun.com/002059,guba.html\">股吧</a>)组合<a target=\"_blank\" href=\"http://insurance.hexun.com/\">保险</a>（<a target=\"_blank\" href=\"http://www.fangxinbao.com/\">和讯放心保</a>）统保统筹。</p>\r\n<p>　　记者了解到，该《条例》施行后，旅行社、旅游住宿企业、旅游车船企业等及其它一些高风险旅游项目经营者应当参与云南旅游组合保险统保统筹。未参与云南旅游组合保险统保统筹的，由旅游行政主管部门责令改正，并处1万元以上5万元以下罚款；拒不改正的，由旅游行政主管部门或者有关部门吊销业务经营许可证。</p>\r\n<p>　　云南旅发委法规处相关负责人解释称，《条例》中的旅游保险组合包含的&ldquo;保险项目&rdquo;均为根据相关法律法规设定的&ldquo;强制责任险&rdquo;，具体包括：全国&ldquo;旅行社责任保险统保示范项目&rdquo;<a target=\"_blank\" href=\"http://www.fangxinbao.com/baoxian/zhongjixian/\">保险产品</a>；旅游车道路客运承运人责任保险以及旅行社责任保险统保示范项目附加超赔责任保险。</p>\r\n<p>　　据他介绍，2009年以来，云南实行集中统一的&ldquo;云南旅游组合保险&rdquo;统保、统赔制度。该保险制度实施以来，有效控制了保险成本，相应降低<a target=\"_blank\" href=\"http://www.fangxinbao.com/feiLv/zhongjixian/\">保费</a>，提高保险服务和风险管理水平；有效促进了各利益主体的责任划分，确定了合理的保险保障范围，提升风险化解的能力。截止到2013年底，参加&ldquo;云南旅游组合保险&rdquo;统保统筹的旅行社为528家，占全省旅行社总数的78.81%，其中出境组团旅行社全部参加；参加云南旅游组合保险的旅游车公司57家，旅游车辆为2600余辆，占全省旅游车总数约的52.06%；通过保险公司代旅行社及旅游车企业赔偿旅游者损失累计金额达5600余万元。</p>\r\n<p>　　&ldquo;实践证明，&quot;云南旅游组合保险&quot;统保、统赔制度已成为云南旅游安全生产及旅游者权益保障的最后一道&quot;防火墙&quot;。&rdquo;<!--page--></p>\r\n<p>　　<strong>强化了旅游综合监管职能</strong></p>\r\n<p>　　此外，《条例》还强化了旅游的综合监管职能。规定要建立健全旅游业发展综合协调机制、建立旅游市场监管行政执法与行政监察联动工作机制以及我省边境旅游方面的多部门参加的边境旅游工作机制等。</p>\r\n<p>　　如《条例》规定县级以上人民政府应当加强对本行政区域旅游业监督管理的统筹协调，建立旅游市场监管行政执法与行政监察联动工作机制，督促有关部门依法履行职责。旅游行政主管部门应当会同公安、交通运输等有关部门建立旅游联合执法机制，加强对旅游市场和旅游服务质量的监督检查，依法查处旅游违法违规行为。</p>\r\n<p>　　另一方面，《条例》还加大了对违法行为的惩处力度。对旅游活动中经常发生的一些违规违法行为，特别是上位法没有明确规定的，《条例》也设置了相应的法律责任。</p>\r\n<p>　　《条例》对一些经营贵重旅游商品的购物企业也进行了规范，表示这些企业应缴纳质量<a target=\"_blank\" href=\"http://jingzhi.funds.hexun.com/159001.shtml\">保证金</a>。如果违反条例规定，未交纳质量保证金的，将由旅游行政主管部门责令限期交纳；拒不交纳的，处1万元以上5万元以下罚款。</p>\r\n<p>　　最后，《条例》还对旅游经营者一些行为作了具体规定，如旅游经营者及其从业人员不得纠缠、胁迫旅游者购买旅游商品和服务；不得对未购买旅游商品和服务的旅游者使用侮辱性语言；不得利用虚假宣传或者使人误解的方式诱骗旅游者进行消费；不得有其他侵害旅游者合法权益的行为</p>','2018-04-12 14:00:22','新闻'),(8,'长沙岳麓区洋湖街道为求职者量身定制“饭碗”',' 赵瑞雪','201603121149140004.jpg','<p>记者从17日的山东省居民大病保险政策解读新闻发布会上了获悉，自4月1日起，山东省全面实施居民大病保险制度。对基本医保补偿后个人负担的合规费用超过居民大病保险起付标准的部分，由大病保险再给予补偿，每人每年最高补偿限额为20万元。</p>\r\n<p>大病保险政策规定，凡参加了居民基本医疗保险的参保人员（包括农民和城镇居民），全部纳入居民大病保险保障范围。新生儿按当地规定办理居民基本医疗保险参保手续的，可以自出生之日起享受居民大病保险待遇。</p>\r\n<p>山东省人力资源社会保障厅厅长韩金峰介绍，2014年，山东省居民大病保险起付标准为1万元，起付标准以上个人负担的合规医疗费用，按医疗费用的数额分段给予补偿，个人负担合规医疗费1万元以上10万元（含10万元）以下部分给予50%的补偿，10万元以上部分给予60%的补偿，没人每年最高补偿限额为20万元。</p>\r\n<p>韩金峰说，例如，一位农民患大病，共花费医疗费30万元，政策范围内费用为27万元，基本医保可以报销10万元，那么基本医保补偿后个人负担的费用为17万元。按照大病保险制度可以再进行报销：10万元以下部分，扣除1万元起付标准后按50%报销4.5万元，剩下的7万元按60%报销4.2万元，合计报销8.7万元。如果加上基本医保报销的10万元，共可报销18.7万元。</p>\r\n<p>在资金筹集方面，2014年山东省居民大病保险人均筹资32元，参保个人不缴费，从居民基本医疗保险基金中划拨。</p>\r\n<p>韩金峰说，去年山东省已开展新农合重大疾病医疗保险，为搞好新旧政策的衔接，2014年，对农村居民和城镇居民患原新农合重大疾病医疗保险确定的20类重大疾病发生的医疗费用，单独给予补偿。所发生的医疗费用经居民基本医疗保险补偿后，个人负担合规医疗费用1万元以上的部分给予73%补偿，1万元以下的部分给予17%补偿，每人每年最高补偿限额为20万元。</p>\r\n<p>自2015年起，山东省居民大病保险不再执行２０类重大疾病补偿政策，统一按医疗费用额度进行补偿。</p>\r\n<p>据韩金峰介绍，截止目前，山东省大病保险已补偿962人次，费用总额376.1万元</p>','2018-04-12 14:00:22','新闻'),(9,'这是职业病防治中保护劳动者的一项基本措施','职业病','201603121148500003.jpg','<p>这是职业病防治中保护劳动者的一项基本措施。工伤是指劳动者由于工作原因受到事 故伤害和职业病伤害的总称，将职业病列人工伤的直接理由就是劳动者是在用人单位中引致的疾病和蒙受的损害。将职业病纳人工伤社会保险，不仅有利于保障职业病病人的合法权益，同时也分担了用人单位的风险，有利于生产经营的稳定。所以在职业病防治法中规定了应当加强对工伤社会保险的监督管理，确保劳动者依法享受工伤社会保险待遇。</p>','2018-04-12 14:00:22','新闻'),(10,'【职场攻略】2016年春季求职必看','湖南日','201603121148430002.jpg','<p>　为切实维护广大保险消费者合法权益，根据中国保监会《人身保险客户信息真实性管理暂行办法》规定要求，从2014年4月起，太平洋寿险湖南分公司在全省组织开展长达一个季度的&ldquo;今生佑你&middot;服务升级&rdquo;大型客户服务活动。本次活动围绕&ldquo;保单服务升级&rdquo;、&ldquo;保障服务升级&rdquo;、&ldquo;关爱服务升级&rdquo;三个层次展开。</p>\r\n<p>　　保单服务升级：对于投保时未指定&ldquo;身故受益人&rdquo;或将&ldquo;身故受益人&rdquo;指定为&ldquo;法定继承人&rdquo;的客户，根据《保险法》第四十二条规定：&ldquo;身故受益人&rdquo;指定不明确的，则保险金将由保险人依照《继承法》的规定履行给付义务。这一条将可能带给您的是：保险金将以遗产的形式传承给法定继承人。另外，还有投保时被保险人为未成年人，且未提供准确的被保险人身份证号，导致被保险人信息缺失，也有可能造成您的利益损失。为此，太平洋寿险湖南分公司万余名业务员将在活动期间为广大客户提供&ldquo;身故受益人指定&rdquo;、&ldquo;被保人身份证号变更&rdquo;、&ldquo;客户信息补全&rdquo;等上门服务。</p>','2018-04-12 14:00:22','新闻'),(11,'求职:驾驶员 - 空中商桥__新闻综合广播','洋洋','201603121148330001.jpg','<p>央广网财经北京4月21日消息据经济之声《天下财经》报道，继云南、深圳之后，宁波获批成为第三个试点巨灾<span id=\"bk_474\"><a class=\"keytip\" target=\"_blank\" href=\"http://stock.eastmoney.com/hangye/hy474.html\">保险</a></span><span id=\"bkquote_474\">(<a target=\"_blank\" href=\"http://quote.eastmoney.com/center/list.html#28002474_0_2\">行情</a> <a target=\"_blank\" href=\"http://stock.eastmoney.com/hangye/hy474.html\">专区</a>)</span>制度的地区。<span id=\"Info.74221\"><a class=\"infokey \" target=\"_blank\" href=\"http://topic.eastmoney.com/ggxqd/\">十八届三中全会</a></span>《决定》指出，要建立巨灾保险制度。其实早在2006年，国务院《关于保险业改革发展的若干意见》明确表示，我国要建立国家财政支持的巨灾风险保险体系。&ldquo;5&middot;12&rdquo;汶川大地震发生后，巨灾保险更是备受关注。</p>\r\n<p>　　但八年过去了，全国范围仅仅3个地区试点，中央层面的整体战略与制度安排则迟迟没有实质性进展。巨灾保险制度进展缓慢的原因是什么？系列报道《&ldquo;巨灾保险&rdquo;离我们有多远？》今天播出第一篇《建立巨灾保险制度迫在眉睫》。</p>','2018-04-12 14:00:22','新闻'),(12,'回归教育初心，从严格论文要求开始','眉间尺','201805200941510002.jpg','<div>　　&ldquo;当教育被功利化的目的绑架，老师就成了&lsquo;毕业流水线&rsquo;的一环，一切活动必须围绕维系这条生产线正常运转、保时保量地输送毕业生的指令进行。因此，给学生打分就变得战战兢兢，批评学生时瞻前顾后，给不合格的论文打一个红叉自然更不可想象。&rdquo;</div>\r\n<div>&nbsp;</div>\r\n<div>　　又到毕业季，在网上屡屡见到大学老师的吐槽。有的学生迟迟不交毕业论文，或论文文理不通、错字连篇，令人不忍卒读。于是，老师不但要&ldquo;哀求&rdquo;学生尽快交论文，而且彻夜逐字逐句地为学生修改论文。这显然是一种不正常的学风。而&ldquo;改论文&rdquo;又只是学风不端的冰山一角。据报道，每到期末，就有学生以出国深造、就业等为由给老师写邮件，希望老师打分时&ldquo;手下留情&rdquo;，以至于老师陷入&ldquo;期末焦虑&rdquo;&ldquo;毕业恐慌&rdquo;。</div>\r\n<div>&nbsp;</div>\r\n<div>　　到底是什么原因造成了这种乱象呢？以直接的原因而论，我国传统文化素有&ldquo;重人情&rdquo;&ldquo;顾情面&rdquo;的传统。在一些看似无关紧要的问题上，规则往往被人情&ldquo;拗弯&rdquo;。更何况，师生关系又常被比附为父子关系，老师似乎对学生负有无限责任。因此，当老师面对学生或哀婉或撒娇或耍横的&ldquo;要分&rdquo;&ldquo;改论文&rdquo;等请求，就会承受显在或潜在的舆论压力乃至道德绑架，不得不牺牲原则屈从学生的要求，违心地把&ldquo;次品&rdquo;包装成&ldquo;正品&rdquo;送出校门。</div>\r\n<div>&nbsp;</div>\r\n<div>　　更现实也更根本的原因则是功利色彩浓厚的教育观念。在一些学生、家长乃至老师和校领导看来，上大学的目的只是或主要是为找一份体面的工作。在就业、出国、升学等功利目的至上的观念下，上述手段似乎顺理成章。于是，实用主义弥漫，浮躁之风盛行。学生把本该在图书馆苦读、在课堂上听讲的时间用来&ldquo;跑社会&rdquo;&ldquo;拉人脉&rdquo;，不去思考如何刻苦用功取得优异的成绩，而是挖空心思向教师索要满意分数，甚至把本该由自己承担的任务转嫁给老师。</div>\r\n<div>&nbsp;</div>\r\n<div>　　更重要的是，当教育被功利化的目的绑架，老师就成了&ldquo;毕业流水线&rdquo;的一环，一切活动必须围绕维系这条生产线正常运转、保时保量地输送毕业生的指令进行。因此，给学生打分就变得战战兢兢，批评学生时瞻前顾后，给不合格的论文打一个红叉自然更不可想象。而导致这一切的更深层原因还有高校面临的毕业率、就业率等量化考核，以及社会变革转型时期人才需求与教育体制的不协调不适应等。这一切都值得进行系统反思。</div>\r\n<div>&nbsp;</div>\r\n<div>　　韩愈早就讲过，&ldquo;师者，所以传道授业解惑也&rdquo;。教育最重要的目的是培养有健全人格和道德情操的人，是给人以判断是非善恶美丑的意识和能力，以及捍卫正义良知的勇气和担当。一切反思的基点应建立在回归教育初心之上。</div>\r\n<div>&nbsp;</div>\r\n<div>　　行文至此，想起曾在网上广泛流传的《一个美国教授写给被开除的中国留学生的信》。在信中，这位老师和学生做了谈心式的交流，说明了自己作出这一决定的理由，并对学生今后的人生道路提出了忠告。诚然，每个国家都有自己的国情，而一个国家的教育也必须以符合国情的方式开展。但这封美国教授的信对于思考并坚守教育的初心有着不容忽视的借鉴意义。我们应该期待出现这样的老师，并为他们坚守原则和底线、重构师生关系进而培育优良的学风撑腰打气。</div>','2018-05-20 09:39:19','新闻');
/*!40000 ALTER TABLE `hbnews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saver` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `resaver` varchar(255) DEFAULT NULL,
  `recontent` varchar(255) DEFAULT NULL,
  `resavetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (7,'admin','2018-05-19 22:55:49','管理员测试留言','','233','');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixinfo`
--

DROP TABLE IF EXISTS `mixinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mixinfo` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `infotype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixinfo`
--

LOCK TABLES `mixinfo` WRITE;
/*!40000 ALTER TABLE `mixinfo` DISABLE KEYS */;
INSERT INTO `mixinfo` VALUES (4,'null','<div class=\"para\" label-module=\"para\">乌鲁木齐（Urumqi）简称&ldquo;乌市&rdquo;，旧称迪化，是<a href=\"http://baike.baidu.com/view/10896802.htm\" target=\"_blank\">丝绸之路经济带</a>核心区新疆维吾尔自治区首府，全疆政治、经济、文化、科教和交通中心。我国西部地区重要的中心城市和面向中西亚的国际商贸中心。丝绸之路经济带核心节点城市，也是第二座亚欧大陆桥中国西部桥头堡和向西开放的重要门户。全市辖七区一县，总面积14216.3平方公里，建城区面积412.26平方公里，2014年末全市常住人口353万人，居住着汉、维吾尔、哈萨克、回，锡伯等52个民族。</div>\r\n<div class=\"para\" label-module=\"para\">乌鲁木齐是中国大陆现代化高速发展的新兴城市，高度集中的经济地位，政治地位，资源地位，交通枢纽地位，超广的地域辐射面积，这些都促使乌鲁木齐拥有强大综合实力，成为西部核心城市。<sup>[1]</sup><a class=\"sup-anchor\" name=\"ref_[1]_13631370\">&nbsp;</a> 乌鲁木齐地处<a href=\"http://baike.baidu.com/view/274033.htm\" target=\"_blank\">亚欧大陆</a>中心，<a href=\"http://baike.baidu.com/view/72530.htm\" target=\"_blank\">天山山脉</a>中段北麓，<a href=\"http://baike.baidu.com/view/28697.htm\" target=\"_blank\">准噶尔盆地</a>南缘。西部和东部与<a href=\"http://baike.baidu.com/view/126577.htm\" target=\"_blank\">昌吉回族自治州</a>接壤，南部与<a href=\"http://baike.baidu.com/view/292894.htm\" target=\"_blank\">巴音郭楞蒙古自治州</a>相邻，东南部与<a href=\"http://baike.baidu.com/view/686701.htm\" target=\"_blank\">吐鲁番地区</a>交界，是<a href=\"http://baike.baidu.com/view/242367.htm\" target=\"_blank\">欧亚大陆</a>中部重要城市。<sup>[2]</sup><a class=\"sup-anchor\" name=\"ref_[2]_13631370\">&nbsp;</a></div>\r\n<div class=\"para\" label-module=\"para\">乌鲁木齐为古准噶尔蒙古语，意为&ldquo;优美的牧场&rdquo;。乌鲁木齐东有<a href=\"http://baike.baidu.com/view/3634817.htm\" target=\"_blank\">吐哈油田</a>，南有<a href=\"http://baike.baidu.com/view/647234.htm\" target=\"_blank\">塔里木油田</a>，北有<a href=\"http://baike.baidu.com/view/6741456.htm\" target=\"_blank\">准东油田</a>，西有<a href=\"http://baike.baidu.com/view/268354.htm\" target=\"_blank\">克拉玛依油田</a>。地下煤炭储量在百亿吨以上，可采煤层总厚度80米，素有&ldquo;油海上的煤城&rdquo;之称。市区有著名的<a href=\"http://baike.baidu.com/subview/92726/7553010.htm\" target=\"_blank\">红山</a>,市郊有<a href=\"http://baike.baidu.com/view/74877.htm\" target=\"_blank\">南山风景区</a>等旅游胜地。<sup>[1]</sup>&nbsp;</div>','网站简介'),(5,'null','<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2013年11月28日，丝绸之路经济带城市合作发展论坛举行共识合作意向城市间签约仪式，来自8个国家的24个城市（其中阿拉木图市函签）签订了《丝绸之路经济带城市合作发展乌鲁木齐共识》及《关于丝绸之路经济带城市间建立联络机构的意向书》等五个意向合作协议。<sup>[46]</sup><a class=\"sup-anchor\" name=\"ref_[46]_13631370\">&nbsp;</a> 参加论坛城市 土库曼斯坦阿什哈巴德市，土耳其安卡拉市、加济安泰普市，哈萨克斯坦阿拉木图市、阿斯塔纳市，格鲁吉亚第比利斯市、巴统市，吉尔吉斯斯坦比什凯克市、奥什市，塔吉克斯坦杜尚别市，伊朗马什哈德市，中国乌鲁木齐市、西安市、郑州市、兰州市、银川市、连云港市、伊犁州、博州、昌吉、哈密、吐鲁番、喀什、石河子市。</p>','网站公告'),(6,'null','<p>联系电话 : 08988888888</p>\r\n<p>邮箱 : <a href=\"mailto:1111111@.QQ.COM\">1111111@.QQ.COM</a></p>\r\n<p>联系人 : 王小姐</p>\r\n<p>联系地址 : 北京什么路，119号</p>\r\n<p>传真 : 0891111111</p>','关于我们');
/*!40000 ALTER TABLE `mixinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysuser`
--

DROP TABLE IF EXISTS `sysuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `tname` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `houhold` varchar(255) DEFAULT NULL,
  `addrs` varchar(255) DEFAULT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `wei` varchar(255) DEFAULT NULL,
  `hei` varchar(255) DEFAULT NULL,
  `health` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `zy` varchar(255) DEFAULT NULL,
  `xl` varchar(255) DEFAULT NULL,
  `cbdate` varchar(255) DEFAULT NULL,
  `grjs` varchar(255) DEFAULT NULL,
  `grjl` varchar(255) DEFAULT NULL,
  `xqah` varchar(255) DEFAULT NULL,
  `gzjl` varchar(255) DEFAULT NULL,
  `xmjy` varchar(255) DEFAULT NULL,
  `wyll` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `qzyx` varchar(255) DEFAULT NULL,
  `filename2` varchar(255) DEFAULT NULL,
  `docname3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysuser`
--

LOCK TABLES `sysuser` WRITE;
/*!40000 ALTER TABLE `sysuser` DISABLE KEYS */;
INSERT INTO `sysuser` VALUES (1,'admin','123','王老五','201805192300110004.jpg','女','18200090009','123@123.com','大连','深南大道110号',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'管理员','2018-04-12 14:00:22',NULL,NULL,NULL),(12,'小明','123','小明','201805200949030003.png','男','112233','112233@qq.com','北京','北京二道口第一胡同','2000-05-01','123','321','良好','12345678','北大','软件','本科','2018-05-20','急需工作！','JSP','打篮球','在校实习','暂无','6级','求职者','2018-05-20 09:49:04','JSP开发','201805200951340004.png',''),(13,'大米公司','123','大米公司','201805200959300005.jpg','','','前端开发，后端开发，数据挖掘','北京','北京二道口','','100至500人','','','12345678','','民营企业','信息','2018-05-01','大米大米公司！','','','','','','企业','2018-05-20 09:59:32','','','');
/*!40000 ALTER TABLE `sysuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yqlj`
--

DROP TABLE IF EXISTS `yqlj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yqlj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ljname` varchar(255) DEFAULT NULL,
  `ljurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yqlj`
--

LOCK TABLES `yqlj` WRITE;
/*!40000 ALTER TABLE `yqlj` DISABLE KEYS */;
INSERT INTO `yqlj` VALUES (1,'淘宝网','http://www.taobao.com'),(2,'百度网','http://www.baidu.com'),(3,'谷歌搜索','http://www.google.com'),(4,'见客网','http://www.baidu.com'),(5,'阿里巴巴','http://www.baidu.com');
/*!40000 ALTER TABLE `yqlj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zdatadic`
--

DROP TABLE IF EXISTS `zdatadic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zdatadic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datatype` varchar(255) DEFAULT NULL,
  `ptitle` varchar(255) DEFAULT NULL,
  `content` text,
  `savetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zdatadic`
--

LOCK TABLES `zdatadic` WRITE;
/*!40000 ALTER TABLE `zdatadic` DISABLE KEYS */;
INSERT INTO `zdatadic` VALUES (2,'公司简介',NULL,'<div id=\"card-container\" class=\"mod-top\" style=\"clear: both\">\r\n<div class=\"card-summary nslog-area clearfix\" data-nslog-type=\"72\">\r\n<div class=\"card-summary-content\">\r\n<div class=\"para\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 中信银行原称<a target=\"_blank\" href=\"http://baike.baidu.com/view/34194.htm\">中信实业银行</a>，创立于1987年，2005年底改为现名。中信银行是中国的全国性<a target=\"_blank\" href=\"http://baike.baidu.com/view/18754.htm\">商业银行</a>之一，总部位于<a target=\"_blank\" href=\"http://baike.baidu.com/view/2621.htm\">北京</a>，主要股东是中国中信股份有限公司。<a target=\"_blank\" href=\"http://baike.baidu.com/view/3820.htm\">西班牙</a>对外银行（Banco Bilbao Vizcaya Argentaria,S.A BBVA）斥资5.01亿欧元（约50.2亿港元）购入中信银行5%的股权，还可选择增持中信银行的持股比例至10.07%。2007年4月27日，中信银行在<a target=\"_blank\" href=\"http://baike.baidu.com/view/68956.htm\">上海证券交易所</a>上市。中信银行为<a target=\"_blank\" href=\"http://baike.baidu.com/view/61891.htm\">中国</a>大陆第七大银行，其总资产为12000逾亿港元，共有16000多名员工及540余家分支机构。它是<a target=\"_blank\" href=\"http://baike.baidu.com/view/2607.htm\">香港</a>中资金融股的<a target=\"_blank\" href=\"http://baike.baidu.com/view/2117368.htm\">六行三保</a>之一。</div>\r\n<div class=\"para\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1984年底，随着经济发展的需要，<a target=\"_blank\" href=\"http://baike.baidu.com/view/125668.htm\">中国国际信托投资公司</a>（简称中信公司）董事长<a target=\"_blank\" href=\"http://baike.baidu.com/view/1782.htm\">荣毅仁</a>先生向中央专函要求在中信公司系统下成立一个银行，全面经营<a target=\"_blank\" href=\"http://baike.baidu.com/view/9970.htm\">外汇</a>银行业务。经<a target=\"_blank\" href=\"http://baike.baidu.com/view/17491.htm\">国务院</a>和<a target=\"_blank\" href=\"http://baike.baidu.com/view/21741.htm\">中国人民银行</a>同意，先成立银行部，扩大经营外汇银行业务，为成立银行作好准备工作。\r\n<div class=\"para\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1985年4月，中信公司在原来财务部的基础上成立了银行部，进一步扩展了对外融资、外汇交易、发放贷款、国际结算、融资租赁和吸收存款等全面银行业务。在银行部建立的两年时间里，得到中国人民银行与<a target=\"_blank\" href=\"http://baike.baidu.com/view/343840.htm\">国家外汇管理局</a>的大力支持和帮助，业务进展较快，通过办理人民币及外汇存款、贷款、进出口开证、国际租赁、有价证券及外汇买卖、外币兑换等业务，积累了一定经验，已初步具备了成立银行的条件</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"para\">1987年2月28日，国务院办公厅批复同意成立<a href=\"http://baike.baidu.com/view/34194.htm\" target=\"_blank\">中信实业银行</a>。</div>\r\n<div class=\"para\">1987年3月17日，中国人民银行批准成立中信实业银行。</div>\r\n<div class=\"para\">1987年4月10日，<a href=\"http://baike.baidu.com/view/21741.htm\" target=\"_blank\">中国人民银行</a>颁发中信实业银行经营金融业务许可证。</div>\r\n<div class=\"para\">1987年4月14日，中信公司董事长、中信实业银行名誉董事长荣毅仁召开新闻发布会，宣布：中信公司原银行部经国务院和中国人民银行批准，改为&ldquo;中信实业银行&rdquo;。中信实业银行于4月份开始营业。</div>\r\n<div class=\"para\">1987年4月21日，<a href=\"http://baike.baidu.com/view/343840.htm\" target=\"_blank\">国家外汇管理局</a>批复中信实业银行经营外汇业务范围。</div>\r\n<div class=\"para\">1987年4月22日，国家外汇管理局颁发中信实业银行经营外汇业务许可证。</div>\r\n<div class=\"para\">1987年4月29日，国家工商行政管理局颁发中信实业银行工商营业执照。</div>\r\n<div class=\"para\">1987年5月17日，<a href=\"http://baike.baidu.com/view/14591.htm\" target=\"_blank\">新华社</a>发布中信实业银行开业新闻。</div>\r\n<div class=\"para\">1987年9月16日，中信银行在北京的国际大厦举行正式开业招待会。</div>\r\n<div class=\"para\">1988年8月14日，中信银行首次发行人民币金融债券3000万元。</div>\r\n<div class=\"para\">1989年4月，中信银行在国内首家同时开通<a href=\"http://baike.baidu.com/view/72489.htm\" target=\"_blank\">路透社</a>和<a href=\"http://baike.baidu.com/view/95158.htm\" target=\"_blank\">美联社</a>信息系统开展国际金融交易业务。</div>\r\n<div class=\"para\">1991年10月30日，中信银行代表中信公司在<a href=\"http://baike.baidu.com/view/1554.htm\" target=\"_blank\">日本</a>东京第一次发行浮动利率日圆债券。</div>','2018-04-12 14:00:22'),(3,'关于我们',NULL,'<p>联系地址 : 北京石头山区898号</p>\r\n<p>联系人 : 王先生</p>\r\n<p>联系电话&nbsp; : 28999999999</p>\r\n<p>传真 : 2098888888</p>\r\n<p>工作时间 : 7:00-17:00</p>\r\n<p>周末不休</p>','2018-04-12 14:00:22'),(5,'网站公告','近期有普工招聘会，有意向者请联系本站！','<p>&nbsp;</p>\r\n<p>中国人民银行批准中信银行为中信公司所属的国营综合性银行，是中信公司的子公司，独立法人。注册资本8亿元<a href=\"http://baike.baidu.com/view/16730.htm\" target=\"_blank\">人民币</a>。</p>\r\n<p>实行自主经营、独立核算、自负盈亏。在国内外可设立分支机构，经营已批准的银行业务。</p>\r\n<div class=\"para\">前国家副主席<a href=\"http://baike.baidu.com/view/1782.htm\" target=\"_blank\">荣毅仁</a>先生任中信银行名誉董事长。</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>','2018-04-12 14:00:22'),(7,'网站公告','本站特推出在线交流功能，方便广大毕业生找工作！','<p>本站特推出在线交流功能，方便广大毕业生找工作！</p>\r\n<p>详见网站招聘管理页面。</p>','2018-04-12 14:00:22'),(9,'网站公告','欢迎企业和毕业生的注册！','<p>欢迎企业和毕业生的注册！</p>','2018-05-20 09:44:32'),(10,'网站公告','本站留言功能已开通，请注册账户登录后使用！','<p>&nbsp;本站留言功能已开通，请登录后使用。</p>\r\n<p>本站留言功能已开通，请登录后使用。</p>\r\n<p>本站留言功能已开通，请登录后使用。</p>','2018-05-20 09:45:46');
/*!40000 ALTER TABLE `zdatadic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zpinfo`
--

DROP TABLE IF EXISTS `zpinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zpinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qyuname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `zprs` varchar(255) DEFAULT NULL,
  `gzdd` varchar(255) DEFAULT NULL,
  `xl` varchar(255) DEFAULT NULL,
  `jl` varchar(255) DEFAULT NULL,
  `infotype` varchar(255) DEFAULT NULL,
  `bei` varchar(255) DEFAULT NULL,
  `dy` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `qytname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zpinfo`
--

LOCK TABLES `zpinfo` WRITE;
/*!40000 ALTER TABLE `zpinfo` DISABLE KEYS */;
INSERT INTO `zpinfo` VALUES (7,'大米公司','JSP 前端开发','5','上海','本科','JSP','校园招聘','1、计算机或相关专业专科及以上学历， 一年以上 JSP 前端开发工作经验 , 熟悉 Java 语言；----------2、精通 HTML/HTML5/CSS/JAVASCRIPT/JQuery等前端技术，熟悉页面架构和布局，熟悉 HTTP 协议等相关互联网规范 ；----------3、有责任心,对工作积极主动，良好的学习能力和领悟能力，能承受较大的工作压力；----------4、个性乐观开朗，善于与他人积极有效的合作；','5K起步','2018-05-20 10:02:43','大米公司'),(8,'大米公司','PHP开发工程师（弹性自由工作）','10','北京','本科','无需坐班，可全职可***，PHP开发','校园招聘','1、责任心是第一位的。----------2、无需坐班。每周两个半天到公司汇报工作即可。----------3、积极上进，严格要求自己。----------4、居住地网络、电话畅通。','面议','2018-05-20 10:05:38','大米公司'),(9,'大米公司','Java开发工程师','少于50','北京','本科','JAVA，MySQL','社会招聘','1、计算机或相关专业大专学历以上；\r\n\r\n2、熟悉JAVA，MySQL；\r\n\r\n3、熟悉javascript,jquery；\r\n\r\n4、有ERP，CRM，HR开发经验者优先；\r\n\r\n5、有ORACLE，SQL Server经验者优先。','餐饮补贴 专业培训 绩效奖金','2018-05-20 10:07:18','大米公司');
/*!40000 ALTER TABLE `zpinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zxjl`
--

DROP TABLE IF EXISTS `zxjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zxjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `touname` varchar(255) DEFAULT NULL,
  `tcontent` varchar(255) DEFAULT NULL,
  `savetime` varchar(255) DEFAULT NULL,
  `pid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zxjl`
--

LOCK TABLES `zxjl` WRITE;
/*!40000 ALTER TABLE `zxjl` DISABLE KEYS */;
INSERT INTO `zxjl` VALUES (1,'老王','腾讯公司','是吗','2018-04-15 07:23:31','-1'),(2,'测试企业注册','测试用户求职者','测试：这是由企业账户发给求职者用户的信息','2018-05-19 22:54:16','-1'),(3,'小明','大米公司','你好，我想应聘你们公司的工作。','2018-05-20 15:39:25','-1'),(4,'????','????','??????????????','2018-05-20 15:44:34','3');
/*!40000 ALTER TABLE `zxjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'invitemsg'
--

--
-- Dumping routines for database 'invitemsg'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-28 17:50:15
