-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2020 at 12:35 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `efi_flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('04fa2001cd1b');

-- --------------------------------------------------------

--
-- Table structure for table `blog_user`
--

CREATE TABLE `blog_user` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL
) ;

--
-- Dumping data for table `blog_user`
--

INSERT INTO `blog_user` (`id`, `name`, `email`, `password`, `is_admin`) VALUES
(1, 'admin', 'admin@admin.com', 'pbkdf2:sha256:150000$iEdThDXc$ba0cc00db19354bb845f0fd3783baee4745d808e3e0655945e4c5466e36ba49f', 1),
(2, 'User67843', 'user@user.com', 'pbkdf2:sha256:150000$mU3e4RwN$ea8f7765eee7569df6c88937db826371ce5938f37b531b540d225bfd8dac8836', 0),
(3, 'EdgyUser666', 'test@test.com', 'pbkdf2:sha256:150000$MGDpjUDw$f2ea3a70ad4842fb5234cd3402b2ef79565cf37ade88bf30c04ed462c61c4bc2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `post_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `user_name`, `post_id`, `content`, `created`) VALUES
(13, 3, 'EdgyUser666', 1, 'Wow! Cant wait to play.', '2016-12-12 20:53:01'),
(14, 2, 'User67843', 1, '???? Place in queue: 7122. <br/>\r\nEstimated time to log in: 22 hours.', '2016-12-13 00:53:19'),
(15, 2, 'User67843', 3, 'Looks alright.', '2020-11-26 20:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `content` text DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `logo_url` text NOT NULL,
  `video_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`id`, `name`, `content`, `img_url`, `logo_url`, `video_url`) VALUES
(1, 'Warlock', 'Harnessing dark magics, the Warlock is a medium-ranged caster that relies on empowered Talismans—floating supernatural writings that can be consumed or unleashed to great effect—to protect or attack. Through their Talismans they primarily focus on summoning visceral and nefarious restraints and weapons, like spikes and chains.\r\n<br/><br/>\r\nWhile the Warlock can be considered a glass cannon, they have a number of ways to keep their enemies at bay, not the least of which is their ability to summon a giant demonic Thrall to finish off their enemies. By keeping enemies at a distance, marking them with limited-time debuffs, and mastering their lengthy ability cooldowns, a Warlock can be a difficult—but rewarding—martial art to master.\r\n<br/><br/>\r\nTheir flamboyant attitude is matched only by their deadly cunning, but catch a Warlock off guard and their cocky expression could be wiped from their face; just keep an eye out for the giant demon.', 'https://cdn.discordapp.com/attachments/781314092140331068/781574805199650827/bg_warlock.jpg', 'https://cdn.discordapp.com/attachments/781314092140331068/781562846282121266/icon_warlock.png', 'https://static.bladeandsoul.com/video/classes/warlock/warlock_button_loop.webm'),
(2, 'Warden', 'Wielding a massive greatsword, the Warden is both capable of absorbing punishment and unleashing it upon its foes. This resilient tank will decimate all those who stand in its way, even if it must spill its own blood to do so.\r\n<br/><br/>\r\nMastery of the Warden involves the balance of when to control the enemy and neutralize their attacks and when to unleash their fury to slay the enemy. The Warden is mobile as well, able to maneuver around the battlefield in order to deflect opponent attacks and intercept their targets.\r\n<br/><br/>\r\nThe Warden will choose the path of Lightning or Frost. The Lightning Warden embodies the chaos of a storm and uses Frenzy Stance to furiously slash at its enemies with no regard for its own life. The Frost Warden embraces the elements, using the power of the sun and moon to enter an enlightened state of Sentry Stance and overwhelm the opponent with devestating strikes.', 'https://cdn.discordapp.com/attachments/781314092140331068/781588010742710276/bg_warden.jpg', 'https://cdn.discordapp.com/attachments/781314092140331068/781562843006631956/icon_warden.png', 'https://static.bladeandsoul.com/video/classes/warden/warden_loop.webm'),
(3, 'Destroyer', 'True to their name, Destroyers have the most stopping power of any class in Blade & Soul. With their overwhelming presence, Destroyers provoke enemies into attacking them as the biggest threat around. Once they have their opponent’s attention, they overpower all who stand in their way.\r\n<br/><br/>\r\nThe iconic skill of the Destroyer is their ability to Grab a staggered enemy, dominating them in battle as they are left defenseless before the Destroyer’s might. Fallen opponents become weapons as the Destroyer hurls them into other enemies, while friends who could not keep up are safely carried out of harm’s way.\r\n<br/><br/>\r\nThe Destroyer’s strong attack power and defensive skill make them seem like a lone wolf, but they are most effective in group combat. They complement other classes like the Assassin, Force Master, or Kung Fu Masters, allowing each to set up devastating combinations and Joint Attacks.', 'https://cdn.discordapp.com/attachments/781314092140331068/781588914339053568/bg_destroyer.jpg', 'https://cdn.discordapp.com/attachments/781314092140331068/781562839890395146/icon_destroyer.png', 'https://static.bladeandsoul.com/video/classes/destroyer/destroyer_loop.webm'),
(4, 'Archer', 'Unlike their ranged combat counterparts, the Zen Archer approaches the battlefield with relative calm. As chaos reigns in the middle of combat, Zen Archers can adapt to any scenario while maintaining a harmonic balance of control and precision in the heat of battle.\r\n<br/><br/>\r\nThe Zen Archer can only truly achieve perfection of their skills by sustaining inner peace while in the throes of battle. Their intent is to use nothing more than their bow to unleash a flurry of sharpened destruction, taking down all those who oppose them with absolute composure.\r\n<br/><br/>\r\nThe Zen Archer can follow either the path of Light or the Wind. A Zen Archer specialized as a Lightbringer will leverage the harmony of light and sound to perfect their attacks as they seamlessly flow through combat. Zen Archers that follow the Way of the Windpiercer excel at targeting their enemies’ weakest point with unparalleled precision.', 'https://cdn.discordapp.com/attachments/781314092140331068/781588891760459776/bg_archer.jpg', 'https://cdn.discordapp.com/attachments/781314092140331068/781562833468260403/icon_archer.png', 'https://static.bladeandsoul.com/video/classes/archer/archer_loop.webm'),
(5, 'Assassin', 'While most classes charge in bold and daring, the Assassin is a stealthy sort that prefers to take things at their own pace. They can control the battlefield like no other, luring enemies into deadly traps before they even know what hit them.\r\n<br/><br/>\r\nThe Assassin whittles away at an enemy’s strength with rapid fire attacks that cause bleeding and poison damage, which drain the life from their foes over time. While their razor-sharp Dagger is vital, they also employ explosives, poisons, smoke, and other potent utilities to hobble their enemies. On top of their ingenuity, they can also use strange martial arts that allow them to turn invisible, teleport around the field, and even swap places with enemies in an instant.\r\n<br/><br/>\r\nMore so than others, Assassins work best alone. However, their status-altering abilities and damage-over-time effects make them an important addition to any large-scale battle.', 'https://cdn.discordapp.com/attachments/781314092140331068/781588910588690492/bg_assassin.jpg', 'https://cdn.discordapp.com/attachments/781314092140331068/781562836823310386/icon_assassin.png', 'https://static.bladeandsoul.com/video/classes/assassin/assassin_button_loop.webm');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `product` text NOT NULL,
  `office` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `title_slug` varchar(256) NOT NULL,
  `content` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `img_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `user_id`, `title`, `title_slug`, `content`, `created`, `img_url`) VALUES
