-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 11:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azurehdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city_id` int(11) UNSIGNED NOT NULL,
  `city_name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province_id` int(11) UNSIGNED NOT NULL,
  `zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city_id`, `city_name`, `province_id`, `zipcode`) VALUES
(1, 'Bangued', 1, '2800'),
(2, 'Boliney', 1, '2815'),
(3, 'Bucay', 1, '2805'),
(4, 'Bucloc', 1, '2817'),
(5, 'Daguioman', 1, '2816'),
(6, 'Danglas', 1, '2825'),
(7, 'Dolores', 1, '2801'),
(8, 'La Paz', 1, '2826'),
(9, 'Lacub', 1, '2821'),
(10, 'Lagangilang', 1, '2902'),
(11, 'Lagayan', 1, '2824'),
(12, 'Langiden', 1, '2807'),
(13, 'Licuan-Baay', 1, ''),
(14, 'Luba', 1, '2813'),
(15, 'Malibcong', 1, '2820'),
(16, 'Manabo', 1, '2810'),
(17, 'Peñarrubia', 1, ''),
(18, 'Pidigan', 1, '2806'),
(19, 'Pilar', 1, '2812'),
(20, 'Sallapadan', 1, '2818'),
(21, 'San Isidro', 1, '2809'),
(22, 'San Juan', 1, '2823'),
(23, 'San Quintin', 1, '2808'),
(24, 'Tayum', 1, '2803'),
(25, 'Tineg', 1, '2822'),
(26, 'Tubo', 1, '2814'),
(27, 'Villaviciosa', 1, '2811'),
(28, 'Butuan City', 2, '8600'),
(29, 'Buenavista', 2, '8601'),
(30, 'Cabadbaran', 2, '8605'),
(31, 'Carmen', 2, '8603'),
(32, 'Jabonga', 2, '8607'),
(33, 'Kitcharao', 2, '8609'),
(34, 'Las Nieves', 2, '8610'),
(35, 'Magallanes', 2, '8604'),
(36, 'Nasipit', 2, '8602'),
(37, 'Remedios T. Romualdez', 2, '8611'),
(38, 'Santiago', 2, '8608'),
(39, 'Tubay', 2, '8606'),
(40, 'Bayugan', 3, '8502'),
(41, 'Bunawan', 3, '8506'),
(42, 'Esperanza', 3, '8513'),
(43, 'La Paz', 3, '8508'),
(44, 'Loreto', 3, '8507'),
(45, 'Prosperidad', 3, '8500'),
(46, 'Rosario', 3, '8504'),
(47, 'San Francisco', 3, '8501'),
(48, 'San Luis', 3, '8511'),
(49, 'Santa Josefa', 3, '8512'),
(50, 'Sibagat', 3, '8503'),
(51, 'Talacogon', 3, '8510'),
(52, 'Trento', 3, '8505'),
(53, 'Veruela', 3, '8509'),
(54, 'Altavas', 4, '5616'),
(55, 'Balete', 4, ''),
(56, 'Banga', 4, '5601'),
(57, 'Batan', 4, '5615'),
(58, 'Buruanga', 4, '5609'),
(59, 'Ibajay', 4, '5613'),
(60, 'Kalibo', 4, '5600'),
(61, 'Lezo', 4, '5605'),
(62, 'Libacao', 4, '5602'),
(63, 'Madalag', 4, '5603'),
(64, 'Makato', 4, '5611'),
(65, 'Malay', 4, '5608'),
(66, 'Malinao', 4, '5606'),
(67, 'Nabas', 4, '5607'),
(68, 'New Washington', 4, '5610'),
(69, 'Numancia', 4, '5604'),
(70, 'Tangalan', 4, '5612'),
(71, 'Legazpi City', 5, '4500'),
(72, 'Ligao City', 5, '4504'),
(73, 'Tabaco City', 5, '4511'),
(74, 'Bacacay', 5, '4509'),
(75, 'Camalig', 5, '4502'),
(76, 'Daraga', 5, '4501'),
(77, 'Guinobatan', 5, '4503'),
(78, 'Jovellar', 5, '4515'),
(79, 'Libon', 5, '4507'),
(80, 'Malilipot', 5, '4510'),
(81, 'Malinao', 5, '4512'),
(82, 'Manito', 5, '4514'),
(83, 'Oas', 5, '4505'),
(84, 'Pio Duran', 5, '4516'),
(85, 'Polangui', 5, '4506'),
(86, 'Rapu-Rapu', 5, '4517'),
(87, 'Santo Domingo', 5, '4508'),
(88, 'Tiwi', 5, '4513'),
(89, 'Anini-y', 6, '5717'),
(90, 'Barbaza', 6, '5706'),
(91, 'Belison', 6, '5701'),
(92, 'Bugasong', 6, '5704'),
(93, 'Caluya', 6, '5711'),
(94, 'Culasi', 6, '5708'),
(95, 'Hamtic', 6, '5715'),
(96, 'Laua-an', 6, '5705'),
(97, 'Libertad', 6, '5710'),
(98, 'Pandan', 6, '5712'),
(99, 'Patnongon', 6, '5702'),
(100, 'San Jose', 6, '6202'),
(101, 'San Remigio', 6, '6011'),
(102, 'Sebaste', 6, '5709'),
(103, 'Sibalom', 6, '5713'),
(104, 'Tibiao', 6, '5707'),
(105, 'Tobias Fornier', 6, '5716'),
(106, 'Valderrama', 6, '5703'),
(107, 'Calanasan', 7, '3814'),
(108, 'Conner', 7, '3807'),
(109, 'Flora', 7, '3810'),
(110, 'Kabugao', 7, '3809'),
(111, 'Luna', 7, '3813'),
(112, 'Pudtol', 7, '3812'),
(113, 'Santa Marcela', 7, '3811'),
(114, 'Baler', 8, '3200'),
(115, 'Casiguran', 8, '3204'),
(116, 'Dilasag', 8, '3205'),
(117, 'Dinalungan', 8, '3206'),
(118, 'Dingalan', 8, '3207'),
(119, 'Dipaculao', 8, '3203'),
(120, 'Maria Aurora', 8, '3202'),
(121, 'San Luis', 8, '3201'),
(122, 'Isabela City', 9, '7300'),
(123, 'Akbar', 9, ''),
(124, 'Al-Barka', 9, ''),
(125, 'Hadji Mohammad Ajul', 9, ''),
(126, 'Hadji Muhtamad', 9, ''),
(127, 'Lamitan', 9, '7302'),
(128, 'Lantawan', 9, '7301'),
(129, 'Maluso', 9, '7303'),
(130, 'Sumisip', 9, '7305'),
(131, 'Tabuan-Lasa', 9, ''),
(132, 'Tipo-Tipo', 9, '7304'),
(133, 'Tuburan', 9, '7306'),
(134, 'Ungkaya Pukan', 9, ''),
(135, 'Balanga City', 10, '2100'),
(136, 'Abucay', 10, '2114'),
(137, 'Bagac', 10, '2107'),
(138, 'Dinalupihan', 10, '2110'),
(139, 'Hermosa', 10, '2111'),
(140, 'Limay', 10, '2103'),
(141, 'Mariveles', 10, '2106'),
(142, 'Morong', 10, '2108'),
(143, 'Orani', 10, '2112'),
(144, 'Orion', 10, '2102'),
(145, 'Pilar', 10, '2101'),
(146, 'Samal', 10, '2113'),
(147, 'Basco', 11, '3900'),
(148, 'Itbayat', 11, '3905'),
(149, 'Ivana', 11, '3902'),
(150, 'Mahatao', 11, '3901'),
(151, 'Sabtang', 11, '3904'),
(152, 'Uyugan', 11, '3903'),
(153, 'Batangas City', 12, '4200'),
(154, 'Lipa City', 12, '4217'),
(155, 'Tanauan City', 12, '4232'),
(156, 'Agoncillo', 12, '4211'),
(157, 'Alitagtag', 12, '4205'),
(158, 'Balayan', 12, '4213'),
(159, 'Balete', 12, ''),
(160, 'Bauan', 12, '4201'),
(161, 'Calaca', 12, '4212'),
(162, 'Calatagan', 12, '4215'),
(163, 'Cuenca', 12, '4222'),
(164, 'Ibaan', 12, '4230'),
(165, 'Laurel', 12, '4221'),
(166, 'Lemery', 12, '4209'),
(167, 'Lian', 12, '4216'),
(168, 'Lobo', 12, '4229'),
(169, 'Mabini', 12, '4202'),
(170, 'Malvar', 12, '4233'),
(171, 'Mataas na Kahoy', 12, '4223'),
(172, 'Nasugbu', 12, '4231'),
(173, 'Padre Garcia', 12, '4224'),
(174, 'Rosario', 12, '4225'),
(175, 'San Jose', 12, '4227'),
(176, 'San Juan', 12, '4226'),
(177, 'San Luis', 12, '4210'),
(178, 'San Nicolas', 12, '4207'),
(179, 'San Pascual', 12, '4204'),
(180, 'Santa Teresita', 12, '4206'),
(181, 'Santo Tomas', 12, '4234'),
(182, 'Taal', 12, '4208'),
(183, 'Talisay', 12, '4220'),
(184, 'Taysan', 12, '4228'),
(185, 'Tingloy', 12, '4203'),
(186, 'Tuy', 12, '4214'),
(187, 'Baguio City', 13, '2600'),
(188, 'Atok', 13, '2612'),
(189, 'Bakun', 13, '2610'),
(190, 'Bokod', 13, '2605'),
(191, 'Buguias', 13, '2607'),
(192, 'Itogon', 13, '2604'),
(193, 'Kabayan', 13, '2606'),
(194, 'Kapangan', 13, '2613'),
(195, 'Kibungan', 13, '2611'),
(196, 'La Trinidad', 13, '2601'),
(197, 'Mankayan', 13, '2608'),
(198, 'Sablan', 13, '2614'),
(199, 'Tuba', 13, '2603'),
(200, 'Tublay', 13, '2615'),
(201, 'Almeria', 14, '6544'),
(202, 'Biliran', 14, '6544'),
(203, 'Cabucgayan', 14, '6550'),
(204, 'Caibiran', 14, '6548'),
(205, 'Culaba', 14, '6547'),
(206, 'Kawayan', 14, '6545'),
(207, 'Maripipi', 14, '6546'),
(208, 'Naval', 14, '6543'),
(209, 'Tagbilaran City', 15, '6300'),
(210, 'Alburquerque', 15, ''),
(211, 'Alicia', 15, '6314'),
(212, 'Anda', 15, '6311'),
(213, 'Antequera', 15, '6335'),
(214, 'Baclayon', 15, '6301'),
(215, 'Balilihan', 15, '6342'),
(216, 'Batuan', 15, '6318'),
(217, 'Bien Unido', 15, '6326'),
(218, 'Bilar', 15, '6317'),
(219, 'Buenavista', 15, '6333'),
(220, 'Calape', 15, '6328'),
(221, 'Candijay', 15, '6312'),
(222, 'Carmen', 15, '6319'),
(223, 'Catigbian', 15, '6343'),
(224, 'Clarin', 15, '6330'),
(225, 'Corella', 15, '6337'),
(226, 'Cortes', 15, ''),
(227, 'Dagohoy', 15, '6322'),
(228, 'Danao', 15, '6344'),
(229, 'Dauis', 15, '6339'),
(230, 'Dimiao', 15, '6305'),
(231, 'Duero', 15, '6309'),
(232, 'Garcia Hernandez', 15, '6307'),
(233, 'Getafe', 15, ''),
(234, 'Guindulman', 15, '6310'),
(235, 'Inabanga', 15, '6332'),
(236, 'Jagna', 15, '6308'),
(237, 'Lila', 15, '6304'),
(238, 'Loay', 15, '6303'),
(239, 'Loboc', 15, '6316'),
(240, 'Loon', 15, '6327'),
(241, 'Mabini', 15, '6313'),
(242, 'Maribojoc', 15, '6336'),
(243, 'Panglao', 15, '6340'),
(244, 'Pilar', 15, '6321'),
(245, 'President Carlos P. Garcia', 15, ''),
(246, 'Sagbayan', 15, '6331'),
(247, 'San Isidro', 15, '6345'),
(248, 'San Miguel', 15, '6323'),
(249, 'Sevilla', 15, '6347'),
(250, 'Sierra Bullones', 15, '6320'),
(251, 'Sikatuna', 15, '6338'),
(252, 'Talibon', 15, '6325'),
(253, 'Trinidad', 15, '6324'),
(254, 'Tubigon', 15, '6329'),
(255, 'Ubay', 15, '6315'),
(256, 'Valencia', 15, '6306'),
(257, 'Malaybalay City', 16, '8700'),
(258, 'Valencia City', 16, '8709'),
(259, 'Baungon', 16, '8707'),
(260, 'Cabanglasan', 16, '8723'),
(261, 'Damulog', 16, '8721'),
(262, 'Dangcagan', 16, '8719'),
(263, 'Don Carlos', 16, '8712'),
(264, 'Impasug-ong', 16, '8702'),
(265, 'Kadingilan', 16, '8713'),
(266, 'Kalilangan', 16, '8718'),
(267, 'Kibawe', 16, '8720'),
(268, 'Kitaotao', 16, '8716'),
(269, 'Lantapan', 16, '8722'),
(270, 'Libona', 16, '8706'),
(271, 'Malitbog', 16, '8704'),
(272, 'Manolo Fortich', 16, '8703'),
(273, 'Maramag', 16, '8714'),
(274, 'Pangantucan', 16, '8717'),
(275, 'Quezon', 16, '8715'),
(276, 'San Fernando', 16, '8711'),
(277, 'Sumilao', 16, '8701'),
(278, 'Talakag', 16, '8708'),
(279, 'Malolos City', 17, '3000'),
(280, 'Meycauayan City', 17, '3020'),
(281, 'San Jose del Monte City', 17, '3023'),
(282, 'Angat', 17, '3012'),
(283, 'Balagtas', 17, '3016'),
(284, 'Baliuag', 17, '3006'),
(285, 'Bocaue', 17, '3018'),
(286, 'Bulacan', 17, '3012'),
(287, 'Bustos', 17, '3007'),
(288, 'Calumpit', 17, '3003'),
(289, 'Doña Remedios Trinidad', 17, ''),
(290, 'Guiguinto', 17, '3015'),
(291, 'Hagonoy', 17, '3002'),
(292, 'Marilao', 17, '3019'),
(293, 'Norzagaray', 17, '3013'),
(294, 'Obando', 17, '3021'),
(295, 'Pandi', 17, '3014'),
(296, 'Paombong', 17, '3001'),
(297, 'Plaridel', 17, '3004'),
(298, 'Pulilan', 17, '3005'),
(299, 'San Ildefonso', 17, '3010'),
(300, 'San Miguel', 17, '3011'),
(301, 'San Rafael', 17, '3008'),
(302, 'Santa Maria', 17, '3022'),
(303, 'Tuguegarao City', 18, '3500'),
(304, 'Abulug', 18, '3517'),
(305, 'Alcala', 18, '3507'),
(306, 'Allacapan', 18, '3523'),
(307, 'Amulung', 18, '3505'),
(308, 'Aparri', 18, '3515'),
(309, 'Baggao', 18, '3506'),
(310, 'Ballesteros', 18, '3516'),
(311, 'Buguey', 18, '3511'),
(312, 'Calayan', 18, '3520'),
(313, 'Camalaniugan', 18, '3510'),
(314, 'Claveria', 18, '3519'),
(315, 'Enrile', 18, '3501'),
(316, 'Gattaran', 18, '3508'),
(317, 'Gonzaga', 18, '3513'),
(318, 'Iguig', 18, '3504'),
(319, 'Lal-lo', 18, '3509'),
(320, 'Lasam', 18, '3524'),
(321, 'Pamplona', 18, '3522'),
(322, 'Peñablanca', 18, '3502'),
(323, 'Piat', 18, '3527'),
(324, 'Rizal', 18, '3526'),
(325, 'Sanchez-Mira', 18, ''),
(326, 'Santa Ana', 18, '3514'),
(327, 'Santa Praxedes', 18, '3521'),
(328, 'Santa Teresita', 18, '3512'),
(329, 'Santo Niño', 18, '3525'),
(330, 'Solana', 18, '3503'),
(331, 'Tuao', 18, '3528'),
(332, 'Basud', 19, '4608'),
(333, 'Capalonga', 19, '4607'),
(334, 'Daet', 19, '4600'),
(335, 'Jose Panganiban', 19, '4606'),
(336, 'Labo', 19, '4604'),
(337, 'Mercedes', 19, '4601'),
(338, 'Paracale', 19, '4605'),
(339, 'San Lorenzo Ruiz', 19, '4610'),
(340, 'San Vicente', 19, '4609'),
(341, 'Santa Elena', 19, '4611'),
(342, 'Talisay', 19, '4602'),
(343, 'Vinzons', 19, '4603'),
(344, 'Iriga City', 20, '4431'),
(345, 'Naga City', 20, '4400'),
(346, 'Baao', 20, '4432'),
(347, 'Balatan', 20, '4436'),
(348, 'Bato', 20, '4435'),
(349, 'Bombon', 20, '4404'),
(350, 'Buhi', 20, '4433'),
(351, 'Bula', 20, '4430'),
(352, 'Cabusao', 20, '4406'),
(353, 'Calabanga', 20, '4405'),
(354, 'Camaligan', 20, '4401'),
(355, 'Canaman', 20, '4402'),
(356, 'Caramoan', 20, '4429'),
(357, 'Del Gallego', 20, '4411'),
(358, 'Gainza', 20, '4412'),
(359, 'Garchitorena', 20, '4428'),
(360, 'Goa', 20, '4422'),
(361, 'Lagonoy', 20, '4425'),
(362, 'Libmanan', 20, '4407'),
(363, 'Lupi', 20, '4409'),
(364, 'Magarao', 20, '4403'),
(365, 'Milaor', 20, '4413'),
(366, 'Minalabac', 20, '4414'),
(367, 'Nabua', 20, '4434'),
(368, 'Ocampo', 20, '4419'),
(369, 'Pamplona', 20, '4416'),
(370, 'Pasacao', 20, '4417'),
(371, 'Pili', 20, '4418'),
(372, 'Presentacion', 20, '4424'),
(373, 'Ragay', 20, '4410'),
(374, 'Sagñay', 20, '4421'),
(375, 'San Fernando', 20, '4415'),
(376, 'San Jose', 20, '4423'),
(377, 'Sipocot', 20, '4408'),
(378, 'Siruma', 20, '4427'),
(379, 'Tigaon', 20, '4420'),
(380, 'Tinambac', 20, '4426'),
(381, 'Catarman', 21, '9104'),
(382, 'Guinsiliban', 21, '9102'),
(383, 'Mahinog', 21, '9101'),
(384, 'Mambajao', 21, '9100'),
(385, 'Sagay', 21, '9103'),
(386, 'Roxas City', 22, '5800'),
(387, 'Cuartero', 22, '5811'),
(388, 'Dao', 22, '5810'),
(389, 'Dumalag', 22, '5813'),
(390, 'Dumarao', 22, '5812'),
(391, 'Ivisan', 22, '5805'),
(392, 'Jamindan', 22, '5808'),
(393, 'Ma-ayon', 22, '5809'),
(394, 'Mambusao', 22, '5807'),
(395, 'Panay', 22, '5801'),
(396, 'Panitan', 22, '5815'),
(397, 'Pilar', 22, '5804'),
(398, 'Pontevedra', 22, '5802'),
(399, 'President Roxas', 22, '5803'),
(400, 'Sapi-an', 22, ''),
(401, 'Sigma', 22, '5816'),
(402, 'Tapaz', 22, '5814'),
(403, 'Bagamanoc', 23, '4807'),
(404, 'Baras', 23, '4803'),
(405, 'Bato', 23, '4801'),
(406, 'Caramoran', 23, '4808'),
(407, 'Gigmoto', 23, '4804'),
(408, 'Pandan', 23, '4809'),
(409, 'Panganiban', 23, '4806'),
(410, 'San Andres', 23, '4810'),
(411, 'San Miguel', 23, '4802'),
(412, 'Viga', 23, '4805'),
(413, 'Virac', 23, '4800'),
(414, 'Cavite City', 24, '4100'),
(415, 'Dasmariñas City', 24, '4114'),
(416, 'Tagaytay City', 24, '4120'),
(417, 'Trece Martires City', 24, '4109'),
(418, 'Alfonso', 24, '4123'),
(419, 'Amadeo', 24, '4119'),
(420, 'Bacoor', 24, '4102'),
(421, 'Carmona', 24, '4116'),
(422, 'General Mariano Alvarez', 24, '4117'),
(423, 'General Emilio Aguinaldo', 24, '4124'),
(424, 'General Trias', 24, '4107'),
(425, 'Imus', 24, '4103'),
(426, 'Indang', 24, '4122'),
(427, 'Kawit', 24, '4104'),
(428, 'Magallanes', 24, '4113'),
(429, 'Maragondon', 24, '4112'),
(430, 'Mendez', 24, '4121'),
(431, 'Naic', 24, '4110'),
(432, 'Noveleta', 24, '4105'),
(433, 'Rosario', 24, '4106'),
(434, 'Silang', 24, '4118'),
(435, 'Tanza', 24, '4108'),
(436, 'Ternate', 24, '4111'),
(437, 'Bogo City', 25, '6010'),
(438, 'Cebu City', 25, '6000'),
(439, 'Carcar City', 25, '6019'),
(440, 'Danao City', 25, '6004'),
(441, 'Lapu-Lapu City', 25, '6015'),
(442, 'Mandaue City', 25, '6014'),
(443, 'Naga City', 25, '6037'),
(444, 'Talisay City', 25, '6045'),
(445, 'Toledo City', 25, '6038'),
(446, 'Alcantara', 25, '6033'),
(447, 'Alcoy', 25, '6023'),
(448, 'Alegria', 25, '6030'),
(449, 'Aloguinsan', 25, '6040'),
(450, 'Argao', 25, '6021'),
(451, 'Asturias', 25, '6042'),
(452, 'Badian', 25, '6031'),
(453, 'Balamban', 25, '6041'),
(454, 'Bantayan', 25, '6052'),
(455, 'Barili', 25, '6036'),
(456, 'Boljoon', 25, '6024'),
(457, 'Borbon', 25, '6008'),
(458, 'Carmen', 25, '6005'),
(459, 'Catmon', 25, '6006'),
(460, 'Compostela', 25, '6003'),
(461, 'Consolacion', 25, '6001'),
(462, 'Cordoba', 25, ''),
(463, 'Daanbantayan', 25, '6013'),
(464, 'Dalaguete', 25, '6022'),
(465, 'Dumanjug', 25, '6035'),
(466, 'Ginatilan', 25, '6028'),
(467, 'Liloan', 25, '6002'),
(468, 'Madridejos', 25, '6053'),
(469, 'Malabuyoc', 25, '6029'),
(470, 'Medellin', 25, '6012'),
(471, 'Minglanilla', 25, '6046'),
(472, 'Moalboal', 25, '6032'),
(473, 'Oslob', 25, '6025'),
(474, 'Pilar', 25, '6048'),
(475, 'Pinamungahan', 25, '6039'),
(476, 'Poro', 25, '6049'),
(477, 'Ronda', 25, '6034'),
(478, 'Samboan', 25, '6027'),
(479, 'San Fernando', 25, '6018'),
(480, 'San Francisco', 25, '6050'),
(481, 'San Remigio', 25, '6011'),
(482, 'Santa Fe', 25, '6047'),
(483, 'Santander', 25, '6026'),
(484, 'Sibonga', 25, '6020'),
(485, 'Sogod', 25, '6007'),
(486, 'Tabogon', 25, '6009'),
(487, 'Tabuelan', 25, '6044'),
(488, 'Tuburan', 25, '6043'),
(489, 'Tudela', 25, '6051'),
(490, 'Compostela', 26, '9413'),
(491, 'Laak', 26, ''),
(492, 'Mabini', 26, ''),
(493, 'Maco', 26, ''),
(494, 'Maragusan', 26, ''),
(495, 'Mawab', 26, ''),
(496, 'Monkayo', 26, ''),
(497, 'Montevista', 26, ''),
(498, 'Nabunturan', 26, ''),
(499, 'New Bataan', 26, ''),
(500, 'Pantukan', 26, ''),
(501, 'Kidapawan City', 27, '9400'),
(502, 'Alamada', 27, '9413'),
(503, 'Aleosan', 27, '9415'),
(504, 'Antipas', 27, '9414'),
(505, 'Arakan', 27, '9417'),
(506, 'Banisilan', 27, '9416'),
(507, 'Carmen', 27, '9408'),
(508, 'Kabacan', 27, '9407'),
(509, 'Libungan', 27, '9411'),
(510, 'M\'lang', 27, '9402'),
(511, 'Magpet', 27, '9404'),
(512, 'Makilala', 27, '9401'),
(513, 'Matalam', 27, '9406'),
(514, 'Midsayap', 27, '9410'),
(515, 'Pigkawayan', 27, '9412'),
(516, 'Pikit', 27, '9409'),
(517, 'President Roxas', 27, '9405'),
(518, 'Tulunan', 27, '9403'),
(519, 'Panabo City', 28, ''),
(520, 'Island Garden City of Samal', 28, ''),
(521, 'Tagum City', 28, ''),
(522, 'Asuncion', 28, ''),
(523, 'Braulio E. Dujali', 28, ''),
(524, 'Carmen', 28, '9408'),
(525, 'Kapalong', 28, ''),
(526, 'New Corella', 28, ''),
(527, 'San Isidro', 28, '8421'),
(528, 'Santo Tomas', 28, ''),
(529, 'Talaingod', 28, ''),
(530, 'Davao City', 29, '9413'),
(531, 'Digos City', 29, ''),
(532, 'Bansalan', 29, ''),
(533, 'Don Marcelino', 29, ''),
(534, 'Hagonoy', 29, ''),
(535, 'Jose Abad Santos', 29, ''),
(536, 'Kiblawan', 29, ''),
(537, 'Magsaysay', 29, ''),
(538, 'Malalag', 29, ''),
(539, 'Malita', 29, ''),
(540, 'Matanao', 29, ''),
(541, 'Padada', 29, ''),
(542, 'Santa Cruz', 29, ''),
(543, 'Santa Maria', 29, ''),
(544, 'Sarangani', 29, '9501'),
(545, 'Sulop', 29, ''),
(546, 'Mati City', 30, ''),
(547, 'Baganga', 30, ''),
(548, 'Banaybanay', 30, ''),
(549, 'Boston', 30, ''),
(550, 'Caraga', 30, ''),
(551, 'Cateel', 30, ''),
(552, 'Governor Generoso', 30, ''),
(553, 'Lupon', 30, ''),
(554, 'Manay', 30, ''),
(555, 'San Isidro', 30, '8421'),
(556, 'Tarragona', 30, ''),
(557, 'Arteche', 31, '6822'),
(558, 'Balangiga', 31, '6812'),
(559, 'Balangkayan', 31, '6801'),
(560, 'Borongan', 31, '6800'),
(561, 'Can-avid', 31, '6806'),
(562, 'Dolores', 31, '6817'),
(563, 'General MacArthur', 31, '6805'),
(564, 'Giporlos', 31, '6811'),
(565, 'Guiuan', 31, '6809'),
(566, 'Hernani', 31, '6804'),
(567, 'Jipapad', 31, '6819'),
(568, 'Lawaan', 31, '6813'),
(569, 'Llorente', 31, '6803'),
(570, 'Maslog', 31, '6820'),
(571, 'Maydolong', 31, '6802'),
(572, 'Mercedes', 31, '6808'),
(573, 'Oras', 31, '6818'),
(574, 'Quinapondan', 31, ''),
(575, 'Salcedo', 31, '6807'),
(576, 'San Julian', 31, '6814'),
(577, 'San Policarpo', 31, '6821'),
(578, 'Sulat', 31, '6815'),
(579, 'Taft', 31, '6816'),
(580, 'Buenavista', 32, '5044'),
(581, 'Jordan', 32, '5045'),
(582, 'Nueva Valencia', 32, '5046'),
(583, 'San Lorenzo', 32, ''),
(584, 'Sibunag', 32, ''),
(585, 'Aguinaldo', 33, '3606'),
(586, 'Alfonso Lista', 33, ''),
(587, 'Asipulo', 33, '3610'),
(588, 'Banaue', 33, '3601'),
(589, 'Hingyon', 33, '3607'),
(590, 'Hungduan', 33, '3603'),
(591, 'Kiangan', 33, '3604'),
(592, 'Lagawe', 33, '3600'),
(593, 'Lamut', 33, '3605'),
(594, 'Mayoyao', 33, '3602'),
(595, 'Tinoc', 33, '3609'),
(596, 'Batac City', 34, '2906'),
(597, 'Laoag City', 34, '2900'),
(598, 'Adams', 34, '2922'),
(599, 'Bacarra', 34, '2916'),
(600, 'Badoc', 34, '2904'),
(601, 'Bangui', 34, '2920'),
(602, 'Banna', 34, '2908'),
(603, 'Burgos', 34, '2918'),
(604, 'Carasi', 34, '2911'),
(605, 'Currimao', 34, '2903'),
(606, 'Dingras', 34, '2913'),
(607, 'Dumalneg', 34, '2921'),
(608, 'Marcos', 34, '2907'),
(609, 'Nueva Era', 34, '2909'),
(610, 'Pagudpud', 34, '2919'),
(611, 'Paoay', 34, '2902'),
(612, 'Pasuquin', 34, '2917'),
(613, 'Piddig', 34, '2912'),
(614, 'Pinili', 34, '2905'),
(615, 'San Nicolas', 34, '2901'),
(616, 'Sarrat', 34, '2914'),
(617, 'Solsona', 34, '2910'),
(618, 'Vintar', 34, '2915'),
(619, 'Candon City', 35, '2710'),
(620, 'Vigan City', 35, '2700'),
(621, 'Alilem', 35, '2716'),
(622, 'Banayoyo', 35, '2708'),
(623, 'Bantay', 35, '2727'),
(624, 'Burgos', 35, '2724'),
(625, 'Cabugao', 35, '2732'),
(626, 'Caoayan', 35, '2702'),
(627, 'Cervantes', 35, '2718'),
(628, 'Galimuyod', 35, '2709'),
(629, 'Gregorio Del Pilar', 35, '2720'),
(630, 'Lidlidda', 35, '2723'),
(631, 'Magsingal', 35, '2730'),
(632, 'Nagbukel', 35, '2725'),
(633, 'Narvacan', 35, '2704'),
(634, 'Quirino', 35, '2721'),
(635, 'Salcedo', 35, '2711'),
(636, 'San Emilio', 35, '2722'),
(637, 'San Esteban', 35, '2706'),
(638, 'San Ildefonso', 35, '2728'),
(639, 'San Juan', 35, '2731'),
(640, 'San Vicente', 35, '2726'),
(641, 'Santa', 35, '2703'),
(642, 'Santa Catalina', 35, '2701'),
(643, 'Santa Cruz', 35, '2713'),
(644, 'Santa Lucia', 35, '2712'),
(645, 'Santa Maria', 35, '2440'),
(646, 'Santiago', 35, '2707'),
(647, 'Santo Domingo', 35, '2729'),
(648, 'Sigay', 35, '2719'),
(649, 'Sinait', 35, '2733'),
(650, 'Sugpon', 35, '2717'),
(651, 'Suyo', 35, '2715'),
(652, 'Tagudin', 35, '2714'),
(653, 'Iloilo City', 36, '5000'),
(654, 'Passi City', 36, '5037'),
(655, 'Ajuy', 36, '5012'),
(656, 'Alimodian', 36, '5028'),
(657, 'Anilao', 36, '5009'),
(658, 'Badiangan', 36, '5033'),
(659, 'Balasan', 36, '5018'),
(660, 'Banate', 36, '5010'),
(661, 'Barotac Nuevo', 36, '5007'),
(662, 'Barotac Viejo', 36, '5011'),
(663, 'Batad', 36, '5016'),
(664, 'Bingawan', 36, '5041'),
(665, 'Cabatuan', 36, '5031'),
(666, 'Calinog', 36, '5040'),
(667, 'Carles', 36, '5019'),
(668, 'Concepcion', 36, '5013'),
(669, 'Dingle', 36, '5035'),
(670, 'Dueñas', 36, '5038'),
(671, 'Dumangas', 36, '5006'),
(672, 'Estancia', 36, '5017'),
(673, 'Guimbal', 36, '5022'),
(674, 'Igbaras', 36, '5029'),
(675, 'Janiuay', 36, '5034'),
(676, 'Lambunao', 36, '5042'),
(677, 'Leganes', 36, '5003'),
(678, 'Lemery', 36, '5043'),
(679, 'Leon', 36, '5026'),
(680, 'Maasin', 36, '5030'),
(681, 'Miagao', 36, '5023'),
(682, 'Mina', 36, '5032'),
(683, 'New Lucena', 36, '5005'),
(684, 'Oton', 36, '5020'),
(685, 'Pavia', 36, '5001'),
(686, 'Pototan', 36, '5008'),
(687, 'San Dionisio', 36, '5015'),
(688, 'San Enrique', 36, '5036'),
(689, 'San Joaquin', 36, '5024'),
(690, 'San Miguel', 36, '5025'),
(691, 'San Rafael', 36, '5039'),
(692, 'Santa Barbara', 36, '5002'),
(693, 'Sara', 36, '5014'),
(694, 'Tigbauan', 36, '5021'),
(695, 'Tubungan', 36, '5027'),
(696, 'Zarraga', 36, '5004'),
(697, 'Cauayan City', 37, '3305'),
(698, 'Santiago City', 37, '3311'),
(699, 'Alicia', 37, '3306'),
(700, 'Angadanan', 37, '3307'),
(701, 'Aurora', 37, '3316'),
(702, 'Benito Soliven', 37, '3331'),
(703, 'Burgos', 37, '3322'),
(704, 'Cabagan', 37, '3328'),
(705, 'Cabatuan', 37, '3315'),
(706, 'Cordon', 37, '3312'),
(707, 'Delfin Albano', 37, '3326'),
(708, 'Dinapigue', 37, '3336'),
(709, 'Divilacan', 37, ''),
(710, 'Echague', 37, '3309'),
(711, 'Gamu', 37, '3301'),
(712, 'Ilagan', 37, '3300'),
(713, 'Jones', 37, '3313'),
(714, 'Luna', 37, '3304'),
(715, 'Maconacon', 37, '3333'),
(716, 'Mallig', 37, '3323'),
(717, 'Naguilian', 37, '3302'),
(718, 'Palanan', 37, '3334'),
(719, 'Quezon', 37, '3324'),
(720, 'Quirino', 37, '3321'),
(721, 'Ramon', 37, '3319'),
(722, 'Reina Mercedes', 37, '3303'),
(723, 'Roxas', 37, '3320'),
(724, 'San Agustin', 37, '3314'),
(725, 'San Guillermo', 37, '3308'),
(726, 'San Isidro', 37, '3310'),
(727, 'San Manuel', 37, '3317'),
(728, 'San Mariano', 37, '3332'),
(729, 'San Mateo', 37, '3318'),
(730, 'San Pablo', 37, '3329'),
(731, 'Santa Maria', 37, '3330'),
(732, 'Santo Tomas', 37, '3327'),
(733, 'Tumauini', 37, '3325'),
(734, 'Tabuk', 38, '3800'),
(735, 'Balbalan', 38, '3801'),
(736, 'Lubuagan', 38, '3802'),
(737, 'Pasil', 38, '3803'),
(738, 'Pinukpuk', 38, '3806'),
(739, 'Rizal', 38, '3808'),
(740, 'Tanudan', 38, '3805'),
(741, 'Tinglayan', 38, '3804'),
(742, 'San Fernando City', 39, '2500'),
(743, 'Agoo', 39, '2504'),
(744, 'Aringay', 39, '2503'),
(745, 'Bacnotan', 39, '2515'),
(746, 'Bagulin', 39, '2512'),
(747, 'Balaoan', 39, '2517'),
(748, 'Bangar', 39, '2519'),
(749, 'Bauang', 39, '2501'),
(750, 'Burgos', 39, '2510'),
(751, 'Caba', 39, '2502'),
(752, 'Luna', 39, '2518'),
(753, 'Naguilian', 39, '3302'),
(754, 'Pugo', 39, '2508'),
(755, 'Rosario', 39, '2506'),
(756, 'San Gabriel', 39, '2513'),
(757, 'San Juan', 39, '2514'),
(758, 'Santo Tomas', 39, '2505'),
(759, 'Santol', 39, '2516'),
(760, 'Sudipen', 39, '2520'),
(761, 'Tubao', 39, '2509'),
(762, 'Biñan City', 40, '4024'),
(763, 'Calamba City', 40, '4027'),
(764, 'San Pablo City', 40, '4000'),
(765, 'Santa Rosa City', 40, '4026'),
(766, 'Alaminos', 40, '4001'),
(767, 'Bay', 40, '4033'),
(768, 'Cabuyao', 40, '4025'),
(769, 'Calauan', 40, '4012'),
(770, 'Cavinti', 40, '4013'),
(771, 'Famy', 40, '4021'),
(772, 'Kalayaan', 40, '4015'),
(773, 'Liliw', 40, '4004'),
(774, 'Los Baños', 40, '4031'),
(775, 'Luisiana', 40, '4032'),
(776, 'Lumban', 40, '4014'),
(777, 'Mabitac', 40, '4020'),
(778, 'Magdalena', 40, '4007'),
(779, 'Majayjay', 40, '4005'),
(780, 'Nagcarlan', 40, '4002'),
(781, 'Paete', 40, '4016'),
(782, 'Pagsanjan', 40, '4008'),
(783, 'Pakil', 40, '4017'),
(784, 'Pangil', 40, '4018'),
(785, 'Pila', 40, '4010'),
(786, 'Rizal', 40, '4003'),
(787, 'San Pedro', 40, '4023'),
(788, 'Santa Cruz', 40, '4009'),
(789, 'Santa Maria', 40, '4022'),
(790, 'Siniloan', 40, '4019'),
(791, 'Victoria', 40, '4011'),
(792, 'Iligan City', 41, '9200'),
(793, 'Bacolod', 41, '9205'),
(794, 'Baloi', 41, '9217'),
(795, 'Baroy', 41, '9210'),
(796, 'Kapatagan', 41, '9214'),
(797, 'Kauswagan', 41, '9202'),
(798, 'Kolambugan', 41, '9207'),
(799, 'Lala', 41, '9211'),
(800, 'Linamon', 41, '9201'),
(801, 'Magsaysay', 41, '9221'),
(802, 'Maigo', 41, '9206'),
(803, 'Matungao', 41, '9203'),
(804, 'Munai', 41, '9219'),
(805, 'Nunungan', 41, '9216'),
(806, 'Pantao Ragat', 41, '9208'),
(807, 'Pantar', 41, '9218'),
(808, 'Poona Piagapo', 41, '9204'),
(809, 'Salvador', 41, '9212'),
(810, 'Sapad', 41, '9213'),
(811, 'Sultan Naga Dimaporo', 41, '9215'),
(812, 'Tagoloan', 41, '9222'),
(813, 'Tangcal', 41, '9220'),
(814, 'Tubod', 41, '9209'),
(815, 'Marawi City', 42, ''),
(816, 'Bacolod-Kalawi', 42, ''),
(817, 'Balabagan', 42, '9302'),
(818, 'Balindong', 42, '9318'),
(819, 'Bayang', 42, '9309'),
(820, 'Binidayan', 42, '9310'),
(821, 'Buadiposo-Buntong', 42, ''),
(822, 'Bubong', 42, '9708'),
(823, 'Bumbaran', 42, '9320'),
(824, 'Butig', 42, '9305'),
(825, 'Calanogas', 42, '9319'),
(826, 'Ditsaan-Ramain', 42, ''),
(827, 'Ganassi', 42, '9311'),
(828, 'Kapai', 42, '9709'),
(829, 'Kapatagan', 42, '9214'),
(830, 'Lumba-Bayabao', 42, ''),
(831, 'Lumbaca-Unayan', 42, ''),
(832, 'Lumbatan', 42, '9307'),
(833, 'Lumbayanague', 42, '9306'),
(834, 'Madalum', 42, '9315'),
(835, 'Madamba', 42, '9314'),
(836, 'Maguing', 42, '9715'),
(837, 'Malabang', 42, '9300'),
(838, 'Marantao', 42, ''),
(839, 'Marogong', 42, ''),
(840, 'Masiu', 42, ''),
(841, 'Mulondo', 42, ''),
(842, 'Pagayawan', 42, ''),
(843, 'Piagapo', 42, '9204'),
(844, 'Poona Bayabao', 42, ''),
(845, 'Pualas', 42, ''),
(846, 'Saguiaran', 42, ''),
(847, 'Sultan Dumalondong', 42, ''),
(848, 'Picong', 42, ''),
(849, 'Tagoloan II', 42, ''),
(850, 'Tamparan', 42, ''),
(851, 'Taraka', 42, ''),
(852, 'Tubaran', 42, ''),
(853, 'Tugaya', 42, ''),
(854, 'Wao', 42, ''),
(855, 'Ormoc City', 43, '6541'),
(856, 'Tacloban City', 43, '6500'),
(857, 'Abuyog', 43, '6510'),
(858, 'Alangalang', 43, '6517'),
(859, 'Albuera', 43, '6542'),
(860, 'Babatngon', 43, '6520'),
(861, 'Barugo', 43, '6519'),
(862, 'Bato', 43, '6525'),
(863, 'Baybay', 43, '6521'),
(864, 'Burauen', 43, '6516'),
(865, 'Calubian', 43, '6534'),
(866, 'Capoocan', 43, '6530'),
(867, 'Carigara', 43, '6529'),
(868, 'Dagami', 43, '6515'),
(869, 'Dulag', 43, '6505'),
(870, 'Hilongos', 43, '6524'),
(871, 'Hindang', 43, '6523'),
(872, 'Inopacan', 43, '6522'),
(873, 'Isabel', 43, '6539'),
(874, 'Jaro', 43, '6527'),
(875, 'Javier', 43, '6511'),
(876, 'Julita', 43, '6506'),
(877, 'Kananga', 43, '6531'),
(878, 'La Paz', 43, '6508'),
(879, 'Leyte', 43, '6510'),
(880, 'Liloan', 43, '6612'),
(881, 'MacArthur', 43, '6509'),
(882, 'Mahaplag', 43, '6512'),
(883, 'Matag-ob', 43, '6532'),
(884, 'Matalom', 43, '6526'),
(885, 'Mayorga', 43, '6507'),
(886, 'Merida', 43, '6540'),
(887, 'Palo', 43, '6501'),
(888, 'Palompon', 43, '6538'),
(889, 'Pastrana', 43, '6514'),
(890, 'San Isidro', 43, '6535'),
(891, 'San Miguel', 43, '6518'),
(892, 'Santa Fe', 43, '6513'),
(893, 'Sogod', 43, '6606'),
(894, 'Tabango', 43, '6536'),
(895, 'Tabontabon', 43, '6504'),
(896, 'Tanauan', 43, '6502'),
(897, 'Tolosa', 43, '6503'),
(898, 'Tunga', 43, '6528'),
(899, 'Villaba', 43, '6537'),
(900, 'Cotabato City', 44, '9600'),
(901, 'Ampatuan', 44, '9609'),
(902, 'Barira', 44, '9614'),
(903, 'Buldon', 44, '9615'),
(904, 'Buluan', 44, '9616'),
(905, 'Datu Abdullah Sangki', 44, ''),
(906, 'Datu Anggal Midtimbang', 44, ''),
(907, 'Datu Blah T. Sinsuat', 44, ''),
(908, 'Datu Hoffer Ampatuan', 44, ''),
(909, 'Datu Montawal', 44, ''),
(910, 'Datu Odin Sinsuat', 44, '9601'),
(911, 'Datu Paglas', 44, '9617'),
(912, 'Datu Piang', 44, '9607'),
(913, 'Datu Salibo', 44, ''),
(914, 'Datu Saudi-Ampatuan', 44, ''),
(915, 'Datu Unsay', 44, ''),
(916, 'General Salipada K. Pendatun', 44, ''),
(917, 'Guindulungan', 44, ''),
(918, 'Kabuntalan', 44, ''),
(919, 'Mamasapano', 44, ''),
(920, 'Mangudadatu', 44, ''),
(921, 'Matanog', 44, '9613'),
(922, 'Northern Kabuntalan', 44, ''),
(923, 'Pagalungan', 44, '9610'),
(924, 'Paglat', 44, ''),
(925, 'Pandag', 44, ''),
(926, 'Parang', 44, '9604'),
(927, 'Rajah Buayan', 44, ''),
(928, 'Shariff Aguak', 44, '9608'),
(929, 'Shariff Saydona Mustapha', 44, ''),
(930, 'South Upi', 44, '9603'),
(931, 'Sultan Kudarat', 44, '9605'),
(932, 'Sultan Mastura', 44, ''),
(933, 'Sultan sa Barongis', 44, '9611'),
(934, 'Talayan', 44, '9612'),
(935, 'Talitay', 44, ''),
(936, 'Upi', 44, '9603'),
(937, 'Boac', 45, '4900'),
(938, 'Buenavista', 45, '4904'),
(939, 'Gasan', 45, '4905'),
(940, 'Mogpog', 45, '4901'),
(941, 'Santa Cruz', 45, '4902'),
(942, 'Torrijos', 45, '4903'),
(943, 'Masbate City', 46, '5414'),
(944, 'Aroroy', 46, '5414'),
(945, 'Baleno', 46, '5413'),
(946, 'Balud', 46, '5412'),
(947, 'Batuan', 46, '5415'),
(948, 'Cataingan', 46, '5405'),
(949, 'Cawayan', 46, '5409'),
(950, 'Claveria', 46, '5419'),
(951, 'Dimasalang', 46, '5403'),
(952, 'Esperanza', 46, '5407'),
(953, 'Mandaon', 46, '5411'),
(954, 'Milagros', 46, '5410'),
(955, 'Mobo', 46, '5401'),
(956, 'Monreal', 46, '5418'),
(957, 'Palanas', 46, '5404'),
(958, 'Pio V. Corpuz', 46, '5406'),
(959, 'Placer', 46, '5408'),
(960, 'San Fernando', 46, '5416'),
(961, 'San Jacinto', 46, '5417'),
(962, 'San Pascual', 46, '5420'),
(963, 'Uson', 46, '5402'),
(964, 'Caloocan', 47, ''),
(965, 'Las Piñas', 47, '1740'),
(966, 'Makati', 47, '1224'),
(967, 'Malabon', 47, '1470'),
(968, 'Mandaluyong', 47, ''),
(969, 'Manila', 47, ''),
(970, 'Marikina', 47, '1800'),
(971, 'Muntinlupa', 47, '1770'),
(972, 'Navotas', 47, '1485'),
(973, 'Parañaque', 47, '1700'),
(974, 'Pasay', 47, '1300'),
(975, 'Pasig', 47, '1600'),
(976, 'Quezon City', 47, '1100'),
(977, 'San Juan City', 47, '1500'),
(978, 'Taguig', 47, ''),
(979, 'Valenzuela City', 47, '1208'),
(980, 'Pateros', 47, ''),
(981, 'Oroquieta City', 48, '7207'),
(982, 'Ozamiz City', 48, ''),
(983, 'Tangub City', 48, '7214'),
(984, 'Aloran', 48, '7206'),
(985, 'Baliangao', 48, '7211'),
(986, 'Bonifacio', 48, '7215'),
(987, 'Calamba', 48, '7210'),
(988, 'Clarin', 48, '7201'),
(989, 'Concepcion', 48, '7213'),
(990, 'Don Victoriano Chiongbian', 48, ''),
(991, 'Jimenez', 48, '7204'),
(992, 'Lopez Jaena', 48, '7208'),
(993, 'Panaon', 48, '7205'),
(994, 'Plaridel', 48, '7209'),
(995, 'Sapang Dalaga', 48, '7212'),
(996, 'Sinacaban', 48, '7203'),
(997, 'Tudela', 48, '7202'),
(998, 'Cagayan de Oro', 49, '9000'),
(999, 'Gingoog City', 49, '9014'),
(1000, 'Alubijid', 49, '9018'),
(1001, 'Balingasag', 49, '9005'),
(1002, 'Balingoan', 49, '9011'),
(1003, 'Binuangan', 49, '9008'),
(1004, 'Claveria', 49, '9004'),
(1005, 'El Salvador', 49, '9017'),
(1006, 'Gitagum', 49, '9020'),
(1007, 'Initao', 49, '9022'),
(1008, 'Jasaan', 49, '9003'),
(1009, 'Kinoguitan', 49, '9010'),
(1010, 'Lagonglong', 49, '9006'),
(1011, 'Laguindingan', 49, '9019'),
(1012, 'Libertad', 49, '9021'),
(1013, 'Lugait', 49, '9025'),
(1014, 'Magsaysay', 49, '9015'),
(1015, 'Manticao', 49, '9024'),
(1016, 'Medina', 49, '9013'),
(1017, 'Naawan', 49, '9023'),
(1018, 'Opol', 49, '9016'),
(1019, 'Salay', 49, '9007'),
(1020, 'Sugbongcogon', 49, '9009'),
(1021, 'Tagoloan', 49, '9001'),
(1022, 'Talisayan', 49, '9012'),
(1023, 'Villanueva', 49, '9002'),
(1024, 'Barlig', 50, '2623'),
(1025, 'Bauko', 50, '2621'),
(1026, 'Besao', 50, '2618'),
(1027, 'Bontoc', 50, '2616'),
(1028, 'Natonin', 50, '2624'),
(1029, 'Paracelis', 50, '2625'),
(1030, 'Sabangan', 50, '2622'),
(1031, 'Sadanga', 50, '2617'),
(1032, 'Sagada', 50, '2619'),
(1033, 'Tadian', 50, '2620'),
(1034, 'Bacolod City', 51, '6100'),
(1035, 'Bago City', 51, '6101'),
(1036, 'Cadiz City', 51, '6121'),
(1037, 'Escalante City', 51, '6124'),
(1038, 'Himamaylan City', 51, '6108'),
(1039, 'Kabankalan City', 51, '6111'),
(1040, 'La Carlota City', 51, '6130'),
(1041, 'Sagay City', 51, '6122'),
(1042, 'San Carlos City', 51, '6127'),
(1043, 'Silay City', 51, '6116'),
(1044, 'Sipalay City', 51, '6113'),
(1045, 'Talisay City', 51, '6115'),
(1046, 'Victorias City', 51, '6119'),
(1047, 'Binalbagan', 51, '6107'),
(1048, 'Calatrava', 51, '6126'),
(1049, 'Candoni', 51, '6110'),
(1050, 'Cauayan', 51, '6112'),
(1051, 'Enrique B. Magalona', 51, '6118'),
(1052, 'Hinigaran', 51, '6106'),
(1053, 'Hinoba-an', 51, '6114'),
(1054, 'Ilog', 51, '6109'),
(1055, 'Isabela', 51, '6128'),
(1056, 'La Castellana', 51, '6131'),
(1057, 'Manapla', 51, '6120'),
(1058, 'Moises Padilla', 51, '6132'),
(1059, 'Murcia', 51, '6129'),
(1060, 'Pontevedra', 51, '6105'),
(1061, 'Pulupandan', 51, '6102'),
(1062, 'Salvador Benedicto', 51, ''),
(1063, 'San Enrique', 51, '6104'),
(1064, 'Toboso', 51, '6125'),
(1065, 'Valladolid', 51, '6103'),
(1066, 'Bais City', 52, '6206'),
(1067, 'Bayawan City', 52, '6221'),
(1068, 'Canlaon City', 52, '6223'),
(1069, 'Guihulngan City', 52, '6214'),
(1070, 'Dumaguete City', 52, '6200'),
(1071, 'Tanjay City', 52, '6204'),
(1072, 'Amlan', 52, '6203'),
(1073, 'Ayungon', 52, '6210'),
(1074, 'Bacong', 52, '6216'),
(1075, 'Basay', 52, '6222'),
(1076, 'Bindoy', 52, '6209'),
(1077, 'Dauin', 52, '6217'),
(1078, 'Jimalalud', 52, '6212'),
(1079, 'La Libertad', 52, '6213'),
(1080, 'Mabinay', 52, '6207'),
(1081, 'Manjuyod', 52, '6208'),
(1082, 'Pamplona', 52, '6205'),
(1083, 'San Jose', 52, '6202'),
(1084, 'Santa Catalina', 52, '6220'),
(1085, 'Siaton', 52, '6219'),
(1086, 'Sibulan', 52, '6201'),
(1087, 'Tayasan', 52, '6211'),
(1088, 'Valencia', 52, '6215'),
(1089, 'Vallehermoso', 52, '6224'),
(1090, 'Zamboanguita', 52, '6218'),
(1091, 'Allen', 53, '6405'),
(1092, 'Biri', 53, '6410'),
(1093, 'Bobon', 53, '6401'),
(1094, 'Capul', 53, '6408'),
(1095, 'Catarman', 53, '6400'),
(1096, 'Catubig', 53, '6418'),
(1097, 'Gamay', 53, '6422'),
(1098, 'Laoang', 53, '6411'),
(1099, 'Lapinig', 53, '6423'),
(1100, 'Las Navas', 53, '6420'),
(1101, 'Lavezares', 53, '6404'),
(1102, 'Lope de Vega', 53, '6403'),
(1103, 'Mapanas', 53, '6412'),
(1104, 'Mondragon', 53, '6417'),
(1105, 'Palapag', 53, '6421'),
(1106, 'Pambujan', 53, '6413'),
(1107, 'Rosario', 53, '6416'),
(1108, 'San Antonio', 53, '6407'),
(1109, 'San Isidro', 53, '6409'),
(1110, 'San Jose', 53, '6402'),
(1111, 'San Roque', 53, '6415'),
(1112, 'San Vicente', 53, '6419'),
(1113, 'Silvino Lobos', 53, '6414'),
(1114, 'Victoria', 53, '6406'),
(1115, 'Cabanatuan City', 54, '3100'),
(1116, 'Gapan City', 54, '3105'),
(1117, 'Science City of Muñoz', 54, ''),
(1118, 'Palayan City', 54, '3132'),
(1119, 'San Jose City', 54, '3121'),
(1120, 'Aliaga', 54, '3111'),
(1121, 'Bongabon', 54, '3128'),
(1122, 'Cabiao', 54, '3107'),
(1123, 'Carranglan', 54, '3123'),
(1124, 'Cuyapo', 54, '3117'),
(1125, 'Gabaldon', 54, '3131'),
(1126, 'General Mamerto Natividad', 54, '3125'),
(1127, 'General Tinio', 54, '3104'),
(1128, 'Guimba', 54, '3115'),
(1129, 'Jaen', 54, '3109'),
(1130, 'Laur', 54, '3129'),
(1131, 'Licab', 54, '3112'),
(1132, 'Llanera', 54, '3126'),
(1133, 'Lupao', 54, '3122'),
(1134, 'Nampicuan', 54, '3116'),
(1135, 'Pantabangan', 54, '3124'),
(1136, 'Peñaranda', 54, '3103'),
(1137, 'Quezon', 54, '3113'),
(1138, 'Rizal', 54, '3127'),
(1139, 'San Antonio', 54, '3108'),
(1140, 'San Isidro', 54, '3106'),
(1141, 'San Leonardo', 54, '3102'),
(1142, 'Santa Rosa', 54, '3101'),
(1143, 'Santo Domingo', 54, '3133'),
(1144, 'Talavera', 54, '3114'),
(1145, 'Talugtug', 54, ''),
(1146, 'Zaragoza', 54, ''),
(1147, 'Alfonso Castaneda', 55, ''),
(1148, 'Ambaguio', 55, '3701'),
(1149, 'Aritao', 55, '3704'),
(1150, 'Bagabag', 55, '3711'),
(1151, 'Bambang', 55, '3702'),
(1152, 'Bayombong', 55, '3700'),
(1153, 'Diadi', 55, '3712'),
(1154, 'Dupax del Norte', 55, '3706'),
(1155, 'Dupax del Sur', 55, '3707'),
(1156, 'Kasibu', 55, '3703'),
(1157, 'Kayapa', 55, '3708'),
(1158, 'Quezon', 55, '3713'),
(1159, 'Santa Fe', 55, '3705'),
(1160, 'Solano', 55, '3709'),
(1161, 'Villaverde', 55, '3710'),
(1162, 'Abra de Ilog', 56, '5108'),
(1163, 'Calintaan', 56, '5102'),
(1164, 'Looc', 56, '5111'),
(1165, 'Lubang', 56, '5109'),
(1166, 'Magsaysay', 56, '5101'),
(1167, 'Mamburao', 56, '5106'),
(1168, 'Paluan', 56, '5107'),
(1169, 'Rizal', 56, '5103'),
(1170, 'Sablayan', 56, '5104'),
(1171, 'San Jose', 56, '5100'),
(1172, 'Santa Cruz', 56, '5105'),
(1173, 'Calapan City', 57, '5200'),
(1174, 'Baco', 57, '5201'),
(1175, 'Bansud', 57, '5210'),
(1176, 'Bongabong', 57, '5211'),
(1177, 'Bulalacao', 57, '5214'),
(1178, 'Gloria', 57, '5209'),
(1179, 'Mansalay', 57, '5213'),
(1180, 'Naujan', 57, '5204'),
(1181, 'Pinamalayan', 57, '5208'),
(1182, 'Pola', 57, '5206'),
(1183, 'Puerto Galera', 57, '5203'),
(1184, 'Roxas', 57, '5212'),
(1185, 'San Teodoro', 57, '5202'),
(1186, 'Socorro', 57, '5207'),
(1187, 'Victoria', 57, '5205'),
(1188, 'Puerto Princesa City', 58, '5300'),
(1189, 'Aborlan', 58, '5302'),
(1190, 'Agutaya', 58, '5320'),
(1191, 'Araceli', 58, '5311'),
(1192, 'Balabac', 58, '5307'),
(1193, 'Bataraza', 58, '5306'),
(1194, 'Brooke\'s Point', 58, '5305'),
(1195, 'Busuanga', 58, '5317'),
(1196, 'Cagayancillo', 58, '5321'),
(1197, 'Coron', 58, '5316'),
(1198, 'Culion', 58, '5315'),
(1199, 'Cuyo', 58, '5318'),
(1200, 'Dumaran', 58, '5310'),
(1201, 'El Nido', 58, '5313'),
(1202, 'Kalayaan', 58, '5322'),
(1203, 'Linapacan', 58, '5314'),
(1204, 'Magsaysay', 58, '5319'),
(1205, 'Narra', 58, '5303'),
(1206, 'Quezon', 58, '5304'),
(1207, 'Rizal', 58, '7104'),
(1208, 'Roxas', 58, '5308'),
(1209, 'San Vicente', 58, '5309'),
(1210, 'Sofronio Española', 58, ''),
(1211, 'Taytay', 58, '5312'),
(1212, 'Angeles City', 59, '2009'),
(1213, 'City of San Fernando', 59, '2000'),
(1214, 'Apalit', 59, '2016'),
(1215, 'Arayat', 59, '2012'),
(1216, 'Bacolor', 59, '2001'),
(1217, 'Candaba', 59, '2013'),
(1218, 'Floridablanca', 59, '2006'),
(1219, 'Guagua', 59, '2003'),
(1220, 'Lubao', 59, '2005'),
(1221, 'Mabalacat', 59, '2010'),
(1222, 'Macabebe', 59, '2018'),
(1223, 'Magalang', 59, '2011'),
(1224, 'Masantol', 59, '2017'),
(1225, 'Mexico', 59, '2021'),
(1226, 'Minalin', 59, '2019'),
(1227, 'Porac', 59, '2008'),
(1228, 'San Luis', 59, '2014'),
(1229, 'San Simon', 59, '2015'),
(1230, 'Santa Ana', 59, '2022'),
(1231, 'Santa Rita', 59, '2002'),
(1232, 'Santo Tomas', 59, '2020'),
(1233, 'Sasmuan', 59, ''),
(1234, 'Alaminos City', 60, '2404'),
(1235, 'Dagupan City', 60, '2400'),
(1236, 'San Carlos City', 60, '2420'),
(1237, 'Urdaneta City', 60, '2428'),
(1238, 'Agno', 60, '2408'),
(1239, 'Aguilar', 60, '2415'),
(1240, 'Alcala', 60, '2425'),
(1241, 'Anda', 60, '2405'),
(1242, 'Asingan', 60, '2439'),
(1243, 'Balungao', 60, '2442'),
(1244, 'Bani', 60, '2407'),
(1245, 'Basista', 60, '2422'),
(1246, 'Bautista', 60, '2424'),
(1247, 'Bayambang', 60, '2423'),
(1248, 'Binalonan', 60, '2436'),
(1249, 'Binmaley', 60, '2417'),
(1250, 'Bolinao', 60, '2406'),
(1251, 'Bugallon', 60, '2416'),
(1252, 'Burgos', 60, '2410'),
(1253, 'Calasiao', 60, '2418'),
(1254, 'Dasol', 60, '2411'),
(1255, 'Infanta', 60, '2412'),
(1256, 'Labrador', 60, '2402'),
(1257, 'Laoac', 60, '2437'),
(1258, 'Lingayen', 60, '2401'),
(1259, 'Mabini', 60, '2409'),
(1260, 'Malasiqui', 60, '2421'),
(1261, 'Manaoag', 60, '2430'),
(1262, 'Mangaldan', 60, '2432'),
(1263, 'Mangatarem', 60, '2413'),
(1264, 'Mapandan', 60, '2429'),
(1265, 'Natividad', 60, '2446'),
(1266, 'Pozzorubio', 60, ''),
(1267, 'Rosales', 60, '2441'),
(1268, 'San Fabian', 60, '2433'),
(1269, 'San Jacinto', 60, '2431'),
(1270, 'San Manuel', 60, '2438'),
(1271, 'San Nicolas', 60, '2447'),
(1272, 'San Quintin', 60, '2444'),
(1273, 'Santa Barbara', 60, '2419'),
(1274, 'Santa Maria', 60, '2440'),
(1275, 'Santo Tomas', 60, '2426'),
(1276, 'Sison', 60, '2434'),
(1277, 'Sual', 60, '2403'),
(1278, 'Tayug', 60, '2445'),
(1279, 'Umingan', 60, '2443'),
(1280, 'Urbiztondo', 60, '2414'),
(1281, 'Villasis', 60, '2427'),
(1282, 'Lucena City', 61, '4301'),
(1283, 'Tayabas City', 61, '4327'),
(1284, 'Agdangan', 61, '4304'),
(1285, 'Alabat', 61, '4333'),
(1286, 'Atimonan', 61, '4331'),
(1287, 'Buenavista', 61, '4320'),
(1288, 'Burdeos', 61, '4340'),
(1289, 'Calauag', 61, '4318'),
(1290, 'Candelaria', 61, '4323'),
(1291, 'Catanauan', 61, '4311'),
(1292, 'Dolores', 61, '4326'),
(1293, 'General Luna', 61, '4310'),
(1294, 'General Nakar', 61, '4338'),
(1295, 'Guinayangan', 61, '4319'),
(1296, 'Gumaca', 61, '4307'),
(1297, 'Infanta', 61, '4336'),
(1298, 'Jomalig', 61, '4342'),
(1299, 'Lopez', 61, '4316'),
(1300, 'Lucban', 61, '4328'),
(1301, 'Macalelon', 61, '4309'),
(1302, 'Mauban', 61, '4330'),
(1303, 'Mulanay', 61, '4312'),
(1304, 'Padre Burgos', 61, '4303'),
(1305, 'Pagbilao', 61, '4302'),
(1306, 'Panukulan', 61, '4337'),
(1307, 'Patnanungan', 61, '4341'),
(1308, 'Perez', 61, '4334'),
(1309, 'Pitogo', 61, '4308'),
(1310, 'Plaridel', 61, '4306'),
(1311, 'Polillo', 61, '4339'),
(1312, 'Quezon', 61, '4304'),
(1313, 'Real', 61, '4335'),
(1314, 'Sampaloc', 61, '4329'),
(1315, 'San Andres', 61, '4314'),
(1316, 'San Antonio', 61, '4324'),
(1317, 'San Francisco', 61, '4315'),
(1318, 'San Narciso', 61, '4313'),
(1319, 'Sariaya', 61, '4322'),
(1320, 'Tagkawayan', 61, '4321'),
(1321, 'Tiaong', 61, '4325'),
(1322, 'Unisan', 61, '4305'),
(1323, 'Aglipay', 62, '3403'),
(1324, 'Cabarroguis', 62, '3400'),
(1325, 'Diffun', 62, '3401'),
(1326, 'Maddela', 62, '3404'),
(1327, 'Nagtipunan', 62, '3405'),
(1328, 'Saguday', 62, '3402'),
(1329, 'Antipolo City', 63, '1870'),
(1330, 'Angono', 63, '1930'),
(1331, 'Baras', 63, '1970'),
(1332, 'Binangonan', 63, '1940'),
(1333, 'Cainta', 63, '1900'),
(1334, 'Cardona', 63, '1950'),
(1335, 'Jalajala', 63, ''),
(1336, 'Morong', 63, '1960'),
(1337, 'Pililla', 63, '1910'),
(1338, 'Rodriguez', 63, '1860'),
(1339, 'San Mateo', 63, '1850'),
(1340, 'Tanay', 63, '1980'),
(1341, 'Taytay', 63, '1920'),
(1342, 'Teresa', 63, '1880'),
(1343, 'Alcantara', 64, '5509'),
(1344, 'Banton', 64, '5515'),
(1345, 'Cajidiocan', 64, '5512'),
(1346, 'Calatrava', 64, '5503'),
(1347, 'Concepcion', 64, '5516'),
(1348, 'Corcuera', 64, '5514'),
(1349, 'Ferrol', 64, '5506'),
(1350, 'Looc', 64, '5507'),
(1351, 'Magdiwang', 64, '5511'),
(1352, 'Odiongan', 64, '5505'),
(1353, 'Romblon', 64, '5509'),
(1354, 'San Agustin', 64, '5501'),
(1355, 'San Andres', 64, '5504'),
(1356, 'San Fernando', 64, '5513'),
(1357, 'San Jose', 64, '5510'),
(1358, 'Santa Fe', 64, '5508'),
(1359, 'Santa Maria', 64, '5502'),
(1360, 'Calbayog City', 65, '6710'),
(1361, 'Catbalogan City', 65, '6700'),
(1362, 'Almagro', 65, '6724'),
(1363, 'Basey', 65, '6720'),
(1364, 'Calbiga', 65, '6715'),
(1365, 'Daram', 65, '6722'),
(1366, 'Gandara', 65, '6706'),
(1367, 'Hinabangan', 65, '6713'),
(1368, 'Jiabong', 65, '6701'),
(1369, 'Marabut', 65, '6721'),
(1370, 'Matuguinao', 65, '6708'),
(1371, 'Motiong', 65, '6702'),
(1372, 'Pagsanghan', 65, '6705'),
(1373, 'Paranas', 65, '6703'),
(1374, 'Pinabacdao', 65, '6716'),
(1375, 'San Jorge', 65, '6707'),
(1376, 'San Jose De Buan', 65, '6723'),
(1377, 'San Sebastian', 65, '6714'),
(1378, 'Santa Margarita', 65, '6709'),
(1379, 'Santa Rita', 65, '6718'),
(1380, 'Santo Niño', 65, '6711'),
(1381, 'Tagapul-an', 65, '6712'),
(1382, 'Talalora', 65, '6719'),
(1383, 'Tarangnan', 65, '6704'),
(1384, 'Villareal', 65, '6717'),
(1385, 'Zumarraga', 65, '6725'),
(1386, 'Alabel', 66, '9501'),
(1387, 'Glan', 66, '9517'),
(1388, 'Kiamba', 66, '9514'),
(1389, 'Maasim', 66, '9502'),
(1390, 'Maitum', 66, '9515'),
(1391, 'Malapatan', 66, '9516'),
(1392, 'Malungon', 66, '9503'),
(1393, 'Enrique Villanueva', 67, '6230'),
(1394, 'Larena', 67, '6226'),
(1395, 'Lazi', 67, '6228'),
(1396, 'Maria', 67, '6229'),
(1397, 'San Juan', 67, '6227'),
(1398, 'Siquijor', 67, '6230'),
(1399, 'Sorsogon City', 68, '4701'),
(1400, 'Barcelona', 68, '4712'),
(1401, 'Bulan', 68, '4706'),
(1402, 'Bulusan', 68, '4704'),
(1403, 'Casiguran', 68, '4702'),
(1404, 'Castilla', 68, '4713'),
(1405, 'Donsol', 68, '4715'),
(1406, 'Gubat', 68, '4710'),
(1407, 'Irosin', 68, '4707'),
(1408, 'Juban', 68, '4703'),
(1409, 'Magallanes', 68, '4705'),
(1410, 'Matnog', 68, '4708'),
(1411, 'Pilar', 68, '4714'),
(1412, 'Prieto Diaz', 68, '4711'),
(1413, 'Santa Magdalena', 68, '4709'),
(1414, 'General Santos City', 69, '9500'),
(1415, 'Koronadal City', 69, '9506'),
(1416, 'Banga', 69, '9511'),
(1417, 'Lake Sebu', 69, ''),
(1418, 'Norala', 69, '9508'),
(1419, 'Polomolok', 69, '9504'),
(1420, 'Santo Niño', 69, '9509'),
(1421, 'Surallah', 69, '9512'),
(1422, 'T\'boli', 69, '9513'),
(1423, 'Tampakan', 69, '9507'),
(1424, 'Tantangan', 69, '9510'),
(1425, 'Tupi', 69, '9505'),
(1426, 'Maasin City', 70, '6600'),
(1427, 'Anahawan', 70, '6610'),
(1428, 'Bontoc', 70, '6604'),
(1429, 'Hinunangan', 70, '6608'),
(1430, 'Hinundayan', 70, '6609'),
(1431, 'Libagon', 70, '6615'),
(1432, 'Liloan', 70, '6612'),
(1433, 'Limasawa', 70, ''),
(1434, 'Macrohon', 70, '6601'),
(1435, 'Malitbog', 70, '6603'),
(1436, 'Padre Burgos', 70, '6602'),
(1437, 'Pintuyan', 70, '6614'),
(1438, 'Saint Bernard', 70, '6616'),
(1439, 'San Francisco', 70, '6613'),
(1440, 'San Juan', 70, '6611'),
(1441, 'San Ricardo', 70, '6617'),
(1442, 'Silago', 70, '6607'),
(1443, 'Sogod', 70, '6606'),
(1444, 'Tomas Oppus', 70, '6605'),
(1445, 'Tacurong City', 71, '9800'),
(1446, 'Bagumbayan', 71, '9810'),
(1447, 'Columbio', 71, '9801'),
(1448, 'Esperanza', 71, '9806'),
(1449, 'Isulan', 71, '9805'),
(1450, 'Kalamansig', 71, '9808'),
(1451, 'Lambayong', 71, '9802'),
(1452, 'Lebak', 71, '9807'),
(1453, 'Lutayan', 71, '9803'),
(1454, 'Palimbang', 71, '9809'),
(1455, 'President Quirino', 71, '9804'),
(1456, 'Senator Ninoy Aquino', 71, '9811'),
(1457, 'Banguingui', 72, ''),
(1458, 'Hadji Panglima Tahil', 72, ''),
(1459, 'Indanan', 72, '7407'),
(1460, 'Jolo', 72, '7400'),
(1461, 'Kalingalan Caluang', 72, ''),
(1462, 'Lugus', 72, '7411'),
(1463, 'Luuk', 72, '7404'),
(1464, 'Maimbung', 72, '7409'),
(1465, 'Old Panamao', 72, ''),
(1466, 'Omar', 72, ''),
(1467, 'Pandami', 72, ''),
(1468, 'Panglima Estino', 72, '7415'),
(1469, 'Pangutaran', 72, ''),
(1470, 'Parang', 72, '7408'),
(1471, 'Pata', 72, '7405'),
(1472, 'Patikul', 72, '7401'),
(1473, 'Siasi', 72, '7412'),
(1474, 'Talipao', 72, '7403'),
(1475, 'Tapul', 72, '7410'),
(1476, 'Surigao City', 73, '8425'),
(1477, 'Alegria', 73, '8425'),
(1478, 'Bacuag', 73, '8408'),
(1479, 'Basilisa', 73, '8413'),
(1480, 'Burgos', 73, '8424'),
(1481, 'Cagdianao', 73, '8411'),
(1482, 'Claver', 73, '8410'),
(1483, 'Dapa', 73, '8417'),
(1484, 'Del Carmen', 73, '8418'),
(1485, 'Dinagat', 73, '8412'),
(1486, 'General Luna', 73, '8419'),
(1487, 'Gigaquit', 73, '8409'),
(1488, 'Libjo', 73, '8414'),
(1489, 'Loreto', 73, '8415'),
(1490, 'Mainit', 73, '8407'),
(1491, 'Malimono', 73, ''),
(1492, 'Pilar', 73, '8420'),
(1493, 'Placer', 73, '8405'),
(1494, 'San Benito', 73, '8423'),
(1495, 'San Francisco', 73, '8401'),
(1496, 'San Isidro', 73, '8421'),
(1497, 'San Jose', 73, '8427'),
(1498, 'Santa Monica', 73, '8422'),
(1499, 'Sison', 73, '8404'),
(1500, 'Socorro', 73, '8416'),
(1501, 'Tagana-an', 73, ''),
(1502, 'Tubajon', 73, ''),
(1503, 'Tubod', 73, ''),
(1504, 'Bislig City', 74, '8311'),
(1505, 'Tandag City', 74, '8300'),
(1506, 'Barobo', 74, '8309'),
(1507, 'Bayabas', 74, '8303'),
(1508, 'Cagwait', 74, '8304'),
(1509, 'Cantilan', 74, ''),
(1510, 'Carmen', 74, '8315'),
(1511, 'Carrascal', 74, '8318'),
(1512, 'Cortes', 74, ''),
(1513, 'Hinatuan', 74, '8310'),
(1514, 'Lanuza', 74, '8314'),
(1515, 'Lianga', 74, '8307'),
(1516, 'Lingig', 74, '8312'),
(1517, 'Madrid', 74, '8316'),
(1518, 'Marihatag', 74, '8306'),
(1519, 'San Agustin', 74, '8305'),
(1520, 'San Miguel', 74, '8301'),
(1521, 'Tagbina', 74, '8308'),
(1522, 'Tago', 74, '8302'),
(1523, 'Tarlac City', 75, '2310'),
(1524, 'Anao', 75, '2310'),
(1525, 'Bamban', 75, '2317'),
(1526, 'Camiling', 75, '2306'),
(1527, 'Capas', 75, '2315'),
(1528, 'Concepcion', 75, '2316'),
(1529, 'Gerona', 75, '2302'),
(1530, 'La Paz', 75, '2314'),
(1531, 'Mayantoc', 75, '2304'),
(1532, 'Moncada', 75, '2308'),
(1533, 'Paniqui', 75, '2307'),
(1534, 'Pura', 75, '2312'),
(1535, 'Ramos', 75, '2311'),
(1536, 'San Clemente', 75, '2305'),
(1537, 'San Jose', 75, '4227'),
(1538, 'San Manuel', 75, '2309'),
(1539, 'Santa Ignacia', 75, '2303'),
(1540, 'Victoria', 75, '2313'),
(1541, 'Bongao', 76, '7500'),
(1542, 'Languyan', 76, '7509'),
(1543, 'Mapun', 76, ''),
(1544, 'Panglima Sugala', 76, ''),
(1545, 'Sapa-Sapa', 76, '7503'),
(1546, 'Sibutu', 76, ''),
(1547, 'Simunul', 76, ''),
(1548, 'Sitangkai', 76, '7506'),
(1549, 'South Ubian', 76, '7504'),
(1550, 'Tandubas', 76, ''),
(1551, 'Turtle Islands', 76, '7507'),
(1552, 'Olongapo City', 77, '2200'),
(1553, 'Botolan', 77, '2202'),
(1554, 'Cabangan', 77, '2203'),
(1555, 'Candelaria', 77, '2212'),
(1556, 'Castillejos', 77, ''),
(1557, 'Iba', 77, '2201'),
(1558, 'Masinloc', 77, '2211'),
(1559, 'Palauig', 77, '2210'),
(1560, 'San Antonio', 77, '2206'),
(1561, 'San Felipe', 77, '2204'),
(1562, 'San Marcelino', 77, '2207'),
(1563, 'San Narciso', 77, '2205'),
(1564, 'Santa Cruz', 77, '2213'),
(1565, 'Subic', 77, ''),
(1566, 'Dapitan City', 78, '7101'),
(1567, 'Dipolog City', 78, '7100'),
(1568, 'Bacungan', 78, ''),
(1569, 'Baliguian', 78, '7123'),
(1570, 'Godod', 78, ''),
(1571, 'Gutalac', 78, '7118'),
(1572, 'Jose Dalman', 78, '7111'),
(1573, 'Kalawit', 78, '7124'),
(1574, 'Katipunan', 78, '7109'),
(1575, 'La Libertad', 78, '7119'),
(1576, 'Labason', 78, '7117'),
(1577, 'Liloy', 78, '7115'),
(1578, 'Manukan', 78, '7110'),
(1579, 'Mutia', 78, '7107'),
(1580, 'Piñan', 78, '7105'),
(1581, 'Polanco', 78, '7106'),
(1582, 'President Manuel A. Roxas', 78, ''),
(1583, 'Rizal', 78, '7104'),
(1584, 'Salug', 78, '7114'),
(1585, 'Sergio Osmeña Sr.', 78, ''),
(1586, 'Siayan', 78, '7113'),
(1587, 'Sibuco', 78, '7122'),
(1588, 'Sibutad', 78, '7103'),
(1589, 'Sindangan', 78, '7112'),
(1590, 'Siocon', 78, '7120'),
(1591, 'Sirawai', 78, ''),
(1592, 'Tampilisan', 78, '7116'),
(1593, 'Pagadian City', 79, '7016'),
(1594, 'Zamboanga City', 79, '7000'),
(1595, 'Aurora', 79, '7020'),
(1596, 'Bayog', 79, '7011'),
(1597, 'Dimataling', 79, '7032'),
(1598, 'Dinas', 79, '7030'),
(1599, 'Dumalinao', 79, '7015'),
(1600, 'Dumingag', 79, '7028'),
(1601, 'Guipos', 79, '7042'),
(1602, 'Josefina', 79, '7027'),
(1603, 'Kumalarang', 79, '7013'),
(1604, 'Labangan', 79, '7017'),
(1605, 'Lakewood', 79, '7014'),
(1606, 'Lapuyan', 79, '7037'),
(1607, 'Mahayag', 79, '7026'),
(1608, 'Margosatubig', 79, ''),
(1609, 'Midsalip', 79, '7021'),
(1610, 'Molave', 79, '7023'),
(1611, 'Pitogo', 79, '7033'),
(1612, 'Ramon Magsaysay', 79, '7024'),
(1613, 'San Miguel', 79, '7029'),
(1614, 'San Pablo', 79, '7031'),
(1615, 'Sominot', 79, ''),
(1616, 'Tabina', 79, '7034'),
(1617, 'Tambulig', 79, '7025'),
(1618, 'Tigbao', 79, '7043'),
(1619, 'Tukuran', 79, '7019'),
(1620, 'Vincenzo A. Sagun', 79, ''),
(1621, 'Alicia', 80, '7040'),
(1622, 'Buug', 80, ''),
(1623, 'Diplahan', 80, '7039'),
(1624, 'Imelda', 80, '7007'),
(1625, 'Ipil', 80, '7001'),
(1626, 'Kabasalan', 80, '7005'),
(1627, 'Mabuhay', 80, '7010'),
(1628, 'Malangas', 80, '7038'),
(1629, 'Naga', 80, '7004'),
(1630, 'Olutanga', 80, '7041'),
(1631, 'Payao', 80, '7008'),
(1632, 'Roseller Lim', 80, '7002'),
(1633, 'Siay', 80, '7006'),
(1634, 'Talusan', 80, '7012'),
(1635, 'Titay', 80, '7003'),
(1636, 'Tungawan', 80, '7018');

-- --------------------------------------------------------

--
-- Table structure for table `cust_cart`
--

CREATE TABLE `cust_cart` (
  `cart_id` int(11) NOT NULL,
  `g_code` varchar(100) NOT NULL,
  `total_payment` varchar(100) NOT NULL,
  `payment_status` varchar(100) NOT NULL,
  `date_purchase` date NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_cart`
