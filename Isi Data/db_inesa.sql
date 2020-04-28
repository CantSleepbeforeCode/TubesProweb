-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2020 at 08:51 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inesa`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `hak_akses` enum('penulis','panitia_lomba') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `hak_akses`) VALUES
(3, 'samsulb', '743151d956e5b23963e9c8c2c908b4c5', 'penulis'),
(4, 'mzulfikar', '743151d956e5b23963e9c8c2c908b4c5', 'penulis'),
(5, 'yogspria100%', '743151d956e5b23963e9c8c2c908b4c5', 'penulis'),
(6, 'ilhams', '743151d956e5b23963e9c8c2c908b4c5', 'panitia_lomba'),
(7, 'ariandimas', '743151d956e5b23963e9c8c2c908b4c5', 'panitia_lomba');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal_edit` timestamp NULL DEFAULT NULL,
  `rating` float NOT NULL,
  `foto` varchar(200) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `judul`, `genre`, `deskripsi`, `tanggal_masuk`, `tanggal_edit`, `rating`, `foto`, `id_admin`) VALUES
(1, 'Contoh Input', 'Adventure,Strategy,Horor', 'Ini isi postingannya nanti... kuisi lorem ipsum dulu yaa...\r\n\r\n\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci praesentium soluta nesciunt quas rerum sint id sapiente, officiis amet dolores totam at accusantium assumenda aperiam ut inventore fugiat neque necessitatibus.\r\n                        Amet dolorum nihil deleniti asperiores labore ipsam eligendi ratione quae officiis laborum fugiat temporibus atque ipsum repellendus beatae natus, a sit est, minus quos debitis, maiores sint? Suscipit, ea accusamus.\r\n                        Beatae quaerat, atque iusto repudiandae iste ex illo repellendus dolore magni obcaecati eveniet ut error consectetur veritatis dicta non magnam aperiam cum placeat eaque consequatur voluptas inventore dolorum? Voluptatibus, eligendi.\r\n                        Doloribus amet expedita quis consequuntur? Atque maiores voluptatibus sed a inventore est repudiandae ratione aperiam explicabo impedit sequi, nostrum alias quo ex voluptates vitae placeat provident cumque optio sint earum.\r\n                        Velit illum autem magnam iste consequatur tenetur ad eveniet dignissimos. Sint nemo at quisquam, dolor numquam labore atque nesciunt, neque voluptas eius nisi incidunt veritatis dignissimos corporis velit? A, minus!\r\n                        Fugit quisquam eum minus eveniet ut possimus doloribus, consequuntur deleniti nobis sequi officia beatae nemo, quaerat sunt. Quas numquam sunt fugit, sit modi labore aliquam doloribus fugiat sed porro dicta?\r\n                        Iusto libero accusamus molestiae numquam, soluta dolorum, similique ipsum rem aliquam sed maiores totam alias vitae quae fuga enim adipisci eum perspiciatis praesentium a ea animi ipsa? Minima, quibusdam minus.\r\n                        Sed, impedit atque nobis, aliquam beatae omnis cupiditate optio in quae ex nisi nostrum ipsum repellendus mollitia iusto amet natus. Tempore obcaecati magni, tenetur nisi vitae totam voluptatem ipsum esse!\r\n                        Nihil temporibus ut a nam, odio dolores iste doloribus obcaecati qui. Qui suscipit laborum ducimus blanditiis quos quas id dolore officiis tempora impedit odio, distinctio dolor voluptas, similique ipsum rem.\r\n                        Dicta quod id laborum deleniti sapiente voluptas tempore ut rerum repudiandae? Eos autem quos corrupti eaque libero cum natus, dolores nam culpa ex nulla, totam hic ducimus. Commodi, tempore at!\r\n                        Distinctio eum laudantium numquam commodi sapiente quo accusamus sint reiciendis itaque a suscipit, iure nemo dignissimos eveniet laborum eligendi deleniti ad quam impedit pariatur nesciunt ipsum assumenda? Vitae, eos vero.\r\n                        Totam, perspiciatis tempore, at expedita molestias libero eligendi assumenda commodi dicta reprehenderit pariatur? Laboriosam, voluptatem cum inventore provident, accusamus a, cumque aliquid earum eum commodi blanditiis ipsum autem doloremque iure!\r\n                        Optio totam impedit quibusdam culpa? Ex dicta esse eaque possimus voluptas numquam debitis quibusdam officiis error, est pariatur consequatur ipsam earum nulla odio sunt illum voluptatum. In voluptas natus officia?\r\n                        Quidem pariatur officia sit nesciunt aut doloremque quae! Omnis voluptatibus perspiciatis reprehenderit. Aspernatur beatae eaque doloribus facilis debitis laborum fuga tempore error pariatur eligendi sint provident sapiente, adipisci amet itaque.\r\n                        Quod illum est deserunt iusto quis corporis perferendis odio eaque. Recusandae porro harum ratione iusto impedit amet assumenda vero! Quaerat esse ex alias ea illum assumenda, cupiditate neque et eaque!\r\n                        Commodi quisquam libero, repellendus distinctio minus beatae voluptate cumque, eos nisi rerum, aliquid suscipit enim maxime dolor sit quia facilis perspiciatis dignissimos. Quia tenetur odio ipsum modi laudantium quae aspernatur!\r\n                        Molestias distinctio ratione perspiciatis inventore culpa et cupiditate, ipsa placeat hic assumenda obcaecati aspernatur reiciendis, laborum pariatur? Amet quas sunt, nesciunt itaque iusto rerum. Illum expedita aut dolores delectus reiciendis?\r\n                        Voluptas quo omnis earum porro quod commodi qui, numquam corrupti provident ex accusamus ullam autem maxime voluptate illum quisquam quos illo in? Commodi sequi impedit laudantium sit iusto magnam architecto.\r\n                        Incidunt voluptas architecto fugit reprehenderit. Quos cupiditate in minima hic, ullam libero nulla, fuga consectetur quisquam nemo, omnis iusto amet rem dolore ipsam explicabo quis exercitationem quod nam voluptas reprehenderit.\r\n                        Et laborum non quidem laudantium quibusdam, soluta facilis reprehenderit quos! Veniam saepe ad repellendus animi assumenda excepturi veritatis illum omnis dolore aliquam blanditiis, incidunt ipsum quas beatae dolorem a sed?\r\n                        Rem enim voluptatibus quos, voluptates cum laboriosam delectus nostrum iusto possimus ad laudantium sed suscipit eveniet modi libero! Eveniet possimus dolores ipsum eaque ab? Omnis quis illo velit dolore eligendi?\r\n                        Eveniet doloribus, enim unde architecto nesciunt minus et iusto quo necessitatibus temporibus asperiores neque a nihil ipsam ratione beatae nobis mollitia placeat impedit. Doloribus mollitia quae non officia ab! Amet.\r\n                        Nisi dolor veritatis dolorem! Animi itaque ad atque eum asperiores sunt, commodi nulla dignissimos doloremque quisquam reiciendis consequatur eius. Ipsum, sequi aperiam sunt nesciunt soluta explicabo maiores sint ipsa eveniet.\r\n                        Explicabo nisi expedita reiciendis consectetur deleniti aut, fugiat cum illo laudantium et mollitia eligendi. Ex commodi distinctio accusantium, officia reprehenderit praesentium nihil dolores possimus ad eius asperiores explicabo, cupiditate error!\r\n                        Porro repudiandae expedita est sit atque optio, aut quasi impedit repellat culpa pariatur a, consequatur autem aliquid quod placeat! Laudantium, odit magni harum hic repellat iste corrupti saepe dolore odio?\r\n                        Aperiam iusto sapiente nostrum dicta nobis animi, quam labore cupiditate numquam reprehenderit magni sit. Eius quasi aliquid veniam quod sunt? Quos itaque necessitatibus ut dignissimos sed aliquam est quo natus!\r\n                        In, laudantium? Maxime cum ex dignissimos corrupti, dolor quod atque accusantium consequatur laborum culpa dolore ad consequuntur asperiores quas, non voluptatem deserunt possimus recusandae! Corrupti repellendus dolore reprehenderit veritatis praesentium!\r\n                        Quis, harum cumque sit quidem magni porro impedit voluptatum sint nostrum quos laudantium dolor cum sequi quam adipisci consequatur, ut recusandae accusantium nihil, rem repellat at facere aspernatur labore. Similique!\r\n                        Veritatis ut ab assumenda doloribus, necessitatibus vitae architecto temporibus asperiores sequi reiciendis ipsam corrupti, eos facere quidem repudiandae officiis accusamus labore eum. Amet corrupti nostrum quam consequuntur, vel illum molestias?\r\n                        Tenetur iusto nihil repellendus consequuntur quis ad, reprehenderit illo tempora mollitia laboriosam sint velit, delectus odit quisquam laborum nisi. Laudantium at, aliquam ut amet alias magnam fugit minus error ab.\r\n                        Nostrum, ipsam eos ullam neque dolorem reprehenderit iusto doloribus id temporibus, commodi in saepe sint perferendis voluptatum deleniti, ratione fuga qui expedita asperiores aliquid recusandae sequi eius magni. Commodi, dolorum.\r\n                        Vel incidunt neque tempora ipsam voluptatum reprehenderit earum ex sit amet in. Nemo, consequuntur harum dolore voluptates voluptatum modi sit placeat consequatur optio, quae nobis expedita est. Nam, laudantium porro.\r\n                        Nemo aperiam repudiandae ullam quaerat! Quaerat corrupti adipisci vitae magnam sapiente, qui impedit incidunt nostrum nesciunt, et earum dignissimos dolore nam odit corporis. Alias vitae ipsam ducimus ratione labore earum.\r\n                        Perferendis, possimus! Quas deserunt ducimus esse accusantium adipisci porro aspernatur neque quidem suscipit exercitationem, quis obcaecati laboriosam placeat voluptates dignissimos consequuntur dolorum commodi non explicabo in autem consectetur, omnis voluptate.\r\n                        Quam ad soluta provident tempora nesciunt praesentium, voluptatum tenetur omnis dolore delectus exercitationem rerum quia perspiciatis non a magnam repellat enim nostrum alias ipsa voluptas architecto debitis perferendis? Doloribus, ipsa.\r\n                        Nam illum quae quas veniam aliquam repudiandae! Blanditiis assumenda a sequi ipsum maiores rerum eveniet, ipsam aperiam. Assumenda delectus tempore sed nobis architecto libero mollitia, optio, pariatur nemo omnis voluptatibus!\r\n                        Placeat atque ducimus reiciendis deserunt molestiae culpa nihil dolorem ullam ipsum recusandae laborum, voluptate odio? Adipisci, doloremque? Quam dolorum velit ad obcaecati corrupti animi asperiores, quo cupiditate earum nostrum maxime?\r\n                        Deleniti praesentium accusamus dolore ratione facere velit dicta officia nihil, ipsum quae laboriosam laudantium quibusdam illo et delectus animi, perferendis maxime reprehenderit? Exercitationem, consequuntur. Ab impedit commodi quia vero quisquam?\r\n                        Nostrum voluptatibus in, illo quis, dicta odio asperiores autem quia iusto mollitia cum expedita enim iste numquam, non tempora! Culpa ipsam impedit libero magni repellendus ducimus officia inventore nesciunt ullam?\r\n                        Cum vel, quam optio distinctio officia debitis recusandae veritatis temporibus, dolore iusto sequi sint saepe deserunt repellendus quibusdam ipsam! Libero ipsa suscipit dolorem totam possimus nam distinctio saepe! Reiciendis, a!\r\n                        Enim, voluptates? Dolorum, facere sit, esse optio exercitationem quo in expedita, ipsam sequi tempora nobis voluptates explicabo mollitia hic ipsa atque blanditiis molestiae sunt nemo? Nulla quas tempora dolorem voluptatum?\r\n                        Voluptates nisi molestias maxime iure, veritatis optio laborum quibusdam distinctio! Doloremque qui at beatae. Nostrum, unde molestias modi, fuga illo itaque sit assumenda ipsa in tempore nobis quas soluta odio?\r\n                        Beatae consectetur ea ratione atque temporibus facilis voluptas cupiditate perferendis suscipit aut quas necessitatibus nemo optio architecto accusantium aliquid, dolor adipisci recusandae facere sequi quasi. Tempore necessitatibus quasi autem consectetur?\r\n                        Voluptatem voluptates temporibus ea? Autem cum harum, neque numquam doloribus, perspiciatis laborum perferendis voluptatem voluptatibus distinctio dicta. Saepe aliquid ipsum obcaecati consectetur, eum tempora dolorem cupiditate veniam sint quam asperiores.\r\n                        Assumenda harum tempora, fuga necessitatibus laborum repellat eligendi delectus accusantium illum, totam commodi libero dolor eum magnam eius eveniet voluptates! Beatae dignissimos quibusdam non inventore voluptas iste officiis, voluptatem ut!\r\n                        Provident eaque illo doloribus incidunt aspernatur veritatis alias perferendis! Quia voluptate unde voluptates commodi, officiis nam ducimus accusantium aliquam illo fuga ipsum numquam obcaecati soluta voluptas quas corporis necessitatibus tempore.\r\n                        Consequuntur amet, voluptate exercitationem ducimus error cum perspiciatis, eius quasi placeat cupiditate, natus dolore eligendi. Iure illo explicabo voluptatibus, odio eaque aliquam doloribus reiciendis amet, officiis eum voluptates fugiat architecto.\r\n                        Odit quod quae ducimus, deleniti qui iure temporibus blanditiis neque fuga velit dolorem assumenda quis animi hic laboriosam veritatis magni libero. Deleniti exercitationem laborum inventore placeat neque obcaecati deserunt hic?\r\n                        Dolores reprehenderit corporis temporibus architecto! Dolorum rem provident molestias modi non voluptate fugit repellat qui sequi. Quibusdam alias accusantium temporibus nemo, ipsam recusandae! Est quod architecto neque repellendus aliquid voluptatem!\r\n                        Aut mollitia ex perferendis nam obcaecati laborum fugit ratione amet sed, dolore pariatur voluptas alias quod ipsam blanditiis neque, eius id consectetur labore dicta quasi sapiente, asperiores quidem tempore. Vitae.', '2020-04-23 06:29:29', NULL, 4.3, '/assets/img/postingan-game/namafotodisini.jpg', 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_postingan_game`
-- (See below for the actual view)
--
CREATE TABLE `view_postingan_game` (
`id_game` int(11)
,`judul` varchar(100)
,`genre` varchar(100)
,`deskripsi` text
,`tanggal_masuk` timestamp
,`tanggal_edit` timestamp
,`foto` varchar(200)
,`id_admin` int(11)
,`author` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `view_postingan_game`
--
DROP TABLE IF EXISTS `view_postingan_game`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_postingan_game`  AS  select `game`.`id_game` AS `id_game`,`game`.`judul` AS `judul`,`game`.`genre` AS `genre`,`game`.`deskripsi` AS `deskripsi`,`game`.`tanggal_masuk` AS `tanggal_masuk`,`game`.`tanggal_edit` AS `tanggal_edit`,`game`.`foto` AS `foto`,`game`.`id_admin` AS `id_admin`,`admin`.`username` AS `author` from (`game` join `admin`) where `game`.`id_admin` = `admin`.`id_admin` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