(1, 1, ' Blade & Soul is live!', 'blade-soul-live', 'Let your journey begin! <br/>\r\nGame is up and running!\r\n', '2016-12-12 02:38:59', 'https://cdn.discordapp.com/attachments/781314092140331068/781624698525581353/bnslogo.png'),
(2, 1, 'TERA is Live!', 'tera-live', 'Our first game has finally been released! <br/>\r\nWe’ll keep a close eye on server status.\r\n', '2020-11-24 08:10:47', 'https://cdn.discordapp.com/attachments/781314092140331068/781624612085301258/TERA_Logo.png'),
(3, 1, 'Blade & Soul page is up!', 'blade-soul-page-up', 'It’s our first release on this new site, ironing out details.\r\n', '2020-11-26 20:45:16', 'https://cdn.discordapp.com/attachments/781314092140331068/781624941740818442/bns_post.png'),
(4, 1, 'TERA page announcement', 'tera-page-announcement', 'We’re now ready to work full steam on our second page release! <br/> Please bare with us.', '2020-11-26 20:46:12', 'https://cdn.discordapp.com/attachments/781314092140331068/781625412991975424/tera_post.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `content` text DEFAULT NULL,
  `img_url` text DEFAULT NULL,
  `logo_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `race`
--

INSERT INTO `race` (`id`, `name`, `content`, `img_url`, `logo_url`) VALUES
(1, 'Gon', 'The Gon believe that their ancestors were born from the breath of Dragons and they embrace this legend with pride.\r\n<br/><br/>\r\nPhysical power and combative skill are treasured among the Gon. They seek to make themselves strong, capable, and able to overcome any challenge, and use their might for the good of others. This can make Gon somewhat easy to trick, as the greedy use the Gon\'s intimidating physique and trusting nature for personal gain. However, if you are true, friendships established with Gon are as strong as steel and you would have earned their loyalty for life.\r\n<br/><br/>\r\nIn their day to day lives, Gon move and speak at a calm and measured pace. This deliberate pacing was started to help nullify the other Gon trait: their famously short tempers. With their massive frame and incredible strength, little can stand in the way of these mighty people once a Gon has been moved to anger.', 'https://cdn.discordapp.com/attachments/781314092140331068/781603426764455976/bg_gon.png', 'https://cdn.discordapp.com/attachments/781314092140331068/781562948723539988/logo_gon.png'),
(2, 'Lyn', 'The Lyn, with their large ears and dainty tails, are descendants from the Kirin, legendary animals that were both mischievous and unpredictable\r\n<br/><br/>\r\nThe Lyn have not survived in this dangerous world by mere chance; they have innately acute senses which steer them clear from danger and allow them to see treachery and deception where others cannot. More famously, the Lyn use these highly attuned senses to converse with beings from the Spirit Realm granting them the ability to commune with Familiars and harness the power of the earth.\r\n<br/><br/>\r\nThe Lyn are known for their somewhat unpredictable nature. During a single conversation, it is not unusual for a Lyn to convey a multitude of emotions, including hatred, fear, jealousy, love, and respect.', 'https://cdn.discordapp.com/attachments/781314092140331068/781603434327310356/bg_lyn.png', 'https://cdn.discordapp.com/attachments/781314092140331068/781562954633183232/logo_lyn.png'),
(3, 'Yun', 'The Yun are a purely female race intrinsically entwined to the natural world. The planet serves as a guide for all Yun: they are heavily attuned to the rhythms of nature and dance to its tempo.\r\n<br/><br/>\r\nThe Funghuang, a mythical Asian bird, has passed her traits of elegance and grace to her descendants. The Yun’s innate aesthetic skills make them some of the best artisans in all the realm. Other races look to them as the pinnacle of artistic skill and creativity, as the Yun weave beauty into everything they do. The Yun have become increasingly involved in modern society as they look to restore balance to the world.\r\n<br/><br/>\r\nDignity is key to the Yun, and while they are able combatants, they balance their time spent fighting by teaching and meditating with others.', 'https://cdn.discordapp.com/attachments/781314092140331068/781603435354652692/bg_yun.png', 'https://cdn.discordapp.com/attachments/781314092140331068/781562956412485672/logo_yun.png'),
(4, 'Jin', 'The word \"Jin\" means \"Unyielding Effort\" in the ancient language of the eastern continent. It is this characteristic that still defines the Jin people, who make up most of the world\'s most celebrated people.\r\n<br/><br/>\r\nJin warriors may look fairly ordinary, and are certainly smaller than their Gon counterparts, but beneath a somewhat plain exterior lays incredible strength and tenacity, typical of the heirs of the Black Tortoise. Their versatility and never-say-die attitude gives Jin warriors a reputation that few would risk testing in the battlefield.\r\n<br/><br/>\r\nJin people are often friendly and considerate with a strong notion of right and wrong. Their warriors are often found traveling the continents, helping the needy by working selflessly wherever they were needed.', 'https://cdn.discordapp.com/attachments/781314092140331068/781603431294959646/bg_jin.png', 'https://cdn.discordapp.com/attachments/781314092140331068/781562954545889310/logo_jin.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `blog_user`
--
ALTER TABLE `blog_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title_slug` (`title_slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_user`
--
ALTER TABLE `blog_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `blog_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
