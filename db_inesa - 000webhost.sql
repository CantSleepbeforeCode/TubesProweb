-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 02:53 PM
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
  `nama` varchar(40) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `email` varchar(30) NOT NULL,
  `norek` varchar(20) NOT NULL,
  `hak_akses` enum('penulis','panitia_lomba') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `nama`, `password`, `nohp`, `email`, `norek`, `hak_akses`) VALUES
(3, 'samsulb', 'Samsul Bahri', '743151d956e5b23963e9c8c2c908b4c5', '081277057373', 'sam@inesa.com', '0912121212121', 'penulis'),
(4, 'mzulfikar', 'M Zulfikar', '743151d956e5b23963e9c8c2c908b4c5', '081277057373', 'fikar@inesa.com', '0912121212121', 'penulis'),
(5, 'yogspria100%', 'Yoga Pria Winata', '743151d956e5b23963e9c8c2c908b4c5', '081277057373', 'yoga@inesa.com', '0912121212121', 'penulis'),
(6, 'ilhams', 'Ilham Saputra', '743151d956e5b23963e9c8c2c908b4c5', '081277057373', 'ilham@inesa.com', '0912121212121', 'panitia_lomba'),
(7, 'ariandimas', 'Ariandimas', '743151d956e5b23963e9c8c2c908b4c5', '081277057373', 'dimas@inesa.com', '0912121212121', 'panitia_lomba');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `developer` varchar(100) NOT NULL,
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