--

INSERT INTO `cust_cart` (`cart_id`, `g_code`, `total_payment`, `payment_status`, `date_purchase`, `shipping_cost`, `order_id`) VALUES
(26, '2', '2,600.00', 'shipped', '2021-01-25', 0, '111417698');

-- --------------------------------------------------------

--
-- Table structure for table `cust_guest`
--

CREATE TABLE `cust_guest` (
  `guest_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `add1` varchar(255) NOT NULL,
  `add2` varchar(255) NOT NULL,
  `muni` varchar(255) NOT NULL,
  `cities` int(11) NOT NULL,
  `phonenum` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `g_date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  `g_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_guest`
--

INSERT INTO `cust_guest` (`guest_id`, `full_name`, `add1`, `add2`, `muni`, `cities`, `phonenum`, `email`, `g_date`, `status`, `g_code`) VALUES
(64, 'Almahsol   tabigue', 'cansaga consolacion ', 'purok 1', '1 ', 3, '+69-945-998-3293', 'example@gmail.com', '2021-01-18', 'guest', '2'),
(68, 'john mike', 'john mike', 'fdsfds', 'adfsdaf', 3, '3123', 'sadasd', '2021-01-05', 'guest', '3');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `province_id` int(11) UNSIGNED NOT NULL,
  `province_name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`province_id`, `province_name`) VALUES
(1, 'Abra'),
(2, 'Agusan del Norte'),
(3, 'Agusan del Sur'),
(4, 'Aklan'),
(5, 'Albay'),
(6, 'Antique'),
(7, 'Apayao'),
(8, 'Aurora'),
(9, 'Basilan'),
(10, 'Bataan'),
(11, 'Batanes'),
(12, 'Batangas'),
(13, 'Benguet'),
(14, 'Biliran'),
(15, 'Bohol'),
(16, 'Bukidnon'),
(17, 'Bulacan'),
(18, 'Cagayan'),
(19, 'Camarines Norte'),
(20, 'Camarines Sur'),
(21, 'Camiguin'),
(22, 'Capiz'),
(23, 'Catanduanes'),
(24, 'Cavite'),
(25, 'Cebu'),
(26, 'Compostela Valley'),
(27, 'Cotabato'),
(28, 'Davao del Norte'),
(29, 'Davao del Sur'),
(30, 'Davao Oriental'),
(31, 'Eastern Samar'),
(32, 'Guimaras'),
(33, 'Ifugao'),
(34, 'Ilocos Norte'),
(35, 'Ilocos Sur'),
(36, 'Iloilo'),
(37, 'Isabela'),
(38, 'Kalinga'),
(39, 'La Union'),
(40, 'Laguna'),
(41, 'Lanao del Norte'),
(42, 'Lanao del Sur'),
(43, 'Leyte'),
(44, 'Maguindanao'),
(45, 'Marinduque'),
(46, 'Masbate'),
(47, 'Metro Manila'),
(48, 'Misamis Occidental'),
(49, 'Misamis Oriental'),
(50, 'Mountain Province'),
(51, 'Negros Occidental'),
(52, 'Negros Oriental'),
(53, 'Northern Samar'),
(54, 'Nueva Ecija'),
(55, 'Nueva Vizcaya'),
(56, 'Occidental Mindoro'),
(57, 'Oriental Mindoro'),
(58, 'Palawan'),
(59, 'Pampanga'),
(60, 'Pangasinan'),
(61, 'Quezon'),
(62, 'Quirino'),
(63, 'Rizal'),
(64, 'Romblon'),
(65, 'Samar'),
(66, 'Sarangani'),
(67, 'Siquijor'),
(68, 'Sorsogon'),
(69, 'South Cotabato'),
(70, 'Southern Leyte'),
(71, 'Sultan Kudarat'),
(72, 'Sulu'),
(73, 'Surigao del Norte'),
(74, 'Surigao del Sur'),
(75, 'Tarlac'),
(76, 'Tawi-Tawi'),
(77, 'Zambales'),
(78, 'Zamboanga del Norte'),
(79, 'Zamboanga del Sur'),
(80, 'Zamboanga Sibugay');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_type` varchar(100) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL,
  `adv_adsense_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`adv_id`, `adv_location`, `adv_type`, `adv_photo`, `adv_url`, `adv_adsense_code`) VALUES
(1, 'Above_Welcome_Section', 'Image Advertisement', 'ad-1.png', '', ''),
(2, 'Above Featured Product', 'Image Advertisement', 'ad-2.png', '', ''),
(3, 'Above Latest Product', 'Image Advertisement', 'ad-3.png', '', ''),
(4, 'Above Popular Product', 'Image Advertisement', 'ad-4.png', '', ''),
(5, 'Above Testimonial Section', 'Image Advertisement', 'ad-5.png', '', ''),
(6, 'Category Page Sidebar', 'Image Advertisement', 'ad-6.png', '', ''),
(7, 'Above Welcome Section', 'Image Advertisement', 'ad-1.png', '', ''),
(8, 'Above Featured Product', 'Image Advertisement', 'ad-2.png', '', ''),
(9, 'Above Latest Product', 'Image Advertisement', 'ad-3.png', '', ''),
(10, 'Above Popular Product', 'Image Advertisement', 'ad-4.png', '', ''),
(11, 'Above Testimonial Section', 'Image Advertisement', 'ad-5.png', '', ''),
(12, 'Category Page Sidebar', 'Image Advertisement', 'ad-6.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', ''),
(3, 'Economy', 'economy', 'Economy', '', ''),
(4, 'Tools and Equipment', 'tools-and-equipment', 'Tools and Equipment', '', ''),
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', ''),
(3, 'Economy', 'economy', 'Economy', '', ''),
(4, 'Tools and Equipment', 'tools-and-equipment', 'Tools and Equipment', '', ''),
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', ''),
(3, 'Economy', 'economy', 'Economy', '', ''),
(4, 'Tools and Equipment', 'tools-and-equipment', 'Tools and Equipment', '', ''),
(1, 'Commercial', 'commercial', 'Commercial', '', ''),
(2, 'Residential', 'residential', 'Residential', '', ''),
(3, 'Economy', 'economy', 'Economy', '', ''),
(4, 'Tools and Equipment', 'tools-and-equipment', 'Tools and Equipment', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_cname` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_country` int(11) NOT NULL,
  `cust_address` text NOT NULL,
  `cust_city` varchar(100) NOT NULL,
  `cust_state` varchar(100) NOT NULL,
  `cust_zip` varchar(30) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `cust_datetime` varchar(100) NOT NULL,
  `cust_address2` varchar(100) NOT NULL,
  `cust_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`cust_id`, `cust_name`, `cust_cname`, `cust_email`, `cust_phone`, `cust_country`, `cust_address`, `cust_city`, `cust_state`, `cust_zip`, `cust_password`, `cust_datetime`, `cust_address2`, `cust_status`) VALUES
