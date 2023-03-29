-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 08:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knowing about farming`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `odate` date NOT NULL,
  `oaddress` varchar(200) NOT NULL,
  `oquantity` int(11) NOT NULL,
  `oprice` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `pid`, `uid`, `odate`, `oaddress`, `oquantity`, `oprice`) VALUES
(11, 1, 7, '2022-04-03', '4, 5, 6, 7', 100, '7000'),
(12, 1, 7, '2022-04-03', 'A-201 new Vikasnagar ploat, Rajkot, Gujarat, 360001', 500, '35000'),
(13, 1, 7, '2022-04-03', 'A-201 new Vikasnagar ploat, Rajkot, Gujarat, 360001', 500, '35000'),
(14, 4, 7, '2022-04-09', 'askdj, kzsjz, jhajdhuw, 212132', 100, '4500');

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `plid` int(11) NOT NULL,
  `plname` varchar(100) NOT NULL,
  `plweather` varchar(100) NOT NULL,
  `pltype` varchar(50) NOT NULL,
  `plwater` varchar(100) NOT NULL,
  `plsun` varchar(100) NOT NULL,
  `pltemp` varchar(100) NOT NULL,
  `plimage` varchar(200) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plant`
--

INSERT INTO `plant` (`plid`, `plname`, `plweather`, `pltype`, `plwater`, `plsun`, `pltemp`, `plimage`, `sid`) VALUES
(1, 'Rice', 'Hot and humid climate', 'Kharif', '4,000 - 5,000 litres of water per kg', '6 to 8 hours of sunlight per day', '21°C to 37°C', 'rice.jpg', 1),
(2, 'Wheat', 'Warm but not too hot', 'Rabi', '1500 litres of water per kg', '5 to 8 hours of sunlight per day', '20°C-35°C', 'wheat.jpg', 1),
(3, 'Sugarcane', 'Hot and humid climate', 'Kharif', '1500-3000 liters of water per kg', '0 to 2 hours of sunlight per day', '21°C to 27°C', 'sugarcane.jpg', 1),
(4, 'Soybean', 'Warm and moist climate', 'Kharif', '15 inches to over 25 inches of water per year', '6 to 8 hours of sunlight per day', '20°C to 30°C', 'soyabean.jpg', 1),
(5, 'Maize', 'Wet and hot', 'Kharif', '2-3 litres of water per day', '4 to 6 hours of sunlight per day', '21°C to 27°C', 'maize.jpg', 1),
(6, 'Wheat', 'Warm but not too hot', 'Rabi', '1500 litres of water per kg', '5 to 8 hours of sunlight per day', '20°C-35°C', 'wheat.jpg', 2),
(7, 'Groundnut', 'Hot and moderate rainfall', 'Kharif and Rabi', '500 to 700 mm per total growing period', '5 to 8 hours of sunlight per day', '27°C-30°C', 'groundnut.jpg', 2),
(8, 'Cotton', 'Warm and humid climate', 'Kharif', '22,500 liters of water to produce 1 kg of cotton', '6 to 8 hours of sunlight per day', '22°C-32°C', 'cotton.jpg', 2),
(9, 'Rice', 'Hot and humid climate', 'Kharif', '4,000 - 5,000 litres of water per kg', '6 to 8 hours of sunlight per day', '21°C to 37°C', 'rice.jpg', 3),
(10, 'Wheat', 'Warm but not too hot', 'Rabi', '1500 litres of water per kg', '5 to 8 hours of sunlight per day', '20°C-35°C', 'wheat.jpg', 3),
(11, 'Sugarcane', 'Hot and humid climate', 'Kharif', '1500-3000 liters of water per kg', '0 to 2 hours of sunlight per day', '21°C to 27°C', 'sugarcane.jpg', 3),
(12, 'Maize', 'Wet and hot', 'Kharif', '2-3 litres of water per day', '4 to 6 hours of sunlight per day', '21°C to 27°C', 'maize.jpg', 3),
(13, 'Groundnut', 'Hot and moderate rainfall', 'Kharif and Rabi', '500 to 700 mm per total growing period', '5 to 8 hours of sunlight per day', '27°C-30°C', 'groundnut.jpg', 3),
(14, 'Potato', 'Warm and moderate rainfall', 'Rabi', '1-2 inches of water per week', '5 to 6 hours of sunlight per day', '16°C-30°C', 'potato.jpg', 3),
(15, 'Banana', 'Warm and moderate rainfall', 'Kharif', '1,800 – 2,000 mm per year', '6 to 8 hours of sunlight per day', '15°C-35°C', 'banana.jpg', 4),
(16, 'Pineapple ', 'Warm and humid climate', 'Kharif', '1 inch of water per week', '6 to 8 hours of sunlight per day', '12°C-30°C', 'pineapple.jpg', 4),
(17, 'Cotton', 'Warm and humid climate', 'Kharif', '22,500 liters of water to produce 1 kg of cotton', '6 to 8 hours of sunlight per day', '22°C-32°C', 'cotton.jpg', 5),
(18, 'Maize', 'Wet and hot', 'Kharif', '2-3 litres of water per day', '4 to 6 hours of sunlight per day', '21°C to 27°C', 'maize.jpg', 5),
(19, 'Tea', 'Warm, humid climate with a slight rainfall ', 'Kharif', '2500-3000 mm per year', '5 to 8 hours of sunlight per day', '13°C or More', 'tea.jpg', 6),
(20, 'Coffee', 'Warm and moderate rainfall ', 'Kharif', '1200 to 1600 mm per year', '4 to 5 hours of sunlight per day', '18°C to 24°C', 'coffee.jpg', 6),
(21, 'Cucumbers', 'Warm', 'Zaid Rabi', '1 inch of water per week and more', '5 to 8 hours of sunlight per day', '23°C to 30°C', 'cucumbers.jpg', 7),
(22, 'Tomato', 'Wet and Warm', 'Zaid Rabi', '1 - 1.2 inches of water in a week', '5 to 6 hours of sunlight per day', '21°C to 24°C', 'tomato.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `ptype` varchar(100) NOT NULL,
  `pdescription` text NOT NULL,
  `pcategory` varchar(100) NOT NULL,
  `pprice` decimal(10,0) NOT NULL,
  `ppriceunit` varchar(50) NOT NULL,
  `pquantity` int(50) NOT NULL,
  `pquantityunit` varchar(100) NOT NULL,
  `pimage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `uid`, `pname`, `ptype`, `pdescription`, `pcategory`, `pprice`, `ppriceunit`, `pquantity`, `pquantityunit`, `pimage`) VALUES
(1, 6, 'Brown Rice', 'rice', 'Brown rice and white rice have similar amounts of calories and carbohydrates. Brown rice is a whole grain and a good source of magnesium, phosphorus, selenium, thiamine, niacin, vitamin B6, and manganese, and is high in fiber. White rice, unlike brown rice, has the bran and germ removed, and therefore has different nutritional content.\r\n\r\nBrown rice is whole rice from which only the husk (the outermost layer) is removed. To produce white rice, the next layers underneath the husk (the bran layer and the germ) are removed leaving mostly the starchy endosperm.\r\n\r\nSeveral vitamins and dietary minerals are lost in this removal and the subsequent polishing process. Among these are oil in the bran, which is removed along with the bran layer, dietary fiber, small amounts of fatty acids, and magnesium. A part of these missing nutrients, such as vitamins B1 and B3, and iron, are sometimes added back into the white rice. In the US the result is called \"enriched rice\" and must comply with Food and Drug Administration (FDA) regulations for this name to be used.', 'food', '80', 'kilogram', 1, 'ton', '1648398932Brown Rice.jpg'),
(4, 8, 'Cotton', 'other', 'Cotton is a natural, soft fiber that grows with the seeds of the cotton plant. (Fiber is long and thin, like hair.) After, the cotton fiber is gathered from the plant, it can be spun into cotton thread. The cotton thread can then be made into cloth. The cloth can be used to make clothes for people and many other things. People often wear cotton clothing, especially in hot weather. Bandages are usually cotton.\r\n\r\nThere are different types of cotton plants. Some cotton plants grow wild in tropical and subtropical areas of the world. This is how cotton was discovered many years ago. Most of the cotton gathered to make cloth comes from crops grown on cotton plantations. Cotton is farmed in Africa, Asia, Europe, Australia, and the Americas. Cotton soaks up to 24-27 of its own weight in water (very absorbent). All parts of cotton plants are useful.\r\n\r\nCotton is in the mallow family and produces delicate, lovely flowers. Other members of the mallow family include hollyhocks and hibiscus, used to brighten gardens all over the world. The cotton fiber forms around the seeds of the cotton plant. It helps carry the seeds long distances on the wind so the baby plant can grow up far away. Early humans realized that the soft, fluffy fibers might be suitable for textile use and began to breed the plant, selecting for fluffy, easily spun varieties.', 'cash', '45', 'kilogram', 2000, 'kilogram', '1649507649Cotton.png');

-- --------------------------------------------------------

--
-- Table structure for table `soil`
--

CREATE TABLE `soil` (
  `sid` int(11) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `sinfo` varchar(700) NOT NULL,
  `simage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soil`
--

INSERT INTO `soil` (`sid`, `sname`, `sinfo`, `simage`) VALUES
(1, 'Alluvial Soil', '- It is formed by the deposition of the river load as it flows from its upper to its lower course.<br>\n- It is light and porous, therefore easily tillable.<br>\n- It is a fertile soil as it is rich in minerals, especially potash and lime.<br>\n- It is suitable for the growth of a large variety of rabi and kharif crops.<br>\n- Soils in the drier areas are more alkaline.', 'Alluvial_Soil.jpg'),
(2, 'Black Soil', '- Black soil is fine textured and clayey in nature. It is suitable for growing cotton.<br>\n- Black soil has high amount of lime, iron, magnesium and generally low quantities of Phosphorus, Nitrogen and organic matter.<br>\n- It is formed from weathered lava rocks, thus is black in colour.<br>\n- It has a high clay content and therefore is highly retentive of water. It is extremely fertile in most of the places where it is found.\n', 'Black_Soil.jpg'),
(3, 'Red and Yellow Soil ', '- The fine-grained red and yellow soils are normally fertile, whereas coarse-grained - soils found in dry upland areas are poor in fertility.<br>\n- Seen mainly in the low rainfall area.<br>\n- Have a porous and friable structure.<br>\n- They are generally poor in nitrogen, phosphorous, and humus.<br>\n- These soils are airy and need irrigation for cultivation.<br>\n- Intense leaching is a menace in these soil areas.', 'Red_and_Yellow_Soil.jpg'),
(4, 'Laterite Soil', '- Laterite Soils are leached Soils because alternating dry and wet spells cause the soluble silica to be removed.<br>\n- These Soils are acidic in nature and coarse and crumbly in texture.<br>\n- The proportion of lime and silica is reduced when leaching takes place.<br>\n- In the upper layers, the compounds of iron and aluminium become higher giving a reddish colour to the Soil.<br>\n- Lack of nitrogen, potassium and organic elements make these Soils unsuitable for cultivation. These Soils support pastures and scrub forests.<br>\n- With the use of manures, coffee, rubber, cashew, etc., can be grown on these Soils.', 'Laterite_Soil.jpg'),
(5, 'Arid Soil', '- The soil red and brown in colour.<br>\n- It is sandy in texture.<br>\n- It is saline in nature and lacks humus and moisture.<br>\n- Arid soils contain a substantial amount of soluble salts.<br>\n- It is alkaline in nature because there is no rain to wash soluble salts.<br>\n- These soils are very infertile in nature.<br>\n- Arid soils are most characterized by their water deficiencies.<br>\n- It contains high levels of gypsum, calcium carbonates, sodium.', 'Arid_Soil.jpg'),
(6, 'Mountain and Forest Soil', '- The soils are heterogeneous in nature<br>\n- The property of soil varies with mountainous climate and altitude.<br>\n- The soils comprises of high amount of humus, but are deficient in potash, phosphorus and lime.<br>\n- The soils are adequate and suitable for plantation of tea, coffee, spices and tropical fruits.<br>\n- The soil is loamy and silty in valley sides and coarse-grained in the upper slopes.<br>\n- The soil is acidic with low humus content in the snow-covered areas.<br>\n- It is fertile in the lower parts of the valleys', 'Mountain_and_Forest_Soil.jpg'),
(7, 'Desert Soil', '- Desert soils are thin, sandy, rocky and generally grey in colour.<br>\n- Desert soils are very dry. When it does rain they soak up the water very quickly.<br>\n- The surface of the soil may appear crusty. This is due to the lack of rainfall. As it is so hot water is drawn up to the surface of the soil by evaporation. As the water evaporates, salts are left behind on the surface of the soil.', 'Desert_Soil.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subsidy`
--

CREATE TABLE `subsidy` (
  `subid` int(11) NOT NULL,
  `subname` varchar(100) NOT NULL,
  `subinfo` varchar(1200) NOT NULL,
  `subtype` varchar(100) NOT NULL,
  `suburl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subsidy`
--

INSERT INTO `subsidy` (`subid`, `subname`, `subinfo`, `subtype`, `suburl`) VALUES
(1, 'Rashtriya Krishi Yojana', 'Rashtriya Krishi Vikas Yojana was initiated in 2007 as an umbrella scheme for ensuring holistic development of agriculture and allied services. The scheme incentivises States in order to increase public investment in agriculture and allied services. The National Development Council (NDC) being concerned by the slow growth in the Agriculture and allied services launched this scheme. The scheme was implemented as an Additional Central Assistance to State Plan Scheme with 100% Central assistance. Since 2015-16, the funding pattern has been altered in the ratio of 60:40 between Centre and State.<br><br>\r\n\r\nThe main objective of the scheme is to develop agriculture as a main source of economic activity.<br><br>\r\nTo incentivize the states that increase their investments in agriculture and allied services.<br><br>\r\nTo provide states flexibility and autonomy in planning and executing programmes for agriculture.<br><br>\r\nTo realise the goal of reducing yield gaps in important crops.<br><br>\r\nTo maximise returns to farmers.<br><br>\r\nTo address agriculture and allied sectors in an integrated manner.', 'Seed Subsidy', 'https://cleartax.in/s/rashtriya-krishi-vikas-yojana-rkvy#:~:text=Rashtriya%20Krishi%20Vikas%20Yojana%20was,in%20agriculture%20and%20allied%20services.'),
(2, 'Direct Benefit Transfer systems in fertilizers', 'This scheme is truly beneficial for farmers and this will actually make them work in a more efficient manner. Under this scheme, they will do things as per their preferences. The central government has come up with this scheme in order to make farmers benefited from them. Things are done in the favor of farmers. The main motive of this scheme is to empower the farmers in India. There are very few schemes in India that are beneficial for farmers so this scheme should be utilized by the farmers.<br><br>\r\n\r\nMoreover, in this pandemic time, this scheme is surely proving to be helpful as these days no one is financially stable, especially the middle-class people. So in this case, this assistance given to farmers is proving really helpful.  The Modi government has come up with this scheme in order to help farmers in every possible way. This scheme is getting popular nationwide and all across the nation, farmers are admiring this decision of the Modi government.<br><br>\r\n\r\n\r\n\r\n', 'Fertilizer Subsidy', 'https://www.mpnrc.org/dbt-fertilizer-subsidy-scheme/');

-- --------------------------------------------------------

--
-- Table structure for table `technique`
--

CREATE TABLE `technique` (
  `tid` int(11) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `tinfo` varchar(1200) NOT NULL,
  `timage` varchar(200) NOT NULL,
  `turl` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technique`
--

INSERT INTO `technique` (`tid`, `tname`, `tinfo`, `timage`, `turl`) VALUES
(1, 'Multi-Layer Farming', 'The process of growing compatible multiple crops of different heights together in the same farm at the same time is known as Multi-Layer farming. It is generally a combination of fruits & vegetables that can grown together. These crops are grown at different heights at the same time.<br><br>\n\nThe objective of this Multi-Layer farming is to utilize space much more effectively. This gives farmers much better harvest and more earnings as more crops can be grown on the same land with same resources that are used to grow single crop. The chances of total crop failure are very low.<br><br>\n\nMany farmers have adopted this farming technique and are earning much more than before. The amazing thing is if you have 1 or 2 acre of land, still you can earn 8-10 lakhs in a year with Multi-Layer Farming.', '', 'https://krishijagran.com/agriculture-world/earn-10-lakhs-in-a-year-with-only-1-acre-of-farming-land/'),
(2, 'Permaculture', 'The word Permaculture is a combination of two words Permanent & Agriculture. It is a system for designing Agriculture Landscapes to work with nature without the use of chemicals and machinery. Permaculture principles can be applied to any type of land anywhere to make it fertile and increase crops produce.<br><br>\n\nNo tractors & manufactured chemicals are used in farms in permaculture. It teaches us that nothing is waste as waste of one element feeds another. In Permaculture, all the things that are used in farming are natural or naturally prepared. Such as water management with Rainwater Harvesting, Natural fertilizers, compost & pesticides.<br><br>\n\nMany farmers who adopted for permaculture have turned their ‘Banjar Lands’ into fertile.', '', 'https://krishijagran.com/agriculture-world/do-farming-without-tractors-pesticides-or-other-chemicals'),
(3, 'Hydroponics', 'The easiest definition of Hydroponics can be growing plants in water without soil. Many of the foods we eat today like tomato, lettuce are grown hydroponically in many places. The best part is you don’t need farms for hydroponics. It can be done in homes, rooftops, rooms. Depends on where & how much space you have.<br><br>\n\nGrowers all round the world are earning really good money through Hydroponics. The good thing is majority of them are not rural farmers, they are people living in metropolitan & urban cities. There are many successful hydroponics growers in India as well. Just do simple internet search & you will know how many success stories are there for this.<br><br>\n\nBenefits of Hydroponics can be greater yields and less diseases in plants as some major ones are soil related. This can be an excellent source for surplus income for regular people and farmers. This is why it has to be promoted more, advertise more.', '', 'https://krishijagran.com/agripedia/how-to-start-a-successful-hydroponics-farm-business/'),
(4, 'Zero Budget Natural Farming', 'While addressing the UN Conference on Desertification, our Prime Minister has said that India is focusing on Zero Budget Natural Farming (ZBNF). To double farmer’s income by 2022, ZBNF also was highlighted in Budget 2019.<br><br>\r\n\r\nHowever, the complete knowledge regarding ZBNF has yet to reach the majority even now. Zero Budget Natural Farming is a set of methods for chemical free agriculture. The main aim of ZBNF is to bring down the cost of production to zero. This is done by making own natural compost and fertilizer, making own natural pesticides & insecticides. In ZBNF it is believed that there is no need for expensive manufactured chemicals in farming & agriculture. ', '', 'https://krishijagran.com/agripedia/an-introduction-to-zero-budget-natural-farming/');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `umobile` bigint(50) NOT NULL,
  `ulocation` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `code` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `uname`, `uemail`, `upassword`, `umobile`, `ulocation`, `utype`, `code`, `status`) VALUES
(6, 'Farhan Khokhar', 'farhan@gmail.com', '65a7d29ba2fb8b1624674c7730a4c2e9', 916353850100, 'Rajkot, Gujarat', 'farmer', 0, 'verified'),
(7, 'Bhavik Pansuriya', 'bhavik@gmail.com', 'e11b9cd926a6b232589a1a2cd0ec289c', 917984701136, 'Rajkot, Gujarat', 'retailer', 0, 'verified'),
(8, 'Salim Jivani', 'salim@gmail.com', 'fd93d8ae48e2bc24c33bd471c3eeb400', 919624816305, 'Surendranagar, Gujarat', 'farmer', 0, 'verified'),
(9, 'Aarti Jilariya', 'aarti@gmail.com', '2d7a56120507e70b1dbb5979979b34ed', 917984025451, 'Rajkot, Gujarat', 'retailer', 0, 'verified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`plid`),
  ADD KEY `sid` (`sid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `soil`
--
ALTER TABLE `soil`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `subsidy`
--
ALTER TABLE `subsidy`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `technique`
--
ALTER TABLE `technique`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `plid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `soil`
--
ALTER TABLE `soil`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subsidy`
--
ALTER TABLE `subsidy`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `technique`
--
ALTER TABLE `technique`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `plant`
--
ALTER TABLE `plant`
  ADD CONSTRAINT `plant_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `soil` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
