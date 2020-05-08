-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2020 at 09:42 PM
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
(8, 'Mario Bros', 'Nintendo', 'Adventure', '<p><strong>Lorem </strong>ipsum dolor sit amet consectetur, adipisicing elit. Aliquid delectus non assumenda. Incidunt quisquam exercitationem quibusdam illum, commodi mollitia, modi quos nisi saepe repudiandae corporis nobis eius sunt? Dignissimos, fugiat.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Earum praesentium ipsa fuga ipsum natus dolor repellendus eveniet sint possimus laudantium. Nemo dolorem beatae provident voluptatum sunt dolores suscipit numquam sequi voluptatibus enim eaque quos, quasi doloremque quibusdam illum?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Magnam reprehenderit harum beatae accusantium suscipit accusamus dolorem sequi iste tempora quo quibusdam corporis corrupti minus reiciendis, architecto libero temporibus vitae! Impedit dolorem libero veniam pariatur asperiores modi expedita mollitia!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eveniet debitis fuga tenetur provident laudantium libero, qui dolorum, beatae molestias consequatur labore optio aspernatur esse ipsa quae incidunt perferendis delectus dolorem modi accusantium? Explicabo omnis quasi a quidem exercitationem?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quas, voluptate voluptates ad non amet blanditiis dolore quis itaque corrupti quia qui sint, quod nobis, suscipit cum delectus? Aliquid molestias exercitationem sint consequatur nam neque sequi sapiente tenetur similique.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Deleniti enim natus, amet tempora numquam debitis modi adipisci perferendis quaerat nisi earum eos nemo soluta dicta fugit? Enim fugit quas illo excepturi repellat quaerat esse nostrum natus obcaecati fuga.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Autem amet fugit voluptates delectus cumque sunt vero blanditiis eos, fugiat repellat ratione, deleniti mollitia alias perspiciatis. Necessitatibus delectus architecto dolorum nulla? Laudantium cum soluta corporis explicabo nobis ut reiciendis?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nobis saepe hic aliquam similique dolorum? Repellendus, eveniet quo blanditiis consectetur voluptate perferendis incidunt obcaecati natus porro, atque animi enim eligendi mollitia illum accusantium! Impedit iure provident vitae illum dolor.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Odit cum tenetur, modi porro iste earum vel in consequatur, nobis, tempore neque alias maiores quaerat mollitia quod? Quasi minus magnam veritatis voluptates voluptate deleniti odio ut itaque ratione aliquid!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Libero unde aperiam vero explicabo fuga ipsum iusto, id cumque repellat dignissimos laboriosam? Ullam, aliquam laudantium accusamus at ducimus corrupti labore, eligendi vitae facilis laborum similique cupiditate expedita odit consequuntur?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Omnis voluptatem ea porro nam voluptates ex. Veritatis quis debitis est aliquid quam dolorum, magni vel beatae quod numquam doloremque sit soluta officia accusantium quo id velit quos. Corrupti, ipsa!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Natus, minus molestiae. Autem vitae magnam recusandae itaque repellendus, officia soluta deleniti hic magni, reiciendis qui tempora eligendi corrupti? Aperiam quos explicabo repellat dicta ab qui laboriosam quo neque itaque!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Temporibus praesentium, aliquid cum maiores dolore pariatur excepturi culpa facilis quam explicabo sequi rerum voluptatibus eveniet! Minima, ipsum libero blanditiis inventore quos sunt voluptatem sed, fugit accusantium illo sit laudantium!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cum modi quas iure magni, ratione quo necessitatibus aspernatur sunt maxime, eaque inventore illum libero quaerat qui officia? Magnam quibusdam eligendi nesciunt enim, vero placeat! Veniam sunt obcaecati et! Distinctio.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Qui provident, id soluta esse veritatis quisquam, temporibus placeat deserunt quia non ea adipisci sint voluptates eum alias porro earum et sequi quos? Magnam quibusdam tempore cupiditate quidem illo earum.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sunt optio distinctio, hic quibusdam magnam fugit assumenda quisquam dolorem excepturi, consectetur pariatur dolores doloribus, amet iure nesciunt minima illo. Praesentium impedit quis saepe architecto repudiandae ea blanditiis hic rem?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Esse tenetur fugiat laboriosam voluptatum voluptas. Repellendus quam suscipit deleniti distinctio nesciunt atque aliquam, quia quod consectetur obcaecati! Nemo sequi blanditiis veritatis maxime esse praesentium, consequatur vero similique excepturi officia.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ullam quas beatae aut eius quibusdam officiis, vel sed libero totam amet, dolorem atque harum voluptatum molestias culpa sunt repudiandae nulla id corrupti maiores modi aspernatur. Consequuntur corrupti dignissimos dolorem!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quos quo consequuntur dolores, nihil corrupti ipsa pariatur cum corporis modi facilis, harum laudantium magnam nostrum accusantium beatae. Et consectetur ipsa non distinctio expedita itaque veniam cumque impedit nulla cum?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Perferendis recusandae delectus, omnis, sit deserunt dignissimos quibusdam veritatis reiciendis ducimus laborum vero exercitationem ullam numquam obcaecati, necessitatibus iure laudantium voluptatum nam. Sapiente mollitia unde ipsum sed neque eius eligendi?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dolore magni commodi accusantium ducimus illo aliquam deleniti maiores et atque inventore, quod exercitationem ipsum consequuntur esse corrupti optio eos. Quisquam iure id possimus accusamus, minima ad mollitia accusantium aliquid?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dignissimos necessitatibus dolore vel optio recusandae aliquid enim dolorum error quod vitae ad, ut, eligendi atque obcaecati nostrum voluptatum cum sapiente animi incidunt ducimus! Sit explicabo culpa pariatur voluptates. Obcaecati.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Odit necessitatibus, labore in et vitae eius distinctio consequuntur repudiandae consectetur commodi est praesentium molestias excepturi soluta repellat libero corporis asperiores voluptas explicabo nisi quidem. Repellat repudiandae vel esse amet!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Numquam dolorum sint nemo eos laudantium officia ex nobis ducimus accusantium adipisci neque iste consectetur voluptates voluptatibus similique facilis autem, eaque unde? Hic eum officiis, enim pariatur deleniti id eligendi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Consequuntur delectus quisquam impedit commodi? Odio dolores magni ut assumenda reprehenderit nihil sed architecto modi nobis quo corrupti ipsa at vitae vel neque eveniet doloremque, numquam cupiditate quidem. Velit, perferendis!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Corporis, iusto similique ratione in minima quis molestiae nisi at architecto beatae nemo suscipit? Magni atque non alias. Rerum reprehenderit laudantium maiores nulla? Totam labore modi ab commodi porro rem.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Voluptas, doloremque tenetur magnam dignissimos labore quidem corrupti minus repellat accusantium unde architecto nisi laudantium fugiat dolore doloribus, magni, debitis rerum. Voluptatem dolorem eos excepturi aspernatur possimus incidunt ipsam praesentium.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Libero, quidem consequuntur mollitia velit doloremque, rerum porro tempora, officia facilis quasi sapiente est! Delectus illum expedita cupiditate corrupti dolores cumque ratione assumenda, in sed quos velit sit recusandae sequi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Expedita officia quaerat alias dolore numquam adipisci nostrum suscipit amet nam tempore dolorem eaque assumenda tenetur dolorum quos iste, minima pariatur, aut odio eos recusandae velit quibusdam. Dolorem, architecto harum.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Vitae asperiores amet voluptatem rerum quod, eaque et quaerat neque perferendis natus, sint dignissimos in aut commodi earum? Quam, cum. Odio temporibus labore debitis sapiente, accusamus error quo ad reiciendis?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est, voluptas repellendus aperiam porro quo illum unde vitae odio, fugit et a vel quod totam omnis eaque quasi earum odit eveniet veritatis! Blanditiis veniam minima dolore mollitia, iste voluptate?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cumque natus deserunt perferendis repudiandae sit, accusamus quos obcaecati saepe suscipit qui sed consequatur eaque aliquid fugit dolor perspiciatis incidunt voluptates tenetur sequi minima voluptate numquam? Laboriosam esse numquam aperiam.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tempore excepturi praesentium velit aliquam! Porro, architecto sed cum beatae ut quibusdam at eos tempore praesentium. Ipsum vero error nesciunt nulla laboriosam. Quis, labore cumque! Adipisci inventore tempore hic sit!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Voluptates nisi est obcaecati accusantium ipsa incidunt, aut nesciunt mollitia facere similique, eligendi alias. Vero illo temporibus odit magnam facilis, enim ratione voluptatibus eligendi asperiores aut voluptatum similique, doloremque ipsam.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eligendi pariatur odio sunt provident, maiores dolor architecto optio fugiat temporibus exercitationem facere, quas error fugit eum labore quo, est deserunt a. Autem asperiores quis beatae doloremque esse doloribus delectus.</p>', '2020-04-24 07:32:48', '2020-05-08 03:11:58', 2.5, 'assets/img/postingan-game/game_Mario_Bross.jpg', 3),
(9, 'PUBG', 'PUBG Corporation', 'War', '<p><strong>Lorem </strong>ipsum dolor sit amet consectetur, adipisicing elit. Aliquid delectus non assumenda. Incidunt quisquam exercitationem quibusdam illum, commodi mollitia, modi quos nisi saepe repudiandae corporis nobis eius sunt? Dignissimos, fugiat.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Earum praesentium ipsa fuga ipsum natus dolor repellendus eveniet sint possimus laudantium. Nemo dolorem beatae provident voluptatum sunt dolores suscipit numquam sequi voluptatibus enim eaque quos, quasi doloremque quibusdam illum?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Magnam reprehenderit harum beatae accusantium suscipit accusamus dolorem sequi iste tempora quo quibusdam corporis corrupti minus reiciendis, architecto libero temporibus vitae! Impedit dolorem libero veniam pariatur asperiores modi expedita mollitia!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eveniet debitis fuga tenetur provident laudantium libero, qui dolorum, beatae molestias consequatur labore optio aspernatur esse ipsa quae incidunt perferendis delectus dolorem modi accusantium? Explicabo omnis quasi a quidem exercitationem?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quas, voluptate voluptates ad non amet blanditiis dolore quis itaque corrupti quia qui sint, quod nobis, suscipit cum delectus? Aliquid molestias exercitationem sint consequatur nam neque sequi sapiente tenetur similique.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Deleniti enim natus, amet tempora numquam debitis modi adipisci perferendis quaerat nisi earum eos nemo soluta dicta fugit? Enim fugit quas illo excepturi repellat quaerat esse nostrum natus obcaecati fuga.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Autem amet fugit voluptates delectus cumque sunt vero blanditiis eos, fugiat repellat ratione, deleniti mollitia alias perspiciatis. Necessitatibus delectus architecto dolorum nulla? Laudantium cum soluta corporis explicabo nobis ut reiciendis?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nobis saepe hic aliquam similique dolorum? Repellendus, eveniet quo blanditiis consectetur voluptate perferendis incidunt obcaecati natus porro, atque animi enim eligendi mollitia illum accusantium! Impedit iure provident vitae illum dolor.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Odit cum tenetur, modi porro iste earum vel in consequatur, nobis, tempore neque alias maiores quaerat mollitia quod? Quasi minus magnam veritatis voluptates voluptate deleniti odio ut itaque ratione aliquid!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Libero unde aperiam vero explicabo fuga ipsum iusto, id cumque repellat dignissimos laboriosam? Ullam, aliquam laudantium accusamus at ducimus corrupti labore, eligendi vitae facilis laborum similique cupiditate expedita odit consequuntur?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Omnis voluptatem ea porro nam voluptates ex. Veritatis quis debitis est aliquid quam dolorum, magni vel beatae quod numquam doloremque sit soluta officia accusantium quo id velit quos. Corrupti, ipsa!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Natus, minus molestiae. Autem vitae magnam recusandae itaque repellendus, officia soluta deleniti hic magni, reiciendis qui tempora eligendi corrupti? Aperiam quos explicabo repellat dicta ab qui laboriosam quo neque itaque!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Temporibus praesentium, aliquid cum maiores dolore pariatur excepturi culpa facilis quam explicabo sequi rerum voluptatibus eveniet! Minima, ipsum libero blanditiis inventore quos sunt voluptatem sed, fugit accusantium illo sit laudantium!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cum modi quas iure magni, ratione quo necessitatibus aspernatur sunt maxime, eaque inventore illum libero quaerat qui officia? Magnam quibusdam eligendi nesciunt enim, vero placeat! Veniam sunt obcaecati et! Distinctio.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Qui provident, id soluta esse veritatis quisquam, temporibus placeat deserunt quia non ea adipisci sint voluptates eum alias porro earum et sequi quos? Magnam quibusdam tempore cupiditate quidem illo earum.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sunt optio distinctio, hic quibusdam magnam fugit assumenda quisquam dolorem excepturi, consectetur pariatur dolores doloribus, amet iure nesciunt minima illo. Praesentium impedit quis saepe architecto repudiandae ea blanditiis hic rem?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Esse tenetur fugiat laboriosam voluptatum voluptas. Repellendus quam suscipit deleniti distinctio nesciunt atque aliquam, quia quod consectetur obcaecati! Nemo sequi blanditiis veritatis maxime esse praesentium, consequatur vero similique excepturi officia.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ullam quas beatae aut eius quibusdam officiis, vel sed libero totam amet, dolorem atque harum voluptatum molestias culpa sunt repudiandae nulla id corrupti maiores modi aspernatur. Consequuntur corrupti dignissimos dolorem!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quos quo consequuntur dolores, nihil corrupti ipsa pariatur cum corporis modi facilis, harum laudantium magnam nostrum accusantium beatae. Et consectetur ipsa non distinctio expedita itaque veniam cumque impedit nulla cum?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Perferendis recusandae delectus, omnis, sit deserunt dignissimos quibusdam veritatis reiciendis ducimus laborum vero exercitationem ullam numquam obcaecati, necessitatibus iure laudantium voluptatum nam. Sapiente mollitia unde ipsum sed neque eius eligendi?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dolore magni commodi accusantium ducimus illo aliquam deleniti maiores et atque inventore, quod exercitationem ipsum consequuntur esse corrupti optio eos. Quisquam iure id possimus accusamus, minima ad mollitia accusantium aliquid?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dignissimos necessitatibus dolore vel optio recusandae aliquid enim dolorum error quod vitae ad, ut, eligendi atque obcaecati nostrum voluptatum cum sapiente animi incidunt ducimus! Sit explicabo culpa pariatur voluptates. Obcaecati.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Odit necessitatibus, labore in et vitae eius distinctio consequuntur repudiandae consectetur commodi est praesentium molestias excepturi soluta repellat libero corporis asperiores voluptas explicabo nisi quidem. Repellat repudiandae vel esse amet!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Numquam dolorum sint nemo eos laudantium officia ex nobis ducimus accusantium adipisci neque iste consectetur voluptates voluptatibus similique facilis autem, eaque unde? Hic eum officiis, enim pariatur deleniti id eligendi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Consequuntur delectus quisquam impedit commodi? Odio dolores magni ut assumenda reprehenderit nihil sed architecto modi nobis quo corrupti ipsa at vitae vel neque eveniet doloremque, numquam cupiditate quidem. Velit, perferendis!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Corporis, iusto similique ratione in minima quis molestiae nisi at architecto beatae nemo suscipit? Magni atque non alias. Rerum reprehenderit laudantium maiores nulla? Totam labore modi ab commodi porro rem.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Voluptas, doloremque tenetur magnam dignissimos labore quidem corrupti minus repellat accusantium unde architecto nisi laudantium fugiat dolore doloribus, magni, debitis rerum. Voluptatem dolorem eos excepturi aspernatur possimus incidunt ipsam praesentium.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Libero, quidem consequuntur mollitia velit doloremque, rerum porro tempora, officia facilis quasi sapiente est! Delectus illum expedita cupiditate corrupti dolores cumque ratione assumenda, in sed quos velit sit recusandae sequi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Expedita officia quaerat alias dolore numquam adipisci nostrum suscipit amet nam tempore dolorem eaque assumenda tenetur dolorum quos iste, minima pariatur, aut odio eos recusandae velit quibusdam. Dolorem, architecto harum.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Vitae asperiores amet voluptatem rerum quod, eaque et quaerat neque perferendis natus, sint dignissimos in aut commodi earum? Quam, cum. Odio temporibus labore debitis sapiente, accusamus error quo ad reiciendis?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est, voluptas repellendus aperiam porro quo illum unde vitae odio, fugit et a vel quod totam omnis eaque quasi earum odit eveniet veritatis! Blanditiis veniam minima dolore mollitia, iste voluptate?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cumque natus deserunt perferendis repudiandae sit, accusamus quos obcaecati saepe suscipit qui sed consequatur eaque aliquid fugit dolor perspiciatis incidunt voluptates tenetur sequi minima voluptate numquam? Laboriosam esse numquam aperiam.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tempore excepturi praesentium velit aliquam! Porro, architecto sed cum beatae ut quibusdam at eos tempore praesentium. Ipsum vero error nesciunt nulla laboriosam. Quis, labore cumque! Adipisci inventore tempore hic sit!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Voluptates nisi est obcaecati accusantium ipsa incidunt, aut nesciunt mollitia facere similique, eligendi alias. Vero illo temporibus odit magnam facilis, enim ratione voluptatibus eligendi asperiores aut voluptatum similique, doloremque ipsam.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eligendi pariatur odio sunt provident, maiores dolor architecto optio fugiat temporibus exercitationem facere, quas error fugit eum labore quo, est deserunt a. Autem asperiores quis beatae doloremque esse doloribus delectus.</p>', '2020-04-24 07:34:08', '2020-05-04 17:29:37', 5, 'assets/img/postingan-game/game_PUBG.jpg', 4),
(18, 'Clash of Clans', 'Supercell', 'Classic', '<p><strong>Lorem&nbsp;</strong>ipsum sit amet</p>', '2020-04-28 18:45:23', '2020-05-04 17:28:21', 2.5, 'assets/img/postingan-game/game_Clash_of_Clans.jpg', 3),
(19, 'Clash of Clans', 'Supercell', 'Classic', '<p><strong>Lorem&nbsp;</strong>ipsum sit amet</p>', '2020-05-05 16:37:08', NULL, 2.5, 'assets/img/postingan-game/game_Clash_of_Clans.jpg', 3);

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
(4, 'Loremm', '<p><strong>Lorem </strong>ipsum dolor sit amet consectetur, adipisicing elit. Aliquid delectus non assumenda. Incidunt quisquam exercitationem quibusdam illum, commodi mollitia, modi quos nisi saepe repudiandae corporis nobis eius sunt? Dignissimos, fugiat.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Earum praesentium ipsa fuga ipsum natus dolor repellendus eveniet sint possimus laudantium. Nemo dolorem beatae provident voluptatum sunt dolores suscipit numquam sequi voluptatibus enim eaque quos, quasi doloremque quibusdam illum?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Magnam reprehenderit harum beatae accusantium suscipit accusamus dolorem sequi iste tempora quo quibusdam corporis corrupti minus reiciendis, architecto libero temporibus vitae! Impedit dolorem libero veniam pariatur asperiores modi expedita mollitia!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eveniet debitis fuga tenetur provident laudantium libero, qui dolorum, beatae molestias consequatur labore optio aspernatur esse ipsa quae incidunt perferendis delectus dolorem modi accusantium? Explicabo omnis quasi a quidem exercitationem?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quas, voluptate voluptates ad non amet blanditiis dolore quis itaque corrupti quia qui sint, quod nobis, suscipit cum delectus? Aliquid molestias exercitationem sint consequatur nam neque sequi sapiente tenetur similique.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Deleniti enim natus, amet tempora numquam debitis modi adipisci perferendis quaerat nisi earum eos nemo soluta dicta fugit? Enim fugit quas illo excepturi repellat quaerat esse nostrum natus obcaecati fuga.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Autem amet fugit voluptates delectus cumque sunt vero blanditiis eos, fugiat repellat ratione, deleniti mollitia alias perspiciatis. Necessitatibus delectus architecto dolorum nulla? Laudantium cum soluta corporis explicabo nobis ut reiciendis?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Nobis saepe hic aliquam similique dolorum? Repellendus, eveniet quo blanditiis consectetur voluptate perferendis incidunt obcaecati natus porro, atque animi enim eligendi mollitia illum accusantium! Impedit iure provident vitae illum dolor.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Odit cum tenetur, modi porro iste earum vel in consequatur, nobis, tempore neque alias maiores quaerat mollitia quod? Quasi minus magnam veritatis voluptates voluptate deleniti odio ut itaque ratione aliquid!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Libero unde aperiam vero explicabo fuga ipsum iusto, id cumque repellat dignissimos laboriosam? Ullam, aliquam laudantium accusamus at ducimus corrupti labore, eligendi vitae facilis laborum similique cupiditate expedita odit consequuntur?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Omnis voluptatem ea porro nam voluptates ex. Veritatis quis debitis est aliquid quam dolorum, magni vel beatae quod numquam doloremque sit soluta officia accusantium quo id velit quos. Corrupti, ipsa!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Natus, minus molestiae. Autem vitae magnam recusandae itaque repellendus, officia soluta deleniti hic magni, reiciendis qui tempora eligendi corrupti? Aperiam quos explicabo repellat dicta ab qui laboriosam quo neque itaque!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Temporibus praesentium, aliquid cum maiores dolore pariatur excepturi culpa facilis quam explicabo sequi rerum voluptatibus eveniet! Minima, ipsum libero blanditiis inventore quos sunt voluptatem sed, fugit accusantium illo sit laudantium!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cum modi quas iure magni, ratione quo necessitatibus aspernatur sunt maxime, eaque inventore illum libero quaerat qui officia? Magnam quibusdam eligendi nesciunt enim, vero placeat! Veniam sunt obcaecati et! Distinctio.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Qui provident, id soluta esse veritatis quisquam, temporibus placeat deserunt quia non ea adipisci sint voluptates eum alias porro earum et sequi quos? Magnam quibusdam tempore cupiditate quidem illo earum.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Sunt optio distinctio, hic quibusdam magnam fugit assumenda quisquam dolorem excepturi, consectetur pariatur dolores doloribus, amet iure nesciunt minima illo. Praesentium impedit quis saepe architecto repudiandae ea blanditiis hic rem?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Esse tenetur fugiat laboriosam voluptatum voluptas. Repellendus quam suscipit deleniti distinctio nesciunt atque aliquam, quia quod consectetur obcaecati! Nemo sequi blanditiis veritatis maxime esse praesentium, consequatur vero similique excepturi officia.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ullam quas beatae aut eius quibusdam officiis, vel sed libero totam amet, dolorem atque harum voluptatum molestias culpa sunt repudiandae nulla id corrupti maiores modi aspernatur. Consequuntur corrupti dignissimos dolorem!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Quos quo consequuntur dolores, nihil corrupti ipsa pariatur cum corporis modi facilis, harum laudantium magnam nostrum accusantium beatae. Et consectetur ipsa non distinctio expedita itaque veniam cumque impedit nulla cum?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Perferendis recusandae delectus, omnis, sit deserunt dignissimos quibusdam veritatis reiciendis ducimus laborum vero exercitationem ullam numquam obcaecati, necessitatibus iure laudantium voluptatum nam. Sapiente mollitia unde ipsum sed neque eius eligendi?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dolore magni commodi accusantium ducimus illo aliquam deleniti maiores et atque inventore, quod exercitationem ipsum consequuntur esse corrupti optio eos. Quisquam iure id possimus accusamus, minima ad mollitia accusantium aliquid?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dignissimos necessitatibus dolore vel optio recusandae aliquid enim dolorum error quod vitae ad, ut, eligendi atque obcaecati nostrum voluptatum cum sapiente animi incidunt ducimus! Sit explicabo culpa pariatur voluptates. Obcaecati.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Odit necessitatibus, labore in et vitae eius distinctio consequuntur repudiandae consectetur commodi est praesentium molestias excepturi soluta repellat libero corporis asperiores voluptas explicabo nisi quidem. Repellat repudiandae vel esse amet!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Numquam dolorum sint nemo eos laudantium officia ex nobis ducimus accusantium adipisci neque iste consectetur voluptates voluptatibus similique facilis autem, eaque unde? Hic eum officiis, enim pariatur deleniti id eligendi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Consequuntur delectus quisquam impedit commodi? Odio dolores magni ut assumenda reprehenderit nihil sed architecto modi nobis quo corrupti ipsa at vitae vel neque eveniet doloremque, numquam cupiditate quidem. Velit, perferendis!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Corporis, iusto similique ratione in minima quis molestiae nisi at architecto beatae nemo suscipit? Magni atque non alias. Rerum reprehenderit laudantium maiores nulla? Totam labore modi ab commodi porro rem.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Voluptas, doloremque tenetur magnam dignissimos labore quidem corrupti minus repellat accusantium unde architecto nisi laudantium fugiat dolore doloribus, magni, debitis rerum. Voluptatem dolorem eos excepturi aspernatur possimus incidunt ipsam praesentium.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Libero, quidem consequuntur mollitia velit doloremque, rerum porro tempora, officia facilis quasi sapiente est! Delectus illum expedita cupiditate corrupti dolores cumque ratione assumenda, in sed quos velit sit recusandae sequi.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Expedita officia quaerat alias dolore numquam adipisci nostrum suscipit amet nam tempore dolorem eaque assumenda tenetur dolorum quos iste, minima pariatur, aut odio eos recusandae velit quibusdam. Dolorem, architecto harum.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Vitae asperiores amet voluptatem rerum quod, eaque et quaerat neque perferendis natus, sint dignissimos in aut commodi earum? Quam, cum. Odio temporibus labore debitis sapiente, accusamus error quo ad reiciendis?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Est, voluptas repellendus aperiam porro quo illum unde vitae odio, fugit et a vel quod totam omnis eaque quasi earum odit eveniet veritatis! Blanditiis veniam minima dolore mollitia, iste voluptate?</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Cumque natus deserunt perferendis repudiandae sit, accusamus quos obcaecati saepe suscipit qui sed consequatur eaque aliquid fugit dolor perspiciatis incidunt voluptates tenetur sequi minima voluptate numquam? Laboriosam esse numquam aperiam.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tempore excepturi praesentium velit aliquam! Porro, architecto sed cum beatae ut quibusdam at eos tempore praesentium. Ipsum vero error nesciunt nulla laboriosam. Quis, labore cumque! Adipisci inventore tempore hic sit!</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Voluptates nisi est obcaecati accusantium ipsa incidunt, aut nesciunt mollitia facere similique, eligendi alias. Vero illo temporibus odit magnam facilis, enim ratione voluptatibus eligendi asperiores aut voluptatum similique, doloremque ipsam.</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Eligendi pariatur odio sunt provident, maiores dolor architecto optio fugiat temporibus exercitationem facere, quas error fugit eum labore quo, est deserunt a. Autem asperiores quis beatae doloremque esse doloribus delectus.</p>', '2020-05-03 19:09:05', '2020-05-08 02:29:59', '/assets/img/postingan-berita-game/game_PUBG.jpg', 18, 3);

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
(1, 'Nubi', 'Nova Permata', 'Langgeng Siregar', 'Jefri Haryanto', 'Harsana Rajasa', '', '081222222222', 'a@gmail.com', 'lunas', 'test.jpg', 1);

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
(1, 'Ngabuburit Battle PUBG BALIKPAPAN', 'GUSER12033', 'PC', 16, 4, '<p><strong>Lorem </strong>ipsum dolor sit amet consectetur, adipisicing elit. Aliquid delectus non assumenda. Incidunt quisquam exercitationem quibusdam illum, commodi mollitia, modi quos nisi saepe repudiandae corporis nobis eius sunt? Dignissimos, fugiat.</p>\r\n<p>            Earum praesentium ipsa fuga ipsum natus dolor repellendus eveniet sint possimus laudantium. Nemo dolorem beatae provident voluptatum sunt dolores suscipit numquam sequi voluptatibus enim eaque quos, quasi doloremque quibusdam illum?</p>\r\n<p>            Magnam reprehenderit harum beatae accusantium suscipit accusamus dolorem sequi iste tempora quo quibusdam corporis corrupti minus reiciendis, architecto libero temporibus vitae! Impedit dolorem libero veniam pariatur asperiores modi expedita mollitia!</p>\r\n<p>            Eveniet debitis fuga tenetur provident laudantium libero, qui dolorum, beatae molestias consequatur labore optio aspernatur esse ipsa quae incidunt perferendis delectus dolorem modi accusantium? Explicabo omnis quasi a quidem exercitationem?</p>\r\n<p>            Quas, voluptate voluptates ad non amet blanditiis dolore quis itaque corrupti quia qui sint, quod nobis, suscipit cum delectus? Aliquid molestias exercitationem sint consequatur nam neque sequi sapiente tenetur similique.</p>\r\n<p>            Deleniti enim natus, amet tempora numquam debitis modi adipisci perferendis quaerat nisi earum eos nemo soluta dicta fugit? Enim fugit quas illo excepturi repellat quaerat esse nostrum natus obcaecati fuga.</p>\r\n<p>            Autem amet fugit voluptates delectus cumque sunt vero blanditiis eos, fugiat repellat ratione, deleniti mollitia alias perspiciatis. Necessitatibus delectus architecto dolorum nulla? Laudantium cum soluta corporis explicabo nobis ut reiciendis?</p>\r\n<p>            Nobis saepe hic aliquam similique dolorum? Repellendus, eveniet quo blanditiis consectetur voluptate perferendis incidunt obcaecati natus porro, atque animi enim eligendi mollitia illum accusantium! Impedit iure provident vitae illum dolor.</p>\r\n<p>            Odit cum tenetur, modi porro iste earum vel in consequatur, nobis, tempore neque alias maiores quaerat mollitia quod? Quasi minus magnam veritatis voluptates voluptate deleniti odio ut itaque ratione aliquid!</p>\r\n<p>            Libero unde aperiam vero explicabo fuga ipsum iusto, id cumque repellat dignissimos laboriosam? Ullam, aliquam laudantium accusamus at ducimus corrupti labore, eligendi vitae facilis laborum similique cupiditate expedita odit consequuntur?</p>\r\n<p>            Omnis voluptatem ea porro nam voluptates ex. Veritatis quis debitis est aliquid quam dolorum, magni vel beatae quod numquam doloremque sit soluta officia accusantium quo id velit quos. Corrupti, ipsa!</p>\r\n<p>            Natus, minus molestiae. Autem vitae magnam recusandae itaque repellendus, officia soluta deleniti hic magni, reiciendis qui tempora eligendi corrupti? Aperiam quos explicabo repellat dicta ab qui laboriosam quo neque itaque!</p>\r\n<p>            Temporibus praesentium, aliquid cum maiores dolore pariatur excepturi culpa facilis quam explicabo sequi rerum voluptatibus eveniet! Minima, ipsum libero blanditiis inventore quos sunt voluptatem sed, fugit accusantium illo sit laudantium!</p>\r\n<p>            Cum modi quas iure magni, ratione quo necessitatibus aspernatur sunt maxime, eaque inventore illum libero quaerat qui officia? Magnam quibusdam eligendi nesciunt enim, vero placeat! Veniam sunt obcaecati et! Distinctio.</p>\r\n<p>            Qui provident, id soluta esse veritatis quisquam, temporibus placeat deserunt quia non ea adipisci sint voluptates eum alias porro earum et sequi quos? Magnam quibusdam tempore cupiditate quidem illo earum.</p>\r\n<p>            Sunt optio distinctio, hic quibusdam magnam fugit assumenda quisquam dolorem excepturi, consectetur pariatur dolores doloribus, amet iure nesciunt minima illo. Praesentium impedit quis saepe architecto repudiandae ea blanditiis hic rem?</p>\r\n<p>            Esse tenetur fugiat laboriosam voluptatum voluptas. Repellendus quam suscipit deleniti distinctio nesciunt atque aliquam, quia quod consectetur obcaecati! Nemo sequi blanditiis veritatis maxime esse praesentium, consequatur vero similique excepturi officia.</p>\r\n<p>            Ullam quas beatae aut eius quibusdam officiis, vel sed libero totam amet, dolorem atque harum voluptatum molestias culpa sunt repudiandae nulla id corrupti maiores modi aspernatur. Consequuntur corrupti dignissimos dolorem!</p>\r\n<p>            Quos quo consequuntur dolores, nihil corrupti ipsa pariatur cum corporis modi facilis, harum laudantium magnam nostrum accusantium beatae. Et consectetur ipsa non distinctio expedita itaque veniam cumque impedit nulla cum?</p>\r\n<p>            Perferendis recusandae delectus, omnis, sit deserunt dignissimos quibusdam veritatis reiciendis ducimus laborum vero exercitationem ullam numquam obcaecati, necessitatibus iure laudantium voluptatum nam. Sapiente mollitia unde ipsum sed neque eius eligendi?</p>\r\n<p>            Dolore magni commodi accusantium ducimus illo aliquam deleniti maiores et atque inventore, quod exercitationem ipsum consequuntur esse corrupti optio eos. Quisquam iure id possimus accusamus, minima ad mollitia accusantium aliquid?</p>\r\n<p>            Dignissimos necessitatibus dolore vel optio recusandae aliquid enim dolorum error quod vitae ad, ut, eligendi atque obcaecati nostrum voluptatum cum sapiente animi incidunt ducimus! Sit explicabo culpa pariatur voluptates. Obcaecati.</p>\r\n<p>            Odit necessitatibus, labore in et vitae eius distinctio consequuntur repudiandae consectetur commodi est praesentium molestias excepturi soluta repellat libero corporis asperiores voluptas explicabo nisi quidem. Repellat repudiandae vel esse amet!</p>\r\n<p>            Numquam dolorum sint nemo eos laudantium officia ex nobis ducimus accusantium adipisci neque iste consectetur voluptates voluptatibus similique facilis autem, eaque unde? Hic eum officiis, enim pariatur deleniti id eligendi.</p>\r\n<p>            Consequuntur delectus quisquam impedit commodi? Odio dolores magni ut assumenda reprehenderit nihil sed architecto modi nobis quo corrupti ipsa at vitae vel neque eveniet doloremque, numquam cupiditate quidem. Velit, perferendis!</p>\r\n<p>            Corporis, iusto similique ratione in minima quis molestiae nisi at architecto beatae nemo suscipit? Magni atque non alias. Rerum reprehenderit laudantium maiores nulla? Totam labore modi ab commodi porro rem.</p>\r\n<p>            Voluptas, doloremque tenetur magnam dignissimos labore quidem corrupti minus repellat accusantium unde architecto nisi laudantium fugiat dolore doloribus, magni, debitis rerum. Voluptatem dolorem eos excepturi aspernatur possimus incidunt ipsam praesentium.</p>\r\n<p>            Libero, quidem consequuntur mollitia velit doloremque, rerum porro tempora, officia facilis quasi sapiente est! Delectus illum expedita cupiditate corrupti dolores cumque ratione assumenda, in sed quos velit sit recusandae sequi.</p>\r\n<p>            Expedita officia quaerat alias dolore numquam adipisci nostrum suscipit amet nam tempore dolorem eaque assumenda tenetur dolorum quos iste, minima pariatur, aut odio eos recusandae velit quibusdam. Dolorem, architecto harum.</p>\r\n<p>            Vitae asperiores amet voluptatem rerum quod, eaque et quaerat neque perferendis natus, sint dignissimos in aut commodi earum? Quam, cum. Odio temporibus labore debitis sapiente, accusamus error quo ad reiciendis?</p>\r\n<p>            Est, voluptas repellendus aperiam porro quo illum unde vitae odio, fugit et a vel quod totam omnis eaque quasi earum odit eveniet veritatis! Blanditiis veniam minima dolore mollitia, iste voluptate?</p>\r\n<p>            Cumque natus deserunt perferendis repudiandae sit, accusamus quos obcaecati saepe suscipit qui sed consequatur eaque aliquid fugit dolor perspiciatis incidunt voluptates tenetur sequi minima voluptate numquam? Laboriosam esse numquam aperiam.</p>\r\n<p>            Tempore excepturi praesentium velit aliquam! Porro, architecto sed cum beatae ut quibusdam at eos tempore praesentium. Ipsum vero error nesciunt nulla laboriosam. Quis, labore cumque! Adipisci inventore tempore hic sit!</p>\r\n<p>            Voluptates nisi est obcaecati accusantium ipsa incidunt, aut nesciunt mollitia facere similique, eligendi alias. Vero illo temporibus odit magnam facilis, enim ratione voluptatibus eligendi asperiores aut voluptatum similique, doloremque ipsam.</p>\r\n<p>            Eligendi pariatur odio sunt provident, maiores dolor architecto optio fugiat temporibus exercitationem facere, quas error fugit eum labore quo, est deserunt a. Autem asperiores quis beatae doloremque esse doloribus delectus.</p>', '2020-05-15', '2020-05-22', '2020-05-22', '09:30:16', 'assets/img/postingan-turnamen/turnamen_Ngabuburit Battle PUBG BALIKPAPAN.jpg', 6);

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_postingan_game`  AS  select `game`.`id_game` AS `id_game`,`game`.`judul` AS `judul`,`game`.`developer` AS `developer`,`game`.`genre` AS `genre`,`game`.`deskripsi` AS `deskripsi`,`game`.`tanggal_masuk` AS `tanggal_masuk`,`game`.`tanggal_edit` AS `tanggal_edit`,`game`.`rating` AS `rating`,`game`.`foto` AS `foto`,`game`.`id_admin` AS `id_admin`,`admin`.`username` AS `author` from (`game` join `admin`) where `game`.`id_admin` = `admin`.`id_admin` ;

-- --------------------------------------------------------

--
-- Structure for view `view_postingan_game_news`
--
DROP TABLE IF EXISTS `view_postingan_game_news`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_postingan_game_news`  AS  select `game_news`.`id_game_news` AS `id_game_news`,`game_news`.`judul` AS `judul`,`game_news`.`deskripsi` AS `deskripsi`,`game_news`.`tanggal_masuk` AS `tanggal_masuk`,`game_news`.`tanggal_edit` AS `tanggal_edit`,`game_news`.`foto` AS `foto`,`game_news`.`id_game` AS `id_game`,`game_news`.`id_admin` AS `id_admin`,`admin`.`username` AS `author`,`game`.`judul` AS `nama_game` from ((`game_news` join `admin`) join `game`) where `game_news`.`id_admin` = `admin`.`id_admin` and `game_news`.`id_game` = `game`.`id_game` ;