INSERT INTO `game` (`id_game`, `judul`, `developer`, `genre`, `deskripsi`, `tanggal_masuk`, `tanggal_edit`, `rating`, `foto`, `id_admin`) VALUES
(22, 'Counter Strike : Global Offensive', 'Valve Corporation', 'FPS', '<p>Counter Strike: Global Offensive adalah game dengan mode FPS (First-Person Shooting) yang dikembangkan oleh Valve Corporation dan Hidden Path Entertainment. Kedua perusahaan ini juga merupakan perusahaan yang mengembangkan Counter Strike: Source. Counter Strike: GO merupakan permainan keempat di dalam waralaba Counter Strike, tidak termasuk Counter Strike Neo dan Online. Counter Strike Global Offensive dirilis pada tanggal 21 Agustus, 2012 dan dapat dimainkan pada Microsoft Windows, OS X, Xbox Live Arcade dan Playstation Network versi Amerika. Counter Strike: Global Offensive menampilkan fitur-fitur klasiknya berupa peta yang ada dalam versi sebelumnya dan beberapa peta baru serta karakter tambahan. Permainan ini dapat dimainkan dengan menggunakan beberapa platform yang berbeda yaitu Windows, OS X dan PSN.</p>', '2020-05-12 09:26:06', '2020-05-11 21:30:36', 2.5, 'assets/img/postingan-game/game_Counter_Strike_.jpg', 5),
(23, 'Playerunknown\'s Battlegrounds', 'PUBG Corporation, Krafton, Lightspeed & Quantum', 'Battle royale game, Shooter game', '<p><strong>PlayerUnknown\'s Battlegrounds</strong> (sering disingkat <strong>PUBG</strong>) adalah sebuah permainan dengan genre battle royale, yang para pemainnya bisa bermain dengan 100 orang sekaligus secara daring. Di dalam permainan ini pemain bisa bermain solo, tim 2 orang, dan tim 4 orang, serta bisa mengundang teman untuk bergabung ke dalam permainan sebagai tim.</p>', '2020-05-12 09:34:01', NULL, 5, 'assets/img/postingan-game/game_Playerunknowns_Battlegrounds.jpg', 5),
(24, 'Mobile Legends: Bang Bang', 'Moonton', 'Multiplayer online battle arena', '<p>Mobile Legends: Bang Bang adalah sebuah permainan MOBA yang dirancang untuk ponsel. Kedua tim lawan berjuang untuk mencapai dan menghancurkan basis musuh sambil mempertahankan basis mereka sendiri untuk mengendalikan jalan setapak, tiga \"jalur\" yang dikenal sebagai \"top\", \"middle\" dan \"bottom\", yang menghubungkan basis-basis.<br /><br />Di masing-masing tim, ada lima pemain yang masing-masing mengendalikan avatar, yang dikenal sebagai \"hero\", dari perangkat mereka sendiri. Karakter terkontrol komputer yang lebih lemah, yang disebut \"minions\", bertelur di basis tim dan mengikuti tiga jalur ke basis tim lawan, melawan musuh dan menara.</p>', '2020-05-12 09:39:45', NULL, 5, 'assets/img/postingan-game/game_mlbb_.jpg', 5),
(25, 'Arena of Valor', 'TiMi Studios, Tencent Games, Proxima Beta Pte. Ltd.', 'Multiplayer online battle arena', '<p>Arena of Valor (AoV) sebelumnya Realm of Valor kemudian Strike of Kings, adalah adaptasi internasional dari Honor of Kings yang juga dikenal dalam terjemahan bahasa Inggris tidak resmi sebagai Kings of Glory, arena pertempuran online multipemain yang dikembangkan oleh TiMi Studios dan diterbitkan oleh Tencent Games untuk Android , iOS dan Nintendo Switch untuk pasar di luar daratan Cina. Pada September 2018, permainan telah meraup lebih dari $ 140 juta di luar Cina.</p>', '2020-05-12 09:43:43', NULL, 4, 'assets/img/postingan-game/game_Arena_of_Valor.jpg', 5),
(26, 'Garena Free Fire', '111dots Studio', 'Battle royale game, Mobile game', '<p>Garena Free Fire atau biasa disebut Free Fire (disingkat FF) adalah salah satu judul esports yang merupakan kombinasi dari genre battle royale dengan TPS (Third Person Shooter). Freefire di buat oleh perusahaan Garena. Sekilas ini adalah sebuah game perang yang mengumpulkan hingga 50 pemain di sebuah peta yang luas, dimana setiap pemain harus saling membunuh dan menjadi satu-satunya orang yang bisa bertahan untuk menjadi pemenang.</p>', '2020-05-12 09:46:26', NULL, 4.5, 'assets/img/postingan-game/game_Garena_Free_Fire.jpg', 5),
(27, 'Point Blank', 'Zepetto', 'First-person shooter', '<p>Point Blank adalah sebuah permainan komputer ber-genre FPS yang dimainkan secara online. Permainan ini dikembangkan oleh Zepetto dari Korea Selatan dan dipublikasikan oleh Zepetto. Selain di Korea Selatan, permainan ini mempunyai server sendiri di beberapa negara seperti Thailand, Rusia, Indonesia, Brasil, Turki, Amerika Serikat, dan Peru. Di Indonesia, permainan ini sekarang telah dikelola oleh Zepetto.<br /><br />Point Blank berkisah tentang perseteruan antara Free Rebels dan pemerintah yang dalam hal ini adalah Counter Terrorist Force (CT-Force).</p>', '2020-05-12 09:48:27', NULL, 4, 'assets/img/postingan-game/game_Point_Blank.jpg', 5),
(28, 'Dota 2', 'Valve Corporation', 'Multiplayer online battle arena', '<p>Dota 2 adalah sebuah permainan Arena pertarungan daring multipemain, dan merupakan sekuel dari Defense of the Ancients mod pada Warcraft 3: Reign of Chaos dan Warcraft 3: The Frozen Throne. DotA 2 dikembangkan oleh Valve Corporation, terbit juli 2013 dota 2 dapat dimainkan secara gratis pada sistem operasi Microsoft Windows, OS X and Linux. Dota 2 dapat dimainkan secara eksklusif melalui distributor resmi valve, Steam.<br /><br />Dota 2 dimainkan oleh 2 tim yang beranggota 5 orang pemain, setiap tim memiliki markas yang berada dipojok peta, setiap markas memiliki satu bangunan bernama \"Ancient\", Di mana tim harus berusaha menghancurkan \"Ancient\" tim lawan agar dapat memenangkan pertandingan. Setiap pemain hanya dapat mengontrol satu karakter \"Hero\" yang berfokus pada menaikan level, mengumpulkan gold, membeli item dan melawan tim lawan untuk menang.<br /><br />Pengembangan Dota 2 dimulai sejak tahun 2009. Ketika pengembang mod DotA, Icefrog, dipekerjakan oleh Valve sebagai lead designer. Dota 2 dipuji oleh kritikus karena gameplay-nya, kualitas pembuatan dan kesetiaan pada gameplay pendahulu (DotA mod Warcraft 3). tetapi Dota 2 juga menuai kritik sebagai game yang susah dipelajari dan para pemain yang tidak ramah.Sampai pertengahan 2017 Dota 2 menjadi game yang memiliki aktivitas pemain paling banyak di Steam, dengan pucak 800,000 pemain online bersamaan setiap hari. Namun telah disusul game PUBG (Player unknown\'s battle ground) yang memiliki aktivitas pemain sampai 1 juta setiap harinya</p>', '2020-05-12 09:51:02', NULL, 4.5, 'assets/img/postingan-game/game_Dota_2.jpg', 5),
(29, 'League of Legends', 'Riot Games', 'Multiplayer online battle arena', '<p>League of Legends (LoL) adalah game video arena pertempuran online multi-pemain yang dikembangkan dan diterbitkan oleh Riot Games untuk Microsoft Windows dan macOS. Terinspirasi oleh Warcraft III: The Frozen Throne mod Defense of the Ancients, gim ini mengikuti model freemium dan didukung oleh transaksi mikro. Di League of Legends, pemain berperan sebagai \"juara\" dengan kemampuan unik dan bertempur melawan tim juara yang dikendalikan oleh pemain atau komputer lainnya. Tujuannya biasanya untuk menghancurkan \"Nexus\" tim lawan, sebuah struktur yang terletak di jantung pangkalan yang dilindungi oleh struktur pertahanan, meskipun ada mode permainan lain yang berbeda serta dengan berbagai tujuan, aturan, dan peta. Setiap pertandingan League of Legends adalah diskrit, dengan semua juara memulai relatif lemah tetapi meningkat kekuatannya dengan mengumpulkan item dan pengalaman selama pertandingan. Champions membentang berbagai peran dan memadukan berbagai kiasan fantasi, seperti pedang dan sihir, steampunk, dan horor Lovecraftian. Meskipun sifat diskrit dari setiap pertandingan melarang narasi menyeluruh dalam game, berbagai juara membentuk dunia fiksi yang besar dan terus berkembang yang dikembangkan oleh Riot Games melalui cerita pendek, komik, sinematik, dan buku.</p>', '2020-05-12 10:07:46', NULL, 4, 'assets/img/postingan-game/game_League_of_Legends.jpg', 4),
(30, 'Clash Royale', 'Supercell', 'Tower defense, Multiplayer online battle arena, Collectible card game', '<p>Clash Royale adalah permainan video strategi real-time freemium yang dikembangkan dan diterbitkan oleh Supercell. Gim ini menggabungkan elemen dari gim kartu koleksi, menara pertahanan, dan arena pertempuran daring multi pemain. Permainan ini dirilis secara global pada 2 Maret 2016. Clash Royale mencapai $ 1 miliar dalam pendapatan dalam waktu kurang dari satu tahun di pasar.</p>', '2020-05-12 10:11:08', NULL, 3.5, 'assets/img/postingan-game/game_Clash_Royale.jpg', 4),
(31, 'Apex Legends', 'Respawn Entertainment', 'Battle royale game, First-person shooter', '<p>Apex Legends adalah permainan battle royale free-to-play yang dikembangkan oleh Respawn Entertainment dan diterbitkan oleh Electronic Arts. Permainan ini berada di alam semesta yang sama dengan Titanfall. Permainan ini dirilis untuk Microsoft Windows, PlayStation 4, dan Xbox One pada 4 Februari 2019. Satu minggu setelah dirilis, permainan ini telah diunduh lebih dari 25 juta kali dan lebih dari 2 juta pemain daring secara bersamaan.</p>', '2020-05-12 10:22:03', NULL, 4, 'assets/img/postingan-game/game_Apex_Legends.jpg', 4),
(32, 'Fortnite', 'Epic Games, People Can Fly', 'Battle royale game', '<p>Fortnite adalah gim video daring yang dikembangkan oleh Epic Games dan dirilis pada 2017. Gim ini tersedia dalam tiga versi mode gim yang berbeda yang berbagi gameplay dan mesin gim umum yang sama: Fortnite: Save the World, gim penembak-kooperatif untuk hingga empat pemain untuk melawan makhluk seperti zombie dan mempertahankan benda dengan benteng yang bisa mereka bangun; Fortnite Battle Royale, game royale battle free-to-play di mana hingga 100 pemain berjuang untuk menjadi orang terakhir yang bertahan; dan Fortnite Creative, di mana para pemain diberikan kebebasan penuh untuk menciptakan dunia dan arena pertempuran. Save the World dan Battle Royale dirilis pada 2017 sebagai judul akses awal, sementara Creative dirilis pada 6 Desember 2018. Save the World hanya tersedia untuk Windows, macOS, PlayStation 4, dan Xbox One, sementara Battle Royale and Creative dirilis untuk semua platform itu, dan juga untuk Nintendo Switch, iOS, dan perangkat Android.<br /><br />Sementara versi Save the World dan Creative telah sukses untuk Epic Games, Fortnite Battle Royale secara khusus menjadi sukses besar - menarik lebih dari 125 juta pemain dalam waktu kurang dari setahun, menghasilkan ratusan juta dolar per bulan, dan menjadi fenomena budaya.</p>', '2020-05-12 10:28:07', NULL, 3.5, 'assets/img/postingan-game/game_Fortnite.jpg', 3),
(33, 'Pro Evolution Soccer', 'Konami, Naver, PES Productions, NHN, Konami Digital Entertainment, Konami Computer Entertainment Jap', 'Sport Game', '<p>Pro Evolution Soccer adalah seri permainan video sepak bola yang dikembangkan dan diterbitkan oleh Konami. Permainan ini dirilis dalam berbagai platform. Pada mulanya, permainan video ini masih bersaudara dengan International Superstar Soccer yang dirilis lebih awal dan dirilis dalam dua versi berbeda: Pro Evolution Soccer untuk seluruh dunia dan Winning Eleven di Jepang. Seri tersebut telah mendapat banyak kritik dan sukses secara komersial.<br /><br />PES merupakan salah satu contoh permainan video yang digunakan secara luas dalam olahraga elektronik (eSports). PES League (atau PES World Finals dalam versi sebelumnya) adalah kejuaraan resmi olahraga elektronik yang diselenggarakan setiap tahun sejak 2010. PES League memiliki partai tunggal (1v1) dan sejak 2018 sudah memiliki partai tim (3v3).<br /><br />Dalam sepak bola, seteru abadi Pro Evolution Soccer adalah FIFA yang dikembangkan dan diterbitkan oleh Electronic Arts (EA Sports). Bersama FIFA, PES juga memungkinkan pemainnya untuk membuat sendiri selebrasi gol. Sebagai salah satu permainan terlaris di dunia, seri permainan video ini telah dirilis sebanyak 100 juta kopi.<br /><br />Pada Desember 2011, Pro Evolution Soccer telah diterjemahkan ke 19 bahasa dan tersedia di 62 negara, termasuk Indonesia.</p>', '2020-05-12 10:31:56', NULL, 4, 'assets/img/postingan-game/game_Pro_Evolution_Soccer.jpg', 3),
(34, 'Heartstone', 'Blizzard Entertainment', 'Digital collectible card game', '<p>Hearthstone, awalnya bernama Hearthstone: Heroes of Warcraft, permainan kartu video koleksi online gratis yang dikembangkan oleh Blizzard Entertainment. Setelah dirilis pada 11 Maret 2014, Hearthstone dibangun di atas pengetahuan yang ada tentang seri Warcraft dengan menggunakan elemen, karakter, dan relik yang sama.</p>\r\n<p>Game ini merupakan permainan kartu berbasis giliran di antara dua lawan, menggunakan dek-dek yang dikontrak dari 30 kartu. Sama seperti Clash Royale, game ini mengharuskan pemain mempertahankan wilayah sekaligus menyerang wilayah lawan. Game ini juga ikut dipertandingkan dalam Asian Games 2018 di Indonesia.</p>', '2020-05-12 10:33:53', NULL, 3.5, 'assets/img/postingan-game/game_Heartstone.jpg', 3),
(35, 'Starcraft', 'Blizzard Entertainment, nStigate Games, Swingin\' Ape Studios, Aztech New Media, Saffire Corporation', 'Real-time strategy', '<p>StarCraft adalah sebuah permainan strategi dengan waktu nyata yang dibuat oleh Blizzard Entertainment dan merupakan produk pertama dari serial StarCraft. Permainan ini dirilis untuk Microsoft Windows pada tahun 1998. Untuk versi Mac OS permainan dirilis pada tahun 1999 dan untuk Nintendo 64 dirilis pada tahun 2000.</p>\r\n<p>Cerita utamanya tentang perang antara tiga spesies galaksi, yaitu Terran, yang beradaptasi dan berpindah-pindah, keturunan dari manusia yang terbuang dari Bumi. Kemudian Zerg, alien dengan penampilan seperti serangga, dan Protoss sebagai pejuang humanoid yang memiliki teknologi paling tinggi dibandingkan kedua kaum lainnya.</p>\r\n<p>Ini merupakan satu-satunya game tertua yang dipertandingkan di Asian Games 2018. Anda harus menghancurkan markas lawan dengan armada kapal perang antariksa.</p>', '2020-05-12 10:36:03', NULL, 3.5, 'assets/img/postingan-game/game_Starcraft.jpg', 3),
(36, 'Overwatch', 'Blizzard Entertainment, Iron Galaxy', 'First-person shooter', '<p>Overwatch adalah penembak orang pertama multiplayer berbasis tim yang dikembangkan dan diterbitkan oleh Blizzard Entertainment. Digambarkan sebagai \"pahlawan penembak\", Overwatch menetapkan pemain menjadi dua tim yang terdiri dari enam, dengan masing-masing pemain memilih dari daftar lebih dari 30 karakter, yang dikenal sebagai \"pahlawan\", masing-masing dengan gaya permainan yang unik yang dibagi menjadi tiga peran umum yang sesuai dengan tujuan mereka. Pemain dalam tim bekerja bersama untuk mengamankan dan mempertahankan titik kontrol pada peta atau mengawal muatan di seluruh peta dalam waktu terbatas. Pemain mendapatkan hadiah kosmetik yang tidak memengaruhi gameplay, seperti skin karakter dan pose kemenangan, saat mereka memainkan game. Game ini awalnya diluncurkan dengan hanya permainan biasa, tetapi mode peringkat kompetitif, berbagai mode permainan \'arcade\', dan browser server yang dapat disesuaikan pemain ditambahkan setelah rilis. Selain itu, Blizzard telah menambahkan karakter baru, peta, dan mode permainan pasca-rilis, semuanya gratis, dengan satu-satunya biaya tambahan untuk pemain yang menjadi kotak jarahan opsional untuk mendapatkan barang-barang kosmetik. Ini dirilis untuk PlayStation 4, Xbox One, dan Windows pada Mei 2016, dan Nintendo Switch pada Oktober 2019.</p>', '2020-05-12 10:39:58', NULL, 4, 'assets/img/postingan-game/game_Overwatch.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `game_news`
--

CREATE TABLE `game_news` (
  `id_game_news` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT current_timestamp(),
  `tanggal_edit` timestamp NULL DEFAULT NULL,
  `foto` varchar(200) NOT NULL,
  `id_game` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_news`
--

INSERT INTO `game_news` (`id_game_news`, `judul`, `deskripsi`, `tanggal_masuk`, `tanggal_edit`, `foto`, `id_game`, `id_admin`) VALUES
(15, 'Potensi Fortnite Jadi Game Esport Besar', '<p style=\"text-align: justify;\">Fortnite Battle Royale adalah game yang dirilis pada September 2017 lalu. Dan, meskipun baru seumur jagung, nampaknya game ini sudah memiliki pasar tersendiri.<br /><br />Walaupun pada waktu itu ia hadir ditengah ramainya orang bermain PUBG, namun fans yang loyal membuat game ini tetap ramai dimainkan.</p>\r\n<p style=\"text-align: justify;\">Dengan melihat pemain yang sangat banyak, apakah game ini nantinya akan menjadi salah satu game esport sukses ? Mari kita bahas!</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<h2>Hadiah Turnamen Yang Cukup Besar</h2>\r\n<p>Hanya dalam 136 turnamen, Fortnite telah mengumpulkan lebih dari US$18,8 juta dalam total prizepool-nya. Bandingkan saja dengan game segenre nya yaitu PUBG yang baru mengumpulkan US$7 juta.</p>\r\n<p>Bahkan beberapa tim telah menaruh minatnya di game besutan Epic Games tersebut. Meskipun <em>genre Battle Royale</em> sempat diragukan untuk masuk ke esports. Sepertinya Fortnite menjadi salah satu alasan kesuksesan <em>genre</em> tersebut.</p>\r\n<p>Beberapa tim esports terkenal bahkan lebih memilih membentuk divisi <em>Fortnite</em> dibandingkan <em>PUBG</em> yang lebih dahulu rilis. Sebagai contoh tim Virtus.pro yang membawa 4 pemain ke timnya tanpa memiliki divisi <em>PUBG.</em></p>\r\n<p>&nbsp;</p>\r\n<h2>Game Paling Banyak Ditonton di Twitch pada Tahun 2018</h2>\r\n<p>Rupanya kehadiran ini bukan tanpa alasan sebab pemain <em>Fortnite</em> tidak hanya menghasilkan uang besar dari turnamen. Karena mereka juga membangun daya tarik massa di <em>Twitch</em> untuk popularitasnya.</p>\r\n<p>Twitch <em>streamer</em> dengan pelanggan terbanyak pada tahun 2018 sebagian besar adalah pemain <em>Fortnite.</em></p>\r\n<p>Yang pertama tentu kita tahu Ninja menjadi pemain yang paling terkenal. Teapi pemain <em>Fortnite</em> lainnya seperti Tfue, Cloak, dan TSM Myth juga menjadi sosok yang diperhitungkan untuk permainan ini.</p>\r\n<p>&nbsp;</p>\r\n<h2>Turnamen Terbuka Untuk Semua Orang</h2>\r\n<p>Salah satu daya tarik utama dari esports <em>Fortnite</em> ini adalah kita tidak perlu bergabung dengan tim besar untuk ikut turnamen. Bahkan pemain di rumah bisa menang dan mendapatkan perhatian khalayak.</p>\r\n<p>The Fortnite World Cup 2019 juga akan memungkinkan siapa pun bermain di rumah untuk mencoba dan lolos dalam babak kualifikasinya.</p>\r\n<p>Pemain rumahan bisa berubah menjadi juara esports dalam beberapa bulan jika mereka memiliki keterampilan. Apalagi dengan&nbsp;<em>gameplay</em> unik yang dimiliki oleh game ini, tentu rasanya semua orang yang &lsquo;jago&rsquo; memiliki asa juara.</p>\r\n<p>&nbsp;</p>\r\n<p>Ada banyak game esports mendatang yang bisa membuat persaingan besar di tahun 2019, seperti <em>PUBG</em> dan <em>Super Smash Bros Ultimate</em>.</p>\r\n<p>Meskipun demikian, nampaknya harapan&nbsp;<em>Fortnite</em> untuk menjadi game esport besar dapat saja terwujud apabila mereka malakukan pembenahan di berbagai aspek.</p>\r\n<p>Salah satunya adalah dengan pendekatan turnamen terhadap negara-negara yang pemain&nbsp;<em>Fornite</em> nya belum begitu populer seperti Indonesia. Bukan tidak mungkin, Fortnite mampu mengubah wajah esports kembali berwarna.</p>\r\n<p>Di Indonesia sendiri beberapa tim sudah memiliki divisi Fortnite, antara lain EVOS Esports, WAW Esports, Alter Ego, Team Capcorn dan masih banyak lagi.</p>\r\n<p>Ambisi juara juga tidak hanya berhenti sampai situ dengan maraknya tim <em>Fortnite</em> yang terus bermunculan. Dengan animo penonton yang tinggi, bukan tidak mungkin Indonesia jadi pasar yang cocok, atau mungkin dapat menggeser dominasi <em>PUBG.</em></p>\r\n<p>&nbsp;</p>', '2020-05-12 10:49:34', NULL, 'assets/img/postingan-berita-game/berita_game_Potensi_Fortnite_Jadi_Game_Esport_Besar.jpg', 32, 3),
(16, 'Pendaftaran Seleksi Timnas Pro Evolution Soccer Telah Dimulai', '<p>Salah satu game yang akan dipertandingkan di Cabang Esports adalah game sepakbola PES atau Pro Evolution Soccer dari Konami. Pendaftaran untuk seleksi menjadi atlit esports mewakili Indonesia telah dimulai. Para Gamers PES bisa mendaftar di : bit.ly/LigaPES<br /><br /><br />FORMAT KOMPETISI: <br /><br />Format kualifikasi PES yang digunakan pada AG2018 adalah FORMAT TIM yang berisikan 2 (DUA) orang pemain dengan sistem BEST OF 3 (BO3), dimana: <br /><br />Match 1: 1v1 (Individu) <br /><br />Match 2: 2v2 (CO-OP) <br /><br />Match 3: 1v1 (Individu) <br /><br />Jika 1 Tim berhasil memenangkan 2 Match sekaligus, maka OTOMATIS Tim tersebut tidak perlu memainkan match ke-3 dan LOLOS ke round berikutnya. <br /><br />Klub yang bisa digunakan hanya klub yang berlisensi, pilihan klub akan diumumkan kemudian. <br /><br />Kedua Tim yang bertanding TIDAK BOLEH menggunakan klub yang sama, jika kedua tim memilih klub yang sama, untuk menentukan siapa yang menggunakan klub tersebut akan dilakukan lempar koin. <br /><br />Dalam satu round yang sama, Setiap Tim TIDAK BOLEH menggunakan klub yang sama sebanyak dua kali. Jadi jika match ke-1 Tim A sudah menggunakan FC Barcelona, maka di match ke-2 Tim A harus menggunakan klub selain FC Barcelona (misal: PSG), jika hasil setelah dua match kedua tim sama-sama meraih kemenangan 1x, maka di match ke-3 Tim A harus menggunakan klub selain FCB dan PSG</p>', '2020-05-12 10:55:04', '2020-05-11 23:02:19', 'assets/img/postingan-berita-game/berita_game_Pendaftaran_Seleksi_Timnas_Pro_Evolution_Soccer_Telah_Dimulai.jpg', 33, 3),
(17, 'Indonesia Jadi Tuan Rumah Turnamen Hearthstone Master Tour di Tahun 2020', '<p>AKG Games selaku publisher game-game milik Blizzard Entertainment di Indonesia baru saja mengumumkan jika Indonesia akan menjadi tuan rumah turnamen Hearthstone Master Tour ke-dua di tahun 2020. Turnamen yang akan berlangsung pada tanggal 20 hingga 22 Maret ini akan digelar di Mulia Resort &amp; Villas, Bali.<br /><br />Tidak tanggung-tanggung, turnamen resmi Hearthstone ini akan menghadirkan 300 pemain Hearthstone dari berbagai negara untuk bertanding ke Pulau Dewata. Mereka semua akan bertanding untuk memperebutkan total hadiah sebesar $500.000 atau setara dengan Rp7 Miliar.</p>\r\n<p>Kualifikasi untuk Masters Tour Bali sendiri mulai dibuka pada tanggal 13 Desember 2019 hingga 27 Januari 2020. Pemain dapat mendaftarkan diri untuk mengikuti Masters Qualifiers hingga dua minggu sebelum dimulai melalui situs Battlefy</p>', '2020-05-12 10:58:49', NULL, 'assets/img/postingan-berita-game/berita_game_Indonesia_Jadi_Tuan_Rumah_Turnamen_Hearthstone_Master_Tour_di_Tahun_2020.jpg', 34, 3),
(18, 'Demi Emas SEA Games, Timnas StarCraft 2 Boot Camp di Korsel!', '<p>Tim StarCraft 2 Indonesia yang akan berlaga di cabang esports SEA Games 2019 mendatang mendapatkan angin segar. AKG Games yang merupakan partner eksklusif Blizzard Entertainment di Indonesia akan memberangkatkan dua perwakilan, yakni Emmanuel &ldquo;Quantel&rdquo; Enrique dan Dani Bondan &ldquo;Deruziel&rdquo; Lukman untuk bootcamp di Korea Selatan, 18 - 24 November 2019. Keduanya akan dilatih langsung oleh Jake &ldquo;NoRegreT&rdquo; Umpleby, pelatih yang kerap melahirkan pemain-pemain profesional di Korea Selatan.<br /><br />Felix Huray selaku General Manager AKG Games mengatakan, &ldquo;Diberangkatkannya dua atlet StarCraft Indonesia ini merupakan bentuk dukungan kami terhadap atlet esports Indonesia. Alasan pemilihan Korea Selatan sebagai tempat boot camp karena di sana adalah tempat terbaik untuk meningkatkan kemampuan kedua atlet tersebut. Sebagai catatan, dominasi Korea Selatan bisa terlihat dengan merebut 8 dari 9 gelar kejuaraan dunia StarCraft 2.&rdquo;<br /><br />Tim StarCraft 2 Indonesia yang akan berlaga di cabang esports SEA Games 2019 mendatang mendapatkan angin segar. AKG Games yang merupakan partner eksklusif Blizzard Entertainment di Indonesia akan memberangkatkan dua perwakilan, yakni Emmanuel &ldquo;Quantel&rdquo; Enrique dan Dani Bondan &ldquo;Deruziel&rdquo; Lukman untuk bootcamp di Korea Selatan, 18 - 24 November 2019. Keduanya akan dilatih langsung oleh Jake &ldquo;NoRegreT&rdquo; Umpleby, pelatih yang kerap melahirkan pemain-pemain profesional di Korea Selatan.<br /><br />Felix Huray selaku General Manager AKG Games mengatakan, &ldquo;Diberangkatkannya dua atlet StarCraft Indonesia ini merupakan bentuk dukungan kami terhadap atlet esports Indonesia. Alasan pemilihan Korea Selatan sebagai tempat boot camp karena di sana adalah tempat terbaik untuk meningkatkan kemampuan kedua atlet tersebut. Sebagai catatan, dominasi Korea Selatan bisa terlihat dengan merebut 8 dari 9 gelar kejuaraan dunia StarCraft 2.&rdquo;<br /><br />Selama pelatihan, Umpleby akan lebih menekankan pada membangun mental dan menyiapkan kedua atlet tersebut untuk SEA Games 2019 dengan mengasah kekuatan serta memperbaiki kelemahan mereka.<br /><br />Boot camp StarCraft 2 di Korea Selatan ini merupakan persembahan Indofood, dengan dukungan dari Komite Olimpiade Indonesia dan Indonesia Esports Association (IESPA). Selama seminggu, kedua atlet esports nasional ini akan ditempa pelatihan ala Korea Selatan yang selama ini sering disebut sebagai &ldquo;negeri esports&rdquo;. Sejumlah lawan tangguh juga telah dipersiapkan untuk beruji coba sekaligus menempa Emmanuel dan Dani selama di negara ginseng tersebut.</p>', '2020-05-12 11:01:43', NULL, 'assets/img/postingan-berita-game/berita_game_Demi_Emas_SEA_Games,_Timnas_StarCraft_2_Boot_Camp_di_Korsel!.jpg', 35, 3),
(19, 'Menutup Tahun, INDOESPORTS League Hadirkan Kompetisi Overwatch', '<p>Setelah sukses dengan CS:GO, INDOESPORTS League (IES League) kembali hadir dengan game yang berbeda. Sebelumnya, IES League memilih CS:GO sebagai game yang dipertandingkan. Walau nyawa esports CS:GO Indonesia kerap dianggap sudah di ujung tanduk, namun nyatanya komunitas masih antusias dengan kehadiran kompetisi, terlihat dari 4 seri kompetisi IES League yang menghasilkan banyak pendaftar.<br /><br />Mencoba mengembangkan sayap, kini IES League mempertandingkan Overwatch, team-based multiplayer first-person shooter besutan Blizzard Entertainment. Game ini sempat jadi buah bibir di Indonesia ketika pertama rilis tahun 2016 lalu. Terlepas dari harga Overwatch yang cukup mahal, komunitas tetap antusias terhadap berbagai gelaran kompetisi skala kecil yang diadakan oleh berbagai pihak.<br /><br />Kini mencoba kembali membangun tren tersebut, IES League menjalin kerja sama dengan AKG Games yang merupakan official partner Blizzard Entertainment untuk mewadahi kegiatan komunitas Overwatch di Indonesia. Diadakan pada bulan Desember, gelaran IES League Overwatch menjadi gelaran yang menutup tahun 2019 ini.<br /><br />Memperebutkan total hadiah sebesar Rp10 juta, IES League Overwatch terbuka untuk semua kalangan pemain. Jadi, siapapun Anda baik seorang pemain berpengalaman, pemain yang mencoba menjajaki karir di dunia Overwatch, pecinta Overwatch yang suka berkompetisi, atau mungkin hanya sekadar iseng ingin menjajal kemampuan bermain, Anda bisa segera mendaftarkan diri ke dalam turnamen ini.<br /><br />Pendaftaran IES League Overwatch dibuka mulai tanggal 4 sampai 9 Desember 2019 mendatang. Bagi Anda yang ingin mendaftar, Anda dapat langsung menuju ke laman pendaftaran resmi milik INDOESPORTS. Pertandingan IES League akan diselenggarakan mulai tanggal 10 sampai 13 Desember 2019 mendatang. Pertandingan dimulai pada pukul 19:00 WIB secara online di berbagai iCafe jaringan DA Arena seluruh Indonesia, dan akan ditayangkan pada channel Youtube INDOESPORTS.<br /><br />INDOESPORTS League sendiri sudah dimulai sejak bulan Mei 2019 lalu. Sepanjang periode tersebut, kolaborasi antara INDOESPORTS dengan LG UltraGear sudah mempertandingkan beberapa game lewat gelaran IES League. Beberapa contohnya seperti Point Blank, CS:GO, PUBG, Dota 2, dan CrossFire. Overwatch meruapakn salah satu pendatang terbaru dalam jajaran game yang dipertandingkan dalam IES League.</p>', '2020-05-12 11:04:42', NULL, 'assets/img/postingan-berita-game/berita_game_Menutup_Tahun,_INDOESPORTS_League_Hadirkan_Kompetisi_Overwatch.jpg', 36, 3),
(20, 'Melihat Potensi Perkembangan League of Legends Wild Rift di Indonesia', '<p>Memasuki tahun ke-10, Riot Games mulai melakukan ekspansi terhadap dunia Runeterra. Sepuluh tahun belakangan, Riot Games fokus membesarkan satu game saja, yaitu League of Legends. Lewat acara Riot Pls: 10th Anniversary Edition mereka mengumumkan jajaran game terbarunya. Ada beberapa game yang mereka umumkan, ada Teamfight Tactics (auto-battler berisikan Champion League of Legends) versi mobile, game kartu bernama Legends of Runeterra, proyek game fighting League of Legends, dokumenter, sampai serial televisi.<br /><br />Namun dari semua pengumuman tersebut, satu yang cukup ramai diperbincangkan adalah League of Legends Wild Rift (selanjutnya disebut Wild Rift), versi mobile dari League of Legends yang sudah cukup lama ditunggu-tunggu. Mengingat eksistensi League of Legends tanah air padam sejak tahun tahun 2018 lalu, Wild Rift diprediksi akan menjadi fenomena baru di pasar lokal. Mengapa demikian? Organisasi esports seperti GGWP.ID mengambil langkah berani dan sudah mempersiapkan divisi League of Legends: Wild Rift. BOOM Esports juga menunjukkan gelagat akan membuat divisi League of Legends: Wild Rift.<br /><br />Melihat hingar-bingar ekosistem tanah air terhadap Wild Rift, pantas rasanya jika kita bertanya-tanya. Apakah Wild Rift benar-benar akan sukses di Indonesia<br /><br />Sebelum mulai membahasnya, mari kita mundur sedikit dan melihat sepak terjang League of Legends di ekosistem esports Indonesia terlebih dahulu.</p>\r\n<p>&nbsp;</p>\r\n<h3>Sepak terjang League of Legends di Indonesia</h3>\r\n<p>Setelah dirilis secara global pada tanggal 27 Oktober 2009, League of Legends (LoL) hanya butuh tiga tahun untuk menjadi game paling digemari Amerika dan Eropa. Dikutip artikel Forbes rilisan 11 Juli 2012, League of Legends sudah dimainkan selama total 1,3 miliar jam, sejak dari tahun 2009 sampai tahu 2012.<br /><br />Melihat kesuksesan tersebut, Garena Indonesia memutuskan mengasuh League of Legends dan merilis versi lokal pada 25 Juli 2013. Selain menghadirkan client berbahasa Indonesia dan konektivitas lokal, esports juga jadi strategi lain yang dilakukan Garena Indonesia demi membuat League of Legends mengakar di antara para gamers.<br /><br />Mari kita berkenalan dengan narasumber kami yang pertama, Pratama &ldquo;Yota&rdquo; Indraputra. Sempat menjabat sebagai pengembang esports di Garena Indonesia, ia memberikan cerita di balik dapur publisher asal Singapura tersebut.<br /><br />&ldquo;League of Legends membuka server Indonesia tahun 2013. Saat itu animo di Indonesia cukup baik, meski tidak bisa dibilang booming. Mayoritas pemain yang menerima inisiatif ini memang mereka yang sudah main League di server luar. Namun karena image Dota lebih melekat, diperparah dengan perkara drama Pendragon, ada juga sedikit reaksi negatif.&rdquo;<br /><br /></p>\r\n<h3>Menghadapi persaingan ketat</h3>\r\n<p>Hybrid, mengutip tulisan milik Henri Brouard analis dari NetEase Games, sempat membahas alasan Free Fire sukses di Asia Tenggara. Ia mengatakan setidaknya ada 4 faktor penting, pertama bisa dimainkan pada smartphonelow-end, kedua punya gameplay super kasual, ketiga monetisasi dengan sedikit elemen RPG, dan keempat merangkul komunitas dengan konten-konten bernuansa lokal.<br /><br />Sejauh ini, empat faktor kunci tersebut bisa jadi adalah alasan Mobile Legends: Bang-bang (MLBB) sukses di Indonesia. Menurut pengamatan saya, mereka setidaknya memenuhi 3 dari 4 faktor, yaitu: bisa dimainkan pada smartphone low-end, gameplay paling kasual dibanding MOBA lainnya, dan merangkul komunitas lokal lewat event, bahkan turut menghadirkan Gatot Kaca sebagai hero bernuansa lokal Indonesia.<br /><br />Tetapi, apakah lantas 4 faktor itu bisa sekonyong-konyong membuat game sukses di pasar Indonesia? Saya menanyakan hal ini kepada beberapa sosok di industri game Indonesia. Selain Yota, saya juga menjadikan Senior Editor Hybrid, Yabes Elia sebagai narasumber dalam pembahasan ini.</p>\r\n<p>&nbsp;</p>\r\n<h2>Peran ekosistem lokal</h2>\r\n<p>Jika anggaplah Wild Rift sudah memenuhi faktor internal, dan punya keinginan memenangkan market esports MOBA di Indonesia, lantas apa yang harus mereka lakukan? Soal mencari momentum bisa jadi hal pertama yang dilakukan.<br /><br />Sejauh ini antusiasme komunitas dan ekosistem esports Indonesia terhadap Wild Rift memang terbilang cukup baik. Secara global, penerimaan pasar terhadap MOBA di perangkat bergerak juga semakin positif lewat Arena of Valor (yang juga dikembangkan oleh Tencent, investor Riot Games). Untuk konteks lokal, saya sudah sempat mendengar bahwa beberapa pemain profesional pada genre MOBA terdahulu tertarik main Wild Rift, dan punya kemungkinan akan pindah jika Wild Rift punya scene kompetisi yang sehat.<br /><br />&ldquo;Benar seperti yang kamu katakan, mantan pemain dari berbagai MOBA terdahulu punya ketertarikan untuk mencoba Wild Rift. Para organisasi esports seharusnya sudah sama-sama tahu siapa pemain-pemain ini, dan mereka (para tim) sudah bisa menakar dengan kasar, pemain mana yang punya kemungkinan untuk sukses di Wild Rift nanti. Sejauh ini antusiasmenya memang tinggi, terutama dari sisi komunitas League terdahulu.&rdquo; Edwin menceritakan antusiasme pasar terhadap Wild Rift.</p>', '2020-05-12 11:11:03', NULL, 'assets/img/postingan-berita-game/berita_game_Melihat_Potensi_Perkembangan_League_of_Legends_Wild_Rift_di_Indonesia.jpg', 29, 5),
(21, '\'Bencana\' Warnai Hari Pertama Clash Royale WCG 2019', '<p>Clash Royale League (CRL) spring season final tahun ini diadakan bersamaan dalam World Cyber Games (WCG). Tiga region, Cina, Asia dan Barat masing-masing mengirimkan tiga wakilnya untuk bertanding dalam CRL final. Berlangsung sejak tanggal 17 Juli kemarin, rencananya babak group stage CRL akan berlangsung hingga tanggal 19 Juli dan dilanjutkan dengan finalnya di tanggal 20 Juli 2019. <br /><br />Sayangnya, hari pertama berlangsungnya CRL mengalami cukup banyak masalah dan protes akibat dari koneksi yang kacau serta kelalaian panitia. <br /><br />Pertandingan pertama terkena delay hingga enam jam dari waktu yang seharusnya. Selama delay ini berlangsung, Twitter dari Clash Royale Esports tampak selalu mengabarkan bahwa turnamen akan segera dimulai saat masalah koneksi internet selesai diatasi. <br /><br />Tidak hanya itu, saat panitia melakukan tes wifi, admin secara tidak sengaja membocorkan deck yang digunakan SK Gaming kepada lawannya dengan menggunakannya dalam percobaan. Tidak sedikit pro player yang kecewa atas&nbsp; kejadian ini, bahkan salah satu pemain dari Team Liquid menyatakan dirinya lebih memilih untuk pulang. <br /><br />Terakhir, dikarenakan delay yang terlalu lama, salah satu match yang diantisipasi yakni 3rd seed CRL West, Immortals melawan pemenang CRL Asia, PONOS tidak dapat ditayangkan secara online. <br /><br />Meskipun berbagai masalah ini menyebabkan pertandingan dimulai terlambat, namun pada akhirnya seluruh match dapat selesai dengan baik. CRL West berhasil menang tipis dari Asia dengan skor 13-12, Team Liquid dan SK Gaming masing-masing berhasil menang sementara Immortals harus imbang melawan PONOS.</p>', '2020-05-12 11:14:11', NULL, 'assets/img/postingan-berita-game/berita_game_Bencana_Warnai_Hari_Pertama_Clash_Royale_WCG_2019.jpg', 30, 5),
(22, 'Apex Legends Mulai Dilirik Tim eSport ', '<p>Tak bisa dimungkiri bahwa game yang saat ini popularitasnya tengah melejit adalah Apex Legends. Berbagai tim eSport pun mulai melirik game ini.<br /><br />Dalam beberapa minggu terakhir, sejumlah tim esport populer mulai membangun tim untuk game besutan Respawn ini. Tim-tim tersebut antara lain adalah TSM, 100 Thieves, Gen.G, dan NRG, yang semuanya sudah membentuk tim Apex Legends, ataupun secara individu.<br /><br />Meskipun sebenarnya pun hal tersebut dilakukan oleh tim lain, meski tidak secara keseluruhan. Misalnya saja tim Apex milik Gen.G yang dua orang tim Apexnya berasal dari tim Overwatch League, dan seorang dari Team Fortress 2.<br /><br />Respawn, yang merupakan developer Apex, pun sudah mengungkap rencananya untuk mendukung aktivitas e-sports ini, meski belum ada informasi spesifik mengenai dukungan tersebut. Pasalnya sampai saat ini belum ada indikasi mereka akan menggelontorkan uang untuk kegiatan semacam turnamen di Apex Legends.<br /><br />Ditambah lagi, secara struktur, Apex Legends berbeda dengan game battle royale lain seperti PUBG dan Fortnite yang saat ini sudah mempunyai struktur turnamen ataupun liga profesional.<br /><br />Meski begitu, tetap saja popularitas Apex Legends saat ini sangatlah tinggi. Dalam sebulan pertama sejak diluncurkan, jumlah pendaftarnya mencapai 50 juta pemain. Game ini pun saat ini secara regular mendominasi daftar game terpopuler di Twitch.</p>', '2020-05-12 11:22:38', NULL, 'assets/img/postingan-berita-game/berita_game_Apex_Legends_Mulai_Dilirik_Tim_eSport_.jpg', 31, 5),
(23, '2 Organisasi Esports Indonesia Bubarkan Divisi CS:GO, Bagaimana Peluangnya di 2019?', '<p>Game first-person shooter terbilang punya kelebihannya tersendiri untuk jadi esports. Mengapa? Salah satunya, karena jenis game ini yang bisa dikatakan mudah untuk dipahami bahkan oleh orang awam sekalipun. Hal tersebut mungkin bisa dibilang jadi alasan kenapa esports CS:GO bisa bertahan lama menjadi tayangan esports.<br /><br />Sayangnya, di Indonesia, hal ini mungkin tidak berlaku. Setelah Team Capcorn bubarkan divisi CS:GO mereka, belakangan The Prime juga turut melepas divisi esports FPS tertua ini.<br /><br />Kehadiran IESPL yang membawa CS:GO sebagai salah satu cabang kompetisi, sayangnya kurang berhasil kembali meningkatkan popularitas esports ini di Indonesia. Saat pertama kali CS:GO diumumkan sebagai salah satu cabang yang diperlombakan di IESPL Battle of Friday, banyak tim memang beramai-ramai membuat tim CS:GO baru. Namun, melihat perkembangan esports CS:GO di Indonesia sendiri, beberapa pemerhatinya pun memang memiliki kekhawatiran bahwa hal tersebut hanya tren sesaat &ndash; yang akan dibubarkan selepas liganya selesai.<br /><br />Menariknya, CS:GO sendiri sebenarnya masih cukup ramai di tingkatan internasional. Berhubung kompetisi IEM Katowice Major sedang masuk dalam fase Legends Stage serta jelang major CS:GO selanjutnya yaitu StarLadder Berlin Major, mari kita telisik kabar esports CS:GO dengan melihat jumlah penonton Major sebelumnya.<br /><br />Menurut catatan Esports Charts ternyata FaceIT Major: London 2018 sudah ditonton 57.903.514 kali, dengan jumlah penonton terbanyak pada saat bersamaan adalah 1.084.126 penonton. Namun mengutip data rangkuman esports CSGO di tahun 2018, FaceIT Major: London ternyata bukan merupakan Major tersukses sepanjang tahun 2018.<br /><br />Tahta tersebut dipegang oleh ELEAGUE Boston Major 2018, yang sudah ditonton 64.891.532 kali, dengan jumlah penonton terbanyak pada saat bersamaan adalah 1.847.542 penonton. <br /><br />Ketika itu Hansel &ldquo;BnTeT&rdquo; Ferdinand dan Kevin &ldquo;Xccurate&rdquo; Sutanto berhasil menjadi orang Indonesia pertama yang sampai ke fase Major. Sayang Team Tyloo gagal lolos ke fase berikutnya dan harus berhenti di peringkat 12. Kompetisi ini pada akhirnya dimenangkan oleh salah satu tim yang memang terkenal kuat di jagat kompetitif CS:GO, Astralis.<br /><br />Dari data-data tersebut ada satu hal yang bisa kita simpulkan, yaitu industri esports CS:GO masih cukup menjanjikan secara global. Lalu bagaimana untuk di Indonesia? Jawabannya sudah bisa Anda tebak, yaitu kenyataan pahit bahwa esports PC, terutama CS:GO yang bisa dibilang sedang dalam keadaan setengah mati.<br /><br />Menariknya, dalam perbincangan kami bersama perwakilan ESL Asia Pacific, mereka mengatakan akan menggarap CS:GO di Indonesia di waktu mendatang. ESL sendiri memang boleh dibilang sebagai salah satu penggiat esports CS:GO yang paling aktif di dunia. Meski begitu, ada sebuah kekhawatiran bahwa ESL akan mengurungkan minat tersebut di Indonesia mengingat CS:GO penuh dengan &lsquo;kekerasan&rsquo; soal tembak menembak dan senjata api.<br /><br />Belum lagi, ada juga kekhawatiran bahwa game ini bisa jadi tak mampu mendatangkan sponsor karena melihat kondisinya sekarang. Satu hal yang pasti, jika berbicara soal angka, sebenarnya pemain CS:GO di Indonesia juga tidak bisa dibilang sedikit. Namun demikian, jumlah penonton yang mau menonton pertandingan lokal (streaming) hingga datang ke venue kompetisi memang mungkin perlu dikaji ulang.<br /><br />Akhirnya, apakah akan lebih banyak lagi organisasi esports Indonesia yang akan membubarkan divisi CS:GO mereka? Apakah ESL jadi menggarap CS:GO di waktu mendatang jika melihat kenyataan tadi?</p>', '2020-05-12 11:27:40', '2020-05-11 23:28:57', 'assets/img/postingan-berita-game/berita_game_2_Organisasi_Esports_Indonesia_Bubarkan_Divisi_CS.jpg', 22, 5),
(24, 'PUBG Mobile Pro League 2020, Adu Hebat Para Profesional di Asia Tenggara', '<p style=\"text-align: justify;\">PUBG Mobile kembali mengadakan turnamen nasional paling terkemuka berjudul PUBG Mobile Pro League 2020 (PMPL 2020) di Asia Tenggara. Event ini akan menjadi kunci bagi tim profesional melaju ke PUBG Mobile World League 2020.<br /><br />PMPL SEA 2020 akan menjadi turnamen profesional nasional terbesar yang diadakan oleh PUBG Mobile di Asia Tenggara. PMPL SEA 2020 akan diadakan di negara-negara termasuk Indonesia, Thailand, Vietnam, Malaysia dan Singapura, liga akan dibagi menjadi musim semi dan musim gugur.<br /><br />Liga dibuka melalui tahap kualifikasi, total 24 tim akan bersaing untuk 16 tempat di final PUBG Mobile Pro League 2020. PUBG Mobile Pro League 2020 menyediakan total hadiah hingga 1.500.000 USD untuk diperebutkan para peserta di sepanjang tahun.<br /><br />Selain negara-negara Asia Tenggara yang disebutkan di atas, bagi tim-tim professional dari negara-negara Asia Tenggara lainnya yang ingin memiliki kesempatan untuk bersaing di tahap akhir Asia Tenggara dan maju ke PUBG Mobile World League 2020.<br /><br />Mereka dapat bergabung dengan kualifikasi PMCO. Akan ada 6 slot untuk seluruh wilayah Asia Tenggara untuk maju ke Liga Dunia Mobile PUBG. PMPL 2020 adalah bentuk komitmen PUBG Mobile untuk berkontribusi pada pengembangan Esports.<br /><br />\"PMPL 2020 adalah struktur E-sport baru untuk pemain untuk bergabung di panggung professional di tingkat negara. Semoga dengan PMPL 2020, PUBG Mobile dapat membuka lebih banyak peluang untuk para pemain menjadi pemain profesional dan memiliki karier yang menjanjikan di dunia Esports,\" kata Direktur Pemasaran PUBG Mobile untuk Asia Tenggara, Oliver Ye dalam rilis yang diterima wartawan.<br /><br />Beberapa persyaratan yang harus dipenuhi untuk dapat berpartisipasi dalam PMPL 2020 adalah usia minimum 16 tahun, harus memiliki peringkat platinum atau lebih, serta persyaratan lain yang dapat dilihat di https://pubgmproleague.id/register.<br /><br />Dengan jangka waktu hampir dua tahun, dan 50 juta pengguna harian aktif, serta 600 juta unduhan; PUBG Mobile berkeinginan untuk terus memberikan pengalaman terbaik bagi para pemain. Selain itu mereka ingin memberikan peluang bagi para pemain yang ingin memasuki dunia Esports dan menjadi pemain profesional.</p>', '2020-05-12 16:49:20', NULL, 'assets/img/postingan-berita-game/berita_game_PUBG_Mobile_Pro_League_2020,_Adu_Hebat_Para_Profesional_di_Asia_Tenggara.jpg', 23, 5),
(25, 'Kompetisi Mobile Legend: Bang Bang (MLBB)', '<p>kompetisi Mobile Legend: Bang Bang (MLBB) pada 1-5 Juli 2020 mendatang. Meski begitu, lokasi penyelenggaran akan diumumkan dalam waktu dekat.<br /><br />Bambang selaku CEO mengatakan tim Mobile Legend terbaik dipastikan bakal bersaing untuk memperebutkan tolah hadiah sebesar 5.000.000<br /><br />Sebelum acara puncak akan lebih dulu diadakan sejumlah kualifikasi terbuka yang berlangsung di beberapa Kota.<br /><br />&ldquo;Kami tidak hanya memberi kesempatan kepada siapa pun untuk bersaing dengan tim Mobile Legends terbaik, tetapi juga menjalankan seri kompetisi kelas dunia yang bakal melibatkan dan memukau penggemar esports&rdquo;.</p>', '2020-05-12 16:54:59', NULL, 'assets/img/postingan-berita-game/berita_game_Kompetisi_Mobile_Legend.jpg', 24, 5),
(26, 'Ini Rencana Tencent untuk Kembangkan AOV di eSport Indonesia ', '<p style=\"text-align: justify;\">Arena of Valor (AOV) yang didirikan oleh Tencent terpilih untuk menjadi salah satu game yang didemonstrasikan dalam ajang Asian Games 2018. Tencent pun berkomitmen untuk terus mendukung perkembangan satu-satunya game mobile bergenre Multiplayer Online Battle Arena (MOBA) ini.<br /><br />\"Kami akan bekerja dengan semua partner Tencent demi membangun sistem kompetisi yang komprehensif, melahirkan banyak pemain berbakat, dan membentuk lingkungan yang mandiri untuk klub-klub profesional di seluruh Indonesia,\" ujar AOV Global eSports Director, Icy Liu dalam konferensi pers yang digelar di The Ritz-Carlton, Jakarta pada Senin (27/8/2018).<br /><br />Ia juga menjelaskan dukungan dari Tencent untuk AOV Indonesia diberikan dengan menghadirkan berbagai program, antara lain The First AOV Four Country League, AOV eSports Academy, Caster Hunt, Professional Training Environment, dam Cross Country Communication.<br /><br /><br />Tak hanya itu, Tencent pun rencananya akan menginvestasikan setidaknya USD 500 ribu atau setara Rp 7,3 miliar setiap tahun untuk menjamin para pemain dan pelatih dari AOV Indonesia.<br /><br />Tencent juga berencana untuk menghadirkan turnamen AOV terbaru yakni AOV Star League Season 2. Bagi pemain yang berhasil menang, Tencent pun menyediakan hadiah yang jauh lebih besar.<br /><br />\"Hadiah untuk AOV Star League Season 2 akan menjadi hadiah terbesar untuk kompetisi eSports di Indonesia. Hadiahnya sebesar Rp 2,6 miliar,\" ujar Head of AOV Indonesia eSports, Edwin.<br /><br />Sementara itu, Tencent memutuskan untuk merilis AOV di Indonesia berdasarkan hasil riset dari PricewaterhouseCoopers. Riset tersebut menunjukkan Indonesia akan mengalahkan Jerman dan menjadi negara dengan ekonomi terbesar ke-5 di dunia pada 2030.<br /><br />Berdasarkan fakta tersebut, Head of AOV Marketing Director Fenfen You mengungkapkan keyakinan Tencent bahwa industri eSports di Indonesia bisa bangkit dan berkembang lebih pesat.<br /><br />\"Di antara lanskap global kami, Indonesia selalu menjadi pasar yang strategis bagi kami. Arena of Valor akan melakukan yang terbaik untuk mengeksplorasi masa depan eSports di Asia dan melangkah menuju sesuatu yang belum pernah orang lain lakukan sebelumnya. Indonesia adalah salah satu target negara bagi kami,\" ujarnya.</p>', '2020-05-12 16:59:32', NULL, 'assets/img/postingan-berita-game/berita_game_Ini_Rencana_Tencent_untuk_Kembangkan_AOV_di_eSport_Indonesia_.jpg', 25, 5),
(27, 'Kompetisi Esport Free Fire Indonesia Masters 2020 Spring', '<p style=\"text-align: justify;\">Kompetisi esports Trophy Free Fire Indonesia Masters (FFIM) 2020 Spring di Tennis Indoor Senayan, Jakarta, Minggu (15/3/2020). Trophy Free Fire Indonesia Masters (FFIM) 2020 Spring merupakan kompetisi esports tingkat nasional yang diadakan Garena untuk mencari tim perwakilan Indonesia ke turnamen tingkat internasional. Free Fire Indonesia Masters 2020 Spring merupakan turnamen di musim ketiga setelah Free Fire Shopee Indonesia Masters 2019 (Maret), dan Free Fire Shopee Indonesia Masters 2019 Season 2 (Oktober). Garena juga merilis Jota di server global, sehingga bisa diakses oleh seluruh pemain Free Fire di seluruh dunia dan dengan demikian menjadi salah satu sarana untuk memperkenalkan Indonesia di kancah dunia.</p>', '2020-05-12 17:01:25', NULL, 'assets/img/postingan-berita-game/berita_game_Kompetisi_Esport_Free_Fire_Indonesia_Masters_2020_Spring.jpg', 26, 5),
(28, 'Turnamen Point Blank - Clan War Mei 2020 ', '<p style=\"text-align: justify;\">Turnamen Point Blank - Clan War Mei 2020 dimulai tanggal 6 Mei 2020<br />Pendaftaran akan ditutup tanggal 30 April 2020<br /><br />Turnamen Point Blank - Clan War Mei 2020<br /><br />- Detail Turnamen :<br />Match Day : 6 - 7 Mei &amp; 13 - 14 Mei 2020, Jam 15.00 WIB - Selesai<br />Pendaftaran akan ditutup tanggal 30 April 2020<br />TM akan diumumkan oleh Panitia<br />Biaya pendaftaran GRATIS<br />Link pendaftaran : https://docs.google.com/forms/d/e/1FAIpQLScH0RPYr7_Jh6qoQ66BbRklVZJw-UH63N05gtnUaDM-Z52vCg/viewform<br />Venue : Online<br />Open 32 Slot<br />Single Elimination BO1 | Semi Finals BO3<br />Dilarang keras untuk mengganti Nickname saat Turnamen berlangsung<br />Mendaftar berarti menyetujui jadwal yang telah ditentukan dan tidak bisa protes<br /><br />- Hadiah :<br />Juara 1 : 120.000 PB Cash (5 Pemain &amp; 1 Cadangan) + Special Clan Name Card 30D + Clan Mark Effect 30D + 1 Unit Keyboard Mechanical Sades Dragon Wolf Cherry Mx 700<br />Juara 2 : 60.000 PB Cash (5 Pemain &amp; 1 Cadangan) + Special Clan Name Card 30D + Clan Mark Effect 15D + 1 Unit Headset sades WAND<br />Juara 3 : 30.000 PB Cash (5 Pemain &amp; 1 Cadangan) + Special Clan Name Card 30D + Clan Mark Effect 7D + 1 Unit Headset Sades Mpower Pink<br />*Hadiah FIX tidak berubah<br /><br />- Rules :<br />Peraturan bisa dilihat di : https://pointblank.id/news/view?idx=717&amp;page=1<br /><br />- Contact Person :<br />Official Fanpage : www.facebook.com/zepetto.game<br />Official Discord : discord.gg/pbzepetto<br />Official Website : www.pointblank.id</p>', '2020-05-12 17:04:01', NULL, 'assets/img/postingan-berita-game/berita_game_Turnamen_Point_Blank_-_Clan_War_Mei_2020_.jpg', 27, 5),
(29, 'Berambisi Lolos ke Final One Esports Dota 2', '<p style=\"text-align: justify;\">Wakil Indonesia, t1 berambisi untuk melaju ke pertandingan final ONE Esports Dota 2 Jakarta Invitational di Indonesia Convention Exhibition (ICE BSD), Tangerang Selatan pada 18-19 April 2020.<br /><br />Upaya yang dilakukan berdasarkan keterangan resmi dari ONE Esports yang diterima di Jakarta, Selasa, adalah melalui Kualifikasi Regional Jakarta di Mall Taman Anggrek Jakarta, 14-15 Maret dan salah satu tim tuan rumah yang berusaha mengejar tiket ke partai puncak adalah T1.<br /><br />Selain tim tuan rumah Indonesia, ada beberapa tim dari luar negeri yang berusaha mengejar tiket final ONE Esports Dota 2 Jakarta Invitational yaitu Tyrants Uprising (Singapura), dan Oracle Team (Malaysia). Mereka akan bergabung dengan tim undangan yaitu Boom Esports!<br /><br />\"Pemenang Kualifikasi Regional dari Asia Tenggara secara otomatis memenuhi syarat untuk mengikuti putaran final ONE Esports Dota 2 Jakarta Invitational, dimana mereka akan dapat bersaing dengan tim profesional Dota 2 terbaik dunia,\" demikian pernyataan resmi ONE Esports.<br /><br />Sebelumnya, pendaftaran kualifikasi terbuka turnamen ONE Esports Dota 2 Jakarta Invitational resmi dibuka mulai dari 29 Januari hingga 14 Februari.<br /><br />\"ONE Esports diciptakan untuk berbagi dan merayakan kisah-kisah tim dan pemain esports kelas dunia. Selain itu, juga untuk memberdayakan anggota komunitas agar bangkit pada kesempatan tersebut dan membuktikan bahwa mereka pantas mendapat kesempatan untuk bersaing di panggung dunia,\" ujar CEO ONE Esports Carlos Alimurung.<br /><br />Turnamen kali ini berbeda dengan gelaran sebelumnya, ONE Esports Dota 2 World Pro Invitational di Singapura beberapa waktu lalu hanya mengundang beberapa tim peserta tanpa harus melalui babak kualifikasi.</p>', '2020-05-12 17:09:23', NULL, 'assets/img/postingan-berita-game/berita_game_Berambisi_Lolos_ke_Final_One_Esports_Dota_2.jpg', 28, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `id_tim` int(11) NOT NULL,
  `nama_tim` varchar(30) NOT NULL,
  `nama_anggota_1` varchar(30) NOT NULL,
  `nama_anggota_2` varchar(30) NOT NULL,
  `nama_anggota_3` varchar(30) NOT NULL,
  `nama_anggota_4` varchar(30) NOT NULL,
  `nama_anggota_5` varchar(30) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` enum('pending','lunas') NOT NULL,
  `logo_tim` varchar(100) NOT NULL,
  `id_turnamen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`id_tim`, `nama_tim`, `nama_anggota_1`, `nama_anggota_2`, `nama_anggota_3`, `nama_anggota_4`, `nama_anggota_5`, `nohp`, `email`, `status`, `logo_tim`, `id_turnamen`) VALUES
(1, 'Nubi', 'Nova Permata', 'Langgeng Siregar', 'Jefri Haryanto', 'Harsana Rajasa', '', '081222222222', 'a@gmail.com', 'lunas', 'assets\\img\\turnamen-tim\\logo_tim_Nubi.jpg', 1),
(12, 'Bio Evolution', 'Abraham Alexi Pratama', 'Adinata Aileen Caesar', 'Adira Fairuz', 'Abrisam Reynand', '', '081234888888', 'bioE@gmail.com', 'lunas', 'assets/img/turnamen-tim/logo_tim_Bio_Evolution.jpg', 1),
(13, 'Break Edit', 'Abyan Nandana', 'Achazia Brigit Aharon', 'Achmad Adya Surya', 'Adam Albert Adrian', '', '084451236545', 'bEdit@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Break_Edit.jpg', 1),
(14, 'Aberrant Cockroaches', 'Adam Nurwahid', 'Abid Aqila Pranaja', 'Abinaya Alexi', 'Abqari Agam Agler', '', '087854122222', 'AbCro@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Aberrant_Cockroaches.jpg', 1),
(15, 'Izzy Team', 'Abraham Achilles', 'Azka Aldric', 'Aaron Blenda', 'Abdul Rahman Hafiz', '', '0855411111111', 'IzzyTeam@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Izzy_Team.jpg', 1),
(16, 'Playboy.inc', 'Abdullah Abid', 'Buana Aryanta Aryaguna', 'Cahyono Prama Prawira', 'Hoshiko Taoran Elfredo', 'Radhika Aditya', '087888888888', 'PINC@gmail.com', 'lunas', 'assets/img/turnamen-tim/logo_tim_Playboy.inc.jpg', 6),
(17, '11+', 'Wira Atmajaya', 'Zulzalal Malik Ibrahim', 'Theobald Kenzie', 'Winola Conary Arkwright', 'Rifqi Syafi Ardhani', '082255555555', 'sebelas@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_11+.jpg', 6),
(18, 'Perdata', 'Theo Qosiim', 'Penrod Alexander', 'Rifqi Cahya', 'Nicolas Adlay', '', '084455211111', 'perdata@gmail.com', 'lunas', 'assets/img/turnamen-tim/logo_tim_Perdata.jpg', 7),
(19, 'Like You', 'Pawana Layana Narda', 'Maleakhi Gomer', 'Nicholas Matius', 'Kerlap Semesta Paramartha', '', '087899999999', 'Likeyou@mail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Like_You.jpg', 8),
(20, 'Lost Myself', 'Maknar Kenward', 'Javas Barnes Aristo', 'Keola Lutfi Marva', 'Hope Avagail', '', '088945555555', 'myself@tgmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Lost_Myself.jpg', 9),
(21, 'Angry Animals', 'Jauzan Jaya Jazali', 'Gilang Galia Gamadi', 'Honesto Tristan Gaogi', 'Fathir Naim', 'Gibran Ahmad Ramadhan', '081254444444', 'aanimals@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Angry_Animals.jpg', 10),
(22, 'Fashion', 'Dunrul Liu Xingsheng', 'Brandon Carlos', 'Damar Hakim Rahmani', 'Aurellio Rafael Aditya', 'Branco Roberto Gafriel', '085245699999', 'fashion@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Fashion.jpg', 11),
(23, 'Harvester', 'Anjali Jayasri Jagratara', 'Aurellio Bastiaan', 'Akhdan Basyir', 'Anindito Alvaro', 'Ansel Hafizh Safaraz', '082345125444', 'harvedst3r@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Harvester.jpg', 12),
(24, 'Papernote', 'Awan Khawas', 'Bramanty Hafizuddin', 'Daiva Elfredo Jorell', 'Damita Kastara Zulfadhli', 'Duncan Eagan ', '082278954111', 'papern0t3@gmail.com', 'pending', 'assets/img/turnamen-tim/logo_tim_Papernote.jpg', 15),
(25, 'Minimal', 'Faruq Mursyid Muhaisin ', 'Fathul Ariz Haidar', 'Giawan Gibran Gemilang', 'Gilbert Hagai', 'Hisyam Hadi Hammadi ', '081346688888', 'minimalesport@gmail.com', 'lunas', 'assets/img/turnamen-tim/logo_tim_Minimal.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `turnamen`
--

CREATE TABLE `turnamen` (
  `id_turnamen` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penyelenggara` varchar(30) NOT NULL,
  `platform` enum('Mobile','PC') NOT NULL,
  `jumlah_tim` int(2) NOT NULL,
  `jumlah_anggota` int(1) NOT NULL,
  `deskripsi_lomba` text NOT NULL,
  `deadline_pendaftaran` date NOT NULL,
  `tanggal_pelaksanaan` date NOT NULL,
  `tanggal_berakhir` date NOT NULL,
  `jam_mulai` time NOT NULL,
  `foto_sampul` text NOT NULL,
  `id_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `turnamen`
--

INSERT INTO `turnamen` (`id_turnamen`, `judul`, `penyelenggara`, `platform`, `jumlah_tim`, `jumlah_anggota`, `deskripsi_lomba`, `deadline_pendaftaran`, `tanggal_pelaksanaan`, `tanggal_berakhir`, `jam_mulai`, `foto_sampul`, `id_admin`) VALUES
(1, 'Ngabuburit Battle PUBG BALIKPAPAN', 'Antonia517', 'Mobile', 16, 4, '<p style=\"text-align: justify;\">Turnamen PUBG Mobile - Ngabuburit Battle PUBG BALIKPAPAN<br /><br />- Detail Turnamen :<br />Match Day : 22 Mei 2020, Jam 09.30 - Selesai<br />Pendaftaran akan ditutup tanggal 15 Mei 2020<br />TM tanggal 15 Mei 2020 via Grup WA<br />Biaya pendaftaran : IDR 50.000,- / Slot<br />Venue : Online<br />Open 16 Slot<br />Multi Slot On<br />No Emulator | Mobile Only<br />No Cheat | No Teaming<br />Squad Mode<br />System Points<br />Kualifikasi 2 Match : Erangel TPP + Vikendi TPP<br />Grand Final 3 Match :Miramar TPP + Erangel TPP + Vikendi TPP<br /><br />- Hadiah :<br />Juara 1 : Rp. 700.000,- + Trophy + E-Certificate + Team Profile di Website Info Tourney<br />Juara 2 : Rp. 450.000,- + Trophy + E-Certificate + Team Profile di Website Info Tourney<br />Juara 3 : Rp. 250.000,- + Trophy + E-Certificate + Team Profile di Website Info Tourney<br />Most Kill on Grand Final : Rp. 100.000,-<br />*Hadiah bisa berubah sesuai dengan jumlah peserta<br /><br />- Pendaftaran :<br />Pembayaran bisa melalui transfer ke Rekening BNI : 12345678 - Antonia<br />*Bukti transfer harap dikirimkan ke Contact Person yang telah tersedia<br /><br />- Contact Person :<br />WA : 080808080808<br />Instagram : @Antonia</p>', '2020-05-15', '2020-05-22', '2020-05-22', '09:30:16', 'assets/img/postingan-turnamen/turnamen_Ngabuburit Battle PUBG BALIKPAPAN.jpg', 6),
(6, 'CS:GO Berkah Ramadhan Balikpapan', 'Bambino345', 'PC', 32, 5, '<p style=\"text-align: justify;\">- Detail Turnamen :<br />Match Day :<br />1. Kualifikasi Online : 17 - 19 Mei 2020<br />2. Main Event : 20 Mei 2020<br />Pendaftaran akan ditutup tanggal 15 Mei 2020<br /><br />Biaya pendaftaran IDR 200.000,- / Slot (Sudah termasuk uang jaminan sebesar IDR 50.000,-)<br />Link Pendaftaran : https://goo.gl/forms/GE0nF1i8zDGNmKjr1<br /><br />Open 32 Slot<br /><br />- Hadiah :<br />Juara 1 : Rp. 2.250.000,- + E-Sertifikat + Team Profile di Website Info Tourney<br />Juara 2 : Rp. 1.750.000,- + E-Sertifikat + Team Profile di Website Info Tourney<br />Juara 3 : Rp. 1.000.000,- + E-Sertifikat + Team Profile di Website Info Tourney<br />Most MVP : Rp. 500.000,- Unipin Credit<br />Best Ace : Rp. 500.000,- Unipin Credit<br /><br />- Rules :<br />Event Mode :<br />Kualifikasi : Grouping<br />16 besar &ndash; Semifinal : Double-Elimination System<br />Grand Final : Best of Three<br />1. Anggota minimal 5 pemain &amp; maksimal 7 (2 Cadangan)<br />2. Map Pool yang dimainkan adalah Active Duty Map Pool + Cobblestone<br />3. Competitive Mode<br />4. Tidak diperbolehkan menggunakan senjata Negev<br />5. Dilarang menggunakan external program (Aim Hack, Scipt, Dll.)<br />6. All chat hanya untuk hal yang penting saja<br />7. Pause game diperbolehkan, dengan jumlah masing-masing tim 3 kali pause dalam 1 pertandingan<br />8. Toleransi keterlambatan 10 menit<br />9. Peserta diharapkan untuk menghargai sesama peserta dan panitia<br />10. Peserta dilarang mengintimidasi peserta lain dengan maksud dan cara apapun<br />11. Setiap bentuk intimidasi yang dilakukan akan mendapatkan peringatan hingga 2x. apabila peringatan diabaikan maka tim tersebut akan langsung didiskualifikasi<br />12. Keputusan wasit / juri adalah mutlak<br />13. Pertandingan selesai apabila ada tim yang mengaku kalah/vote surrender atau sampai pertandingan berakhir<br />14. Peserta dianjurkan membawa keyboard, mouse, dan kelengkapan lainnya sendiri. Kekalahan karena ketidak nyamanan bermain di luar tanggung jawab panitia<br />15. Diharapkan bersedia Satu jam sebelum jadwal (dengan maksud jika terjadi perubahan match bertanding sewaktu waktu tidak ada keterlambatan)<br />16. 4 tim terbaik diharapkan hadir ke GOR Soemantri Bodjonegoro satu jam sebelum acara dimulai atau jam 08.00 (dengan maksud kesiapan pemain dan panitia)<br />17. Bagi tim yang tidak mengikuti peraturan no. 15 akan didiskualifikasi tanpa pemberitahuan jika saat jam bertanding yang terbaru tidak datang<br />18. Peserta dianggap WO jika melebihi batas toleransi keterlambatan 5 menit, atau game tetap dilanjutkan jika bersedia dan setuju untuk tetap bertanding<br />19. Segala macam kerugian yang disebabkan oleh pelanggaran peraturan, di tanggung oleh peserta<br />20. Segala penggunaan illegal tools apapun akan ditindak tegas!<br />21. Bagi tim yang didiskualifikasi, uang jaminan tidak dikembalikan<br />22. Dilarang membawa makanan dan minuman ke dalam area pertandingan<br /><br />- Pendaftaran :<br />Transfer ke rekening 1152200166 a/n Bidu Bambang<br /><br />- Contact Person :<br />Line : bBambang37<br />WA : 083737373737</p>', '2020-05-15', '2020-05-17', '2020-05-20', '12:00:00', 'assets/img/postingan-turnamen/turnamen_CS.jpg', 6),
(7, 'Turnamen Mobile Legends - Teman NGABUBURIT ', 'CollaterolDamage355', 'Mobile', 64, 4, '<p>- Detail Turnamen :<br />Match Day : 16 - 17 Mei 2020<br />Pendaftaran akan ditutup tanggal 15 Mei 2020<br />TM tanggal 15 Mei 2020<br />Biaya pendaftaran IDR 50.000,- / Slot<br />Venue : Online<br />Open 64 Slot<br />Multi Slot On | Double Winner Allowed<br />Skin Bebas<br />All Tier/Rank<br />Custom Draft Pick Mode<br />Single Elimination BO1 | Semi Finals - Grand Final BO3<br /><br />- Hadiah :<br />Juara 1 : Rp. 800.000,- + E-Certificate + Team Profile di Website Info Tourney<br />Juara 2 : Rp. 600.000,- + E-Certificate + Team Profile di Website Info Tourney<br />Juara 3 : Rp. 400.000,- + E-Certificate + Team Profile di Website Info Tourney<br />*Hadiah bisa berubah sesuai dengan jumlah peserta<br /><br />- Pendaftaran :<br />Pembayaran bisa melalui Transfer ke Rekening 085444444 a/n Clean<br />*Bukti transfer harap dikirimkan ke Contact Person yang telah tersedia<br /><br />- Contact Person :<br />WA : 081505202000</p>', '2020-05-15', '2020-05-16', '2020-05-17', '13:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Mobile_Legends_-_Teman_NGABUBURIT_.jpg', 6),
(8, 'Turnamen Arena of Valor - To The Top', 'Dameeeeee399', 'Mobile', 32, 4, '<p>- Detail Turnamen :<br />Match Day : 20 - 22 Mei 2020<br />Pendaftaran akan ditutup tanggal 19 Mei 2020, Jam 20.00 WIB<br />TM tanggal 19 Mei 2020, Jam 21.00 WIB via Grup WA<br />Biaya pendaftaran IDR 30.000,- / Slot | IDR 50.000,- / 2 Slot<br />Link pendaftaran : https://bit.ly/BahteratvAOVS2<br />Venue : Online<br />Open 32 Slot<br />Multi Slot On | Double Winner Allowed<br />Skin Bebas<br />All Tier/Rank<br />Custom Draft Pick Mode<br />Single Elimination BO3 | Grand Final BO5<br />Live Streaming Facebook Gaming \"Bahteratv\"<br /><br />- Hadiah :<br />Juara 1 : Rp. 600.000,- + E-Certificate + Team Profile di Website Info Tourney<br />Juara 2 : Rp. 400.000,- + E-Certificate + Team Profile di Website Info Tourney<br />Juara 3 : Rp. 200.000,- + E-Certificate + Team Profile di Website Info Tourney<br />*Hadiah bisa berubah sesuai dengan jumlah peserta<br /><br />- Pendaftaran :<br />Pembayaran bisa melalui Transfer ke :<br />BRI : 44614678754 a/n Dameee<br /><br />- Contact Person :<br />WA : 0884162409998</p>', '2020-05-19', '2020-05-20', '2020-05-22', '10:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Arena_of_Valor_-_To_The_Top.jpg', 6),
(9, 'Turnamen Free Fire - BATTLE OF 2020 Balikpapan ', 'ElectroPatronum655', 'Mobile', 60, 4, '<p>- Detail Turnamen :<br />Match Day : 1 - 16 Juni 2020<br />Pendaftaran akan ditutup tanggal 30 Mei 2020<br />Biaya pendaftaran IDR 27.000,- / Slot (Include paket GamesMax Unlimited Play)<br />Venue : Online<br />Open 60 Slot<br />No Emulator | Mobile Only<br />No Cheat | No Teaming<br />Squad Mode | TPP Mode<br />Kualifikasi BO3 | Final Jakarta BO5<br />Live Streaming YouTube Channel (Akan diumumkan saat TM)<br /><br />- Hadiah :<br />Memperebutkan 1 Slot untuk Mewakili Balikpapan di Final Area Kaltim<br /><br />Prize Pool Rp. 100.000.000,-<br />*Hadiah FIX tidak berubah</p>', '2020-05-30', '2020-06-01', '2020-06-16', '13:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Free_Fire_-_BATTLE_OF_2020_Balikpapan_.jpg', 6),
(10, 'Turnamen Point Blank - KING OF THE KING', 'Family9248', 'PC', 32, 8, '<p>- Detail Turnamen :<br />Match Day : 22 Mei - 17 Juni 2020 (Setiap Rabu, Kamis, Jumat)<br />Turnamen Jam 13.00 - 21:00<br />Pendaftaran akan ditutup tanggal 19 Mei 2020<br />TM akan diumumkan oleh Panitia<br />Biaya pendaftaran GRATIS<br />Link Pendaftaran : https://docs.google.com/forms/d/e/<br />Venue : Online<br />Open 128 Slot untuk masing-masing Turnamen<br />Rules PBNC<br />Single Elimination BO1 | Grand Final BO3<br />Dilarang keras untuk mengganti Nickname saat Turnamen berlangsung<br /><br />- Hadiah :<br /><br />Grand Final<br />Juara 1 : 1.000.000 PB Cash untuk masing-masing Pemain + Jumlah Maksimal View Live Streaming x10 PB Cash<br /><br />- Rules :<br />Peraturan bisa dilihat di : https://pointblank.id/news/view?idx=692&amp;page=1</p>', '2020-05-19', '2020-05-22', '2020-06-17', '13:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Point_Blank_-_KING_OF_THE_KING.jpg', 6),
(11, 'Turnamen Dota 2 - Pro Challenge Series', 'Graoorrr9251', 'PC', 16, 5, '<p>- Detail Turnamen :<br />Match Day :<br />1. Kualifikasi : 10 - 14 Juni 2020, Jam 15.00 WIB - Selesai<br />2. Grand Final : 16 Juni 2020, Jam 12.00 WIB - Selesai<br />Pendaftaran akan ditutup tanggal 9 Juni 2020<br />Biaya pendaftaran GRATIS<br />Venue : Online<br />5 VS 5 Captain Mode<br />NO MAX MEDAL<br />Single Elimination BO1<br /><br />- Hadiah :<br />Grand Final 1<br />Juara 1: Rp. 2.500.000<br />Juara 2: Rp. 1.500.000<br />Juara 3: Rp. 1.000.000<br />*Hadiah FIX tidak berubah</p>', '2020-06-09', '2020-06-10', '2020-05-14', '15:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Dota_2_-_Pro_Challenge_Series.jpg', 6),
(12, 'Turnamen League of Legends -  Conquerors', 'Hellman6884', 'PC', 8, 5, '<p>- Detail Turnamen :<br />Match Day :<br />9 - 15 Juni 2020<br />Pendaftaran akan ditutup tanggal 7 Juni 2020, Jam 19.00 WIB<br />Biaya pendaftaran GRATIS<br />Venue : Online<br />Link pendaftaran : https://docs.google.com/forms/d/e/<br /><br />- Rules :<br />Link Rules : https://docs.google.com/document/d/</p>', '2020-06-07', '2020-06-09', '2020-06-15', '19:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_League_of_Legends_-__Conquerors.jpg', 6),
(13, 'Turnamen Clash Royale - Games Lokal 2020', 'Iberasean6215', 'Mobile', 24, 1, '<p>&nbsp;Detail Turnamen :<br />Match Day : 26 - 27 Mei 2020, Jam 20.00 WIB - Selesai<br />Pendaftaran akan ditutup tanggal 26 Mei 2018, Jam 12.00 WIB<br />Biaya pendaftaran GRATIS<br />Link pendaftaran : https://docs.google.com/forms/d/e/1FAIpQLSeS_v3pd6DZJ4b_drXLqvprZs8STmR7euee8pppRLErxc_v0w/viewform<br /><br />- Pendaftaran :<br />1. ID yang digunakan wajib lokal Indonesia<br />2. Usia minimal 16 tahun<br />3. Harus 20 Wins Profile Account</p>', '2020-05-26', '2020-05-26', '2020-05-27', '20:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Clash_Royale_-_Games_Lokal_2020.jpg', 6),
(14, 'Turnamen Hearthstone - Yuk Bisa Yuk', 'Jeraemwen4439', 'PC', 32, 1, '<p>- Detail Turnamen :<br />Match Day :<br />23 - 24 Juni 2020, Jam 09.00 - 21.00 WIB<br />Pendaftaran akan ditutup tanggal 13 Juni 2020, Jam 09.00 WIB<br />Biaya pendaftaran GRATIS<br />Link pendaftaran : https://hstone.ne/g/h<br />Venue : Online<br /><br />- Hadiah :<br />Juara 1 : 2.500.000,-<br />Juara 2 : 1.250.000,-<br /><br />- Rules :<br />Peraturan menggunakan Hearthstone Tournament Player Handbook (https://goo.gl/vPwXMK)</p>', '2020-06-13', '2020-06-23', '2020-06-24', '09:00:00', 'assets/img/postingan-turnamen/turnamen_Turnamen_Hearthstone_-_Yuk_Bisa_Yuk.jpg', 6),
(15, ' Turnamen Overwatch - Cup ', 'KonoDioDa987', 'PC', 64, 6, '<p>- Detail Turnamen :<br />Match Day :<br />14 - 29 Juni 2020<br />Pendaftaran akan ditutup tanggal 8 Juni 2018<br />Link pendaftaran : https://docs.google.com/forms/d/e/<br />Biaya pendaftaran GRATIS<br />Venue : Online<br />Server : Americas<br />Region : SEA<br />Format : 6 vs 6 Double Elimination<br />Rounds : BO3 (Finals will be BO7)<br />Substitutes Allowed : 2<br />All Matches Will Be Streamed<br /><br />- Hadiah :<br />Prizepool : 5.000.000 XP Coins (Crypto Currency)<br />Diperkirakan sekitar Rp 12.000.000,-<br /><br />- Rules :<br />1. Custom Game Settings :<br />Leave all settings default other than those listed below<br />Presets :<br />Competitive Enabled<br />Modes<br />All<br />Kill Cam: Off<br />Maps<br />None -&gt; Manually selected<br />Scoring:<br />Competitive mode is used for scoring with the time bank system for all associated maps. Any tiebreaker of any sorts will be played on a sudden death control (KOTH) map in a Best of One to determine the victor of the tied map.<br /><br />2. Maps Information and Format :<br />Sudden Death Map: Admin\'s discretion (Ilios, Nepal, Oasis, Lijang)<br />Round of 32: BO3 - http://owdraft.snasgg.com is used to draft the maps with snasgg format for bo3. Captains must be aware of how to use the map draft tool prior.<br />Round of 16: BO3 - http://owdraft.snasgg.com is used to draft the maps with snasgg format for bo3 Captains must be aware of how to use the map draft tool prior.<br />Semifinals: BO3 - BO3 - http://owdraft.snasgg.com is used to draft the maps with snasgg format for bo3. Captains must be aware of how to use the map draft tool prior.<br />Finals BO7 : http://owdraft.snasgg.com is used to draft the maps with snasgg format for bo5. Captains must be aware of how to use the map draft tool prior.</p>', '2020-05-08', '2020-06-14', '2020-06-29', '13:00:00', 'assets/img/postingan-turnamen/turnamen__Turnamen_Overwatch_-_Cup_.jpg', 6);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_postingan_game`
-- (See below for the actual view)
--
CREATE TABLE `view_postingan_game` (
`id_game` int(11)
,`judul` varchar(100)
,`developer` varchar(100)
,`genre` varchar(100)
,`deskripsi` text
,`tanggal_masuk` timestamp
,`tanggal_edit` timestamp
,`rating` float
,`foto` varchar(200)
,`id_admin` int(11)
,`author` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_postingan_game_news`
-- (See below for the actual view)
--
CREATE TABLE `view_postingan_game_news` (
`id_game_news` int(11)
,`judul` varchar(100)
,`deskripsi` text
,`tanggal_masuk` timestamp
,`tanggal_edit` timestamp
,`foto` varchar(200)
,`id_game` int(11)
,`id_admin` int(11)
,`author` varchar(30)
,`nama_game` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tim`
-- (See below for the actual view)
--
CREATE TABLE `view_tim` (
`id_tim` int(11)
,`nama_tim` varchar(30)
,`nama_anggota_1` varchar(30)
,`nama_anggota_2` varchar(30)
,`nama_anggota_3` varchar(30)
,`nama_anggota_4` varchar(30)
,`nama_anggota_5` varchar(30)
,`nohp` varchar(13)
,`email` varchar(40)
,`status` enum('pending','lunas')
,`logo_tim` varchar(100)
,`id_turnamen` int(11)
,`judul` varchar(100)
,`penyelenggara` varchar(30)
,`id_admin` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_turnamen`
-- (See below for the actual view)
--
CREATE TABLE `view_turnamen` (
`id_turnamen` int(11)
,`judul` varchar(100)
,`penyelenggara` varchar(30)
,`platform` enum('Mobile','PC')
,`jumlah_tim` int(2)
,`jumlah_anggota` int(1)
,`deskripsi_lomba` text
,`deadline_pendaftaran` date
,`tanggal_pelaksanaan` date
,`tanggal_berakhir` date
,`jam_mulai` time
,`foto_sampul` text
,`id_admin` int(11)
,`username` varchar(30)
,`nohp` varchar(13)
,`email` varchar(30)
,`nama` varchar(40)
,`norek` varchar(20)
,`jumlah_pendaftar` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `view_postingan_game`
--
DROP TABLE IF EXISTS `view_postingan_game`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id13628137_inesa`@`localhost` SQL SECURITY DEFINER VIEW `view_postingan_game`  AS  select `game`.`id_game` AS `id_game`,`game`.`judul` AS `judul`,`game`.`developer` AS `developer`,`game`.`genre` AS `genre`,`game`.`deskripsi` AS `deskripsi`,`game`.`tanggal_masuk` AS `tanggal_masuk`,`game`.`tanggal_edit` AS `tanggal_edit`,`game`.`rating` AS `rating`,`game`.`foto` AS `foto`,`game`.`id_admin` AS `id_admin`,`admin`.`username` AS `author` from (`game` join `admin`) where `game`.`id_admin` = `admin`.`id_admin` ;

-- --------------------------------------------------------

--
-- Structure for view `view_postingan_game_news`
--
DROP TABLE IF EXISTS `view_postingan_game_news`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id13628137_inesa`@`localhost` SQL SECURITY DEFINER VIEW `view_postingan_game_news`  AS  select `game_news`.`id_game_news` AS `id_game_news`,`game_news`.`judul` AS `judul`,`game_news`.`deskripsi` AS `deskripsi`,`game_news`.`tanggal_masuk` AS `tanggal_masuk`,`game_news`.`tanggal_edit` AS `tanggal_edit`,`game_news`.`foto` AS `foto`,`game_news`.`id_game` AS `id_game`,`game_news`.`id_admin` AS `id_admin`,`admin`.`username` AS `author`,`game`.`judul` AS `nama_game` from ((`game_news` join `admin`) join `game`) where `game_news`.`id_admin` = `admin`.`id_admin` and `game_news`.`id_game` = `game`.`id_game` ;

-- --------------------------------------------------------

--
-- Structure for view `view_tim`
--
DROP TABLE IF EXISTS `view_tim`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id13628137_inesa`@`localhost` SQL SECURITY DEFINER VIEW `view_tim`  AS  select `tim`.`id_tim` AS `id_tim`,`tim`.`nama_tim` AS `nama_tim`,`tim`.`nama_anggota_1` AS `nama_anggota_1`,`tim`.`nama_anggota_2` AS `nama_anggota_2`,`tim`.`nama_anggota_3` AS `nama_anggota_3`,`tim`.`nama_anggota_4` AS `nama_anggota_4`,`tim`.`nama_anggota_5` AS `nama_anggota_5`,`tim`.`nohp` AS `nohp`,`tim`.`email` AS `email`,`tim`.`status` AS `status`,`tim`.`logo_tim` AS `logo_tim`,`tim`.`id_turnamen` AS `id_turnamen`,`turnamen`.`judul` AS `judul`,`turnamen`.`penyelenggara` AS `penyelenggara`,`admin`.`id_admin` AS `id_admin` from ((`tim` join `turnamen`) join `admin`) where `tim`.`id_turnamen` = `turnamen`.`id_turnamen` and `turnamen`.`id_admin` = `admin`.`id_admin` ;

-- --------------------------------------------------------

--
-- Structure for view `view_turnamen`
--
DROP TABLE IF EXISTS `view_turnamen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`id13628137_inesa`@`localhost` SQL SECURITY DEFINER VIEW `view_turnamen`  AS  select `turnamen`.`id_turnamen` AS `id_turnamen`,`turnamen`.`judul` AS `judul`,`turnamen`.`penyelenggara` AS `penyelenggara`,`turnamen`.`platform` AS `platform`,`turnamen`.`jumlah_tim` AS `jumlah_tim`,`turnamen`.`jumlah_anggota` AS `jumlah_anggota`,`turnamen`.`deskripsi_lomba` AS `deskripsi_lomba`,`turnamen`.`deadline_pendaftaran` AS `deadline_pendaftaran`,`turnamen`.`tanggal_pelaksanaan` AS `tanggal_pelaksanaan`,`turnamen`.`tanggal_berakhir` AS `tanggal_berakhir`,`turnamen`.`jam_mulai` AS `jam_mulai`,`turnamen`.`foto_sampul` AS `foto_sampul`,`turnamen`.`id_admin` AS `id_admin`,`admin`.`username` AS `username`,`admin`.`nohp` AS `nohp`,`admin`.`email` AS `email`,`admin`.`nama` AS `nama`,`admin`.`norek` AS `norek`,(select count(0) from `tim` where `tim`.`id_turnamen` = `turnamen`.`id_turnamen` and `tim`.`status` = 'lunas') AS `jumlah_pendaftar` from (`turnamen` join `admin`) where `turnamen`.`id_admin` = `admin`.`id_admin` ;

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
-- Indexes for table `game_news`
--
ALTER TABLE `game_news`
  ADD PRIMARY KEY (`id_game_news`),
  ADD KEY `id_game` (`id_game`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_tim`),
  ADD KEY `id_turnamen` (`id_turnamen`);

--
-- Indexes for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD PRIMARY KEY (`id_turnamen`),
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
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `game_news`
--
ALTER TABLE `game_news`
  MODIFY `id_game_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tim`
--
ALTER TABLE `tim`
  MODIFY `id_tim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_turnamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);

--
-- Constraints for table `game_news`
--
ALTER TABLE `game_news`
  ADD CONSTRAINT `game_news_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`),
  ADD CONSTRAINT `game_news_ibfk_2` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`);

--
-- Constraints for table `tim`
--
ALTER TABLE `tim`
  ADD CONSTRAINT `tim_ibfk_1` FOREIGN KEY (`id_turnamen`) REFERENCES `turnamen` (`id_turnamen`);

--
-- Constraints for table `turnamen`
--
ALTER TABLE `turnamen`
  ADD CONSTRAINT `turnamen_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
