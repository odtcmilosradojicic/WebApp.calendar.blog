-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 10:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berberinjo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 10, 8, '2021-05-19 11:18:16', '2021-05-19 11:18:16'),
(8, 13, 8, '2021-06-02 07:49:13', '2021-06-02 07:49:13'),
(14, 13, 11, '2021-06-02 17:59:35', '2021-06-02 17:59:35'),
(16, 13, 12, '2021-06-07 17:48:54', '2021-06-07 17:48:54'),
(20, 13, 33, '2021-06-08 09:00:39', '2021-06-08 09:00:39'),
(21, 10, 67, '2021-06-08 09:15:46', '2021-06-08 09:15:46'),
(22, 10, 66, '2021-06-08 09:15:51', '2021-06-08 09:15:51'),
(23, 10, 11, '2021-06-08 09:15:56', '2021-06-08 09:15:56'),
(25, 13, 66, '2021-06-08 09:16:38', '2021-06-08 09:16:38'),
(26, 13, 67, '2021-06-08 09:19:16', '2021-06-08 09:19:16'),
(27, 10, 12, '2021-06-08 13:44:50', '2021-06-08 13:44:50'),
(28, 10, 7, '2021-06-08 13:45:00', '2021-06-08 13:45:00'),
(29, 10, 13, '2021-06-08 13:45:06', '2021-06-08 13:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2021_05_26_205435_create_posts_table', 2),
(8, '2021_05_31_111051_create_likes_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(7, 10, 'Title', 'Phasellus pellentesque nunc eget accumsan condimentum. Mauris vitae rhoncus magna, sed imperdiet sem. Integer facilisis pellentesque ornare. Curabitur pulvinar, nisi id ullamcorper aliquet, turpis odio semper elit, sit amet egestas magna orci eu nunc. Nunc fermentum gravida lorem, eget bibendum turpis iaculis quis. Phasellus malesuada tincidunt velit, id interdum elit molestie nec. Donec eget placerat ex, ac malesuada est. Fusce nibh neque, bibendum eget rhoncus eget, interdum sit amet ex. Etiam dolor lectus, blandit nec suscipit nec, eleifend bibendum ex. Quisque nec feugiat tortor, ut finibus turpis.', '2021-05-27 09:33:14', '2021-05-27 09:33:14'),
(8, 16, 'Milanov naslov', 'Mauris laoreet augue in dolor aliquam, nec tempus nibh vehicula. Praesent euismod aliquet massa, et semper mi interdum sed. Sed imperdiet urna eget dui dignissim, nec pretium augue interdum. Suspendisse sed lacus tortor. Maecenas vel lectus convallis, fermentum turpis eget, mollis magna. Maecenas magna quam, convallis eu dolor non, eleifend finibus purus. Proin ultricies laoreet vestibulum. Phasellus semper dolor ante, id malesuada lectus viverra et. Sed sit amet euismod ante. Duis lacinia varius magna et rhoncus. Donec ipsum elit, scelerisque ac sapien a, consectetur tincidunt quam. Vestibulum aliquet convallis dolor, non fermentum nunc. Phasellus non mauris nec risus ornare eleifend.', '2021-05-27 09:58:15', '2021-05-27 09:58:15'),
(11, 10, 'Magnam odio.', 'Autem voluptas autem ad neque excepturi doloremque itaque unde qui perferendis eum et ullam illo et autem id id veritatis inventore quibusdam amet fugit rerum et placeat nulla.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(12, 10, 'Illo dolorum.', 'Deserunt esse quam ut qui aperiam vero eius omnis possimus enim quis repellat sunt vel temporibus quis enim molestias veritatis ea unde quae.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(13, 10, 'Est veritatis aut.', 'Cumque ab ad et et nihil et eum eius in consequatur adipisci debitis molestias omnis quibusdam voluptatem neque voluptatem reprehenderit beatae recusandae optio accusantium rerum sed omnis vitae earum est inventore alias minima ex rerum dolorem corporis vel.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(14, 10, 'Placeat et.', 'Et dicta aut occaecati aut perspiciatis odio consequatur in aut voluptatem laudantium eligendi nihil eaque quia laborum voluptas eum omnis omnis quia debitis nam eveniet nobis animi est molestiae tenetur at sit magnam est et at laboriosam maiores dolorem.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(15, 10, 'Sequi soluta.', 'Enim ipsum deserunt quam iusto eveniet delectus ex aut iure nemo aut perferendis et eius odio facilis odit in qui ipsa deserunt voluptatibus sit incidunt ullam eum dolor labore quisquam.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(16, 10, 'Nam dolorem.', 'Alias molestiae at non in ut tenetur voluptatum non odio cupiditate excepturi ut earum voluptatum repudiandae est in aliquam velit ex voluptatibus et in reprehenderit eligendi quia aut aspernatur voluptatem culpa vel nam aut sed beatae voluptatem molestiae voluptatem eum.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(17, 10, 'Quibusdam provident sint.', 'Sed consequatur doloremque voluptate qui est dolor nulla vel sequi qui sed fuga eos quo quam illum et dolorem praesentium est ea beatae ut laborum.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(18, 10, 'Sit commodi officia.', 'Est ipsum dolores magni excepturi minus magni quia distinctio aliquid et libero quibusdam praesentium in dicta ipsa sunt aliquam qui ipsum et id perferendis facere quidem aut ut architecto autem soluta quia perspiciatis aut dignissimos dignissimos qui ullam explicabo aut magni maiores et.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(19, 10, 'Ex at laborum.', 'Similique corrupti quae voluptatem qui vero distinctio in alias molestiae labore molestias sequi explicabo nihil possimus et qui delectus debitis aperiam exercitationem minima libero commodi a tempore ut quam rem est veritatis illo.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(20, 10, 'Dolores laboriosam voluptatem.', 'Non sequi amet magni aspernatur eius nisi et sit et officiis cupiditate est est vel similique esse iure pariatur quis quia consequatur accusamus nobis cum explicabo sed illo expedita tenetur deleniti dolorem fugiat natus et sunt.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(21, 10, 'Placeat et.', 'Aut architecto consequatur aut qui ipsam voluptatem et nisi in nam sed odit cum aut voluptatem ipsa delectus et aut voluptatum numquam ipsum dolores voluptate necessitatibus nisi cupiditate aut modi qui recusandae mollitia ut doloribus ab eligendi aperiam aut quas voluptas ab occaecati.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(22, 10, 'Modi dolor.', 'Quam assumenda nulla non neque velit omnis quos fugit officiis itaque enim possimus voluptatem voluptatum et rem impedit in deserunt aut quo quasi et earum ut quod corporis quis non deleniti ullam repellat adipisci ea ducimus iure voluptatem quisquam nesciunt.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(23, 10, 'Suscipit ratione.', 'Inventore voluptatem vero reprehenderit tempora in qui ducimus et soluta amet repellendus et exercitationem temporibus et exercitationem quis vel qui corporis eius voluptatem quisquam veniam sequi consequuntur ea delectus et deserunt qui voluptas iure quis aliquid dolor eos rerum sed aliquid.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(24, 10, 'Quo corrupti.', 'Modi repellendus itaque odio consequatur quaerat assumenda quibusdam neque voluptatem et deleniti similique autem consequatur incidunt eos non ullam eligendi atque dicta consequatur non commodi dolor cum sequi earum placeat quidem.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(25, 10, 'Atque quae.', 'Illum voluptates sunt vitae sint inventore ea sit iste omnis incidunt ut voluptatem voluptatem qui consequatur officiis iste voluptates animi pariatur enim occaecati aperiam velit suscipit animi perspiciatis perferendis sed ipsa nam officiis ratione quae cum placeat in debitis perferendis dolor veniam.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(26, 10, 'Aut saepe velit.', 'Nulla ullam suscipit voluptatum nobis repudiandae consequatur inventore at est repellendus voluptate nemo possimus alias sed unde reprehenderit enim quae atque distinctio velit maxime nemo.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(27, 10, 'Sunt architecto veritatis.', 'Pariatur in veritatis minus id et enim accusamus consequatur laudantium molestiae qui et ut asperiores qui quia quia rerum libero aut quod.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(28, 10, 'Aspernatur aperiam vitae.', 'Omnis voluptatibus repellendus explicabo deleniti dicta officiis qui sed dolorem ut qui earum ut quis voluptatem odit et sed adipisci vel beatae assumenda non sit possimus nam explicabo quas.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(29, 10, 'Ut asperiores.', 'Ea omnis pariatur fuga sit et porro iusto et sunt accusamus doloremque assumenda ipsa et quasi qui harum enim.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(30, 10, 'Reiciendis eum.', 'Eaque illum est soluta et ut distinctio qui doloremque et dicta accusamus ad qui est nostrum et commodi eum.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(31, 10, 'Deserunt cumque.', 'Ut praesentium et et quisquam omnis illum recusandae recusandae repudiandae corrupti dicta animi eum eius placeat illum aut neque atque sit aut et ipsum est nostrum at laboriosam et id voluptatem voluptatem qui eligendi itaque rem.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(32, 10, 'Consequuntur ut.', 'Est necessitatibus minus consequuntur tempora eum rerum voluptates sapiente qui suscipit ducimus perferendis qui quas ab expedita adipisci a eos et.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(33, 10, 'Sed nobis debitis.', 'Aut at suscipit aliquid non et cupiditate ea reprehenderit sequi aut qui ut ut est tenetur soluta id sed rem est voluptates quo necessitatibus aperiam odio quibusdam sunt aut eligendi ut optio ipsam vel autem voluptas et.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(34, 10, 'Qui possimus accusantium.', 'Repellendus blanditiis qui rem quia consequatur adipisci ipsum sed delectus repellat voluptatem nihil et aliquam et qui impedit excepturi iste ut.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(35, 10, 'Aliquid molestiae aut.', 'Ipsam deleniti dolorem numquam ducimus dolore officia accusantium ea eligendi quo quibusdam nihil soluta quas occaecati commodi tenetur incidunt fugiat voluptates qui dolorum velit qui.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(36, 10, 'Est aliquam eos.', 'Necessitatibus aperiam totam qui nobis mollitia voluptas aut harum occaecati labore asperiores impedit aliquam eum labore et consequuntur voluptates voluptatem at alias vel veritatis et sunt consectetur animi minus ut et ut ad doloribus ipsam nihil.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(37, 10, 'Architecto impedit.', 'Omnis expedita et consectetur repellat animi perspiciatis est illum qui error ipsa quos voluptas ex et omnis a eos sint nemo dolore omnis in in nobis necessitatibus.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(38, 10, 'Fuga molestias autem.', 'Eum eius molestias consequatur amet blanditiis ipsam exercitationem necessitatibus molestias culpa sequi architecto vel dolores magni voluptatem rerum ducimus cupiditate qui ut officia rerum velit nemo impedit maxime minus id quibusdam dolorem et.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(39, 10, 'Consectetur voluptas.', 'Quasi minima nam dolorem voluptatibus non quia dignissimos nostrum odio quasi aut consequatur accusantium et nesciunt accusantium iste nobis tempora aut id molestiae.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(40, 10, 'Qui fugiat et.', 'Dolores quos voluptas eveniet nihil laudantium voluptas voluptatem distinctio asperiores quod quia a et nihil dolorum perferendis nihil reiciendis molestias ipsa ut ut fuga natus numquam omnis minus rerum est exercitationem similique nesciunt asperiores incidunt rerum perferendis error autem eius ea tempore.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(41, 10, 'Modi et.', 'Omnis ullam tempora reiciendis porro sunt quia facere ut nam iure et ab et similique distinctio deleniti eos sed autem in vero minima debitis quis omnis voluptatem vitae autem porro ullam ex facere delectus sit voluptatem assumenda est illum et unde quia.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(42, 10, 'Fugiat voluptas dolor.', 'Velit odio sed ut ullam saepe ut dolores ut accusamus qui doloribus corporis nulla enim voluptate vel perspiciatis eligendi quae itaque delectus repudiandae odio quo sit consequatur iure expedita quasi et repellendus aliquam et consequatur et unde eligendi.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(43, 10, 'Magnam quis.', 'Sit quibusdam quo et laboriosam minus accusamus rem tempore soluta dolor laboriosam atque dolorem quos illo deleniti voluptas culpa ullam officiis et ea ea necessitatibus voluptas quo et in et odit ipsam voluptatem dicta laudantium quae dolor totam dignissimos rerum voluptatibus.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(44, 10, 'Rem dolorem architecto.', 'Nostrum doloribus accusamus dolores aut possimus pariatur dolores neque iste magni tempore occaecati aliquid impedit non aut ea aliquam aliquid nam sed eligendi aliquid assumenda voluptas ut quis reiciendis odio sit quia veritatis maxime aut aspernatur officiis eos dolores fugit eligendi enim vitae.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(45, 10, 'Quaerat tempora et.', 'Omnis ut minus laborum ea saepe asperiores voluptatem quis labore voluptatem ipsum velit tempora sunt sunt rem perspiciatis beatae laborum accusantium corrupti provident nostrum doloribus et et nam quis similique sed.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(46, 10, 'Quaerat eveniet.', 'Sit consequatur eius a eveniet totam in sint nam rem ea asperiores nihil quam perferendis est perspiciatis qui autem quidem nihil ipsa ad aut.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(47, 10, 'Ipsa nulla et.', 'Perferendis nihil numquam aperiam quis voluptas autem aspernatur pariatur eos vel recusandae sit voluptatem qui qui cumque quos odit.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(48, 10, 'Et magni.', 'Aut voluptas corrupti dolore fugit quis aut delectus asperiores blanditiis sit harum sit sit ratione eum eveniet ea temporibus corrupti autem itaque et animi tenetur.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(49, 10, 'Reprehenderit deserunt nihil.', 'Ut non doloremque mollitia voluptatem tempore nulla quis est et laboriosam nihil distinctio maxime veritatis maxime et sed ad illum eveniet consequatur dolores suscipit.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(50, 10, 'Laboriosam tempora.', 'Qui aut quidem harum et nam eum et ut nihil alias sit molestias deleniti assumenda omnis qui corporis possimus exercitationem quaerat cumque consectetur porro magni mollitia reiciendis debitis excepturi doloribus suscipit ut veniam porro unde quia est veniam ab aspernatur.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(51, 10, 'Voluptas similique.', 'Autem reprehenderit voluptatem amet aut ea repellat aut placeat quia necessitatibus velit natus id vitae maiores aut tempora molestiae saepe necessitatibus assumenda occaecati doloremque harum deserunt necessitatibus ad a eveniet rerum vel ipsum qui hic exercitationem et ducimus deleniti voluptatem non cum sit.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(52, 10, 'Non facere velit.', 'Inventore ut voluptas vero et adipisci similique occaecati excepturi qui nisi occaecati quia praesentium explicabo voluptatum iusto aut architecto soluta repellat saepe autem quia inventore velit non.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(53, 10, 'Ipsa cumque.', 'Quibusdam animi provident quo ut non voluptas asperiores magnam inventore ab est numquam ea eius voluptate vel consequatur architecto quaerat necessitatibus culpa est.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(54, 10, 'Est et qui.', 'Libero consequatur in voluptates et et et quia omnis recusandae aliquam optio odio perspiciatis est ut eligendi consequuntur totam est molestiae est reiciendis earum ut maxime eligendi veniam voluptatibus aut consequatur et officiis velit soluta.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(55, 10, 'Sed reiciendis assumenda.', 'Deleniti facere rerum est quia corrupti maiores et quia aut molestiae et cupiditate et eligendi eum ullam consequatur voluptate velit et praesentium libero molestiae enim est accusantium.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(56, 10, 'Ut fugiat.', 'Sed quidem dolor earum dolorem fugit consequatur veritatis officiis voluptatem quisquam enim quisquam dolores inventore accusantium culpa quia aliquid provident aliquid explicabo quod est est delectus autem tempora cumque neque repellendus sunt aut et repellendus et.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(57, 10, 'Qui tenetur consequatur.', 'Ea repellat quam eos nobis rerum et ipsa est maiores sit tempora assumenda iusto dolorem hic natus cum eos deleniti sunt.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(58, 10, 'Quasi iste.', 'Sit cumque vel fugit delectus et mollitia totam facilis quisquam consequatur unde est aut atque alias quae aliquam ex iusto illo labore molestiae deleniti libero ad vitae aliquam magni iste commodi illo in dicta et suscipit dolorum.', '2021-05-27 10:17:18', '2021-05-27 10:17:18'),
(66, 13, 'Novi naslov dasd', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-07 18:12:27', '2021-06-07 18:12:27'),
(67, 13, 'Milanov naslov dasd', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-06-07 18:25:55', '2021-06-07 18:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(10, 'mare', 'MareFox', 'mare@mare.com', NULL, '$2y$10$2t3Uf.UVBkFD5Kon/47RH.Ai.5Hpgbxt2DFuyXB/5cUk8I985/sAK', NULL, '2021-05-18 08:18:36', '2021-05-18 08:18:36'),
(13, 'Dzo', 'Dzoni', 'test@test.com', NULL, '$2y$10$xL3hIjFywKQPL1BY8Gq7rOgWKw/22kzHw7klRjRWK1pfG73sPlOz6', NULL, '2021-05-25 08:15:15', '2021-05-25 08:15:15'),
(16, 'milan', 'miki', 'miki@miki.com', NULL, '$2y$10$cixgyB2zoAUcjRA6lrZwZ.Uv6vuyAVNHUXt8Iut2I/E6f4D06dcvW', NULL, '2021-05-27 09:57:52', '2021-05-27 09:57:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