-- --------------------------------------------------------

--
-- Structure for view `view_tim`
--
DROP TABLE IF EXISTS `view_tim`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tim`  AS  select `tim`.`id_tim` AS `id_tim`,`tim`.`nama_tim` AS `nama_tim`,`tim`.`nama_anggota_1` AS `nama_anggota_1`,`tim`.`nama_anggota_2` AS `nama_anggota_2`,`tim`.`nama_anggota_3` AS `nama_anggota_3`,`tim`.`nama_anggota_4` AS `nama_anggota_4`,`tim`.`nama_anggota_5` AS `nama_anggota_5`,`tim`.`nohp` AS `nohp`,`tim`.`email` AS `email`,`tim`.`status` AS `status`,`tim`.`logo_tim` AS `logo_tim`,`tim`.`id_turnamen` AS `id_turnamen`,`turnamen`.`judul` AS `judul`,`turnamen`.`penyelenggara` AS `penyelenggara`,`admin`.`id_admin` AS `id_admin` from ((`tim` join `turnamen`) join `admin`) where `tim`.`id_turnamen` = `turnamen`.`id_turnamen` and `turnamen`.`id_admin` = `admin`.`id_admin` ;

-- --------------------------------------------------------

--
-- Structure for view `view_turnamen`
--
DROP TABLE IF EXISTS `view_turnamen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_turnamen`  AS  select `turnamen`.`id_turnamen` AS `id_turnamen`,`turnamen`.`judul` AS `judul`,`turnamen`.`penyelenggara` AS `penyelenggara`,`turnamen`.`platform` AS `platform`,`turnamen`.`jumlah_tim` AS `jumlah_tim`,`turnamen`.`jumlah_anggota` AS `jumlah_anggota`,`turnamen`.`deskripsi_lomba` AS `deskripsi_lomba`,`turnamen`.`deadline_pendaftaran` AS `deadline_pendaftaran`,`turnamen`.`tanggal_pelaksanaan` AS `tanggal_pelaksanaan`,`turnamen`.`tanggal_berakhir` AS `tanggal_berakhir`,`turnamen`.`jam_mulai` AS `jam_mulai`,`turnamen`.`foto_sampul` AS `foto_sampul`,`turnamen`.`id_admin` AS `id_admin`,`admin`.`username` AS `username`,`admin`.`nohp` AS `nohp`,`admin`.`email` AS `email`,`admin`.`nama` AS `nama`,`admin`.`norek` AS `norek`,(select count(0) from `tim` where `tim`.`id_turnamen` = `turnamen`.`id_turnamen` and `tim`.`status` = 'lunas') AS `jumlah_pendaftar` from (`turnamen` join `admin`) where `turnamen`.`id_admin` = `admin`.`id_admin` ;

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
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `game_news`
--
ALTER TABLE `game_news`
  MODIFY `id_game_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tim`
--
ALTER TABLE `tim`
  MODIFY `id_tim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `turnamen`
--
ALTER TABLE `turnamen`
  MODIFY `id_turnamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