(1, 'John Doe', 'ABC', 'customer@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-17 09:40:25', '', 1),
(2, 'Peter Smith', 'DEF', 'customer2@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-17 07:11:12', '1516194672', 1),
(3, 'Robert Bent', 'XYZ', 'customer3@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '1c0cf8531727fc9b407e5b40ec203338', '2018-02-06 11:44:27', '1517895867', 1),
(1, 'John Doe', 'ABC', 'customer@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-17 09:40:25', '', 1),
(2, 'Peter Smith', 'DEF', 'customer2@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '81dc9bdb52d04dc20036dbd8313ed055', '2018-01-17 07:11:12', '1516194672', 1),
(3, 'Robert Bent', 'XYZ', 'customer3@gmail.com', '123-123-1234', 230, 'Test Address', 'Test City', 'N/A', '123456', '1c0cf8531727fc9b407e5b40ec203338', '2018-02-06 11:44:27', '1517895867', 1),
(0, '', 'almahsol', 'tabigue@gmail.com', '', 0, '', '', '', '', '65d2ea03425887a717c435081cfc5dbb', '2021-01-20', '', 1),
(0, '', 'sample', 'example@gmail.com', '', 0, '', '', '', '', '827ccb0eea8a706c4c34a16891f84e7b', '2021-01-20', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer_message`
--

CREATE TABLE `tbl_customer_message` (
  `customer_message_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `order_detail` text NOT NULL,
  `cust_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer_message`
--

INSERT INTO `tbl_customer_message` (`customer_message_id`, `subject`, `message`, `order_detail`, `cust_id`) VALUES
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(5, 'Shipping complete', 'Thank you', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-24 21:50:13<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Completed<br>\r\nShipping Status: Completed<br>\r\nPayment Id: 1516809013<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 3<br>\r\nUnit Price: 20<br>\r\n            \r\n<br><b><u>Product Item 2</u></b><br>\r\nProduct Name: Charismatic Red Cotton T-shirt for Men<br>\r\nSize: <br>\r\nColor: Yellow<br>\r\nQuantity: 2<br>\r\nUnit Price: 10<br>\r\n            ', 1),
(4, 'Very well website man!', 'This is a great oppotunity that you made a website for us. ', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-23 09:12:03<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: 73X439878E771115E<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516677123<br>\r\n            \r\n<b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 2<br>\r\nUnit Price: 20<br>\r\n            \r\n<b><u>Product Item 2</u></b><br>\r\nProduct Name: Pant 1<br>\r\nSize: XS<br>\r\nColor: White<br>\r\nQuantity: 1<br>\r\nUnit Price: 12<br>\r\n            ', 1),
(6, 'sdfsdf', 'sdfsdfsdfsdf', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Date: 2018-01-25 21:37:50<br>\r\nTransaction Id: Morshedul Arefin<br>\r\nPaid Amount: <br>\r\nPayment Status: Pending<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894670<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(7, 'OK', 'THANK YOU', '\r\nCustomer Name: Morshedul Arefin<br>\r\nCustomer Email: arefin2k@gmail.com<br>\r\nPayment Method: Stripe<br>\r\nPayment Date: 2018-01-25 21:36:18<br>\r\nPayment Details: <br>\r\nTransaction Id: ch_1BoCm0BoKopKik6A5H4hB6zs<br>\r\nCard number: 4242424242424242<br>\r\nCard CVV: 444<br>\r\nCard Month: 12<br>\r\nCard Year: 2020<br>\r\n        		<br>\r\nPaid Amount: 20<br>\r\nPayment Status: Completed<br>\r\nShipping Status: Pending<br>\r\nPayment Id: 1516894578<br>\r\n            \r\n<br><b><u>Product Item 1</u></b><br>\r\nProduct Name: Star Wars Darth Vader<br>\r\nSize: S<br>\r\nColor: Red<br>\r\nQuantity: 1<br>\r\nUnit Price: 20<br>\r\n            ', 1),
(0, 'for delivery', 'hello We azureh sample', '', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_end_category`
--

CREATE TABLE `tbl_end_category` (
  `ecat_id` int(11) NOT NULL,
  `ecat_name` varchar(255) NOT NULL,
  `mcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_end_category`
--

INSERT INTO `tbl_end_category` (`ecat_id`, `ecat_name`, `mcat_id`) VALUES
(1, 'For Him', 40),
(2, 'For Her', 40),
(3, 'Necklace', 54),
(4, 'Earrings', 54),
(5, 'Rings', 54),
(6, 'For Him', 47),
(7, 'For Her', 40);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`) VALUES
(1, 'Is this sample for the Item', '<p>yes!! this a sample of the product&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(255) NOT NULL,
  `lang_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`, `lang_value`) VALUES
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!'),
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!'),
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!'),
(1, 'Currency', '$'),
(2, 'Search Product', 'Search Product'),
(3, 'Search', 'Search'),
(4, 'Submit', 'Submit'),
(5, 'Update', 'Update'),
(6, 'Read More', 'Read More'),
(7, 'Serial', 'Serial'),
(8, 'Photo', 'Photo'),
(9, 'Login', 'Login'),
(10, 'Customer Login', 'Customer Login'),
(11, 'Click here to login', 'Click here to login'),
(12, 'Back to Login Page', 'Back to Login Page'),
(13, 'Logged in as', 'Logged in as'),
(14, 'Logout', 'Logout'),
(15, 'Register', 'Register'),
(16, 'Customer Registration', 'Customer Registration'),
(17, 'Registration Successful', 'Registration Successful'),
(18, 'Cart', 'Cart'),
(19, 'View Cart', 'View Cart'),
(20, 'Update Cart', 'Update Cart'),
(21, 'Back to Cart', 'Back to Cart'),
(22, 'Checkout', 'Checkout'),
(23, 'Proceed to Checkout', 'Proceed to Checkout'),
(24, 'Orders', 'Orders'),
(25, 'Order History', 'Order History'),
(26, 'Order Details', 'Order Details'),
(27, 'Payment Date and Time', 'Payment Date and Time'),
(28, 'Transaction ID', 'Transaction ID'),
(29, 'Paid Amount', 'Paid Amount'),
(30, 'Payment Status', 'Payment Status'),
(31, 'Payment Method', 'Payment Method'),
(32, 'Payment ID', 'Payment ID'),
(33, 'Payment Section', 'Payment Section'),
(34, 'Select Payment Method', 'Select Payment Method'),
(35, 'Select a Method', 'Select a Method'),
(36, 'PayPal', 'PayPal'),
(37, 'Stripe', 'Stripe'),
(38, 'Bank Deposit', 'Bank Deposit'),
(39, 'Card Number', 'Card Number'),
(40, 'CVV', 'CVV'),
(41, 'Month', 'Month'),
(42, 'Year', 'Year'),
(43, 'Send to this Details', 'Send to this Details'),
(44, 'Transaction Information', 'Transaction Information'),
(45, 'Include transaction id and other information correctly', 'Include transaction id and other information correctly'),
(46, 'Pay Now', 'Pay Now'),
(47, 'Product Name', 'Product Name'),
(48, 'Product Details', 'Product Details'),
(49, 'Categories', 'Categories'),
(50, 'Category:', 'Category:'),
(51, 'All Products Under', 'All Products Under'),
(52, 'Select Size', 'Select Size'),
(53, 'Select Color', 'Select Color'),
(54, 'Product Price', 'Product Price'),
(55, 'Quantity', 'Quantity'),
(56, 'Out of Stock', 'Out of Stock'),
(57, 'Share This', 'Share This'),
(58, 'Share This Product', 'Share This Product'),
(59, 'Product Description', 'Product Description'),
(60, 'Features', 'Features'),
(61, 'Conditions', 'Conditions'),
(62, 'Return Policy', 'Return Policy'),
(63, 'Reviews', 'Reviews'),
(64, 'Review', 'Review'),
(65, 'Give a Review', 'Give a Review'),
(66, 'Write your comment (Optional)', 'Write your comment (Optional)'),
(67, 'Submit Review', 'Submit Review'),
(68, 'You already have given a rating!', 'You already have given a rating!'),
(69, 'You must have to login to give a review', 'You must have to login to give a review'),
(70, 'No description found', 'No description found'),
(71, 'No feature found', 'No feature found'),
(72, 'No condition found', 'No condition found'),
(73, 'No return policy found', 'No return policy found'),
(74, 'No Review is Found', 'No Review is Found'),
(75, 'Customer Name', 'Customer Name'),
(76, 'Comment', 'Comment'),
(77, 'Comments', 'Comments'),
(78, 'Rating', 'Rating'),
(79, 'Previous', 'Previous'),
(80, 'Next', 'Next'),
(81, 'Sub Total', 'Sub Total'),
(82, 'Total', 'Total'),
(83, 'Action', 'Action'),
(84, 'Shipping Cost', 'Shipping Cost'),
(85, 'Continue Shipping', 'Continue Shipping'),
(86, 'Update Billing Address', 'Update Billing Address'),
(87, 'Update Shipping Address', 'Update Shipping Address'),
(88, 'Update Billing and Shipping Info', 'Update Billing and Shipping Info'),
(89, 'Dashboard', 'Dashboard'),
(90, 'Welcome to the Dashboard', 'Welcome to the Dashboard'),
(91, 'Back to Dashboard', 'Back to Dashboard'),
(92, 'Subscribe', 'Subscribe'),
(93, 'Subscribe To Our Newsletter', 'Subscribe To Our Newsletter'),
(94, 'Email Address', 'Email Address'),
(95, 'Enter Your Email Address', 'Enter Your Email Address'),
(96, 'Password', 'Password'),
(97, 'Forget Password', 'Forget Password'),
(98, 'Retype Password', 'Retype Password'),
(99, 'Update Password', 'Update Password'),
(100, 'New Password', 'New Password'),
(101, 'Retype New Password', 'Retype New Password'),
(102, 'Full Name', 'Full Name'),
(103, 'Company Name', 'Company Name'),
(104, 'Phone Number', 'Phone Number'),
(105, 'Address', 'Address'),
(106, 'Country', 'Country'),
(107, 'City', 'City'),
(108, 'State', 'State'),
(109, 'Zip Code', 'Zip Code'),
(110, 'About Us', 'About Us'),
(111, 'Featured Posts', 'Featured Posts'),
(112, 'Popular Posts', 'Popular Posts'),
(113, 'Recent Posts', 'Recent Posts'),
(114, 'Contact Information', 'Contact Information'),
(115, 'Contact Form', 'Contact Form'),
(116, 'Our Office', 'Our Office'),
(117, 'Update Profile', 'Update Profile'),
(118, 'Send Message', 'Send Message'),
(119, 'Message', 'Message'),
(120, 'Find Us On Map', 'Find Us On Map'),
(121, 'Congratulation! Payment is successful.', 'Congratulation! Payment is successful.'),
(122, 'Billing and Shipping Information is updated successfully.', 'Billing and Shipping Information is updated successfully.'),
(123, 'Customer Name can not be empty.', 'Customer Name can not be empty.'),
(124, 'Phone Number can not be empty.', 'Phone Number can not be empty.'),
(125, 'Address can not be empty.', 'Address can not be empty.'),
(126, 'You must have to select a country.', 'You must have to select a country.'),
(127, 'City can not be empty.', 'City can not be empty.'),
(128, 'State can not be empty.', 'State can not be empty.'),
(129, 'Zip Code can not be empty.', 'Zip Code can not be empty.'),
(130, 'Profile Information is updated successfully.', 'Profile Information is updated successfully.'),
(131, 'Email Address can not be empty', 'Email Address can not be empty'),
(132, 'Email and/or Password can not be empty.', 'Email and/or Password can not be empty.'),
(133, 'Email Address does not match.', 'Email Address does not match.'),
(134, 'Email address must be valid.', 'Email address must be valid.'),
(135, 'You email address is not found in our system.', 'You email address is not found in our system.'),
(136, 'Please check your email and confirm your subscription.', 'Please check your email and confirm your subscription.'),
(137, 'Your email is verified successfully. You can now login to our website.', 'Your email is verified successfully. You can now login to our website.'),
(138, 'Password can not be empty.', 'Password can not be empty.'),
(139, 'Passwords do not match.', 'Passwords do not match.'),
(140, 'Please enter new and retype passwords.', 'Please enter new and retype passwords.'),
(141, 'Password is updated successfully.', 'Password is updated successfully.'),
(142, 'To reset your password, please click on the link below.', 'To reset your password, please click on the link below.'),
(143, 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM', 'PASSWORD RESET REQUEST - YOUR WEBSITE.COM'),
(144, 'The password reset email time (24 hours) has expired. Please again try to reset your password.', 'The password reset email time (24 hours) has expired. Please again try to reset your password.'),
(145, 'A confirmation link is sent to your email address. You will get the password reset information in there.', 'A confirmation link is sent to your email address. You will get the password reset information in there.'),
(146, 'Password is reset successfully. You can now login.', 'Password is reset successfully. You can now login.'),
(147, 'Email Address Already Exists', 'Email Address Already Exists.'),
(148, 'Sorry! Your account is inactive. Please contact to the administrator.', 'Sorry! Your account is inactive. Please contact to the administrator.'),
(149, 'Change Password', 'Change Password'),
(150, 'Registration Email Confirmation for YOUR WEBSITE', 'Registration Email Confirmation for YOUR WEBSITE.'),
(151, 'Thank you for your registration! Your account has been created. To active your account click on the link below:', 'Thank you for your registration! Your account has been created. To active your account click on the link below:'),
(152, 'Your registration is completed. Please check your email address to follow the process to confirm your registration.', 'Your registration is completed. Please check your email address to follow the process to confirm your registration.'),
(153, 'No Product Found', 'No Product Found'),
(154, 'Add to Cart', 'Add to Cart'),
(155, 'Related Products', 'Related Products'),
(156, 'See all related products from below', 'See all the related products from below'),
(157, 'Size', 'Size'),
(158, 'Color', 'Color'),
(159, 'Price', 'Price'),
(160, 'Please login as customer to checkout', 'Please login as customer to checkout'),
(161, 'Billing Address', 'Billing Address'),
(162, 'Shipping Address', 'Shipping Address'),
(163, 'Rating is Submitted Successfully!', 'Rating is Submitted Successfully!');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mid_category`
--

CREATE TABLE `tbl_mid_category` (
  `mcat_id` int(11) NOT NULL,
  `mcat_name` varchar(255) NOT NULL,
  `tcat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mid_category`
--

INSERT INTO `tbl_mid_category` (`mcat_id`, `mcat_name`, `tcat_id`) VALUES
(38, 'Necklace', 1),
(39, 'Bracelet', 1),
(40, 'Necklace', 2),
(41, 'Bracelet', 2),
(42, 'Bangle', 2),
(43, 'Earrings', 2),
(44, 'Earrings', 2),
(45, 'Ring', 2),
(46, 'Anklet', 2),
(47, 'Necklace', 3),
(48, 'Bracelet', 3),
(49, 'Bangle', 3),
(50, 'Earrings', 3),
(51, 'Earrings', 3),
(52, 'Ring', 3),
(53, 'Anklet', 3),
(54, 'Bridal', 4),
(55, 'Engagement Ring', 4),
(56, 'Couple Ring', 4),
(57, 'Headbands', 4),
(58, 'Tiara', 4),
(59, 'Necklace', 5),
(60, 'Bracelet', 5),
(61, 'Bangle', 5),
(62, 'Ring', 5),
(63, 'Earrings', 5),
(64, 'below 500', 6),
(65, 'below 1000', 6),
(66, 'lolll', 9),
(67, 'dasdas', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `size` varchar(100) NOT NULL,
  `cust_id` varchar(100) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `shipping_cost` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `total_payment` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `del_status` varchar(100) NOT NULL,
  `cart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `product_id`, `product_name`, `size`, `cust_id`, `quantity`, `unit_price`, `payment_id`, `shipping_cost`, `order_date`, `total_payment`, `status`, `del_status`, `cart_id`) VALUES
(140, 8, 'Healing Necklace', '3', '2', '1', '2600 ', 'COD/COP', 0, '2021-01-25', 2, 'guest', 'shipped', 111417698);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_content` text NOT NULL,
  `about_banner` varchar(255) NOT NULL,
  `about_meta_title` varchar(255) NOT NULL,
  `about_meta_keyword` text NOT NULL,
  `about_meta_description` text NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_banner` varchar(255) NOT NULL,
  `faq_meta_title` varchar(255) NOT NULL,
  `faq_meta_keyword` text NOT NULL,
  `faq_meta_description` text NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_banner` varchar(255) NOT NULL,
  `blog_meta_title` varchar(255) NOT NULL,
  `blog_meta_keyword` text NOT NULL,
  `blog_meta_description` text NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_banner` varchar(255) NOT NULL,
  `contact_meta_title` varchar(255) NOT NULL,
  `contact_meta_keyword` text NOT NULL,
  `contact_meta_description` text NOT NULL,
  `pgallery_title` varchar(255) NOT NULL,
  `pgallery_banner` varchar(255) NOT NULL,
  `pgallery_meta_title` varchar(255) NOT NULL,
  `pgallery_meta_keyword` text NOT NULL,
  `pgallery_meta_description` text NOT NULL,
  `vgallery_title` varchar(255) NOT NULL,
  `vgallery_banner` varchar(255) NOT NULL,
  `vgallery_meta_title` varchar(255) NOT NULL,
  `vgallery_meta_keyword` text NOT NULL,
  `vgallery_meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `about_title`, `about_content`, `about_banner`, `about_meta_title`, `about_meta_keyword`, `about_meta_description`, `faq_title`, `faq_banner`, `faq_meta_title`, `faq_meta_keyword`, `faq_meta_description`, `blog_title`, `blog_banner`, `blog_meta_title`, `blog_meta_keyword`, `blog_meta_description`, `contact_title`, `contact_banner`, `contact_meta_title`, `contact_meta_keyword`, `contact_meta_description`, `pgallery_title`, `pgallery_banner`, `pgallery_meta_title`, `pgallery_meta_keyword`, `pgallery_meta_description`, `vgallery_title`, `vgallery_banner`, `vgallery_meta_title`, `vgallery_meta_keyword`, `vgallery_meta_description`) VALUES
(1, 'About Us', '<p><span style=\"color: rgba(0, 0, 0, 0.87); font-family: helvetica, Arial, sans-serif; font-size: 14px;\">&nbsp;Azureh owns the brands and engage in retail sale on trendy jewelries and fashion healthbands. The company represents exclusive designs and has direct control on its operations. Azureh has a very strong presence in commercial areas and continuously expanding nationwide.</span><br></p>\r\n', '7915309559226340.jpg', 'Azureh - About Us', 'about us, company', 'This is a page where we have described details about us.', 'FAQ', '78792946810354086.jpg', 'Azureh - FAQ', 'Frequently', '', 'Blog', 'blog-banner.jpg', 'Ecommerce - Blog', '', '', 'Contact Us', '86363320181874503.jpg', 'Ecommerce - Contact', '', '', 'Photo Gallery', 'pgallery-banner.png', 'Azureh- Photo Gallery', 'Gallery,Photo', '', 'Video Gallery', '75728120756781833.mp4', 'Azureh - Video Gallery', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `card_number` varchar(50) NOT NULL,
  `card_cvv` varchar(10) NOT NULL,
  `card_month` varchar(10) NOT NULL,
  `card_year` varchar(10) NOT NULL,
  `bank_transaction_info` text NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `payment_status` varchar(25) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_amount` int(11) NOT NULL,
  `payment_method` varchar(20) NOT NULL,
  `shipping_status` varchar(20) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`id`, `customer_id`, `payment_amount`, `payment_method`, `shipping_status`, `payment_id`, `status`) VALUES
(1, 2, 2900, 'COD', 'Pending', '12', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `id` int(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`id`, `caption`, `photo`) VALUES
(24, 'Photo 6', '5281079467969206.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', ''),
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', ''),
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', '');
INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_date`, `photo`, `category_id`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', ''),
(1, 'Cu vel choro exerci pri et oratio iisque', 'cu-vel-choro-exerci-pri-et-oratio-iisque', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 3, 14, 'Cu vel choro exerci pri et oratio iisque', '', ''),
(2, 'Epicurei necessitatibus eu facilisi postulant ', 'epicurei-necessitatibus-eu-facilisi-postulant-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 3, 6, 'Epicurei necessitatibus eu facilisi postulant ', '', ''),
(3, 'Mei ut errem legimus periculis eos liber', 'mei-ut-errem-legimus-periculis-eos-liber', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 3, 1, 'Mei ut errem legimus periculis eos liber', '', ''),
(4, 'Id pro unum pertinax oportere vel', 'id-pro-unum-pertinax-oportere-vel', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 4, 0, 'Id pro unum pertinax oportere vel', '', ''),
(5, 'Tollit cetero cu usu etiam evertitur', 'tollit-cetero-cu-usu-etiam-evertitur', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 4, 24, 'Tollit cetero cu usu etiam evertitur', '', ''),
(6, 'Omnes ornatus qui et te aeterno', 'omnes-ornatus-qui-et-te-aeterno', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 4, 2, 'Omnes ornatus qui et te aeterno', '', ''),
(7, 'Vix tale noluisse voluptua ad ne', 'vix-tale-noluisse-voluptua-ad-ne', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 2, 0, 'Vix tale noluisse voluptua ad ne', '', ''),
(8, 'Liber utroque vim an ne his brute', 'liber-utroque-vim-an-ne-his-brute', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 2, 12, 'Liber utroque vim an ne his brute', '', ''),
(9, 'Nostrum copiosae argumentum has', 'nostrum-copiosae-argumentum-has', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 1, 12, 'Nostrum copiosae argumentum has', '', ''),
(10, 'An labores explicari qui eu', 'an-labores-explicari-qui-eu', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 1, 4, 'An labores explicari qui eu', '', ''),
(11, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 1, 18, 'Lorem ipsum dolor sit amet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_current_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  `p_description` text NOT NULL,
  `p_short_description` text NOT NULL,
  `p_feature` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_total_view` int(11) NOT NULL,
  `p_is_featured` int(1) NOT NULL,
  `p_is_active` int(1) NOT NULL,
  `pecat_id` int(11) NOT NULL,
  `pmcat_id` int(11) NOT NULL,
  `d` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_current_price`, `p_qty`, `p_featured_photo`, `p_description`, `p_short_description`, `p_feature`, `p_condition`, `p_return_policy`, `p_total_view`, `p_is_featured`, `p_is_active`, `pecat_id`, `pmcat_id`, `d`, `status`) VALUES
(6, 'DAZZLING CHARISMA', '2500', '1900', 13, '30668911224772817.JPG', '<p><span lang=\"EN-US\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Calibri\",sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:\"Times New Roman\";mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Be\r\nscintillating with this dazzling bridal jewelry set designed with cubic zirconia\r\naccented with a teardrop jewel. This symbolizes the revelation of ingenuity\r\nthat insinuate the avowal of conviction expressively defines the essence of our\r\nexistence, that creates reflections of eternal love in accordance to a\r\nstatement beyond articulation.</span><br></p>', 'Be scintillating with this dazzling bridal jewelry set designed with cubic zirconia accented with a teardrop jewel. ', '<p><span lang=\"EN-US\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Calibri\",sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:\"Times New Roman\";mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">creates\r\nreflections of eternal love in accordance to a statement beyond articulation.</span><br></p>', '<p>òne (1) year warranty</p>', '<p>Replacement only</p>', 2, 1, 1, 1, 40, '2021-01-06', 1),
(7, 'CHARMS OF LIFE', '2500', '1800', 14, '8177425748208429.JPG', '<p><span lang=\"EN-US\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Calibri\",sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:\"Times New Roman\";mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Stones\r\nof affection that comes in the verge dynamism, discern and bring construed to\r\nthe scene of creativity. Charms of life is the new innovation and design that\r\ndefines the symphony of peace and love into the evaluation of ingenuity,\r\nthrough the wind of affection of psychedelia that justify the essence of\r\nclassic and elegance. It’s signature piece that will last forever; a work of\r\nart that comes and had made Azureh to new creativity that can instill longevity\r\nin the realm of passion and perfection. A world of statement of sagacity that\r\nwill last and modernized eternity. This precious jewel comes in variety of\r\nelegant styles, the paradigm condors and hidden secret. </span><br></p>', 'Stones of affection that comes in the verge dynamism, discern and bring construed to the scene of creativity. ', '<p><span lang=\"EN-US\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:\"Calibri\",sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:\"Times New Roman\";mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">This\r\nprecious jewel comes in variety of elegant styles, the paradigm condors and\r\nhidden secret. </span><br></p>', '<p>One (1) year warranty</p>', '<p>Replacement Only</p>', 3, 1, 1, 0, 40, '2021-01-06', 1),
(8, 'Healing Necklace', '1800', '2600', 9, '31900478348265422.JPG', '<p><span lang=\"EN-US\" style=\"font-size:11.0pt;line-height:\r\n107%;font-family:&quot;Calibri&quot;,sans-serif;mso-ascii-theme-font:minor-latin;\r\nmso-fareast-font-family:Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:\r\nminor-latin;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;\r\nmso-ansi-language:EN-US;mso-fareast-language:EN-US;mso-bidi-language:AR-SA\">Red\r\ngarnet pendant with cubic zirconia stones, attached to a long shimmering\r\nfantasia chain complete with the flair earrings that rock woman for all times.\r\nA statement of beauty and sophistication, an opportune of dreams to come true.&nbsp;</span><br></p>', 'flair earrings', '<p><span style=\"font-family: Calibri, sans-serif; font-size: 14.6667px;\">Red garnet pendant with cubic zirconia stones</span><br></p>', '<p>One (1) year warranty</p>', 'Replacement', 1, 1, 1, 0, 39, '2021-01-06', 1),
(9, 'WHIRLWIND OF CRYSTALS', '2600', '1900', 6, '57936904717508311.png', '<p class=\"MsoNormal\"><span lang=\"EN-US\">                Set with necklace and bracelet.\r\nShaking and starring with dazzling black and white cubic zirconia stones\r\nattached to whirlwind balls that captivate the essence of beauty. The chain is\r\nmade of Azureh Material.<o:p></o:p></span></p>', ' Set with necklace and bracelet.nce of beauty. ', '<p>Nail Polished</p>', '<p>One (1) year warranty</p>', '<p>Replacement only</p>', 0, 1, 1, 0, 38, '0000-00-00', 0),
(10, 'STONE OF REFLECTION', '2600', '2000', 10, '53681300172992589.JPG', '<p class=\"MsoNormal\"><span lang=\"EN-US\">A timeless\r\ncollection of cubic zirconia crystal which spells happiness, love and\r\ndetermination and bring elegance. It is a perfect wear from day to night and\r\nfrom boardrooms to cocktail parties. An essential piece for every fashion-savvy\r\nwomen with a penchant for vivacious design. <o:p></o:p></span></p>', 'A\r\ntimeless collection of cubic zirconia crystal which spells happiness, love and\r\ndetermination and bring elegance. ', '<p><span style=\"font-size: 14.6667px;\">Nail Polished</span></p>', '<p>one (1) year warranty</p>', '<p>Replacement only</p>', 0, 1, 1, 0, 41, '0000-00-00', 0),
(11, 'sample 122', '1212', '214', 10, '8535265695470991.JPG', '<p>adasdasd</p>', 'sample 11 that can display still', '<p>zxvzxcvxzcvxzc</p>', '<p>cxzvxzcvxzcvzxcv</p>', '<p>zcxvcxzvxcv</p>', 0, 1, 0, 0, 42, '0000-00-00', 0),
(12, 'Ring Love', '8500', '7500', 12, '84405950280417801.JPG', '<p>A man that Can be <b>Brave still in the size. </b>A sample of his&nbsp; braveness still unknown&nbsp;</p>', 'Sorry to keep you waiting I don\'t know yet what progress that I made during this time', '<p>This material is made of steel, aloe vera hala vera y zera-zera</p>', '<p>return with no policy</p>', '<p>I\'\'m <u>beautiful</u></p>', 0, 1, 0, 0, 38, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_color`
--

CREATE TABLE `tbl_product_color` (
  `id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_photo`
--

CREATE TABLE `tbl_product_photo` (
  `pp_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_photo`
--

INSERT INTO `tbl_product_photo` (`pp_id`, `photo`, `p_id`) VALUES
(18, '61222466128549516.png', 9),
(19, '24709382961028414.JPG', 8),
(20, '21143323065401152.JPG', 7),
(21, '81093194669731513.JPG', 7),
(22, '58517481336101627.JPG', 6),
(23, '41586441038763939.JPG', 6),
(24, '27583509094260935.JPG', 10),
(25, '18547951113034481.JPG', 10),
(26, '42903788557616527.JPG', 11),
(27, '48776661376516618.JPG', 11),
(28, '51785648450431745.JPG', 12),
(29, '80351568187920178.JPG', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_size`
--

CREATE TABLE `tbl_product_size` (
  `id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `prod_stock` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product_size`
--

INSERT INTO `tbl_product_size` (`id`, `size_id`, `p_id`, `prod_stock`) VALUES
(58, 2, 8, ''),
(59, 3, 8, ''),
(65, 1, 7, ''),
(66, 6, 7, ''),
(70, 2, 6, ''),
(71, 3, 6, ''),
(72, 6, 6, ''),
(79, 4, 10, '12'),
(80, 5, 10, ''),
(81, 7, 10, ''),
(82, 2, 9, ''),
(83, 4, 9, ''),
(84, 5, 9, ''),
(85, 3, 11, ''),
(86, 4, 11, ''),
(87, 6, 11, ''),
(88, 4, 12, ''),
(89, 6, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rating`
--

CREATE TABLE `tbl_rating` (
  `rt_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `content`, `photo`) VALUES
(1, 'Warranty', 'Your Azureh material/product is designed and manufactured with the very high quality of standards. This warranty card provides one (1) year warranty for replacement of faded on selected items.', '2470007055309013.JPG'),
(4, 'Quality Product', 'It\'s has a quality product ', 'service-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `forget_password_message` text NOT NULL,
  `total_recent_post_footer` int(10) NOT NULL,
  `total_popular_post_footer` int(10) NOT NULL,
  `total_recent_post_sidebar` int(11) NOT NULL,
  `total_popular_post_sidebar` int(11) NOT NULL,
  `total_featured_product_home` int(11) NOT NULL,
  `total_latest_product_home` int(11) NOT NULL,
  `total_popular_product_home` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `banner_login` varchar(255) NOT NULL,
  `banner_registration` varchar(255) NOT NULL,
  `banner_forget_password` varchar(255) NOT NULL,
  `banner_reset_password` varchar(255) NOT NULL,
  `banner_search` varchar(255) NOT NULL,
  `banner_cart` varchar(255) NOT NULL,
  `banner_checkout` varchar(255) NOT NULL,
  `banner_product_category` varchar(255) NOT NULL,
  `banner_blog` varchar(255) NOT NULL,
  `cta_title` varchar(255) NOT NULL,
  `cta_content` text NOT NULL,
  `cta_read_more_text` varchar(255) NOT NULL,
  `cta_read_more_url` varchar(255) NOT NULL,
  `cta_photo` varchar(255) NOT NULL,
  `featured_product_title` varchar(255) NOT NULL,
  `featured_product_subtitle` varchar(255) NOT NULL,
  `latest_product_title` varchar(255) NOT NULL,
  `latest_product_subtitle` varchar(255) NOT NULL,
  `popular_product_title` varchar(255) NOT NULL,
  `popular_product_subtitle` varchar(255) NOT NULL,
  `testimonial_title` varchar(255) NOT NULL,
  `testimonial_subtitle` varchar(255) NOT NULL,
  `testimonial_photo` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_subtitle` varchar(255) NOT NULL,
  `newsletter_text` text NOT NULL,
  `paypal_email` varchar(255) NOT NULL,
  `stripe_public_key` varchar(255) NOT NULL,
  `stripe_secret_key` varchar(255) NOT NULL,
  `bank_detail` text NOT NULL,
  `before_head` text NOT NULL,
  `after_body` text NOT NULL,
  `before_body` text NOT NULL,
  `home_service_on_off` int(11) NOT NULL,
  `home_welcome_on_off` int(11) NOT NULL,
  `home_featured_product_on_off` int(11) NOT NULL,
  `home_latest_product_on_off` int(11) NOT NULL,
  `home_popular_product_on_off` int(11) NOT NULL,
  `home_testimonial_on_off` int(11) NOT NULL,
  `home_blog_on_off` int(11) NOT NULL,
  `newsletter_on_off` int(11) NOT NULL,
  `ads_above_welcome_on_off` int(2) NOT NULL,
  `ads_above_featured_product_on_off` int(2) NOT NULL,
  `ads_above_latest_product_on_off` int(2) NOT NULL,
  `ads_above_popular_product_on_off` int(2) NOT NULL,
  `ads_above_testimonial_on_off` int(2) NOT NULL,
  `ads_category_sidebar_on_off` int(2) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `forget_password_message`, `total_recent_post_footer`, `total_popular_post_footer`, `total_recent_post_sidebar`, `total_popular_post_sidebar`, `total_featured_product_home`, `total_latest_product_home`, `total_popular_product_home`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `banner_login`, `banner_registration`, `banner_forget_password`, `banner_reset_password`, `banner_search`, `banner_cart`, `banner_checkout`, `banner_product_category`, `banner_blog`, `cta_title`, `cta_content`, `cta_read_more_text`, `cta_read_more_url`, `cta_photo`, `featured_product_title`, `featured_product_subtitle`, `latest_product_title`, `latest_product_subtitle`, `popular_product_title`, `popular_product_subtitle`, `testimonial_title`, `testimonial_subtitle`, `testimonial_photo`, `blog_title`, `blog_subtitle`, `newsletter_text`, `paypal_email`, `stripe_public_key`, `stripe_secret_key`, `bank_detail`, `before_head`, `after_body`, `before_body`, `home_service_on_off`, `home_welcome_on_off`, `home_featured_product_on_off`, `home_latest_product_on_off`, `home_popular_product_on_off`, `home_testimonial_on_off`, `home_blog_on_off`, `newsletter_on_off`, `ads_above_welcome_on_off`, `ads_above_featured_product_on_off`, `ads_above_latest_product_on_off`, `ads_above_popular_product_on_off`, `ads_above_testimonial_on_off`, `ads_category_sidebar_on_off`, `color`) VALUES
(1, '56033893885574061.png', '74961402758438976.png', '<div>Every story has a beginning, and behind every dream is a dreamer, with the founder’s passion and eagerness in the field of fashion business combined with wellness and health Azureh was born.&nbsp;</div><div>We aim to create a strong presence in the existing market to be part of every Filipino.&nbsp;</div><div>We have built our reputations on four pillars of strength: Style, Quality, Innovation and Price</div><div><br></div>', 'Copyright © 2019-2020. All Rights Reserved.', 'Elizabeth MallSanciangko St, Cebu City, 6000 Cebu', 'azurehfashion@gmail.com', '094583296', '268-9101', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d981.3862574212087!2d123.89350502650547!3d10.298194344271895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33a99957dc3517dd%3A0xaddb144b6e5886b!2sElizabeth%20Mall%2C%20Sanciangko%20St%2C%20Cebu%20City%2C%206000%20Cebu!5e0!3m2!1sen!2sph!4v1610699953414!5m2!1sen!2sph\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'azurehfashion@gmail.com', 'Visitor Email Message from Azureh Website', 'Thank you for sending email. We will contact you shortly.', 'A confirmation link is sent to your email address. You will get the password reset information in there.', 4, 4, 5, 5, 10, 10, 10, 'Azureh Fashion Jewlery Trend', 'checkout, payment,  online shopping, online payment,  products, Jewelry,Healthband', '', 'banner_login.jpg', 'banner_registration.jpg', 'banner_forget_password.jpg', 'banner_reset_password.jpg', 'banner_search.jpg', 'banner_cart.jpg', 'banner_checkout.jpg', 'banner_product_category.jpg', 'banner_blog.jpg', 'Welcome To Our Ecommerce Website', 'Lorem ipsum dolor sit amet, an labores explicari qui, eu nostrum copiosae argumentum has. Latine propriae quo no, unum ridens expetenda id sit, \\r\\nat usu eius eligendi singulis. Sea ocurreret principes ne. At nonumy aperiri pri, nam quodsi copiosae intellegebat et, ex deserunt euripidis usu.', 'Read More', '#', 'cta.jpg', 'Featured Products', 'See all our featured products from here', 'Latest Products', 'See all our latest products from here', 'Popular Products', 'See all our popular products from here', 'Testimonials', 'See what our clients tell about us', 'testimonial.jpg', 'Latest Blog', 'See all our latest articles and news from below', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid fugit expedita, iure ullam cum vero ex sint aperiam maxime.', 'biz111@shop.com', 'pk_test_0SwMWadgu8DwmEcPdUPRsZ7b', 'sk_test_TFcsLJ7xxUtpALbDo1L5c1PN', 'Bank Name: ABC Bank\\r\\nAccount Number: 1222320234444\\r\\nBranch Name: NY Branch\\r\\nCountry: USA', '<script async src=\"https://www.googletagmanager.com/gtag/js?id=<Some Property ID A>\"></script>\r\n<script> window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag(\'js\', new Date()); gtag(\'config\', \'<Some Property ID A>\'); gtag(\'config\', \'<Some Property ID B>\'); gtag(\'event\', \'sign_up\', { \'method\': \'email\' }); gtag(\'event\', \'view_video\', { \'send_to\': \'<Some Property ID B>\' }); </script>', '<div id=\"fb-root\"></div>\r\n<script async defer src=\"https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.2\"></script>', '<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{};\r\nvar Tawk_LoadStart=new Date();\r\n<!-- rest of the www.tawk.to widget code -->\r\n\r\n<script type=\"text/javascript\">\r\nTawk_API.onLoad = function(){\r\nTawk_API.setAttributes({\r\n\'name\' : \'visitor\',\r\n\'email\': \'visitor@email.com\',\r\n\'hash\' : \'hash-value\'\r\n}, function (error) {});\r\n\r\n};\r\n</script>\r\n<!--End of Tawk.to Script-->', 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 1, '0A0808');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost`
--

CREATE TABLE `tbl_shipping_cost` (
  `shipping_cost_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping_cost`
--

INSERT INTO `tbl_shipping_cost` (`shipping_cost_id`, `province_id`, `city_id`, `amount`) VALUES
(1, 1, 3, '10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_cost_all`
--

CREATE TABLE `tbl_shipping_cost_all` (
  `sca_id` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping_cost_all`
--

INSERT INTO `tbl_shipping_cost_all` (`sca_id`, `amount`) VALUES
(1, '20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `size_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`size_id`, `size_name`, `size_image`) VALUES
(1, '2', ''),
(2, '3', ''),
(3, '3.5', ''),
(4, '4', ''),
(5, '4.5', ''),
(6, '5', ''),
(7, '5.5', ''),
(8, '6', ''),
(9, '6.5', ''),
(10, '7', ''),
(11, '7.5', ''),
(12, '8', ''),
(13, '8.5', ''),
(14, '9', ''),
(15, '9.5', ''),
(16, '10', ''),
(17, '10.5', ''),
(18, '11', ''),
(19, '11.5', ''),
(20, '12', ''),
(21, '12.5', ''),
(22, '13', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `content`, `button_text`, `button_url`, `position`) VALUES
(3, '4327069944952809.png', 'Hello From The Outside', 'The outside is more aplicable for your fashion', 'Red more', '', 'Right'),
(4, '9108887190417763.png', 'Couple Necklace', 'Forever Love You Couple Necklaces are just the perfect pieces to define your love and journey to the road of forever. The significance of this set concentrates on the pendants. It has a ring design that signifies infinite love to each other, plus inside of it is a nut pendant, that signifies durability and resistance.', 'Read more', '', 'Center'),
(5, '1378777304630406.png', 'ssss', 'dadasdasd', 'asdasdasdsa', '', 'Left');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slidervid`
--

CREATE TABLE `tbl_slidervid` (
  `sv_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `button` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slidervid`
--

INSERT INTO `tbl_slidervid` (`sv_id`, `file`, `heading`, `content`, `button`, `position`) VALUES
(3, '2464462823880258.mp4', 'Ring', 'it\'s a ring ', 'Read More', 'Left'),
(4, '4653373303034353.mp4', 'Necklace', 'it\'s a necklace ', 'Red More', 'Left');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/AzurehPH', 'fa fa-facebook'),
(2, 'Twitter', '', 'fa fa-twitter'),
(3, 'Instagram', '', 'fa fa-instagram');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `company`, `photo`, `comment`) VALUES
(1, 'Almahsol A. Tabigue', 'Web Developer', 'Azureh', '282705652622765.jpg', 'It\'s a sample for your information'),
(2, 'Almahsol A. Tabigue', 'Web Developer', 'Azureh', 'testimonial-1.jpg', 'It\'s a sample for your information');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_category`
--

CREATE TABLE `tbl_top_category` (
  `tcat_id` int(11) NOT NULL,
  `tcat_name` varchar(255) NOT NULL,
  `show_on_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_top_category`
--

INSERT INTO `tbl_top_category` (`tcat_id`, `tcat_name`, `show_on_menu`) VALUES
(1, 'Healthband', 1),
(2, 'Premium Jewelry', 1),
(3, 'Fashion Jewelry', 1),
(4, 'Love & Promises', 1),
(5, 'For Him', 1),
(6, 'Gifts', 1),
(7, 'What\'s New', 1),
(8, 'What\'s Hot', 1),
(9, 'sample', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `join_date`, `role`, `status`) VALUES
(1, 'admin', 'azureh2020@gmail.com', '268-9101', 'e2de872e86202aed0af029d84ce3e44e', 'user-1.jpeg', '', 'DATADMIN', 12),
(2, 'almahsol', 'tabigue@gmail.com', '', 'e10adc3949ba59abbe56e057f20f883e', '', '2021-01-21', 'guest', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `iframe_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`id`, `title`, `iframe_code`) VALUES
(3, 'sample23', '<iframe src=\"https://drive.google.com/file/d/1CsmbRLIDen2E4eC7f4m-QCpoujviqYVZ/preview\" width=\"640\" height=\"480\"></iframe>'),
(4, 'sdasd', '<iframe width=\"677\" height=\"381\" src=\"https://www.youtube.com/embed/VKf6NF0OD5A\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(5, 'opening ', '<iframe src=\"https://www.facebook.com/plugins/video.php?height=314&href=https%3A%2F%2Fweb.facebook.com%2FAzurehPH%2Fvideos%2F427174941964200%2F&show_text=false&width=560\" width=\"560\" height=\"314\" style=\"border:none;overflow:hidden\" scrolling=\"no\" frameborder=\"0\" allowfullscreen=\"true\" allow=\"autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share\" allowFullScreen=\"true\"></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `cust_cart`
--
ALTER TABLE `cust_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `cust_guest`
--
ALTER TABLE `cust_guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  ADD PRIMARY KEY (`ecat_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  ADD PRIMARY KEY (`mcat_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  ADD PRIMARY KEY (`rt_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  ADD PRIMARY KEY (`shipping_cost_id`);

--
-- Indexes for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  ADD PRIMARY KEY (`sca_id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slidervid`
--
ALTER TABLE `tbl_slidervid`
  ADD PRIMARY KEY (`sv_id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  ADD PRIMARY KEY (`tcat_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `city_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1637;

--
-- AUTO_INCREMENT for table `cust_cart`
--
ALTER TABLE `cust_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cust_guest`
--
ALTER TABLE `cust_guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `province_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_end_category`
--
ALTER TABLE `tbl_end_category`
  MODIFY `ecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_mid_category`
--
ALTER TABLE `tbl_mid_category`
  MODIFY `mcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product_photo`
--
ALTER TABLE `tbl_product_photo`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_product_size`
--
ALTER TABLE `tbl_product_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbl_rating`
--
ALTER TABLE `tbl_rating`
  MODIFY `rt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost`
--
ALTER TABLE `tbl_shipping_cost`
  MODIFY `shipping_cost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shipping_cost_all`
--
ALTER TABLE `tbl_shipping_cost_all`
  MODIFY `sca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_slidervid`
--
ALTER TABLE `tbl_slidervid`
  MODIFY `sv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_top_category`
--
ALTER TABLE `tbl_top_category`
  MODIFY `tcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
