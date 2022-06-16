-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-08 07:55:42
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `1102systemdesign`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Bidding_product`
--

CREATE TABLE `Bidding_product` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_customer_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `end_time` datetime NOT NULL,
  `img_1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `Bidding_product`
--

INSERT INTO `Bidding_product` (`id`, `from_customer_name`, `product_name`, `product_price`, `end_time`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES
('bi01', 'eee', '我們從未不認識', 5000, '2022-06-23 00:00:00', 'ec712071.jpg', 'ec712071.jpg', 'ec712071.jpg', '1_1', '從開始寄生於那些不屬於我的故事開始，慢慢增加傾訴的成份……我現在是快樂的，你呢？-L早餐旁觀者片段回家路看一本小說疑似人生12組轉角錯身的悲喜劇主角×12首在回家路上吟唱的歌曲平凡與荒謬，夢境與真實吟唱、書寫、捕捉、構築 文本林宥嘉×小說萬金油×攝影登曼波×設計聶永真反覆轉述，相互解構，一場華麗的集體創作演出林宥嘉首部文字出版創作，文本林宥嘉×小說萬金油×攝影登曼波×設計聶永真，一場創作、重現、再創作的華麗集體演出。這次林宥嘉不以歌唱說書，而是化身與你我錯身的旁觀路人，閱讀以自己的音樂為文本創作的小說，經過再次拆解轉述，寫下自己的夢境與真實。前半為小說家萬金油以林宥嘉的12首歌為文本，衍伸而成的12個故事，串成一部完整小說。後半為歌手林宥嘉閱讀萬金油的12個故事後，記述再創作的12篇文字軌跡。我們都是旁觀者，我們都在冷眼窺視我們不認識，我們從未不認識Part A我們從未不認識TEXT __ 萬金油12個故事，訴說6種人生不得不面對的課題　　耳機裡播放著林宥嘉的歌，在回家的路上，某個轉角，某個人生路口，發生了這樣的故事……以精選輯概念挑選林宥嘉的12首歌曲做創作文本，12個跟回家有關的故事串成一部完整的小說。“we’ve met before”Part B我們從未不認識TEXT __ 林宥嘉　　以歌唱說書的林宥嘉，化身與你我錯身的旁觀路人，閱讀這12篇再創作的小說，如同我們僅能透過音樂認識林宥嘉，林宥嘉透過閱讀窺視、揣測著小說家的想法，然後再次轉述解構，延伸出第二部分文字。“we’ve met before”This Is Fiction.我們從未不認識寫真故事攝影__登曼波空景／鏡面／翻拍，再詮釋／再現／re-present不直接呈現故事劇情，而是透過攝影鏡頭，以畫面中的人物和具隱喻性的空景、物件，暗喻旁觀者冷眼窺視的視線。book design聶永真「即便是以文字為本的小說載體，我希望在不嘩眾取寵的設計前提下，裝幀仍能反映當下流行文化的面目、隔離流俗的taste、以及比較精緻的細節處理。致這本書有比25開略窄的尺寸、以PANTONE 802漆覆的裸背；以登曼波攝影為媒介，連結全書文本的再現與後設。其他無法盡入言語的，只有拿到這本書才能感覺得到。」'),
('bi02', 'aaa', '返校: 影集小說', 2, '2022-06-19 00:00:00', '20201224064737224018.jpg', '20201224064737224018.jpg', '20201224064737224018.jpg', '1_1', '你是回來了，還是不曾離開過。 改編赤燭遊戲全球暢銷電玩IP《返校》 影集版開啟全新驚悚篇章！  被禁錮的六Ｏ年代， 翠華中學有師生因組織讀書會遭捕。 隨之女學生方芮欣墜樓身亡， 從此鬼魂傳聞不斷， 校方舉辦法會、鎮魂驅邪。三十年過去，翠華中學威權的校風依舊。 九O年代，翠華中學轉學生劉芸香，因誤闖校園禁地，意外遇見學姊方芮欣的鬼魂，逐步揭開校園內塵封的悲劇真相…… 　　 八集全新故事，公視主頻首播  　　《返校》（英語：Detention）影集總計八集，改編自赤燭遊戲的同名電腦遊戲，由2020年公共電視文化事業基金會所發行，此劇集由蘇奕瑄、莊翔安、劉易三人執導，製作人為林仕肯、林怡伶，於公視主頻首播，Netflix全球同步上線，公視+每週日上線。  　　李玲葦、韓寧、黃冠智、姚淳耀等人主演  公視影集《返校》由李玲葦、韓寧、黃冠智、姚淳耀、趙正平、羅光旭、蔡瑞雪、夏騰宏等人主演。小說根據原劇本改寫，除實際戲劇播出內容，也含部分隱藏版情節，分章也與戲劇分集不同。');

-- --------------------------------------------------------

--
-- 資料表結構 `changeBOOKorCD`
--

CREATE TABLE `changeBOOKorCD` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_customer_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_customer_lineid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `img_1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `changeBOOKorCD`
--

INSERT INTO `changeBOOKorCD` (`id`, `from_customer_name`, `from_customer_lineid`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES
('cp01', 'ddd', '@13573', '銀之夜', 0, '222436.png', '222436.png', '222436.png', '1_1', 'ISBN：9789573338888\r\n叢書系列：大賞\r\n規格：平裝 / 288頁 / 14.8 x 21 x 1.44 cm / 普通級 / 單色印刷 / 初版\r\n出版地：台灣'),
('cp02', 'bbb', '@123456789', '村上T 我愛的那些T恤', 0, '210414.jpg.png', '210414.jpg.png', '210414.jpg.png', '1_1', 'ISBN：9786263352971 叢書系列：村上春樹作品集 規格：精裝 / 200頁 / 13.5 x 17 x 2.8 cm / 普通級 / 全彩印刷 / 初版 出版地：台灣'),
('cp03', 'ccc', '@123456789', '沒有媽媽的超市', 0, '211204.png', '211204.png', '211204.png', '1_1', 'ISBN：9786269589333\r\n叢書系列：Identity\r\n規格：平裝 / 336頁 / 14.8 x 21 x 2.1 cm / 普通級 / 單色印刷 / 初版\r\n出版地：台灣'),
('cp04', 'aaa', '@789456456', '諾拉瓊絲 / 遠走高飛', 0, '222626.png', '222626.png', '222626.png', '2_2', '929'),
('cp05', 'aaa', '@789456456', '巴黎星空下', 0, '223558.png', '223558.png', '223558.png', '2_1', '339');

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `coupon_name` varchar(64) NOT NULL,
  `coupon_price` varchar(16) NOT NULL,
  `max_use` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`coupon_name`, `coupon_price`, `max_use`) VALUES
('aaa', '0.95', '2'),
('bbb', '100', '2');

-- --------------------------------------------------------

--
-- 資料表結構 `coupon_customeruse`
--

CREATE TABLE `coupon_customeruse` (
  `id` datetime NOT NULL,
  `customer_id` varchar(64) NOT NULL,
  `coupon_name` varchar(64) NOT NULL,
  `coupon_use` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `username` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL DEFAULT '未填寫',
  `address` varchar(30) DEFAULT '未填寫'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`username`, `email`, `user_password`, `phone`, `address`) VALUES
('aaa', 'aaa@aaa.com', 'aaa', '0900000001', '台中市西屯區文華路100號'),
('bbb', 'bbb@bbb.com', 'bbb', '未填寫', '未填寫'),
('ccc', 'ccc@ccc.com', 'ccc', '未填寫', '未填寫'),
('ddd', 'ddd@ddd.com', 'ddd', '未填寫', '未填寫'),
('eee', 'eee@eee.com', 'eee', '未填寫', '未填寫'),
('fff', 'fff@fff.com', 'fff', '未填寫', '未填寫'),
('ggg', 'ggg@ggg.com', 'ggg', '0900000000', '逢甲大學'),
('WyannLi', 'wyam945@gmail.com', 'Camarozl1', '未填寫', '未填寫');

-- --------------------------------------------------------

--
-- 資料表結構 `manager_account`
--

CREATE TABLE `manager_account` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `manager_account`
--

INSERT INTO `manager_account` (`account`, `password`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `from_id` varchar(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `message`
--

INSERT INTO `message` (`from_id`, `to_id`, `message`, `date`) VALUES
('aaa@aaa.com', 'ccc@ccc.com', '123', '2022-06-01 10:45:40'),
('ccc@ccc.com', 'aaa@aaa.com', '098765', '2022-06-01 16:59:40'),
('aaa@aaa.com', 'bbb@bbb.com', '45678', '2022-06-01 10:47:02'),
('bbb@bbb.com', 'aaa@aaa.com', '765433222', '2022-06-01 16:49:02');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `img_1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES
('p01', '我們從未不認識', 342, 'ec712071.jpg', 'ec712071.jpg', 'ec712071.jpg', '1_1', '從開始寄生於那些不屬於我的故事開始，慢慢增加傾訴的成份……我現在是快樂的，你呢？-L早餐旁觀者片段回家路看一本小說疑似人生12組轉角錯身的悲喜劇主角×12首在回家路上吟唱的歌曲平凡與荒謬，夢境與真實吟唱、書寫、捕捉、構築 文本林宥嘉×小說萬金油×攝影登曼波×設計聶永真反覆轉述，相互解構，一場華麗的集體創作演出林宥嘉首部文字出版創作，文本林宥嘉×小說萬金油×攝影登曼波×設計聶永真，一場創作、重現、再創作的華麗集體演出。這次林宥嘉不以歌唱說書，而是化身與你我錯身的旁觀路人，閱讀以自己的音樂為文本創作的小說，經過再次拆解轉述，寫下自己的夢境與真實。前半為小說家萬金油以林宥嘉的12首歌為文本，衍伸而成的12個故事，串成一部完整小說。後半為歌手林宥嘉閱讀萬金油的12個故事後，記述再創作的12篇文字軌跡。我們都是旁觀者，我們都在冷眼窺視我們不認識，我們從未不認識Part A我們從未不認識TEXT __ 萬金油12個故事，訴說6種人生不得不面對的課題　　耳機裡播放著林宥嘉的歌，在回家的路上，某個轉角，某個人生路口，發生了這樣的故事……以精選輯概念挑選林宥嘉的12首歌曲做創作文本，12個跟回家有關的故事串成一部完整的小說。“we’ve met before”Part B我們從未不認識TEXT __ 林宥嘉　　以歌唱說書的林宥嘉，化身與你我錯身的旁觀路人，閱讀這12篇再創作的小說，如同我們僅能透過音樂認識林宥嘉，林宥嘉透過閱讀窺視、揣測著小說家的想法，然後再次轉述解構，延伸出第二部分文字。“we’ve met before”This Is Fiction.我們從未不認識寫真故事攝影__登曼波空景／鏡面／翻拍，再詮釋／再現／re-present不直接呈現故事劇情，而是透過攝影鏡頭，以畫面中的人物和具隱喻性的空景、物件，暗喻旁觀者冷眼窺視的視線。book design聶永真「即便是以文字為本的小說載體，我希望在不嘩眾取寵的設計前提下，裝幀仍能反映當下流行文化的面目、隔離流俗的taste、以及比較精緻的細節處理。致這本書有比25開略窄的尺寸、以PANTONE 802漆覆的裸背；以登曼波攝影為媒介，連結全書文本的再現與後設。其他無法盡入言語的，只有拿到這本書才能感覺得到。」'),
('p02', '王心凌-愛你', 880, '500x500.jpg', '500x500.jpg', '500x500.jpg', '2_2', '王心凌的第二張專輯，於2004年3月26日同步發行「限量精裝」及「平裝」兩個版本。該專輯於2004年5月7日發行改版「影音升級版」，該專輯的主題是「陪伴」，以「談一場戀愛會遭遇的感受與心情」為架構，描寫十個不同戀愛階段的故事，最終專輯銷量在台灣賣出20萬張以上，在亞洲熱銷120萬張以上。'),
('p03', '卜學亮-SUPER亮', 740, '1186763.jpg', '1186763.jpg', '1186763.jpg', '2_2', '「SUPER 亮」的超激精神，在這全球動盪，高速衝擊的年代，不分性別、年紀、行業、種族，不管逆境考驗的來臨，不論低溫或低潮，秉持著樂觀的超激精神，為大家帶來充滿歡樂和希望的超級能量，創造出無限的溫暖，一起熱起來，一起亮起來…'),
('p04', '商業周刊 2022/6/2 1803期', 94, '螢180725.png', '螢180725.png', '螢180725.png', '1_2', '《商業周刊》菁英的專屬閱讀  　　《商業周刊》是台灣發行量最大的財經周刊，同時也是台灣最具影響力的雜誌之一。以「先進觀念，輕鬆掌握」為宗旨，讀者群包括：企業高階決策者、企業中階管理幹部、掌握機會的創業家、審慎觀察的投資者、分析經濟的思考者等。  　　將以「放眼國際視野」、「整合專業分析」、「強化多樣內容」為目標，協助台灣企業界吸納先進的經濟資訊，讓《商業周刊》的讀者在變化日趨激烈的經濟競爭中，更能掌握先機！  　　2003年ACNielsen亞洲菁英市場調查 商業周刊 榮登多項第一 . 商業周刊閱讀率高達23.7﹪. 高階經理人 商業周刊讀者以41.3﹪高居第一 . 參與商務建議決策 商業周刊讀者以25.0﹪高居第一'),
('p05', 'PekoMiko大戰爭！！！', 486, 'EnwC4VZVcAUC5iG.jpg', 'EnwC4VZVcAUC5iG.jpg', 'EnwC4VZVcAUC5iG.jpg', '2_2', '櫻巫女和兔田佩克拉於2020年發布的原創曲，為與音樂機台遊戲WACCA聯動而出品的曲目。完整PV於2020年11月6日發布於YouTube。在活動開始當天，線上商城發布限量1000份的實體CD紀念組訂購。'),
('p06', '金庸-天龍八部', 340, 'klcfnif_460x580.jpg', 'klcfnif_460x580.jpg', 'klcfnif_460x580.jpg', '1_1', '《天龍八部》是作家金庸的一部長篇武俠小說。由於《射鵰英雄傳》中曾提及喬峯為洪七公的前任者和段譽為段智興（一燈大師）的祖父和祖先，並曾提及大理段氏過去的事蹟，因此本書也可為「射鵰三部曲」的前傳。金庸表示：「《天龍八部》部分表達了佛家的哲學思想，就是人生大多數是不幸的。佛家對人生的定義比較悲觀，人生都要受苦，不管活得怎樣好，最後總會往生，當然沒辦法。佛家思想對人生真諦有深刻的理解。」'),
('p07', 'VOGUE 6月號/2022 309期', 238, '1117.png', '1117.png', '1117.png', '1_2', '關於時尚，VOGUE說了才算！記錄逾百年頂尖流行，被喻為「時尚聖經」的VOGUE雜誌是時尚類國際中文版女性雜誌的領導者。 VOGUE時尚雜誌每月均為您報導來自巴黎、米蘭、紐約頂尖時裝設計大師的流行預言及獨家專訪，還有最新beauty、健康、休閒等報導，帶您永遠走在時尚與品味的頂端！'),
('p08', '蜘蛛人: 無家日 DVD', 498, '181305.jpg', '181305.jpg', '181305.jpg', '2_1', '劇情:在蜘蛛人的電影宇宙裡，我們的鄰家英雄真實身份首次被公佈，他超級英雄的責任與日常生活衝突不斷，當彼得帕克遭到輿論攻擊，而他與親友的生活也大受影響。為了改變現況，絕望的彼得找上了奇異博士，希望他施展咒語讓大家忘記他是蜘蛛人的事實。但是咒語卻意外開啟多重宇宙的裂縫，釋放其他世界的反派惡棍，而他們唯一的敵人就是蜘蛛人。現在，彼得必須克服他迄今最大的挑戰，這不僅是會永遠改變自己的命運，甚至是多重宇宙的未來….。  卡司:湯姆霍蘭德、 班尼迪克康柏拜區、 辛蒂亞、梅莉莎托梅、安德魯加菲爾德、陶比麥奎爾、艾佛烈蒙利納、傑米福克斯  特收:\"特別收錄 • 湯姆霍蘭德壯闊的蜘蛛人之旅 • 畢業日\"  字幕:繁中、簡中、英、韓、葡、泰 發音:\"英、葡 、泰 Dolby Digital 5.1 \" 音效:\"英、葡 、泰 Dolby Digital 5.1 \" 螢幕比:2.40:1 片長:148'),
('p09', '娜塔莉高 / 永誌不忘', 1139, '223029.png', '223029.png', '223029.png', '2_2', '【LP曲目】 Side A: 1. The Very Thought Of You  2. Paper Moon  3. Route 66  4. Mona Lisa  5. L-O-V-E 6. This Can’t Be Love Side B: 1. Smile 2. Lush Life 3. That Sunday That Summer 4. Orange Colored Sky 5: A Medley Of: For Sentimental Reasons, Tenderly & Autumn Leaves Side C: 1. Straighten Up And Fly Right 2. Avalon 3. Don’t Get Around Much Anymore 4. Too Young 5. Nature Boy 6. Darling, Je Vous Aime Beaucoup  Side D: 1. Almost Like Being In Love 2. Thou Swell 3. Non Dimenticar 4. Our Love Is Here To Stay 5. Unforgettable');

-- --------------------------------------------------------

--
-- 資料表結構 `test`
--

CREATE TABLE `test` (
  `id` varchar(256) NOT NULL,
  `IGname` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ordername` varchar(128) NOT NULL,
  `orderphone` varchar(128) NOT NULL,
  `receverphone` varchar(128) NOT NULL,
  `product_num_json` varchar(512) NOT NULL,
  `payway` varchar(10) NOT NULL,
  `sendway` varchar(128) NOT NULL,
  `address` varchar(512) NOT NULL,
  `sell_date` datetime NOT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `test`
--

INSERT INTO `test` (`id`, `IGname`, `email`, `ordername`, `orderphone`, `receverphone`, `product_num_json`, `payway`, `sendway`, `address`, `sell_date`, `state`) VALUES
('aaa@aaa.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0987654321', 'ssssssssss', '[{\"name\":\"你好這裡是記憶花店\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-01 00:02:08', 0),
('aaa@aaa.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0987654321', '0958255209', '[{\"name\":\"王心凌-愛你\",\"count\":2}]', 'pay_1', 'sendway_3', '', '2022-06-02 18:48:03', 0),
('aaa@aaa.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0987654321', 'oooooooooo', '[{\"name\":\"我們從未不認識\",\"count\":1},{\"name\":\"商業周刊 2022/6/2 1803期\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-02 18:50:46', 0),
('aaa@aaa.com', '黃威縉', 'james0120160378@gmail.com', '黃威縉', '0987654321', 'gggggggggg', '[{\"name\":\"蜘蛛人: 無家日 DVD\",\"count\":1}]', 'pay_1', 'sendway_2', '逢星門市', '2022-06-02 18:54:08', 0),
('aaa@aaa.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0987654321', 'dddddddddd', '[{\"name\":\"卜學亮-SUPER亮\",\"count\":1},{\"name\":\"蜘蛛人: 無家日 DVD\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-02 18:59:49', 0),
('aaa@aaa.com', '謝孟言', 'rrreeere666@gmail.com', '謝孟言', '0928666590', '0928666590', '[{\"name\":\"王心凌-愛你\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-02 22:26:47', 0),
('fff@fff.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0958255209', '0958255209', '[{\"name\":\"我們從未不認識\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-02 22:59:40', 0),
('fff@fff.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0958255209', '0958255209', '[{\"name\":\"商業周刊 2022/6/2 1803期\",\"count\":1},{\"name\":\"PekoMiko大戰爭！！！\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-02 23:00:57', 0),
('aaa@aaa.com', 'james', 'james0120160379@gmail.com', 'james', '0968255209', '0958255209', '[{\"name\":\"PekoMiko大戰爭！！！\",\"count\":1}]', 'pay_2', 'sendway_2', '體育門市', '2022-06-03 00:00:39', 0),
('aaa@aaa.com', '黃威縉', 'james0120160379@gmail.com', '黃威縉', '0958255209', '0958255209', '[{\"name\":\"卜學亮-SUPER亮\",\"count\":1},{\"name\":\"VOGUE 6月號/2022 309期\",\"count\":1}]', 'pay_1', 'sendway_1', '體育門市', '2022-06-03 02:19:13', 0),
('wyam945@gmail.com', 'James#sb87777', 'wyam945@gamil.com', '郭台銘', '0909090909', '0987654321', '[{\"name\":\"我們從未不認識\",\"count\":1}]', 'pay_2', 'sendway_1', '台北市大里區中正路125巷107號', '2022-06-03 02:30:14', 0),
('aaa@aaa.com', 'rrrrr', 'james0120160379@gmail.com', '黃威縉', '0900000000', '0900000000', '[{\"name\":\"王心凌-愛你\",\"count\":3},{\"name\":\"商業周刊 2022/6/2 1803期\",\"count\":3}]', 'pay_2', 'sendway_1', 'sssssss', '2022-06-03 23:07:14', 0),
('aaa@aaa.com', 'rrrrr', 'james0120160379@gmail.com', '黃威縉', '0900000000', '0900000000', '[{\"name\":\"王心凌-愛你\",\"count\":3},{\"name\":\"商業周刊 2022/6/2 1803期\",\"count\":3}]', 'pay_2', 'sendway_1', 'sssssss', '2022-06-07 23:07:14', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Bidding_product`
--
ALTER TABLE `Bidding_product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `changeBOOKorCD`
--
ALTER TABLE `changeBOOKorCD`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_name`);

--
-- 資料表索引 `coupon_customeruse`
--
ALTER TABLE `coupon_customeruse`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`sell_date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
