-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: Lug 06, 2014 alle 16:26
-- Versione del server: 5.5.37
-- Versione PHP: 5.4.4-14+deb7u11

 -- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ghirelli_02`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `mg_adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_MG_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_MG_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_MG_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=89 ;

--
-- Dump dei dati per la tabella `mg_adminnotification_inbox`
--

INSERT INTO `mg_adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-25 03:24:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 1, 0),
(2, 4, '2008-08-02 03:30:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 1, 0),
(3, 3, '2008-08-02 03:40:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 1, 0),
(4, 3, '2008-08-13 19:51:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 1, 0),
(5, 1, '2008-09-02 23:10:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 1, 0),
(6, 3, '2008-09-16 00:09:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 1, 0),
(7, 3, '2008-09-17 22:18:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 1, 0),
(8, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(9, 3, '2008-11-20 05:31:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 1, 0),
(10, 3, '2008-11-27 01:24:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 1, 0),
(11, 3, '2008-12-30 11:45:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 1, 0),
(12, 2, '2008-12-31 01:59:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 1, 0),
(13, 2, '2009-01-13 00:41:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 1, 0),
(14, 3, '2009-01-24 04:25:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 1, 0),
(15, 3, '2009-02-03 01:57:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 1, 0),
(16, 3, '2009-02-24 04:45:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 1, 0),
(17, 3, '2009-02-27 05:39:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 1, 0),
(18, 2, '2009-03-04 03:03:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 1, 0),
(19, 3, '2009-03-31 04:22:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 1, 0),
(20, 3, '2009-04-18 06:06:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 1, 0),
(21, 3, '2009-05-20 00:31:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 1, 0),
(22, 3, '2009-05-30 00:54:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 1, 0),
(23, 3, '2009-06-01 21:32:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 1, 0),
(24, 3, '2009-07-02 03:21:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 1, 0),
(25, 3, '2009-07-23 08:48:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 1, 0),
(26, 4, '2009-08-28 20:26:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 1, 0),
(27, 2, '2009-09-23 22:16:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 1, 0),
(28, 4, '2009-09-25 16:57:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 1, 0),
(29, 4, '2009-10-07 02:55:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 1, 0),
(30, 4, '2009-12-09 03:30:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 1, 0),
(31, 4, '2009-12-31 13:22:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 1, 0),
(32, 4, '2010-02-13 07:39:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 1, 0),
(33, 3, '2010-02-20 06:39:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 1, 0),
(34, 4, '2010-04-23 22:09:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 1, 0),
(35, 4, '2010-05-31 19:20:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 1, 0),
(36, 4, '2010-06-10 22:08:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 1, 0),
(37, 4, '2010-07-26 23:37:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 1, 0),
(38, 4, '2010-07-28 07:12:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 1, 0),
(39, 4, '2010-07-28 22:15:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 1, 0),
(40, 4, '2010-10-12 02:13:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 1, 0),
(41, 4, '2010-11-09 01:52:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 1, 0),
(42, 4, '2010-12-03 00:33:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 1, 0),
(43, 4, '2010-12-09 02:29:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 1, 0),
(44, 4, '2010-12-18 03:23:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 1, 0),
(45, 4, '2010-12-30 03:51:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 1, 0),
(46, 4, '2011-01-14 04:35:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 1, 0),
(47, 4, '2011-01-22 01:19:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 1, 0),
(48, 4, '2011-01-28 01:27:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 1, 0),
(49, 4, '2011-02-04 01:56:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 1, 0),
(50, 4, '2011-02-08 23:43:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 1, 0),
(51, 4, '2011-02-10 03:42:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 1, 0),
(52, 4, '2011-03-18 23:15:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 1, 0),
(53, 4, '2011-03-31 20:43:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 1, 0),
(54, 4, '2011-04-26 21:21:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 1, 0),
(55, 4, '2011-05-26 21:33:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 1, 0),
(56, 4, '2011-06-15 20:12:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 1, 0),
(57, 4, '2011-06-30 21:03:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 1, 0),
(58, 4, '2011-07-11 21:07:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 1, 0),
(59, 4, '2011-08-19 19:58:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 1, 0),
(60, 4, '2011-09-17 03:31:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 1, 0),
(61, 4, '2011-09-29 17:44:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 1, 0),
(62, 4, '2011-10-19 19:50:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 1, 0),
(63, 4, '2011-12-30 21:39:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 1, 0),
(64, 4, '2012-01-11 21:24:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 1, 0),
(65, 4, '2012-03-02 23:54:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 1, 0),
(66, 4, '2012-04-23 12:02:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 1, 0),
(67, 4, '2012-05-11 07:46:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 1, 0),
(68, 4, '2012-06-20 16:54:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 1, 0),
(69, 4, '2012-07-05 17:21:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 1, 0),
(70, 4, '2012-11-19 19:27:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 1, 0),
(71, 4, '2012-12-07 10:22:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 1, 0),
(72, 4, '2013-01-15 21:02:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 1, 0),
(73, 4, '2013-02-12 16:53:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 1, 0),
(74, 2, '2013-09-27 15:28:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 1, 0),
(75, 4, '2013-12-11 14:35:06', 'Magento Community Edition 1.8.1.0 is here!', 'This new version offers significant tax calculation, product quality, and security enhancements. Be sure to carefully review the upgrade instructions before starting. More information is available at http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1810-is-here/', 1, 0),
(76, 4, '2013-12-12 22:24:39', 'Important Magento Community Edition Patch', 'A security patch is available for Magento Community Edition 1.4.0.0 through 1.7.0.2; the issue has been fixed in Magento Community Edition 1.8.0.0 and later. It resolves a vulnerability discovered through our quarterly penetration testing process and has not been reported by merchants. We encourage all merchants to apply the patch in their next regularly scheduled maintenance cycle. The patch is available at http://www.magentocommerce.com/download in the Magento Community Edition Patches section.', 'http://www.magentocommerce.com/download', 1, 0),
(77, 4, '2014-01-21 17:34:48', 'PHP 5.4 Patch Now Available', 'Magento is advancing its platform and making development more efficient by adding support for PHP 5.4. Patches are available for download at www.magentocommerce.com/download and you can learn more about this update in our blog post at http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54 .', 'http://www.magentocommerce.com/blog/comments/magento-now-supports-php-54', 1, 0),
(78, 4, '2014-02-20 16:51:46', 'Discover Card Validation Patch Available', 'A patch that resolves an issue with validating Discover credit cards is now available for download at http://www.magentocommerce.com/download. More information on the patch is available in the Magento Knowledge Base at http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation', 'http://www.magentocommerce.com/knowledge-base/entry/discover-card-validation ', 1, 0),
(79, 4, '2014-03-04 14:12:26', 'Learn How to Quickly Increase Sales on Your Site', 'Adding the PayPal Express Checkout button to your checkout page can help increase sales 18% on average. It’s fast and easy and you can do it right now to boost sales. Express Checkout is already seamlessly integrated into Community Edition.', 'http://magento.com/paypal/CE_Express_Checkout_NA?utm_source=messagemodule&utm_medium=message&utm_campaign=Ceexpresscheckout', 1, 0),
(80, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(81, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(82, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(83, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(84, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(85, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(86, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(87, 4, '2008-11-08 03:46:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', NULL, 1, 0),
(88, 4, '2014-05-13 14:46:11', 'Magento Community Edition 1.9 is now available!', 'It accelerates your entry into the mobile commerce space by slashing the time and cost of getting a mobile device-friendly responsive site.  And a new Bill Me Later payment option helps boost your sales. Visit http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time to learn more.', 'http://magento.com/blog/magento-news/magento-enables-responsive-sites-half-time', 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_admin_assert`
--

CREATE TABLE IF NOT EXISTS `mg_admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_admin_role`
--

CREATE TABLE IF NOT EXISTS `mg_admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_MG_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_MG_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `mg_admin_role`
--

INSERT INTO `mg_admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'Fabio'),
(3, 1, 2, 0, 'U', 2, 'Walter'),
(4, 1, 2, 0, 'U', 3, 'Walter');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_admin_rule`
--

CREATE TABLE IF NOT EXISTS `mg_admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MG_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_MG_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_admin_rule`
--

INSERT INTO `mg_admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_admin_user`
--

CREATE TABLE IF NOT EXISTS `mg_admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_MG_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_admin_user`
--

INSERT INTO `mg_admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Fabio', 'Travaglini', 'ftravaglini@topimpresa.it', 'ftravaglini', 'fc4698d585fde05070a20482396a0fc1:XO7MfuC6EMUROBypucCRyxdtQI2TcfLI', '2014-05-05 08:09:02', '2014-05-05 08:09:02', '2014-06-16 12:03:12', 26, 0, 1, 'a:1:{s:11:"configState";a:61:{s:36:"themeoptions_general_general_options";s:1:"1";s:25:"themeoptions_general_menu";s:1:"1";s:39:"themeoptions_general_prodcuts_list_page";s:1:"1";s:41:"themeoptions_general_product_details_page";s:1:"1";s:34:"themeoptions_theming_design_layout";s:1:"1";s:32:"themeoptions_theming_theme_fonts";s:1:"1";s:31:"themeoptions_theming_theme_body";s:1:"1";s:33:"themeoptions_theming_theme_footer";s:1:"0";s:14:"design_package";s:1:"0";s:12:"design_theme";s:1:"0";s:11:"design_head";s:1:"0";s:13:"design_header";s:1:"1";s:13:"design_footer";s:1:"1";s:16:"design_watermark";s:1:"0";s:17:"design_pagination";s:1:"0";s:12:"design_email";s:1:"0";s:17:"contacts_contacts";s:1:"1";s:14:"contacts_email";s:1:"1";s:20:"revslideshow_general";s:1:"1";s:23:"revslideshow_navigation";s:1:"1";s:23:"revslideshow_thumbnails";s:1:"1";s:15:"general_country";s:1:"0";s:14:"general_region";s:1:"0";s:14:"general_locale";s:1:"0";s:25:"general_store_information";s:1:"1";s:12:"dev_restrict";s:1:"0";s:9:"dev_debug";s:1:"1";s:12:"dev_template";s:1:"1";s:20:"dev_translate_inline";s:1:"1";s:7:"dev_log";s:1:"0";s:6:"dev_js";s:1:"0";s:7:"dev_css";s:1:"0";s:16:"checkout_options";s:1:"1";s:13:"checkout_cart";s:1:"1";s:18:"checkout_cart_link";s:1:"0";s:16:"checkout_sidebar";s:1:"0";s:23:"checkout_payment_failed";s:1:"0";s:23:"imagezoomconfig_general";s:1:"1";s:35:"imagezoomconfig_imagezoom_style_css";s:1:"1";s:33:"imagezoomconfig_imagezoom_options";s:1:"1";s:16:"catalog_frontend";s:1:"1";s:15:"catalog_sitemap";s:1:"1";s:14:"catalog_review";s:1:"0";s:20:"catalog_productalert";s:1:"0";s:25:"catalog_productalert_cron";s:1:"0";s:19:"catalog_placeholder";s:1:"0";s:25:"catalog_recently_products";s:1:"1";s:13:"catalog_price";s:1:"0";s:26:"catalog_layered_navigation";s:1:"1";s:18:"catalog_navigation";s:1:"1";s:11:"catalog_seo";s:1:"1";s:14:"catalog_search";s:1:"1";s:20:"catalog_downloadable";s:1:"0";s:22:"catalog_custom_options";s:1:"0";s:7:"web_seo";s:1:"0";s:12:"web_unsecure";s:1:"1";s:10:"web_secure";s:1:"0";s:11:"web_default";s:1:"0";s:9:"web_polls";s:1:"0";s:10:"web_cookie";s:1:"0";s:24:"web_browser_capabilities";s:1:"0";}}', NULL, NULL),
(2, 'Walter', 'Zoccarato', 'walter.zoccarato@siplus.it', 'wzoccarato', '55754e4e4a466e285a7980199aab9c93:FTiYw5PUOEchkImry19DRf64dewHQmtR', '2014-05-16 17:11:54', '2014-06-24 06:49:30', '2014-07-02 15:04:01', 6, 0, 1, 'N;', '81e72467bc1cf6cdb6ad61bbefafd371', '2014-06-24 06:49:30'),
(3, 'Walter', 'Zoccarato', 'w.zoccarato@libero.it', 'walter', '27bde14bbb1e02eea7739910faaf23f4:RrZlpnDh1MoCxz0neeqYQX2Kh6QVn9yj', '2014-06-19 15:53:27', '2014-06-19 15:53:27', '2014-07-02 16:26:54', 9, 0, 1, 'a:1:{s:11:"configState";a:7:{s:12:"dev_restrict";s:1:"1";s:9:"dev_debug";s:1:"1";s:12:"dev_template";s:1:"0";s:20:"dev_translate_inline";s:1:"0";s:7:"dev_log";s:1:"0";s:6:"dev_js";s:1:"0";s:7:"dev_css";s:1:"0";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_MG_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_MG_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `mg_api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_MG_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_api2_acl_role`
--

INSERT INTO `mg_api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2014-05-05 10:07:26', NULL, 'Guest'),
(2, '2014-05-05 10:07:26', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `mg_api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_MG_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `mg_api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_MG_MG_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_MG_API2_ACL_USER_ROLE_ID_MG_API2_ACL_ROLE_ENTITY_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api_assert`
--

CREATE TABLE IF NOT EXISTS `mg_api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api_role`
--

CREATE TABLE IF NOT EXISTS `mg_api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_MG_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_MG_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api_rule`
--

CREATE TABLE IF NOT EXISTS `mg_api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MG_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_MG_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api_session`
--

CREATE TABLE IF NOT EXISTS `mg_api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_MG_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_MG_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_api_user`
--

CREATE TABLE IF NOT EXISTS `mg_api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_captcha_log`
--

CREATE TABLE IF NOT EXISTS `mg_captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `mg_cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_cataloginventory_stock`
--

INSERT INTO `mg_cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `mg_cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_MG_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item' AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `mg_cataloginventory_stock_item`
--

INSERT INTO `mg_cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
(1, 1, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(2, 2, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(3, 3, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(4, 4, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(5, 5, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(6, 6, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(7, 7, 1, 10.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
(8, 8, 1, 0.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 0, '2014-05-13 15:28:03', NULL, 1, 0, 1, 1, 1, 0.0000, 1, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `mg_cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

--
-- Dump dei dati per la tabella `mg_cataloginventory_stock_status`
--

INSERT INTO `mg_cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, 10.0000, 1),
(2, 1, 1, 10.0000, 1),
(3, 1, 1, 10.0000, 1),
(4, 1, 1, 10.0000, 1),
(5, 1, 1, 10.0000, 1),
(6, 1, 1, 10.0000, 1),
(7, 1, 1, 10.0000, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `mg_cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

--
-- Dump dei dati per la tabella `mg_cataloginventory_stock_status_idx`
--

INSERT INTO `mg_cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
(1, 1, 1, 10.0000, 1),
(2, 1, 1, 10.0000, 1),
(3, 1, 1, 10.0000, 1),
(4, 1, 1, 10.0000, 1),
(5, 1, 1, 10.0000, 1),
(6, 1, 1, 10.0000, 1),
(7, 1, 1, 10.0000, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_MG_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MG_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_MG_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_MG_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MG_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `DA1358CC06FA5B33D4A0E2FC597C56CD` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_MG_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogrule_website`
--

CREATE TABLE IF NOT EXISTS `mg_catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_MG_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MG_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `mg_catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_MG_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_MG_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Catalog search result table' AUTO_INCREMENT=87 ;

--
-- Dump dei dati per la tabella `mg_catalogsearch_fulltext`
--

INSERT INTO `mg_catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
(79, 7, 1, '7|Nessuna|Rosario tipo 7|Rosario di tipologia 7|Descrizione del rosario di tipo 7|11|0|1'),
(78, 6, 1, '6|Nessuna|Argento|Rosa|Rosario tipo 6|Rosario di tipologia 6|Descrizione del rosario di tipo 6|10|0|1'),
(76, 4, 1, '4|Nessuna|Oro|Rosso|Rosario tipo 4|Rosario di tipologia 4|Descrizione del rosario di tipo 4|8|0|1'),
(77, 5, 1, '5|Nessuna|Argento|Verde|Rosario tipo 5|Rosario di tipologia 5|Descrizione del rosario di tipo 5|9|0|1'),
(73, 1, 1, '1|Nessuna|Oro|Verde|Rosario tipo 1|Rosario di tipologia 1|Descrizione del rosario di tipo 1|5|0|1'),
(74, 2, 1, '2|Nessuna|Argento|Verde|Rosario tipo 2|Rosario di tipologia 2|Descrizione del rosario di tipo 2|6|0|1'),
(75, 3, 1, '3|Nessuna|Argento|Rosa|Rosario tipo 3|Rosario di tipologia 3|Descrizione del rosario di tipo 3|7|0|1'),
(85, 6, 2, '6|Nessuna|Argento|Rosa|Rosario tipo 6|Rosario di tipologia 6|Descrizione del rosario di tipo 6|10|0|1'),
(84, 5, 2, '5|Nessuna|Argento|Verde|Rosario tipo 5|Rosario di tipologia 5|Descrizione del rosario di tipo 5|9|0|1'),
(83, 4, 2, '4|Nessuna|Oro|Rosso|Rosario tipo 4|Rosario di tipologia 4|Descrizione del rosario di tipo 4|8|0|1'),
(82, 3, 2, '3|Nessuna|Argento|Rosa|Rosario tipo 3|Rosario di tipologia 3|Descrizione del rosario di tipo 3|7|0|1'),
(81, 2, 2, '2|Nessuna|Argento|Verde|Rosario tipo 2|Rosario di tipologia 2|Descrizione del rosario di tipo 2|6|0|1'),
(80, 1, 2, '1|Nessuna|Oro|Verde|Rosario tipo 1|Rosario di tipologia 1|Descrizione del rosario di tipo 1|5|0|1'),
(86, 7, 2, '7|Nessuna|Rosario tipo 7|Rosario di tipologia 7|Descrizione del rosario di tipo 7|11|0|1');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `mg_catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_MG_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_MG_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog search query table' AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `mg_catalogsearch_query`
--

INSERT INTO `mg_catalogsearch_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `synonym_for`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
(1, '7', 2, 1, NULL, NULL, 1, 1, 1, 0, '2014-05-13 15:18:36'),
(2, 'rosari', 7, 3, NULL, NULL, 1, 1, 1, 0, '2014-05-16 12:10:37'),
(3, 'oro', 2, 2, NULL, NULL, 1, 1, 1, 0, '2014-05-13 15:43:43'),
(4, 'verde', 3, 3, NULL, NULL, 1, 1, 1, 0, '2014-05-14 12:00:25'),
(5, 'medal', 0, 5, NULL, NULL, 1, 1, 1, 0, '2014-05-14 11:38:39'),
(6, 'rosar', 7, 1, NULL, NULL, 1, 1, 1, 1, '2014-05-29 11:42:15');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `mg_catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_MG_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_MG_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

--
-- Dump dei dati per la tabella `mg_catalogsearch_result`
--

INSERT INTO `mg_catalogsearch_result` (`query_id`, `product_id`, `relevance`) VALUES
(6, 1, 0.0000),
(6, 2, 0.0000),
(6, 3, 0.0000),
(6, 4, 0.0000),
(6, 5, 0.0000),
(6, 6, 0.0000),
(6, 7, 0.0000);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_MG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_MG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_MG_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_MG_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table' AUTO_INCREMENT=24 ;

--
-- Dump dei dati per la tabella `mg_catalog_category_entity`
--

INSERT INTO `mg_catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2014-05-05 08:07:37', '2014-05-05 08:07:37', '1', 0, 0, 22),
(2, 3, 3, 1, '2014-05-05 08:07:37', '2014-05-05 08:07:37', '1/2', 1, 1, 21),
(3, 3, 3, 2, '2014-05-05 08:45:36', '2014-05-13 10:13:48', '1/2/3', 1, 2, 12),
(4, 3, 3, 2, '2014-05-05 08:48:34', '2014-05-07 15:25:55', '1/2/4', 2, 2, 3),
(5, 3, 3, 2, '2014-05-05 08:48:57', '2014-05-07 15:27:04', '1/2/5', 3, 2, 3),
(6, 3, 3, 3, '2014-05-05 11:38:36', '2014-05-29 11:45:12', '1/2/3/6', 1, 3, 5),
(7, 3, 3, 3, '2014-05-05 11:38:54', '2014-05-08 05:38:21', '1/2/3/7', 2, 3, 0),
(8, 3, 3, 3, '2014-05-05 11:39:04', '2014-05-08 05:38:28', '1/2/3/8', 3, 3, 0),
(9, 3, 3, 3, '2014-05-05 11:39:15', '2014-05-08 05:38:35', '1/2/3/9', 4, 3, 0),
(10, 3, 3, 3, '2014-05-05 11:39:27', '2014-05-08 05:38:42', '1/2/3/10', 5, 3, 0),
(11, 3, 3, 3, '2014-05-05 11:39:37', '2014-05-08 05:38:48', '1/2/3/11', 6, 3, 0),
(12, 3, 3, 4, '2014-05-05 11:39:49', '2014-05-07 15:26:24', '1/2/4/12', 1, 3, 0),
(13, 3, 3, 4, '2014-05-05 11:39:59', '2014-05-07 15:26:40', '1/2/4/13', 2, 3, 0),
(14, 3, 3, 4, '2014-05-05 11:40:11', '2014-05-07 15:26:53', '1/2/4/14', 3, 3, 0),
(15, 3, 3, 5, '2014-05-05 11:40:22', '2014-05-07 15:27:17', '1/2/5/15', 1, 3, 0),
(16, 3, 3, 5, '2014-05-05 11:40:44', '2014-05-07 15:27:28', '1/2/5/16', 2, 3, 0),
(17, 3, 3, 5, '2014-05-05 11:41:05', '2014-05-07 15:27:39', '1/2/5/17', 3, 3, 0),
(18, 3, 3, 6, '2014-05-13 08:18:21', '2014-05-13 09:24:14', '1/2/3/6/18', 1, 4, 0),
(19, 3, 3, 6, '2014-05-13 10:14:49', '2014-05-13 10:14:49', '1/2/3/6/19', 2, 4, 0),
(20, 3, 3, 6, '2014-05-13 10:15:19', '2014-05-13 10:15:19', '1/2/3/6/20', 3, 4, 0),
(21, 3, 3, 6, '2014-05-13 10:16:14', '2014-05-13 10:16:14', '1/2/3/6/21', 4, 4, 0),
(22, 3, 3, 6, '2014-05-13 10:16:55', '2014-05-13 10:16:55', '1/2/3/6/22', 5, 4, 0),
(23, 3, 3, 3, '2014-05-22 14:40:43', '2014-05-23 14:37:13', '1/2/3/23', 7, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table' AUTO_INCREMENT=185 ;

--
-- Dump dei dati per la tabella `mg_catalog_category_entity_datetime`
--

INSERT INTO `mg_catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 59, 0, 3, NULL),
(2, 3, 60, 0, 3, NULL),
(3, 3, 59, 0, 4, NULL),
(4, 3, 60, 0, 4, NULL),
(5, 3, 59, 0, 5, NULL),
(6, 3, 60, 0, 5, NULL),
(9, 3, 59, 0, 6, NULL),
(10, 3, 60, 0, 6, NULL),
(11, 3, 59, 0, 7, NULL),
(12, 3, 60, 0, 7, NULL),
(13, 3, 59, 0, 8, NULL),
(14, 3, 60, 0, 8, NULL),
(15, 3, 59, 0, 9, NULL),
(16, 3, 60, 0, 9, NULL),
(17, 3, 59, 0, 10, NULL),
(18, 3, 60, 0, 10, NULL),
(19, 3, 59, 0, 11, NULL),
(20, 3, 60, 0, 11, NULL),
(21, 3, 59, 0, 12, NULL),
(22, 3, 60, 0, 12, NULL),
(23, 3, 59, 0, 13, NULL),
(24, 3, 60, 0, 13, NULL),
(25, 3, 59, 0, 14, NULL),
(26, 3, 60, 0, 14, NULL),
(27, 3, 59, 0, 15, NULL),
(28, 3, 60, 0, 15, NULL),
(29, 3, 59, 0, 16, NULL),
(30, 3, 60, 0, 16, NULL),
(31, 3, 59, 0, 17, NULL),
(32, 3, 60, 0, 17, NULL),
(129, 3, 59, 0, 18, NULL),
(130, 3, 60, 0, 18, NULL),
(153, 3, 59, 0, 19, NULL),
(154, 3, 60, 0, 19, NULL),
(155, 3, 59, 0, 20, NULL),
(156, 3, 60, 0, 20, NULL),
(157, 3, 59, 0, 21, NULL),
(158, 3, 60, 0, 21, NULL),
(159, 3, 59, 0, 22, NULL),
(160, 3, 60, 0, 22, NULL),
(183, 3, 59, 0, 23, NULL),
(184, 3, 60, 0, 23, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table' AUTO_INCREMENT=22 ;

--
-- Dump dei dati per la tabella `mg_catalog_category_entity_decimal`
--

INSERT INTO `mg_catalog_category_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 70, 0, 3, NULL),
(2, 3, 70, 0, 4, NULL),
(3, 3, 70, 0, 5, NULL),
(4, 3, 70, 0, 6, NULL),
(5, 3, 70, 0, 7, NULL),
(6, 3, 70, 0, 8, NULL),
(7, 3, 70, 0, 9, NULL),
(8, 3, 70, 0, 10, NULL),
(9, 3, 70, 0, 11, NULL),
(10, 3, 70, 0, 12, NULL),
(11, 3, 70, 0, 13, NULL),
(12, 3, 70, 0, 14, NULL),
(13, 3, 70, 0, 15, NULL),
(14, 3, 70, 0, 16, NULL),
(15, 3, 70, 0, 17, NULL),
(16, 3, 70, 0, 18, NULL),
(17, 3, 70, 0, 19, NULL),
(18, 3, 70, 0, 20, NULL),
(19, 3, 70, 0, 21, NULL),
(20, 3, 70, 0, 22, NULL),
(21, 3, 70, 0, 23, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table' AUTO_INCREMENT=192 ;

--
-- Dump dei dati per la tabella `mg_catalog_category_entity_int`
--

INSERT INTO `mg_catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1),
(7, 3, 42, 0, 3, 1),
(8, 3, 67, 0, 3, 1),
(9, 3, 50, 0, 3, 5),
(10, 3, 51, 0, 3, 0),
(11, 3, 68, 0, 3, 0),
(12, 3, 69, 0, 3, 0),
(13, 3, 42, 0, 4, 1),
(14, 3, 67, 0, 4, 1),
(15, 3, 50, 0, 4, NULL),
(16, 3, 51, 0, 4, 0),
(17, 3, 68, 0, 4, 0),
(18, 3, 69, 0, 4, 0),
(19, 3, 42, 0, 5, 1),
(20, 3, 67, 0, 5, 1),
(21, 3, 50, 0, 5, NULL),
(22, 3, 51, 0, 5, 0),
(23, 3, 68, 0, 5, 0),
(24, 3, 69, 0, 5, 0),
(26, 3, 42, 0, 6, 1),
(27, 3, 67, 0, 6, 1),
(28, 3, 50, 0, 6, 8),
(29, 3, 51, 0, 6, 1),
(30, 3, 68, 0, 6, 0),
(31, 3, 69, 0, 6, 0),
(32, 3, 42, 0, 7, 1),
(33, 3, 67, 0, 7, 1),
(34, 3, 50, 0, 7, NULL),
(35, 3, 51, 0, 7, 0),
(36, 3, 68, 0, 7, 0),
(37, 3, 69, 0, 7, 0),
(38, 3, 42, 0, 8, 1),
(39, 3, 67, 0, 8, 1),
(40, 3, 50, 0, 8, NULL),
(41, 3, 51, 0, 8, 0),
(42, 3, 68, 0, 8, 0),
(43, 3, 69, 0, 8, 0),
(44, 3, 42, 0, 9, 1),
(45, 3, 67, 0, 9, 1),
(46, 3, 50, 0, 9, NULL),
(47, 3, 51, 0, 9, 0),
(48, 3, 68, 0, 9, 0),
(49, 3, 69, 0, 9, 0),
(50, 3, 42, 0, 10, 1),
(51, 3, 67, 0, 10, 1),
(52, 3, 50, 0, 10, NULL),
(53, 3, 51, 0, 10, 0),
(54, 3, 68, 0, 10, 0),
(55, 3, 69, 0, 10, 0),
(56, 3, 42, 0, 11, 1),
(57, 3, 67, 0, 11, 1),
(58, 3, 50, 0, 11, NULL),
(59, 3, 51, 0, 11, 0),
(60, 3, 68, 0, 11, 0),
(61, 3, 69, 0, 11, 0),
(62, 3, 42, 0, 12, 1),
(63, 3, 67, 0, 12, 1),
(64, 3, 50, 0, 12, NULL),
(65, 3, 51, 0, 12, 0),
(66, 3, 68, 0, 12, 0),
(67, 3, 69, 0, 12, 0),
(68, 3, 42, 0, 13, 1),
(69, 3, 67, 0, 13, 1),
(70, 3, 50, 0, 13, NULL),
(71, 3, 51, 0, 13, 0),
(72, 3, 68, 0, 13, 0),
(73, 3, 69, 0, 13, 0),
(74, 3, 42, 0, 14, 1),
(75, 3, 67, 0, 14, 1),
(76, 3, 50, 0, 14, NULL),
(77, 3, 51, 0, 14, 0),
(78, 3, 68, 0, 14, 0),
(79, 3, 69, 0, 14, 0),
(80, 3, 42, 0, 15, 1),
(81, 3, 67, 0, 15, 1),
(82, 3, 50, 0, 15, NULL),
(83, 3, 51, 0, 15, 0),
(84, 3, 68, 0, 15, 0),
(85, 3, 69, 0, 15, 0),
(86, 3, 42, 0, 16, 1),
(87, 3, 67, 0, 16, 1),
(88, 3, 50, 0, 16, NULL),
(89, 3, 51, 0, 16, 0),
(90, 3, 68, 0, 16, 0),
(91, 3, 69, 0, 16, 0),
(92, 3, 42, 0, 17, 1),
(93, 3, 67, 0, 17, 1),
(94, 3, 50, 0, 17, NULL),
(95, 3, 51, 0, 17, 0),
(96, 3, 68, 0, 17, 0),
(97, 3, 69, 0, 17, 0),
(142, 3, 42, 0, 18, 1),
(143, 3, 67, 0, 18, 0),
(144, 3, 50, 0, 18, NULL),
(145, 3, 51, 0, 18, 0),
(146, 3, 68, 0, 18, 0),
(147, 3, 69, 0, 18, 0),
(160, 3, 42, 0, 19, 1),
(161, 3, 67, 0, 19, 0),
(162, 3, 50, 0, 19, NULL),
(163, 3, 51, 0, 19, 0),
(164, 3, 68, 0, 19, 0),
(165, 3, 69, 0, 19, 0),
(166, 3, 42, 0, 20, 1),
(167, 3, 67, 0, 20, 0),
(168, 3, 50, 0, 20, NULL),
(169, 3, 51, 0, 20, 0),
(170, 3, 68, 0, 20, 0),
(171, 3, 69, 0, 20, 0),
(172, 3, 42, 0, 21, 1),
(173, 3, 67, 0, 21, 0),
(174, 3, 50, 0, 21, NULL),
(175, 3, 51, 0, 21, 0),
(176, 3, 68, 0, 21, 0),
(177, 3, 69, 0, 21, 0),
(178, 3, 42, 0, 22, 1),
(179, 3, 67, 0, 22, 0),
(180, 3, 50, 0, 22, NULL),
(181, 3, 51, 0, 22, 0),
(182, 3, 68, 0, 22, 0),
(183, 3, 69, 0, 22, 0),
(184, 3, 42, 0, 23, 1),
(185, 3, 67, 0, 23, 1),
(186, 3, 50, 0, 23, NULL),
(187, 3, 51, 0, 23, 0),
(188, 3, 68, 0, 23, 0),
(189, 3, 69, 0, 23, 0),
(191, 3, 42, 2, 23, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table' AUTO_INCREMENT=741 ;

--
-- Dump dei dati per la tabella `mg_catalog_category_entity_text`
--

INSERT INTO `mg_catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL),
(5, 3, 44, 0, 3, NULL),
(6, 3, 47, 0, 3, NULL),
(7, 3, 48, 0, 3, NULL),
(8, 3, 62, 0, 3, NULL),
(9, 3, 133, 0, 3, NULL),
(10, 3, 136, 0, 3, NULL),
(11, 3, 137, 0, 3, NULL),
(12, 3, 65, 0, 3, NULL),
(13, 3, 44, 0, 4, NULL),
(14, 3, 47, 0, 4, NULL),
(15, 3, 48, 0, 4, NULL),
(16, 3, 62, 0, 4, NULL),
(17, 3, 133, 0, 4, NULL),
(18, 3, 136, 0, 4, NULL),
(19, 3, 137, 0, 4, NULL),
(20, 3, 65, 0, 4, NULL),
(21, 3, 44, 0, 5, NULL),
(22, 3, 47, 0, 5, NULL),
(23, 3, 48, 0, 5, NULL),
(24, 3, 62, 0, 5, NULL),
(25, 3, 133, 0, 5, NULL),
(26, 3, 136, 0, 5, NULL),
(27, 3, 137, 0, 5, NULL),
(28, 3, 65, 0, 5, NULL),
(37, 3, 44, 0, 6, NULL),
(38, 3, 47, 0, 6, NULL),
(39, 3, 48, 0, 6, NULL),
(40, 3, 62, 0, 6, NULL),
(41, 3, 133, 0, 6, NULL),
(42, 3, 136, 0, 6, NULL),
(43, 3, 137, 0, 6, NULL),
(44, 3, 65, 0, 6, NULL),
(45, 3, 44, 0, 7, NULL),
(46, 3, 47, 0, 7, NULL),
(47, 3, 48, 0, 7, NULL),
(48, 3, 62, 0, 7, NULL),
(49, 3, 133, 0, 7, NULL),
(50, 3, 136, 0, 7, NULL),
(51, 3, 137, 0, 7, NULL),
(52, 3, 65, 0, 7, NULL),
(53, 3, 44, 0, 8, NULL),
(54, 3, 47, 0, 8, NULL),
(55, 3, 48, 0, 8, NULL),
(56, 3, 62, 0, 8, NULL),
(57, 3, 133, 0, 8, NULL),
(58, 3, 136, 0, 8, NULL),
(59, 3, 137, 0, 8, NULL),
(60, 3, 65, 0, 8, NULL),
(61, 3, 44, 0, 9, NULL),
(62, 3, 47, 0, 9, NULL),
(63, 3, 48, 0, 9, NULL),
(64, 3, 62, 0, 9, NULL),
(65, 3, 133, 0, 9, NULL),
(66, 3, 136, 0, 9, NULL),
(67, 3, 137, 0, 9, NULL),
(68, 3, 65, 0, 9, NULL),
(69, 3, 44, 0, 10, NULL),
(70, 3, 47, 0, 10, NULL),
(71, 3, 48, 0, 10, NULL),
(72, 3, 62, 0, 10, NULL),
(73, 3, 133, 0, 10, NULL),
(74, 3, 136, 0, 10, NULL),
(75, 3, 137, 0, 10, NULL),
(76, 3, 65, 0, 10, NULL),
(77, 3, 44, 0, 11, NULL),
(78, 3, 47, 0, 11, NULL),
(79, 3, 48, 0, 11, NULL),
(80, 3, 62, 0, 11, NULL),
(81, 3, 133, 0, 11, NULL),
(82, 3, 136, 0, 11, NULL),
(83, 3, 137, 0, 11, NULL),
(84, 3, 65, 0, 11, NULL),
(85, 3, 44, 0, 12, NULL),
(86, 3, 47, 0, 12, NULL),
(87, 3, 48, 0, 12, NULL),
(88, 3, 62, 0, 12, NULL),
(89, 3, 133, 0, 12, NULL),
(90, 3, 136, 0, 12, NULL),
(91, 3, 137, 0, 12, NULL),
(92, 3, 65, 0, 12, NULL),
(93, 3, 44, 0, 13, NULL),
(94, 3, 47, 0, 13, NULL),
(95, 3, 48, 0, 13, NULL),
(96, 3, 62, 0, 13, NULL),
(97, 3, 133, 0, 13, NULL),
(98, 3, 136, 0, 13, NULL),
(99, 3, 137, 0, 13, NULL),
(100, 3, 65, 0, 13, NULL),
(101, 3, 44, 0, 14, NULL),
(102, 3, 47, 0, 14, NULL),
(103, 3, 48, 0, 14, NULL),
(104, 3, 62, 0, 14, NULL),
(105, 3, 133, 0, 14, NULL),
(106, 3, 136, 0, 14, NULL),
(107, 3, 137, 0, 14, NULL),
(108, 3, 65, 0, 14, NULL),
(109, 3, 44, 0, 15, NULL),
(110, 3, 47, 0, 15, NULL),
(111, 3, 48, 0, 15, NULL),
(112, 3, 62, 0, 15, NULL),
(113, 3, 133, 0, 15, NULL),
(114, 3, 136, 0, 15, NULL),
(115, 3, 137, 0, 15, NULL),
(116, 3, 65, 0, 15, NULL),
(117, 3, 44, 0, 16, NULL),
(118, 3, 47, 0, 16, NULL),
(119, 3, 48, 0, 16, NULL),
(120, 3, 62, 0, 16, NULL),
(121, 3, 133, 0, 16, NULL),
(122, 3, 136, 0, 16, NULL),
(123, 3, 137, 0, 16, NULL),
(124, 3, 65, 0, 16, NULL),
(125, 3, 44, 0, 17, NULL),
(126, 3, 47, 0, 17, NULL),
(127, 3, 48, 0, 17, NULL),
(128, 3, 62, 0, 17, NULL),
(129, 3, 133, 0, 17, NULL),
(130, 3, 136, 0, 17, NULL),
(131, 3, 137, 0, 17, NULL),
(132, 3, 65, 0, 17, NULL),
(517, 3, 44, 0, 18, NULL),
(518, 3, 47, 0, 18, NULL),
(519, 3, 48, 0, 18, NULL),
(520, 3, 62, 0, 18, NULL),
(521, 3, 133, 0, 18, NULL),
(522, 3, 136, 0, 18, NULL),
(523, 3, 137, 0, 18, NULL),
(524, 3, 65, 0, 18, NULL),
(613, 3, 44, 0, 19, NULL),
(614, 3, 47, 0, 19, NULL),
(615, 3, 48, 0, 19, NULL),
(616, 3, 62, 0, 19, NULL),
(617, 3, 133, 0, 19, NULL),
(618, 3, 136, 0, 19, NULL),
(619, 3, 137, 0, 19, NULL),
(620, 3, 65, 0, 19, NULL),
(621, 3, 44, 0, 20, NULL),
(622, 3, 47, 0, 20, NULL),
(623, 3, 48, 0, 20, NULL),
(624, 3, 62, 0, 20, NULL),
(625, 3, 133, 0, 20, NULL),
(626, 3, 136, 0, 20, NULL),
(627, 3, 137, 0, 20, NULL),
(628, 3, 65, 0, 20, NULL),
(629, 3, 44, 0, 21, NULL),
(630, 3, 47, 0, 21, NULL),
(631, 3, 48, 0, 21, NULL),
(632, 3, 62, 0, 21, NULL),
(633, 3, 133, 0, 21, NULL),
(634, 3, 136, 0, 21, NULL),
(635, 3, 137, 0, 21, NULL),
(636, 3, 65, 0, 21, NULL),
(637, 3, 44, 0, 22, NULL),
(638, 3, 47, 0, 22, NULL),
(639, 3, 48, 0, 22, NULL),
(640, 3, 62, 0, 22, NULL),
(641, 3, 133, 0, 22, NULL),
(642, 3, 136, 0, 22, NULL),
(643, 3, 137, 0, 22, NULL),
(644, 3, 65, 0, 22, NULL),
(733, 3, 44, 0, 23, NULL),
(734, 3, 47, 0, 23, NULL),
(735, 3, 48, 0, 23, NULL),
(736, 3, 62, 0, 23, NULL),
(737, 3, 133, 0, 23, NULL),
(738, 3, 136, 0, 23, NULL),
(739, 3, 137, 0, 23, NULL),
(740, 3, 65, 0, 23, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table' AUTO_INCREMENT=617 ;

--
-- Dump dei dati per la tabella `mg_catalog_category_entity_varchar`
--

INSERT INTO `mg_catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category'),
(8, 3, 41, 0, 3, 'COLLEZIONI'),
(9, 3, 43, 0, 3, 'collezioni'),
(10, 3, 46, 0, 3, NULL),
(11, 3, 49, 0, 3, 'PAGE'),
(12, 3, 58, 0, 3, NULL),
(13, 3, 61, 0, 3, 'one_column'),
(14, 3, 134, 0, 3, NULL),
(15, 3, 135, 0, 3, 'classic'),
(16, 3, 138, 0, 3, NULL),
(17, 3, 45, 0, 3, 'copertina_ghirelli4_6.jpg'),
(18, 3, 57, 1, 3, 'collezioni.html'),
(19, 3, 57, 0, 3, 'collezioni.html'),
(20, 3, 41, 0, 4, 'Il MONDO GHIRELLI'),
(21, 3, 43, 0, 4, 'il-mondo-ghirelli'),
(22, 3, 46, 0, 4, NULL),
(23, 3, 49, 0, 4, 'PAGE'),
(24, 3, 58, 0, 4, NULL),
(25, 3, 61, 0, 4, 'one_column'),
(26, 3, 134, 0, 4, NULL),
(27, 3, 135, 0, 4, 'group'),
(28, 3, 138, 0, 4, NULL),
(29, 3, 57, 1, 4, 'il-mondo-ghirelli.html'),
(30, 3, 57, 0, 4, 'il-mondo-ghirelli.html'),
(31, 3, 41, 0, 5, 'LA STORIA'),
(32, 3, 43, 0, 5, 'la-storia'),
(33, 3, 46, 0, 5, NULL),
(34, 3, 49, 0, 5, 'PAGE'),
(35, 3, 58, 0, 5, NULL),
(36, 3, 61, 0, 5, 'one_column'),
(37, 3, 134, 0, 5, NULL),
(38, 3, 135, 0, 5, 'group'),
(39, 3, 138, 0, 5, NULL),
(40, 3, 57, 1, 5, 'la-storia.html'),
(41, 3, 57, 0, 5, 'la-storia.html'),
(48, 3, 41, 0, 6, 'ROSARI'),
(49, 3, 43, 0, 6, 'rosari'),
(50, 3, 46, 0, 6, NULL),
(51, 3, 49, 0, 6, 'PAGE'),
(52, 3, 58, 0, 6, NULL),
(53, 3, 61, 0, 6, 'two_columns_left'),
(54, 3, 134, 0, 6, '5/1'),
(55, 3, 135, 0, 6, 'group'),
(56, 3, 138, 0, 6, NULL),
(57, 3, 57, 1, 6, 'collezioni/rosari.html'),
(58, 3, 57, 0, 6, 'collezioni/rosari.html'),
(59, 3, 41, 0, 7, 'BRACCIALI E DECINE'),
(60, 3, 43, 0, 7, 'bracciali-e-decine'),
(61, 3, 46, 0, 7, NULL),
(62, 3, 49, 0, 7, 'PRODUCTS'),
(63, 3, 58, 0, 7, NULL),
(64, 3, 61, 0, 7, NULL),
(65, 3, 134, 0, 7, NULL),
(66, 3, 135, 0, 7, 'group'),
(67, 3, 138, 0, 7, NULL),
(68, 3, 57, 1, 7, 'collezioni/bracciali-e-decine.html'),
(69, 3, 57, 0, 7, 'collezioni/bracciali-e-decine.html'),
(70, 3, 41, 0, 8, 'PENDENTI'),
(71, 3, 43, 0, 8, 'pendenti'),
(72, 3, 46, 0, 8, NULL),
(73, 3, 49, 0, 8, 'PRODUCTS'),
(74, 3, 58, 0, 8, NULL),
(75, 3, 61, 0, 8, NULL),
(76, 3, 134, 0, 8, NULL),
(77, 3, 135, 0, 8, 'group'),
(78, 3, 138, 0, 8, NULL),
(79, 3, 57, 1, 8, 'collezioni/pendenti.html'),
(80, 3, 57, 0, 8, 'collezioni/pendenti.html'),
(81, 3, 41, 0, 9, 'SPECIAL EDITION'),
(82, 3, 43, 0, 9, 'special-edition'),
(83, 3, 46, 0, 9, NULL),
(84, 3, 49, 0, 9, 'PRODUCTS'),
(85, 3, 58, 0, 9, NULL),
(86, 3, 61, 0, 9, NULL),
(87, 3, 134, 0, 9, NULL),
(88, 3, 135, 0, 9, 'group'),
(89, 3, 138, 0, 9, NULL),
(90, 3, 57, 1, 9, 'collezioni/special-edition.html'),
(91, 3, 57, 0, 9, 'collezioni/special-edition.html'),
(92, 3, 41, 0, 10, 'ALTRE COLLEZIONI'),
(93, 3, 43, 0, 10, 'altre-collezioni'),
(94, 3, 46, 0, 10, NULL),
(95, 3, 49, 0, 10, 'PRODUCTS'),
(96, 3, 58, 0, 10, NULL),
(97, 3, 61, 0, 10, NULL),
(98, 3, 134, 0, 10, NULL),
(99, 3, 135, 0, 10, 'group'),
(100, 3, 138, 0, 10, NULL),
(101, 3, 57, 1, 10, 'collezioni/altre-collezioni.html'),
(102, 3, 57, 0, 10, 'collezioni/altre-collezioni.html'),
(103, 3, 41, 0, 11, 'OUTLET'),
(104, 3, 43, 0, 11, 'outlet'),
(105, 3, 46, 0, 11, NULL),
(106, 3, 49, 0, 11, 'PRODUCTS'),
(107, 3, 58, 0, 11, NULL),
(108, 3, 61, 0, 11, NULL),
(109, 3, 134, 0, 11, NULL),
(110, 3, 135, 0, 11, 'group'),
(111, 3, 138, 0, 11, NULL),
(112, 3, 57, 1, 11, 'collezioni/outlet.html'),
(113, 3, 57, 0, 11, 'collezioni/outlet.html'),
(114, 3, 41, 0, 12, 'SAVOIR FAIRE'),
(115, 3, 43, 0, 12, 'savoir-faire'),
(116, 3, 46, 0, 12, NULL),
(117, 3, 49, 0, 12, 'PAGE'),
(118, 3, 58, 0, 12, NULL),
(119, 3, 61, 0, 12, 'one_column'),
(120, 3, 134, 0, 12, NULL),
(121, 3, 135, 0, 12, 'group'),
(122, 3, 138, 0, 12, NULL),
(123, 3, 57, 1, 12, 'il-mondo-ghirelli/savoir-faire.html'),
(124, 3, 57, 0, 12, 'il-mondo-ghirelli/savoir-faire.html'),
(125, 3, 41, 0, 13, 'LA MAISON'),
(126, 3, 43, 0, 13, 'la-maison'),
(127, 3, 46, 0, 13, NULL),
(128, 3, 49, 0, 13, 'PAGE'),
(129, 3, 58, 0, 13, NULL),
(130, 3, 61, 0, 13, 'one_column'),
(131, 3, 134, 0, 13, NULL),
(132, 3, 135, 0, 13, 'group'),
(133, 3, 138, 0, 13, NULL),
(134, 3, 57, 1, 13, 'il-mondo-ghirelli/la-maison.html'),
(135, 3, 57, 0, 13, 'il-mondo-ghirelli/la-maison.html'),
(136, 3, 41, 0, 14, 'LO STILE'),
(137, 3, 43, 0, 14, 'lo-stile'),
(138, 3, 46, 0, 14, NULL),
(139, 3, 49, 0, 14, 'PAGE'),
(140, 3, 58, 0, 14, NULL),
(141, 3, 61, 0, 14, 'one_column'),
(142, 3, 134, 0, 14, NULL),
(143, 3, 135, 0, 14, 'group'),
(144, 3, 138, 0, 14, NULL),
(145, 3, 57, 1, 14, 'il-mondo-ghirelli/lo-stile.html'),
(146, 3, 57, 0, 14, 'il-mondo-ghirelli/lo-stile.html'),
(147, 3, 41, 0, 15, 'FAMIGLIA'),
(148, 3, 43, 0, 15, 'famiglia'),
(149, 3, 46, 0, 15, NULL),
(150, 3, 49, 0, 15, 'PAGE'),
(151, 3, 58, 0, 15, NULL),
(152, 3, 61, 0, 15, 'one_column'),
(153, 3, 134, 0, 15, NULL),
(154, 3, 135, 0, 15, 'group'),
(155, 3, 138, 0, 15, NULL),
(156, 3, 57, 1, 15, 'la-storia/famiglia.html'),
(157, 3, 57, 0, 15, 'la-storia/famiglia.html'),
(158, 3, 41, 0, 16, 'TRADIZIONI'),
(159, 3, 43, 0, 16, 'tradizioni'),
(160, 3, 46, 0, 16, NULL),
(161, 3, 49, 0, 16, 'PAGE'),
(162, 3, 58, 0, 16, NULL),
(163, 3, 61, 0, 16, 'one_column'),
(164, 3, 134, 0, 16, NULL),
(165, 3, 135, 0, 16, 'group'),
(166, 3, 138, 0, 16, NULL),
(167, 3, 57, 1, 16, 'la-storia/tradizioni.html'),
(168, 3, 57, 0, 16, 'la-storia/tradizioni.html'),
(169, 3, 41, 0, 17, 'TERRITORIO'),
(170, 3, 43, 0, 17, 'territorio'),
(171, 3, 46, 0, 17, NULL),
(172, 3, 49, 0, 17, 'PAGE'),
(173, 3, 58, 0, 17, NULL),
(174, 3, 61, 0, 17, 'one_column'),
(175, 3, 134, 0, 17, NULL),
(176, 3, 135, 0, 17, 'group'),
(177, 3, 138, 0, 17, NULL),
(178, 3, 57, 1, 17, 'la-storia/territorio.html'),
(179, 3, 57, 0, 17, 'la-storia/territorio.html'),
(191, 3, 45, 0, 6, 'copertina_ghirelli4.jpg'),
(197, 3, 45, 0, 7, 'copertina_ghirelli4_1.jpg'),
(203, 3, 45, 0, 8, 'copertina_ghirelli4_2.jpg'),
(209, 3, 45, 0, 9, 'copertina_ghirelli4_3.jpg'),
(215, 3, 45, 0, 10, 'copertina_ghirelli4_4.jpg'),
(221, 3, 45, 0, 11, 'copertina_ghirelli4_5.jpg'),
(447, 3, 41, 0, 18, 'Miraculous Medal Collection'),
(448, 3, 43, 0, 18, 'miraculous-medal-collection'),
(449, 3, 46, 0, 18, NULL),
(450, 3, 49, 0, 18, 'PRODUCTS'),
(451, 3, 58, 0, 18, NULL),
(452, 3, 61, 0, 18, NULL),
(453, 3, 134, 0, 18, NULL),
(454, 3, 135, 0, 18, 'group'),
(455, 3, 138, 0, 18, NULL),
(456, 3, 45, 0, 18, 'img1_anteprima.jpg'),
(457, 3, 57, 1, 18, 'collezioni/rosari/miraculous-medal-collection.html'),
(458, 3, 57, 0, 18, 'collezioni/rosari/miraculous-medal-collection.html'),
(508, 3, 41, 0, 19, 'Divine Mercy Collection'),
(509, 3, 43, 0, 19, 'divine-mercy-collection'),
(510, 3, 46, 0, 19, NULL),
(511, 3, 49, 0, 19, 'PRODUCTS'),
(512, 3, 58, 0, 19, NULL),
(513, 3, 61, 0, 19, NULL),
(514, 3, 134, 0, 19, NULL),
(515, 3, 135, 0, 19, 'group'),
(516, 3, 138, 0, 19, NULL),
(517, 3, 45, 0, 19, 'img2_anteprima.jpg'),
(518, 3, 57, 1, 19, 'collezioni/rosari/divine-mercy-collection.html'),
(519, 3, 57, 0, 19, 'collezioni/rosari/divine-mercy-collection.html'),
(520, 3, 41, 0, 20, 'ANNUNCIATION COLLECTION'),
(521, 3, 43, 0, 20, 'annunciation-collection'),
(522, 3, 46, 0, 20, NULL),
(523, 3, 49, 0, 20, 'PRODUCTS'),
(524, 3, 58, 0, 20, NULL),
(525, 3, 61, 0, 20, NULL),
(526, 3, 134, 0, 20, NULL),
(527, 3, 135, 0, 20, 'group'),
(528, 3, 138, 0, 20, NULL),
(529, 3, 45, 0, 20, 'img3_anteprima.jpg'),
(530, 3, 57, 1, 20, 'collezioni/rosari/annunciation-collection.html'),
(531, 3, 57, 0, 20, 'collezioni/rosari/annunciation-collection.html'),
(532, 3, 41, 0, 21, 'Mary’s Motherly Love Collection'),
(533, 3, 43, 0, 21, 'mary-s-motherly-love-collection'),
(534, 3, 46, 0, 21, NULL),
(535, 3, 49, 0, 21, 'PRODUCTS'),
(536, 3, 58, 0, 21, NULL),
(537, 3, 61, 0, 21, NULL),
(538, 3, 134, 0, 21, NULL),
(539, 3, 135, 0, 21, 'group'),
(540, 3, 138, 0, 21, NULL),
(541, 3, 45, 0, 21, 'img4_anteprima.jpg'),
(542, 3, 57, 1, 21, 'collezioni/rosari/mary-s-motherly-love-collection.html'),
(543, 3, 57, 0, 21, 'collezioni/rosari/mary-s-motherly-love-collection.html'),
(544, 3, 41, 0, 22, 'Lourdes Immaculate Conception Collection'),
(545, 3, 43, 0, 22, 'lourdes-immaculate-conception-collection'),
(546, 3, 46, 0, 22, NULL),
(547, 3, 49, 0, 22, 'PRODUCTS'),
(548, 3, 58, 0, 22, NULL),
(549, 3, 61, 0, 22, NULL),
(550, 3, 134, 0, 22, NULL),
(551, 3, 135, 0, 22, 'group'),
(552, 3, 138, 0, 22, NULL),
(553, 3, 45, 0, 22, 'img5_anteprima.jpg'),
(554, 3, 57, 1, 22, 'collezioni/rosari/lourdes-immaculate-conception-collection.html'),
(555, 3, 57, 0, 22, 'collezioni/rosari/lourdes-immaculate-conception-collection.html'),
(604, 3, 41, 0, 23, 'CUSTOM EDITION'),
(605, 3, 43, 0, 23, 'custom-edition'),
(606, 3, 46, 0, 23, NULL),
(607, 3, 49, 0, 23, 'PRODUCTS'),
(608, 3, 58, 0, 23, NULL),
(609, 3, 61, 0, 23, NULL),
(610, 3, 134, 0, 23, NULL),
(611, 3, 135, 0, 23, 'group'),
(612, 3, 138, 0, 23, NULL),
(613, 3, 57, 1, 23, 'collezioni/custom-edition.html'),
(614, 3, 57, 0, 23, 'collezioni/custom-edition.html'),
(616, 3, 57, 2, 23, 'collezioni/custom-edition.html');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `mtmenu_cat_block_bottom` text COMMENT 'Block Bottom',
  `mtmenu_cat_block_proportions` varchar(255) DEFAULT NULL COMMENT 'Proportions: Subcategories / Block Right',
  `mtmenu_cat_block_right` text COMMENT 'Block Right',
  `mtmenu_cat_block_top` text COMMENT 'Block Top',
  `mtmenu_cat_groups` varchar(255) DEFAULT NULL COMMENT 'Category Menu Type',
  `mtmenu_cat_label` varchar(255) DEFAULT NULL COMMENT 'Category Label',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_MG_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- Dump dei dati per la tabella `mg_catalog_category_flat_store_1`
--

INSERT INTO `mg_catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `mtmenu_cat_block_bottom`, `mtmenu_cat_block_proportions`, `mtmenu_cat_block_right`, `mtmenu_cat_block_top`, `mtmenu_cat_groups`, `mtmenu_cat_label`, `name`, `page_layout`, `path_in_store`, `thumbnail`, `url_key`, `url_path`) VALUES
(1, 0, '2014-05-05 08:07:37', '2014-05-05 08:07:37', '1', 0, 0, 16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, 'root-catalog', NULL),
(2, 1, '2014-05-05 08:07:37', '2014-05-05 08:07:37', '1/2', 1, 1, 15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, NULL, 'default-category', NULL),
(3, 2, '2014-05-05 08:45:36', '2014-05-07 13:11:45', '1/2/3', 1, 2, 6, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PAGE', NULL, 'copertina_ghirelli3_1.jpg', 1, 1, 0, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'classic', NULL, 'COLLEZIONI', 'one_column', NULL, NULL, 'collezioni', 'collezioni.html'),
(4, 2, '2014-05-05 08:48:34', '2014-05-05 08:48:34', '1/2/4', 2, 2, 3, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'Il MONDO GHIRELLI', NULL, NULL, NULL, 'il-mondo-ghirelli', 'il-mondo-ghirelli.html'),
(5, 2, '2014-05-05 08:48:57', '2014-05-05 08:48:57', '1/2/5', 3, 2, 3, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'LA STORIA', NULL, NULL, NULL, 'la-storia', 'la-storia.html'),
(6, 3, '2014-05-05 11:38:36', '2014-05-07 11:40:10', '1/2/3/6', 1, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, 'copertina_ghirelli3.jpg', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'ROSARI', NULL, NULL, NULL, 'rosari', 'collezioni/rosari.html'),
(7, 3, '2014-05-05 11:38:54', '2014-05-07 11:40:27', '1/2/3/7', 2, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, 'copertina_ghirelli3_2.jpg', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'BRACCIALI E DECINE', NULL, NULL, NULL, 'bracciali-e-decine', 'collezioni/bracciali-e-decine.html'),
(8, 3, '2014-05-05 11:39:04', '2014-05-07 11:40:34', '1/2/3/8', 3, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, 'copertina_ghirelli3_3.jpg', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'PENDENTI', NULL, NULL, NULL, 'pendenti', 'collezioni/pendenti.html'),
(9, 3, '2014-05-05 11:39:15', '2014-05-07 11:40:42', '1/2/3/9', 4, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, 'copertina_ghirelli3_4.jpg', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'SPECIAL EDITION', NULL, NULL, NULL, 'special-edition', 'collezioni/special-edition.html'),
(10, 3, '2014-05-05 11:39:27', '2014-05-07 11:40:48', '1/2/3/10', 5, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, 'copertina_ghirelli3_5.jpg', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'ALTRE COLLEZIONI', NULL, NULL, NULL, 'altre-collezioni', 'collezioni/altre-collezioni.html'),
(11, 3, '2014-05-05 11:39:37', '2014-05-07 11:40:55', '1/2/3/11', 6, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, 'copertina_ghirelli3_6.jpg', 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'OUTLET', NULL, NULL, NULL, 'outlet', 'collezioni/outlet.html'),
(12, 4, '2014-05-05 11:39:49', '2014-05-05 11:39:49', '1/2/4/12', 1, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'SAVOIR FAIRE', NULL, NULL, NULL, 'savoir-faire', 'il-mondo-ghirelli/savoir-faire.html'),
(13, 4, '2014-05-05 11:39:59', '2014-05-05 11:39:59', '1/2/4/13', 2, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'LA MAISON', NULL, NULL, NULL, 'la-maison', 'il-mondo-ghirelli/la-maison.html'),
(14, 4, '2014-05-05 11:40:11', '2014-05-05 11:40:11', '1/2/4/14', 3, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'LO STILE', NULL, NULL, NULL, 'lo-stile', 'il-mondo-ghirelli/lo-stile.html'),
(15, 5, '2014-05-05 11:40:22', '2014-05-05 11:40:22', '1/2/5/15', 1, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'FAMIGLIA', NULL, NULL, NULL, 'famiglia', 'la-storia/famiglia.html'),
(16, 5, '2014-05-05 11:40:44', '2014-05-05 11:40:44', '1/2/5/16', 2, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PAGE', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'TRADIZIONI', NULL, NULL, NULL, 'tradizioni', 'la-storia/tradizioni.html'),
(17, 5, '2014-05-05 11:41:05', '2014-05-05 11:41:05', '1/2/5/17', 3, 3, 0, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'PAGE', NULL, NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'group', NULL, 'TERRITORIO', NULL, NULL, NULL, 'territorio', 'la-storia/territorio.html');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_MG_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

--
-- Dump dei dati per la tabella `mg_catalog_category_product`
--

INSERT INTO `mg_catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
(6, 3, 1),
(6, 4, 1),
(6, 5, 1),
(6, 6, 1),
(18, 7, 1),
(18, 8, 1),
(19, 6, 1),
(20, 5, 1),
(21, 4, 1),
(22, 3, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_MG_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `9F0DE3351D175F137D28704CB260F849` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

--
-- Dump dei dati per la tabella `mg_catalog_category_product_index`
--

INSERT INTO `mg_catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
(2, 3, 20007, 0, 1, 4),
(2, 4, 20007, 0, 1, 4),
(2, 5, 20007, 0, 1, 4),
(2, 6, 20007, 0, 1, 4),
(2, 7, 20009, 0, 1, 4),
(2, 1, 0, 1, 1, 4),
(2, 2, 0, 1, 1, 4),
(6, 3, 1, 1, 1, 4),
(6, 4, 1, 1, 1, 4),
(6, 5, 1, 1, 1, 4),
(6, 6, 1, 1, 1, 4),
(18, 7, 1, 1, 1, 4),
(19, 6, 1, 1, 1, 4),
(20, 5, 1, 1, 1, 4),
(21, 4, 1, 1, 1, 4),
(22, 3, 1, 1, 1, 4),
(2, 3, 20007, 0, 2, 4),
(2, 4, 20007, 0, 2, 4),
(2, 5, 20007, 0, 2, 4),
(2, 6, 20007, 0, 2, 4),
(2, 7, 20009, 0, 2, 4),
(2, 1, 0, 1, 2, 4),
(2, 2, 0, 1, 2, 4),
(6, 3, 1, 1, 2, 4),
(6, 4, 1, 1, 2, 4),
(6, 5, 1, 1, 2, 4),
(6, 6, 1, 1, 2, 4),
(18, 7, 1, 1, 2, 4),
(19, 6, 1, 1, 2, 4),
(20, 5, 1, 1, 2, 4),
(21, 4, 1, 1, 2, 4),
(22, 3, 1, 1, 2, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_MG_CATALOG_CATEGORY_PRODUCT_INDEX_ENBL_IDX_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_MG_CATALOG_CATEGORY_PRODUCT_INDEX_ENBL_TMP_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_MG_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_MG_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_MG_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_MG_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MG_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table' AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `mg_catalog_compare_item`
--

INSERT INTO `mg_catalog_compare_item` (`catalog_compare_item_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`) VALUES
(1, 2, NULL, 1, 1),
(2, 2, NULL, 2, 1),
(3, 10, NULL, 2, 1),
(4, 10, NULL, 3, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_MG_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_MG_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dump dei dati per la tabella `mg_catalog_eav_attribute`
--

INSERT INTO `mg_catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 'simple,virtual,downloadable', 1, 0, 0, 1),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, NULL, 1, 0, 0, 1),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(132, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(133, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(134, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(135, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(136, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(137, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(138, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(139, NULL, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, NULL, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table' AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity`
--

INSERT INTO `mg_catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
(1, 4, 4, 'simple', '1', 0, 0, '2014-05-05 08:51:36', '2014-05-13 15:30:19'),
(2, 4, 4, 'simple', '2', 0, 0, '2014-05-05 08:54:30', '2014-05-13 15:29:56'),
(3, 4, 4, 'simple', '3', 0, 0, '2014-05-05 08:55:43', '2014-05-13 15:29:40'),
(4, 4, 4, 'simple', '4', 0, 0, '2014-05-05 08:56:52', '2014-05-13 15:29:20'),
(5, 4, 4, 'simple', '5', 0, 0, '2014-05-05 08:57:55', '2014-05-13 15:29:02'),
(6, 4, 4, 'simple', '6', 0, 0, '2014-05-05 08:58:45', '2014-05-13 15:28:44'),
(7, 4, 4, 'simple', '7', 0, 0, '2014-05-05 08:59:38', '2014-05-13 15:18:07'),
(8, 4, 4, 'simple', '8', 0, 0, '2014-05-13 15:20:51', '2014-05-13 15:28:02');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table' AUTO_INCREMENT=229 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_datetime`
--

INSERT INTO `mg_catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 93, 0, 1, NULL),
(2, 4, 94, 0, 1, NULL),
(3, 4, 77, 0, 1, NULL),
(4, 4, 78, 0, 1, NULL),
(5, 4, 104, 0, 1, NULL),
(6, 4, 105, 0, 1, NULL),
(19, 4, 93, 0, 2, NULL),
(20, 4, 94, 0, 2, NULL),
(21, 4, 77, 0, 2, NULL),
(22, 4, 78, 0, 2, NULL),
(23, 4, 104, 0, 2, NULL),
(24, 4, 105, 0, 2, NULL),
(31, 4, 77, 0, 3, NULL),
(32, 4, 78, 0, 3, NULL),
(33, 4, 93, 0, 3, NULL),
(34, 4, 94, 0, 3, NULL),
(35, 4, 104, 0, 3, NULL),
(36, 4, 105, 0, 3, NULL),
(49, 4, 77, 0, 4, NULL),
(50, 4, 78, 0, 4, NULL),
(51, 4, 93, 0, 4, NULL),
(52, 4, 94, 0, 4, NULL),
(53, 4, 104, 0, 4, NULL),
(54, 4, 105, 0, 4, NULL),
(67, 4, 77, 0, 5, NULL),
(68, 4, 78, 0, 5, NULL),
(69, 4, 93, 0, 5, NULL),
(70, 4, 94, 0, 5, NULL),
(71, 4, 104, 0, 5, NULL),
(72, 4, 105, 0, 5, NULL),
(85, 4, 77, 0, 6, NULL),
(86, 4, 78, 0, 6, NULL),
(87, 4, 93, 0, 6, NULL),
(88, 4, 94, 0, 6, NULL),
(89, 4, 104, 0, 6, NULL),
(90, 4, 105, 0, 6, NULL),
(97, 4, 77, 0, 7, NULL),
(98, 4, 78, 0, 7, NULL),
(99, 4, 93, 0, 7, NULL),
(100, 4, 94, 0, 7, NULL),
(101, 4, 104, 0, 7, NULL),
(102, 4, 105, 0, 7, NULL),
(223, 4, 77, 0, 8, NULL),
(224, 4, 78, 0, 8, NULL),
(225, 4, 93, 0, 8, NULL),
(226, 4, 94, 0, 8, NULL),
(227, 4, 104, 0, 8, NULL),
(228, 4, 105, 0, 8, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table' AUTO_INCREMENT=154 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_decimal`
--

INSERT INTO `mg_catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 80, 0, 1, 1.0000),
(2, 4, 75, 0, 1, 5.0000),
(3, 4, 76, 0, 1, NULL),
(4, 4, 120, 0, 1, NULL),
(11, 4, 80, 0, 2, 1.0000),
(12, 4, 75, 0, 2, 6.0000),
(13, 4, 76, 0, 2, NULL),
(14, 4, 120, 0, 2, NULL),
(18, 4, 80, 0, 3, 1.0000),
(19, 4, 75, 0, 3, 7.0000),
(20, 4, 76, 0, 3, NULL),
(21, 4, 120, 0, 3, NULL),
(28, 4, 75, 0, 4, 8.0000),
(29, 4, 76, 0, 4, NULL),
(30, 4, 80, 0, 4, 1.0000),
(31, 4, 120, 0, 4, NULL),
(38, 4, 75, 0, 5, 9.0000),
(39, 4, 76, 0, 5, NULL),
(40, 4, 80, 0, 5, 1.0000),
(41, 4, 120, 0, 5, NULL),
(48, 4, 75, 0, 6, 10.0000),
(49, 4, 76, 0, 6, NULL),
(50, 4, 80, 0, 6, 1.0000),
(51, 4, 120, 0, 6, NULL),
(55, 4, 75, 0, 7, 11.0000),
(56, 4, 76, 0, 7, NULL),
(57, 4, 80, 0, 7, 1.0000),
(58, 4, 120, 0, 7, NULL),
(116, 4, 79, 0, 7, NULL),
(120, 4, 75, 0, 8, 11.0000),
(121, 4, 76, 0, 8, NULL),
(122, 4, 79, 0, 8, NULL),
(123, 4, 80, 0, 8, 1.0000),
(124, 4, 120, 0, 8, NULL),
(133, 4, 79, 0, 6, NULL),
(137, 4, 79, 0, 5, NULL),
(141, 4, 79, 0, 4, NULL),
(145, 4, 79, 0, 3, NULL),
(149, 4, 79, 0, 2, NULL),
(153, 4, 79, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_group_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `BD6DADE3E4CD24F3E6F99CF01F03CD7A` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_ENTT_INT_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table' AUTO_INCREMENT=61 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_int`
--

INSERT INTO `mg_catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 96, 0, 1, 1),
(2, 4, 102, 0, 1, 4),
(3, 4, 121, 0, 1, 0),
(4, 4, 100, 0, 1, 0),
(5, 4, 96, 0, 2, 1),
(6, 4, 102, 0, 2, 4),
(7, 4, 121, 0, 2, 0),
(8, 4, 100, 0, 2, 0),
(10, 4, 96, 0, 3, 1),
(11, 4, 102, 0, 3, 4),
(12, 4, 121, 0, 3, 0),
(13, 4, 100, 0, 3, 0),
(15, 4, 96, 0, 4, 1),
(16, 4, 100, 0, 4, 0),
(17, 4, 102, 0, 4, 4),
(18, 4, 121, 0, 4, 0),
(20, 4, 96, 0, 5, 1),
(21, 4, 100, 0, 5, 0),
(22, 4, 102, 0, 5, 4),
(23, 4, 121, 0, 5, 0),
(25, 4, 96, 0, 6, 1),
(26, 4, 100, 0, 6, 0),
(27, 4, 102, 0, 6, 4),
(28, 4, 121, 0, 6, 0),
(30, 4, 96, 0, 7, 1),
(31, 4, 100, 0, 7, 0),
(32, 4, 102, 0, 7, 4),
(33, 4, 121, 0, 7, 0),
(35, 4, 96, 0, 8, 2),
(36, 4, 100, 0, 8, 0),
(37, 4, 102, 0, 8, 4),
(38, 4, 121, 0, 8, 0),
(39, 4, 81, 0, 8, NULL),
(40, 4, 139, 0, 8, 8),
(41, 4, 92, 0, 8, 5),
(43, 4, 81, 0, 6, NULL),
(44, 4, 139, 0, 6, 8),
(45, 4, 92, 0, 6, 6),
(46, 4, 81, 0, 5, NULL),
(47, 4, 139, 0, 5, 8),
(48, 4, 92, 0, 5, 4),
(49, 4, 81, 0, 4, NULL),
(50, 4, 139, 0, 4, 7),
(51, 4, 92, 0, 4, 3),
(52, 4, 81, 0, 3, NULL),
(53, 4, 139, 0, 3, 8),
(54, 4, 92, 0, 3, 6),
(55, 4, 81, 0, 2, NULL),
(56, 4, 139, 0, 2, 8),
(57, 4, 92, 0, 2, 4),
(58, 4, 81, 0, 1, NULL),
(59, 4, 139, 0, 1, 7),
(60, 4, 92, 0, 1, 4);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table' AUTO_INCREMENT=16 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_media_gallery`
--

INSERT INTO `mg_catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 88, 1, '/g/h/ghirelli-blue-and-golden-rosary-with-our-lady-of-fatima-6mm_cac3a07f22d7884208eb965d3820cf7c.image.330x330.jpg'),
(3, 88, 2, '/g/h/ghirelli-green-rosary-virgin-mary-with-baby-6-mm_c482ca8657e4dafb53ea75183fd6a9d8.image.330x330.jpg'),
(5, 88, 3, '/g/h/ghirelli-orange-rosary-our-lady-of-lourdes-6-mm_09821dcc68d1a948b88945415e3eafde.image.330x330.jpg'),
(7, 88, 4, '/g/h/ghirelli-pink-rosary-lourdes-grotto-glass-6mm_415c1b7fa654eab4ce2cbe9a456273d4.image.330x330.jpg'),
(9, 88, 5, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308.jpg'),
(11, 88, 6, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308_2.jpg'),
(13, 88, 7, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330.jpg'),
(14, 88, 1, '/h/o/homepage_slideshow_3.jpg'),
(15, 88, 8, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330_1.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_media_gallery_value`
--

INSERT INTO `mg_catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
(1, 0, NULL, 1, 0),
(3, 0, NULL, 2, 0),
(5, 0, NULL, 2, 0),
(7, 0, NULL, 3, 0),
(9, 0, NULL, 4, 0),
(11, 0, NULL, 5, 0),
(13, 0, NULL, 6, 0),
(14, 0, NULL, 2, 0),
(15, 0, NULL, 6, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_ENTT_TEXT_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table' AUTO_INCREMENT=105 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_text`
--

INSERT INTO `mg_catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 72, 0, 1, 'Rosario di tipologia 1'),
(2, 4, 73, 0, 1, 'Descrizione del rosario di tipo 1'),
(3, 4, 83, 0, 1, NULL),
(4, 4, 106, 0, 1, NULL),
(9, 4, 72, 0, 2, 'Rosario di tipologia 2'),
(10, 4, 73, 0, 2, 'Descrizione del rosario di tipo 2'),
(11, 4, 83, 0, 2, NULL),
(12, 4, 106, 0, 2, NULL),
(17, 4, 72, 0, 3, 'Rosario di tipologia 3'),
(18, 4, 73, 0, 3, 'Descrizione del rosario di tipo 3'),
(19, 4, 83, 0, 3, NULL),
(20, 4, 106, 0, 3, NULL),
(27, 4, 72, 0, 4, 'Rosario di tipologia 4'),
(28, 4, 73, 0, 4, 'Descrizione del rosario di tipo 4'),
(29, 4, 83, 0, 4, NULL),
(30, 4, 106, 0, 4, NULL),
(37, 4, 72, 0, 5, 'Rosario di tipologia 5'),
(38, 4, 73, 0, 5, 'Descrizione del rosario di tipo 5'),
(39, 4, 83, 0, 5, NULL),
(40, 4, 106, 0, 5, NULL),
(47, 4, 72, 0, 6, 'Rosario di tipologia 6'),
(48, 4, 73, 0, 6, 'Descrizione del rosario di tipo 6'),
(49, 4, 83, 0, 6, NULL),
(50, 4, 106, 0, 6, NULL),
(55, 4, 72, 0, 7, 'Rosario di tipologia 7'),
(56, 4, 73, 0, 7, 'Descrizione del rosario di tipo 7'),
(57, 4, 83, 0, 7, NULL),
(58, 4, 106, 0, 7, NULL),
(101, 4, 72, 0, 8, 'Rosario di tipologia 7'),
(102, 4, 73, 0, 8, 'Descrizione del rosario di tipo 7'),
(103, 4, 83, 0, 8, NULL),
(104, 4, 106, 0, 8, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `C993396E720E6ED52BF4AD082B2ACE02` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table' AUTO_INCREMENT=537 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_entity_varchar`
--

INSERT INTO `mg_catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 4, 71, 0, 1, 'Rosario tipo 1'),
(2, 4, 97, 0, 1, 'rosario-tipo-1'),
(3, 4, 117, 0, 1, NULL),
(4, 4, 118, 0, 1, '2'),
(5, 4, 119, 0, 1, '4'),
(6, 4, 82, 0, 1, NULL),
(7, 4, 84, 0, 1, NULL),
(8, 4, 85, 0, 1, '/g/h/ghirelli-blue-and-golden-rosary-with-our-lady-of-fatima-6mm_cac3a07f22d7884208eb965d3820cf7c.image.330x330.jpg'),
(9, 4, 86, 0, 1, '/g/h/ghirelli-blue-and-golden-rosary-with-our-lady-of-fatima-6mm_cac3a07f22d7884208eb965d3820cf7c.image.330x330.jpg'),
(10, 4, 87, 0, 1, '/g/h/ghirelli-blue-and-golden-rosary-with-our-lady-of-fatima-6mm_cac3a07f22d7884208eb965d3820cf7c.image.330x330.jpg'),
(11, 4, 103, 0, 1, NULL),
(12, 4, 107, 0, 1, NULL),
(13, 4, 109, 0, 1, 'container2'),
(14, 4, 122, 0, 1, NULL),
(15, 4, 98, 1, 1, 'rosario-tipo-1.html'),
(16, 4, 98, 0, 1, 'rosario-tipo-1.html'),
(17, 4, 112, 0, 1, NULL),
(25, 4, 113, 0, 1, NULL),
(26, 4, 114, 0, 1, NULL),
(36, 4, 71, 0, 2, 'Rosario tipo 2'),
(37, 4, 97, 0, 2, 'rosario-tipo-1'),
(38, 4, 117, 0, 2, NULL),
(39, 4, 118, 0, 2, '2'),
(40, 4, 119, 0, 2, '4'),
(41, 4, 82, 0, 2, NULL),
(42, 4, 84, 0, 2, NULL),
(43, 4, 85, 0, 2, '/g/h/ghirelli-green-rosary-virgin-mary-with-baby-6-mm_c482ca8657e4dafb53ea75183fd6a9d8.image.330x330.jpg'),
(44, 4, 86, 0, 2, '/g/h/ghirelli-green-rosary-virgin-mary-with-baby-6-mm_c482ca8657e4dafb53ea75183fd6a9d8.image.330x330.jpg'),
(45, 4, 87, 0, 2, '/g/h/ghirelli-green-rosary-virgin-mary-with-baby-6-mm_c482ca8657e4dafb53ea75183fd6a9d8.image.330x330.jpg'),
(46, 4, 103, 0, 2, NULL),
(47, 4, 107, 0, 2, NULL),
(48, 4, 109, 0, 2, 'container2'),
(49, 4, 122, 0, 2, NULL),
(50, 4, 98, 0, 2, 'rosario-tipo-2.html'),
(51, 4, 112, 0, 2, NULL),
(52, 4, 113, 0, 2, NULL),
(53, 4, 114, 0, 2, NULL),
(54, 4, 98, 1, 2, 'rosario-tipo-40.html'),
(69, 4, 71, 0, 3, 'Rosario tipo 3'),
(70, 4, 82, 0, 3, NULL),
(71, 4, 84, 0, 3, NULL),
(72, 4, 85, 0, 3, '/g/h/ghirelli-orange-rosary-our-lady-of-lourdes-6-mm_09821dcc68d1a948b88945415e3eafde.image.330x330.jpg'),
(73, 4, 86, 0, 3, '/g/h/ghirelli-orange-rosary-our-lady-of-lourdes-6-mm_09821dcc68d1a948b88945415e3eafde.image.330x330.jpg'),
(74, 4, 87, 0, 3, '/g/h/ghirelli-orange-rosary-our-lady-of-lourdes-6-mm_09821dcc68d1a948b88945415e3eafde.image.330x330.jpg'),
(75, 4, 97, 0, 3, 'rosario-tipo-1'),
(76, 4, 98, 0, 3, 'rosario-tipo-3.html'),
(77, 4, 103, 0, 3, NULL),
(78, 4, 107, 0, 3, NULL),
(79, 4, 109, 0, 3, 'container2'),
(80, 4, 112, 0, 3, NULL),
(81, 4, 113, 0, 3, NULL),
(82, 4, 114, 0, 3, NULL),
(83, 4, 117, 0, 3, NULL),
(84, 4, 118, 0, 3, '2'),
(85, 4, 119, 0, 3, '4'),
(86, 4, 122, 0, 3, NULL),
(87, 4, 98, 1, 3, 'rosario-tipo-41.html'),
(111, 4, 71, 0, 4, 'Rosario tipo 4'),
(112, 4, 82, 0, 4, NULL),
(113, 4, 84, 0, 4, NULL),
(114, 4, 85, 0, 4, '/g/h/ghirelli-pink-rosary-lourdes-grotto-glass-6mm_415c1b7fa654eab4ce2cbe9a456273d4.image.330x330.jpg'),
(115, 4, 86, 0, 4, '/g/h/ghirelli-pink-rosary-lourdes-grotto-glass-6mm_415c1b7fa654eab4ce2cbe9a456273d4.image.330x330.jpg'),
(116, 4, 87, 0, 4, '/g/h/ghirelli-pink-rosary-lourdes-grotto-glass-6mm_415c1b7fa654eab4ce2cbe9a456273d4.image.330x330.jpg'),
(117, 4, 97, 0, 4, 'rosario-tipo-1'),
(118, 4, 98, 0, 4, 'rosario-tipo-4.html'),
(119, 4, 103, 0, 4, NULL),
(120, 4, 107, 0, 4, NULL),
(121, 4, 109, 0, 4, 'container2'),
(122, 4, 112, 0, 4, NULL),
(123, 4, 113, 0, 4, NULL),
(124, 4, 114, 0, 4, NULL),
(125, 4, 117, 0, 4, NULL),
(126, 4, 118, 0, 4, '2'),
(127, 4, 119, 0, 4, '4'),
(128, 4, 122, 0, 4, NULL),
(129, 4, 98, 1, 4, 'rosario-tipo-42.html'),
(153, 4, 71, 0, 5, 'Rosario tipo 5'),
(154, 4, 82, 0, 5, NULL),
(155, 4, 84, 0, 5, NULL),
(156, 4, 85, 0, 5, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308.jpg'),
(157, 4, 86, 0, 5, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308.jpg'),
(158, 4, 87, 0, 5, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308.jpg'),
(159, 4, 97, 0, 5, 'rosario-tipo-1'),
(160, 4, 98, 0, 5, 'rosario-tipo-5.html'),
(161, 4, 103, 0, 5, NULL),
(162, 4, 107, 0, 5, NULL),
(163, 4, 109, 0, 5, 'container2'),
(164, 4, 112, 0, 5, NULL),
(165, 4, 113, 0, 5, NULL),
(166, 4, 114, 0, 5, NULL),
(167, 4, 117, 0, 5, NULL),
(168, 4, 118, 0, 5, '2'),
(169, 4, 119, 0, 5, '4'),
(170, 4, 122, 0, 5, NULL),
(171, 4, 98, 1, 5, 'rosario-tipo-43.html'),
(195, 4, 71, 0, 6, 'Rosario tipo 6'),
(196, 4, 82, 0, 6, NULL),
(197, 4, 84, 0, 6, NULL),
(198, 4, 85, 0, 6, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308_2.jpg'),
(199, 4, 86, 0, 6, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308_2.jpg'),
(200, 4, 87, 0, 6, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308_2.jpg'),
(201, 4, 97, 0, 6, 'rosario-tipo-1'),
(202, 4, 98, 0, 6, 'rosario-tipo-6.html'),
(203, 4, 103, 0, 6, NULL),
(204, 4, 107, 0, 6, NULL),
(205, 4, 109, 0, 6, 'container2'),
(206, 4, 112, 0, 6, NULL),
(207, 4, 113, 0, 6, NULL),
(208, 4, 114, 0, 6, NULL),
(209, 4, 117, 0, 6, NULL),
(210, 4, 118, 0, 6, '2'),
(211, 4, 119, 0, 6, '4'),
(212, 4, 122, 0, 6, NULL),
(213, 4, 98, 1, 6, 'rosario-tipo-44.html'),
(228, 4, 71, 0, 7, 'Rosario tipo 7'),
(229, 4, 82, 0, 7, NULL),
(230, 4, 84, 0, 7, NULL),
(231, 4, 85, 0, 7, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330.jpg'),
(232, 4, 86, 0, 7, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330.jpg'),
(233, 4, 87, 0, 7, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330.jpg'),
(234, 4, 97, 0, 7, 'rosario-tipo-1'),
(235, 4, 98, 0, 7, 'rosario-tipo-7.html'),
(236, 4, 103, 0, 7, NULL),
(237, 4, 107, 0, 7, NULL),
(238, 4, 109, 0, 7, 'container1'),
(239, 4, 112, 0, 7, NULL),
(240, 4, 113, 0, 7, NULL),
(241, 4, 114, 0, 7, NULL),
(242, 4, 117, 0, 7, NULL),
(243, 4, 118, 0, 7, '2'),
(244, 4, 119, 0, 7, '4'),
(245, 4, 122, 0, 7, NULL),
(246, 4, 98, 1, 7, 'rosario-tipo-45.html'),
(437, 4, 71, 0, 8, 'Rosario tipo 8'),
(438, 4, 82, 0, 8, NULL),
(439, 4, 84, 0, 8, NULL),
(440, 4, 85, 0, 8, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330_1.jpg'),
(441, 4, 86, 0, 8, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330_1.jpg'),
(442, 4, 87, 0, 8, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330_1.jpg'),
(443, 4, 97, 0, 8, 'rosario-tipo-1'),
(444, 4, 98, 0, 8, 'rosario-tipo-8.html'),
(445, 4, 103, 0, 8, NULL),
(446, 4, 107, 0, 8, NULL),
(447, 4, 109, 0, 8, 'container1'),
(448, 4, 112, 0, 8, NULL),
(449, 4, 113, 0, 8, NULL),
(450, 4, 114, 0, 8, NULL),
(451, 4, 117, 0, 8, NULL),
(452, 4, 118, 0, 8, '2'),
(453, 4, 119, 0, 8, '4'),
(454, 4, 122, 0, 8, NULL),
(455, 4, 98, 1, 8, 'rosario-tipo-46.html'),
(530, 4, 98, 2, 2, 'rosario-tipo-2.html'),
(531, 4, 98, 2, 3, 'rosario-tipo-3.html'),
(532, 4, 98, 2, 4, 'rosario-tipo-4.html'),
(533, 4, 98, 2, 5, 'rosario-tipo-5.html'),
(534, 4, 98, 2, 6, 'rosario-tipo-6.html'),
(535, 4, 98, 2, 7, 'rosario-tipo-7.html'),
(536, 4, 98, 2, 8, 'rosario-tipo-8.html');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_MG_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

--
-- Dump dei dati per la tabella `mg_catalog_product_flat_1`
--

INSERT INTO `mg_catalog_product_flat_1` (`entity_id`, `attribute_set_id`, `type_id`, `cost`, `created_at`, `gift_message_available`, `has_options`, `image_label`, `is_recurring`, `links_exist`, `links_purchased_separately`, `links_title`, `msrp`, `msrp_display_actual_price_type`, `msrp_enabled`, `name`, `news_from_date`, `news_to_date`, `price`, `price_type`, `price_view`, `recurring_profile`, `required_options`, `shipment_type`, `short_description`, `sku`, `sku_type`, `small_image`, `small_image_label`, `special_from_date`, `special_price`, `special_to_date`, `tax_class_id`, `thumbnail`, `thumbnail_label`, `updated_at`, `url_key`, `url_path`, `visibility`, `weight`, `weight_type`) VALUES
(1, 4, 'simple', NULL, '2014-05-05 08:51:36', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 1', NULL, NULL, 5.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 1', '1', NULL, '/g/h/ghirelli-blue-and-golden-rosary-with-our-lady-of-fatima-6mm_cac3a07f22d7884208eb965d3820cf7c.image.330x330.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-blue-and-golden-rosary-with-our-lady-of-fatima-6mm_cac3a07f22d7884208eb965d3820cf7c.image.330x330.jpg', NULL, '2014-05-05 11:42:35', 'rosario-tipo-1', 'rosario-tipo-1.html', 4, 1.0000, NULL),
(2, 4, 'simple', NULL, '2014-05-05 08:54:30', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 2', NULL, NULL, 6.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 2', '2', NULL, '/g/h/ghirelli-green-rosary-virgin-mary-with-baby-6-mm_c482ca8657e4dafb53ea75183fd6a9d8.image.330x330.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-green-rosary-virgin-mary-with-baby-6-mm_c482ca8657e4dafb53ea75183fd6a9d8.image.330x330.jpg', NULL, '2014-05-05 11:42:48', 'rosario-tipo-1', 'rosario-tipo-20.html', 4, 1.0000, NULL),
(3, 4, 'simple', NULL, '2014-05-05 08:55:43', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 3', NULL, NULL, 7.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 3', '3', NULL, '/g/h/ghirelli-orange-rosary-our-lady-of-lourdes-6-mm_09821dcc68d1a948b88945415e3eafde.image.330x330.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-orange-rosary-our-lady-of-lourdes-6-mm_09821dcc68d1a948b88945415e3eafde.image.330x330.jpg', NULL, '2014-05-05 11:43:01', 'rosario-tipo-1', 'rosario-tipo-21.html', 4, 1.0000, NULL),
(4, 4, 'simple', NULL, '2014-05-05 08:56:52', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 4', NULL, NULL, 8.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 4', '4', NULL, '/g/h/ghirelli-pink-rosary-lourdes-grotto-glass-6mm_415c1b7fa654eab4ce2cbe9a456273d4.image.330x330.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-pink-rosary-lourdes-grotto-glass-6mm_415c1b7fa654eab4ce2cbe9a456273d4.image.330x330.jpg', NULL, '2014-05-05 11:43:14', 'rosario-tipo-1', 'rosario-tipo-22.html', 4, 1.0000, NULL),
(5, 4, 'simple', NULL, '2014-05-05 08:57:55', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 5', NULL, NULL, 9.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 5', '5', NULL, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308.jpg', NULL, '2014-05-05 11:43:27', 'rosario-tipo-1', 'rosario-tipo-23.html', 4, 1.0000, NULL),
(6, 4, 'simple', NULL, '2014-05-05 08:58:45', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 6', NULL, NULL, 10.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 6', '6', NULL, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308_2.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-rosary-aventurine-stone-6-mm_78672694908439f5fb6e50d85e4685a8.image.330x308_2.jpg', NULL, '2014-05-05 11:43:40', 'rosario-tipo-1', 'rosario-tipo-24.html', 4, 1.0000, NULL),
(7, 4, 'simple', NULL, '2014-05-05 08:59:38', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, '4', 2, 'Rosario tipo 7', NULL, NULL, 11.0000, NULL, NULL, NULL, 0, NULL, 'Descrizione del rosario di tipo 7', '7', NULL, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330.jpg', NULL, NULL, NULL, NULL, 0, '/g/h/ghirelli-rosary-our-lady-of-guadalupe_a1607b62721f353a918f2d712a20ed22.image.330x330.jpg', NULL, '2014-05-05 11:42:07', 'rosario-tipo-1', 'rosario-tipo-25.html', 4, 1.0000, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_index_eav`
--

INSERT INTO `mg_catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 92, 1, 4),
(1, 92, 2, 4),
(2, 92, 1, 4),
(2, 92, 2, 4),
(3, 92, 1, 6),
(3, 92, 2, 6),
(4, 92, 1, 3),
(4, 92, 2, 3),
(5, 92, 1, 4),
(5, 92, 2, 4),
(6, 92, 1, 6),
(6, 92, 2, 6),
(1, 121, 1, 0),
(1, 121, 2, 0),
(2, 121, 1, 0),
(2, 121, 2, 0),
(3, 121, 1, 0),
(3, 121, 2, 0),
(4, 121, 1, 0),
(4, 121, 2, 0),
(5, 121, 1, 0),
(5, 121, 2, 0),
(6, 121, 1, 0),
(6, 121, 2, 0),
(7, 121, 1, 0),
(7, 121, 2, 0),
(1, 139, 1, 7),
(1, 139, 2, 7),
(2, 139, 1, 8),
(2, 139, 2, 8),
(3, 139, 1, 8),
(3, 139, 2, 8),
(4, 139, 1, 7),
(4, 139, 2, 7),
(5, 139, 1, 8),
(5, 139, 2, 8),
(6, 139, 1, 8),
(6, 139, 2, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_index_eav_idx`
--

INSERT INTO `mg_catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
(1, 92, 1, 4),
(1, 92, 2, 4),
(2, 92, 1, 4),
(2, 92, 2, 4),
(3, 92, 1, 6),
(3, 92, 2, 6),
(4, 92, 1, 3),
(4, 92, 2, 3),
(5, 92, 1, 4),
(5, 92, 2, 4),
(6, 92, 1, 6),
(6, 92, 2, 6),
(1, 121, 1, 0),
(1, 121, 2, 0),
(2, 121, 1, 0),
(2, 121, 2, 0),
(3, 121, 1, 0),
(3, 121, 2, 0),
(4, 121, 1, 0),
(4, 121, 2, 0),
(5, 121, 1, 0),
(5, 121, 2, 0),
(6, 121, 1, 0),
(6, 121, 2, 0),
(7, 121, 1, 0),
(7, 121, 2, 0),
(1, 139, 1, 7),
(1, 139, 2, 7),
(2, 139, 1, 8),
(2, 139, 2, 8),
(3, 139, 1, 8),
(3, 139, 2, 8),
(4, 139, 1, 7),
(4, 139, 2, 7),
(5, 139, 1, 8),
(5, 139, 2, 8),
(6, 139, 1, 8),
(6, 139, 2, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_group_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_MG_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_index_price`
--

INSERT INTO `mg_catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(1, 1, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(1, 2, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(1, 3, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(2, 0, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(2, 1, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(2, 2, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(2, 3, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(3, 0, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(3, 1, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(3, 2, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(3, 3, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(4, 0, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(4, 1, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(4, 2, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(4, 3, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(5, 0, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(5, 1, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(5, 2, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(5, 3, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(6, 0, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(6, 1, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(6, 2, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(6, 3, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(7, 0, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL),
(7, 1, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL),
(7, 2, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL),
(7, 3, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_index_price_idx`
--

INSERT INTO `mg_catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
(1, 0, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(1, 1, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(1, 2, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(1, 3, 1, 0, 5.0000, 5.0000, 5.0000, 5.0000, NULL, NULL),
(2, 0, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(2, 1, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(2, 2, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(2, 3, 1, 0, 6.0000, 6.0000, 6.0000, 6.0000, NULL, NULL),
(3, 0, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(3, 1, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(3, 2, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(3, 3, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
(4, 0, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(4, 1, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(4, 2, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(4, 3, 1, 0, 8.0000, 8.0000, 8.0000, 8.0000, NULL, NULL),
(5, 0, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(5, 1, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(5, 2, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(5, 3, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
(6, 0, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(6, 1, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(6, 2, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(6, 3, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
(7, 0, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL),
(7, 1, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL),
(7, 2, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL),
(7, 3, 1, 0, 11.0000, 11.0000, 11.0000, 11.0000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_index_website`
--

INSERT INTO `mg_catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2014-05-22', 1),
(2, '2014-05-22', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table' AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_link_attribute`
--

INSERT INTO `mg_catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MG_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MG_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MG_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table' AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `mg_catalog_product_link_type`
--

INSERT INTO `mg_catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_MG_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_MG_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MG_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `mg_catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_MG_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

--
-- Dump dei dati per la tabella `mg_catalog_product_website`
--

INSERT INTO `mg_catalog_product_website` (`product_id`, `website_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `mg_checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `mg_checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_MG_CHECKOUT_AGREEMENT_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cms_block`
--

CREATE TABLE IF NOT EXISTS `mg_cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `mg_cms_block`
--

INSERT INTO `mg_cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul class = "links hidden-xs">\r\n<li><a href="{{store direct_url="resi_spedizioni"}}">Assistenza</a></li>\r\n<li><a href="{{store direct_url="terms_condition"}}">Customer care</a></li>\r\n</ul>', '2014-05-05 08:07:34', '2014-05-29 12:10:33', 1),
(2, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2014-05-05 08:07:34', '2014-05-05 08:07:34', 1),
(3, 'Contatti - blocco contenuto', 'block_contact_content', '<p>Test blocco contatto</p>', '2014-05-05 12:06:21', '2014-05-05 12:08:55', 1),
(4, 'Contatti - Top', 'block_contact_top', '<p>Contattaci - Blocco di presentazione scheda contatti</p>', '2014-05-05 12:07:31', '2014-05-05 12:09:29', 1),
(5, 'Elenco categorie', 'category', '<p>{{widget type="catalog/category_widget_link" template="catalog/category/widget/link/link_block.phtml" id_path="category/6"}}{{widget type="catalog/category_widget_link" template="catalog/category/widget/link/link_block.phtml" id_path="category/7"}}{{widget type="catalog/category_widget_link" template="catalog/category/widget/link/link_block.phtml" id_path="category/8"}}{{widget type="catalog/category_widget_link" template="catalog/category/widget/link/link_block.phtml" id_path="category/9"}}{{widget type="catalog/category_widget_link" template="catalog/category/widget/link/link_block.phtml" id_path="category/10"}}{{widget type="catalog/category_widget_link" template="catalog/category/widget/link/link_block.phtml" id_path="category/11"}}</p>', '2014-05-07 12:02:10', '2014-05-13 08:15:50', 1),
(7, 'subcategory_listing', 'subcategory_listing', '<p class="p1">{{widget type="catalog/category_widget_link" anchor_text="Testo &ldquo; title="TITOLO" template="catalog/category/widget/link/link_block.phtml" id_path="category/6"}}</p>\r\n<p>&nbsp;</p>', '2014-05-13 08:28:37', '2014-05-13 09:01:23', 1),
(8, 'categories-listing', 'category_listing', '<p class="p1">{{block type="catalog/navigation" name="catalog.categories" template="catalog/navigation/category_listing.phtml"}}</p>', '2014-05-13 09:14:08', '2014-05-13 09:16:09', 1),
(9, 'Assistenza', 'assistenza', '<p>Assistenza</p>', '2014-05-13 12:40:48', '2014-05-13 12:43:47', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cms_block_store`
--

CREATE TABLE IF NOT EXISTS `mg_cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_MG_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dump dei dati per la tabella `mg_cms_block_store`
--

INSERT INTO `mg_cms_block_store` (`block_id`, `store_id`) VALUES
(2, 0),
(1, 1),
(3, 1),
(4, 1),
(5, 1),
(7, 1),
(8, 1),
(9, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cms_page`
--

CREATE TABLE IF NOT EXISTS `mg_cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_MG_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `mg_cms_page`
--

INSERT INTO `mg_cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '<div class="page-title"><h1>Whoops, our bad...</h1></div>\r\n<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl>\r\n', '2014-05-05 08:07:34', '2014-05-05 08:07:34', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'home_page', NULL, NULL, 'home', NULL, '<div class="page-title">\r\n<h2>Home Page</h2>\r\n</div>', '2014-05-05 08:07:34', '2014-05-06 06:18:26', 1, 0, '<!--<reference name="content">\r\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name="right">\r\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '<div class="page-title">\r\n<h1>About Magento Store</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1"><p><a href="http://www.varien.com/"><img src="{{skin url=''images/media/about_us_img.jpg''}}" title="Varien" alt="Varien" /></a></p><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\r\n<div class="col-2">\r\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo. </p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p></div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\r\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider"></div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p></div>\r\n</div>', '2014-05-05 08:07:34', '2014-05-05 08:07:34', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n</dl>', '2014-05-05 08:07:34', '2014-05-05 08:07:34', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2014-05-05 08:07:34', '2014-05-05 08:07:34', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2014-05-05 08:07:34', '2014-05-05 08:07:34', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Termini e condizoni', 'one_column', NULL, NULL, 'terms_condition', NULL, '<div class="page-title">\r\n<h1>&nbsp;</h1>\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl><dt id="answer1">Shipping &amp; Delivery</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id="answer2">Privacy &amp; Security</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id="answer3">Returns &amp; Replacements</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id="answer4">Ordering</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id="answer5">Payment, Pricing &amp; Promotions</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id="answer6">Viewing Orders</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd><dt id="answer7">Updating Account Information</dt><dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd></dl>', '2014-05-13 13:02:58', '2014-05-13 13:11:09', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Resi e spedioni', 'one_column', NULL, NULL, 'resi_spedizioni', NULL, '<p>Contenuto resi e spedizioni</p>', '2014-05-13 13:09:33', '2014-05-13 13:11:43', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cms_page_store`
--

CREATE TABLE IF NOT EXISTS `mg_cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_MG_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dump dei dati per la tabella `mg_cms_page_store`
--

INSERT INTO `mg_cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(2, 1),
(7, 1),
(8, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_cache`
--

CREATE TABLE IF NOT EXISTS `mg_core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_MG_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_cache_option`
--

CREATE TABLE IF NOT EXISTS `mg_core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Dump dei dati per la tabella `mg_core_cache_option`
--

INSERT INTO `mg_core_cache_option` (`code`, `value`) VALUES
('block_html', 0),
('collections', 0),
('config', 0),
('config_api', 0),
('config_api2', 0),
('eav', 0),
('layout', 0),
('translate', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `mg_core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_MG_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_config_data`
--

CREATE TABLE IF NOT EXISTS `mg_core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_MG_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=258 ;

--
-- Dump dei dati per la tabella `mg_core_config_data`
--

INSERT INTO `mg_core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,EE,FI,FR,DE,LV,LT,RO,ES,US,CH'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(5, 'default', 0, 'web/unsecure/base_url', 'http://ghirellitest.localhost.com/'),
(6, 'default', 0, 'web/secure/base_url', 'http://ghirellitest.localhost.com/'),
(7, 'default', 0, 'general/locale/code', 'it_IT'),
(8, 'default', 0, 'general/locale/timezone', 'Europe/Berlin'),
(9, 'default', 0, 'currency/options/base', 'EUR'),
(10, 'default', 0, 'currency/options/default', 'EUR'),
(11, 'default', 0, 'currency/options/allow', 'EUR'),
(12, 'default', 0, 'design/package/name', 'fiver'),
(13, 'default', 0, 'design/theme/template', 'fivershop'),
(14, 'default', 0, 'design/theme/skin', 'fivershop'),
(15, 'default', 0, 'design/theme/layout', 'fivershop'),
(16, 'default', 0, 'design/theme/default', 'fivershop'),
(17, 'default', 0, 'design/footer/copyright', '&copy; 2013 fivershop Theme. All Rights Reserved. Designed by <a href="http://fiver.net/" title="Fiver">Fiver</a>'),
(18, 'default', 0, 'design/header/logo_src', 'images/logo.png'),
(19, 'default', 0, 'themeoptions_general/general_options/responsive_layout', '1'),
(20, 'default', 0, 'themeoptions_general/general_options/your_twitter_account', NULL),
(21, 'default', 0, 'themeoptions_general/general_options/your_twitter_consumer_key', NULL),
(22, 'default', 0, 'themeoptions_general/general_options/your_twitter_consumer_secret', NULL),
(23, 'default', 0, 'themeoptions_general/general_options/your_twitter_access_token', NULL),
(24, 'default', 0, 'themeoptions_general/general_options/your_twitter_access_token_secret', NULL),
(25, 'default', 0, 'themeoptions_general/general_options/fb_skin', 'dark'),
(26, 'default', 0, 'themeoptions_general/general_options/your_fb_url', NULL),
(27, 'default', 0, 'themeoptions_general/general_options/gotop_button', '1'),
(28, 'default', 0, 'themeoptions_general/menu/effect', 'fade'),
(29, 'default', 0, 'themeoptions_general/menu/home', '0'),
(30, 'default', 0, 'themeoptions_general/menu/show_if_no_children', '0'),
(31, 'default', 0, 'themeoptions_general/menu/enable_custom', '1'),
(32, 'default', 0, 'themeoptions_general/menu/static_identifier', 'custom_menu'),
(33, 'default', 0, 'themeoptions_general/menu/page_id', NULL),
(34, 'default', 0, 'themeoptions_general/menu/label1', 'New'),
(35, 'default', 0, 'themeoptions_general/menu/label2', 'Hot!'),
(36, 'default', 0, 'themeoptions_general/prodcuts_list_page/layout_one_column', '4'),
(37, 'default', 0, 'themeoptions_general/prodcuts_list_page/layout_two_column', '4'),
(38, 'default', 0, 'themeoptions_general/prodcuts_list_page/layout_three_column', '3'),
(39, 'default', 0, 'themeoptions_general/prodcuts_list_page/standard_image_width', '310'),
(40, 'default', 0, 'themeoptions_general/prodcuts_list_page/standard_image_height', '424'),
(41, 'default', 0, 'themeoptions_general/prodcuts_list_page/shopping_options', '0'),
(42, 'default', 0, 'themeoptions_general/prodcuts_list_page/rating_wishlist_compare', '1'),
(43, 'default', 0, 'themeoptions_general/prodcuts_list_page/new_product_label', '0'),
(44, 'default', 0, 'themeoptions_general/prodcuts_list_page/sale_product_label', '0'),
(45, 'default', 0, 'themeoptions_general/prodcuts_list_page/product_hover_effect', '0'),
(46, 'default', 0, 'themeoptions_general/prodcuts_list_page/image_product_hover', '0'),
(47, 'default', 0, 'themeoptions_general/prodcuts_list_page/ajax_cart', '0'),
(48, 'default', 0, 'themeoptions_general/prodcuts_list_page/ajax_compare', '0'),
(49, 'default', 0, 'themeoptions_general/prodcuts_list_page/ajax_wishlist', '0'),
(50, 'default', 0, 'themeoptions_general/prodcuts_list_page/ajax_quickview', '0'),
(51, 'default', 0, 'themeoptions_general/product_details_page/product_page_layout', '0'),
(52, 'default', 0, 'themeoptions_general/product_details_page/product_main_width', '478'),
(53, 'default', 0, 'themeoptions_general/product_details_page/product_main_height', '654'),
(54, 'default', 0, 'themeoptions_general/product_details_page/product_thumbnail_width', '161'),
(55, 'default', 0, 'themeoptions_general/product_details_page/product_thumbnail_height', '220'),
(56, 'default', 0, 'themeoptions_theming/design_layout/theme_layout', '1'),
(57, 'default', 0, 'themeoptions_theming/design_layout/box_shadow', '0'),
(58, 'default', 0, 'themeoptions_theming/theme_fonts/body_font_size', '10px'),
(59, 'default', 0, 'themeoptions_theming/theme_fonts/body_font', 'Lato'),
(60, 'default', 0, 'themeoptions_theming/theme_fonts/heading_font', 'Lato'),
(61, 'default', 0, 'themeoptions_theming/theme_body/presets', '1'),
(62, 'default', 0, 'themeoptions_theming/theme_body/l_background_color', '#ffffff'),
(63, 'default', 0, 'themeoptions_theming/theme_body/l_background_repeat', 'no-repeat'),
(64, 'default', 0, 'themeoptions_theming/theme_body/l_background_attachment', 'scroll'),
(65, 'default', 0, 'themeoptions_theming/theme_body/l_background_postition', 'left top'),
(66, 'default', 0, 'themeoptions_theming/theme_body/l_text_color', '#363636'),
(67, 'default', 0, 'themeoptions_theming/theme_body/l_link_hover_color', '#ef5c47'),
(68, 'default', 0, 'themeoptions_theming/theme_body/l_link_color', '#363636'),
(69, 'default', 0, 'themeoptions_theming/theme_body/l_active_color', '#ef5c47'),
(70, 'default', 0, 'themeoptions_theming/theme_body/l_heading_color', '#363636'),
(71, 'default', 0, 'themeoptions_theming/theme_body/l_icons_color', '#363636'),
(72, 'default', 0, 'themeoptions_theming/theme_body/l_buttons_color', '#ef5c47'),
(73, 'default', 0, 'themeoptions_theming/theme_body/l_buttons_hover_color', '#292929'),
(74, 'default', 0, 'themeoptions_theming/theme_body/l_new_label_color', '#ef5c47'),
(75, 'default', 0, 'themeoptions_theming/theme_body/l_sale_label_color', '#292929'),
(76, 'default', 0, 'themeoptions_theming/theme_footer/footer_background_color', '#000000'),
(77, 'default', 0, 'themeoptions_theming/theme_footer/footer_background_repeat', 'no-repeat'),
(78, 'default', 0, 'themeoptions_theming/theme_footer/footer_background_attachment', 'scroll'),
(79, 'default', 0, 'themeoptions_theming/theme_footer/footer_background_postition', 'left top'),
(80, 'default', 0, 'themeoptions_theming/theme_footer/footer_one_background', '#ffffff'),
(81, 'default', 0, 'themeoptions_theming/theme_footer/footer_one_heading_color', '#363636'),
(82, 'default', 0, 'themeoptions_theming/theme_footer/footer_one_text_color', '#363636'),
(83, 'default', 0, 'themeoptions_theming/theme_footer/footer_one_link_color', '#363636'),
(84, 'default', 0, 'themeoptions_theming/theme_footer/footer_one_link_hover_color', '#ef5c47'),
(85, 'default', 0, 'themeoptions_theming/theme_footer/footer_copyright_background', '#131313'),
(86, 'default', 0, 'themeoptions_theming/theme_footer/footer_copyright_heading_color', '#ffffff'),
(87, 'default', 0, 'themeoptions_theming/theme_footer/footer_copyright_text_color', '#ffffff'),
(88, 'default', 0, 'themeoptions_theming/theme_footer/footer_copyright_link_color', '#ffffff'),
(89, 'default', 0, 'themeoptions_theming/theme_footer/footer_copyright_link_hover_color', '#ef5c47'),
(90, 'default', 0, 'design/package/ua_regexp', 'a:0:{}'),
(91, 'default', 0, 'design/theme/locale', NULL),
(92, 'default', 0, 'design/theme/template_ua_regexp', 'a:0:{}'),
(93, 'default', 0, 'design/theme/skin_ua_regexp', 'a:0:{}'),
(94, 'default', 0, 'design/theme/layout_ua_regexp', 'a:0:{}'),
(95, 'default', 0, 'design/theme/default_ua_regexp', 'a:0:{}'),
(96, 'default', 0, 'design/head/default_title', 'Magento Commerce'),
(97, 'default', 0, 'design/head/title_prefix', NULL),
(98, 'default', 0, 'design/head/title_suffix', NULL),
(99, 'default', 0, 'design/head/default_description', 'Default Description'),
(100, 'default', 0, 'design/head/default_keywords', 'Magento, Varien, E-commerce'),
(101, 'default', 0, 'design/head/default_robots', 'INDEX,FOLLOW'),
(102, 'default', 0, 'design/head/includes', NULL),
(103, 'default', 0, 'design/head/demonotice', '0'),
(104, 'default', 0, 'design/header/logo_alt', 'Ghirelli Srl'),
(105, 'default', 0, 'design/header/welcome', 'Ghirelli Online Shop'),
(106, 'default', 0, 'design/footer/absolute_footer', NULL),
(107, 'default', 0, 'design/watermark/image_size', NULL),
(108, 'default', 0, 'design/watermark/image_imageOpacity', NULL),
(109, 'default', 0, 'design/watermark/image_position', 'stretch'),
(110, 'default', 0, 'design/watermark/small_image_size', NULL),
(111, 'default', 0, 'design/watermark/small_image_imageOpacity', NULL),
(112, 'default', 0, 'design/watermark/small_image_position', 'stretch'),
(113, 'default', 0, 'design/watermark/thumbnail_size', NULL),
(114, 'default', 0, 'design/watermark/thumbnail_imageOpacity', NULL),
(115, 'default', 0, 'design/watermark/thumbnail_position', 'stretch'),
(116, 'default', 0, 'design/pagination/pagination_frame', '5'),
(117, 'default', 0, 'design/pagination/pagination_frame_skip', NULL),
(118, 'default', 0, 'design/pagination/anchor_text_for_previous', NULL),
(119, 'default', 0, 'design/pagination/anchor_text_for_next', NULL),
(120, 'default', 0, 'design/email/logo_alt', NULL),
(121, 'default', 0, 'contacts/contacts/enabled', '1'),
(122, 'default', 0, 'contacts/email/recipient_email', 'alessandro@ghirelli.com'),
(123, 'default', 0, 'contacts/email/sender_email_identity', 'custom2'),
(124, 'default', 0, 'contacts/email/email_template', 'contacts_email_email_template'),
(125, 'default', 0, 'revslideshow/general/enabled', '1'),
(126, 'default', 0, 'revslideshow/general/slider_type', '3'),
(127, 'default', 0, 'revslideshow/general/slider_width', '1920'),
(128, 'default', 0, 'revslideshow/general/slider_height', '900'),
(129, 'default', 0, 'revslideshow/general/slider_delay', '9000'),
(130, 'default', 0, 'revslideshow/general/touch', '1'),
(131, 'default', 0, 'revslideshow/general/stop_on_hover', '0'),
(132, 'default', 0, 'revslideshow/general/shuffle_mode', '0'),
(133, 'default', 0, 'revslideshow/navigation/navigation_type', 'none'),
(134, 'default', 0, 'revslideshow/navigation/navigation_arrows', 'none'),
(135, 'default', 0, 'revslideshow/navigation/navigation_style', 'round'),
(136, 'default', 0, 'revslideshow/navigation/navigaion_always_on', '0'),
(137, 'default', 0, 'revslideshow/navigation/hide_thumbs', '200'),
(138, 'default', 0, 'revslideshow/navigation/navigaion_align_hor', 'center'),
(139, 'default', 0, 'revslideshow/navigation/navigaion_align_vert', 'bottom'),
(140, 'default', 0, 'revslideshow/navigation/navigaion_offset_hor', '0'),
(141, 'default', 0, 'revslideshow/navigation/navigaion_offset_vert', '20'),
(142, 'default', 0, 'revslideshow/navigation/leftarrow_align_hor', 'left'),
(143, 'default', 0, 'revslideshow/navigation/leftarrow_align_vert', 'center'),
(144, 'default', 0, 'revslideshow/navigation/leftarrow_offset_hor', '20'),
(145, 'default', 0, 'revslideshow/navigation/leftarrow_offset_vert', '0'),
(146, 'default', 0, 'revslideshow/navigation/rightarrow_align_hor', 'right'),
(147, 'default', 0, 'revslideshow/navigation/rightarrow_align_vert', 'center'),
(148, 'default', 0, 'revslideshow/navigation/rightarrow_offset_hor', '20'),
(149, 'default', 0, 'revslideshow/navigation/rightarrow_offset_vert', '0'),
(150, 'default', 0, 'revslideshow/thumbnails/thumbnails_width', '100'),
(151, 'default', 0, 'revslideshow/thumbnails/thumbnails_height', '50'),
(152, 'default', 0, 'revslideshow/thumbnails/thumbnails_amount', '5'),
(153, 'default', 0, 'general/country/default', 'US'),
(154, 'default', 0, 'general/country/allow', 'AF,AL,DZ,AD,AO,AI,AQ,AG,AN,SA,AR,AM,AW,AU,AT,AZ,BS,BH,BD,BB,BE,BZ,BJ,BM,BT,BY,BO,BA,BW,BR,BN,BG,BF,BI,KH,CM,CA,CV,TD,CL,CN,CY,CO,KM,CG,KP,KR,CI,CR,HR,CU,DK,DM,EC,EG,SV,AE,ER,EE,ET,RU,FJ,PH,FI,FR,GA,GM,GE,GS,DE,GH,JM,JP,GI,DJ,JO,GR,GD,GL,GP,GU,GT,GG,GF,GN,GW,GQ,GY,HT,HN,IN,ID,IR,IQ,IE,IS,BV,CX,IM,NF,AX,KY,CC,CK,FK,FO,HM,MP,MH,UM,SB,TC,VI,VG,IL,IT,JE,KZ,KE,KG,KI,KW,LA,LS,LV,LB,LR,LY,LI,LT,LU,MG,MW,MV,MY,ML,MT,MA,MQ,MR,MU,YT,MX,FM,MD,MC,MN,ME,MS,MZ,MM,NA,NR,NP,NI,NE,NG,NU,NO,NC,NZ,OM,NL,PK,PW,PS,PA,PG,PY,PE,PN,PF,PL,PT,PR,QA,HK,MO,GB,CZ,CF,CD,MK,DO,RE,RO,RW,EH,KN,LC,PM,VC,WS,AS,BL,SM,SH,ST,SN,RS,SC,SL,SG,SY,SK,SI,SO,ES,LK,US,ZA,SD,SR,SJ,SE,CH,SZ,TJ,TH,TW,TZ,TF,IO,TL,TG,TK,TO,TT,TN,TR,TM,TV,UA,UG,HU,UY,UZ,VU,VA,VE,VN,WF,YE,ZM,ZW'),
(155, 'default', 0, 'general/country/optional_zip_countries', 'IE,PA,HK,MO'),
(156, 'default', 0, 'general/country/eu_countries', 'AT,BE,BG,CY,DK,EE,FI,FR,DE,GR,IE,IT,LV,LT,LU,MT,NL,PL,PT,GB,CZ,RO,SK,SI,ES,SE,HU'),
(157, 'default', 0, 'general/locale/firstday', '0'),
(158, 'default', 0, 'general/locale/weekend', '0,6'),
(159, 'default', 0, 'general/store_information/name', 'Ghirelli'),
(160, 'default', 0, 'general/store_information/phone', NULL),
(161, 'default', 0, 'general/store_information/merchant_country', 'IT'),
(162, 'default', 0, 'general/store_information/merchant_vat_number', NULL),
(163, 'default', 0, 'general/store_information/address', NULL),
(165, 'stores', 1, 'dev/debug/template_hints_blocks', '0'),
(166, 'default', 0, 'checkout/options/onepage_checkout_enabled', '1'),
(167, 'default', 0, 'checkout/options/guest_checkout', '1'),
(168, 'default', 0, 'checkout/options/enable_agreements', '1'),
(169, 'default', 0, 'checkout/cart/delete_quote_after', '30'),
(170, 'default', 0, 'checkout/cart/redirect_to_cart', '1'),
(171, 'default', 0, 'checkout/cart/grouped_product_image', 'itself'),
(172, 'default', 0, 'checkout/cart/configurable_product_image', 'parent'),
(173, 'default', 0, 'checkout/cart_link/use_qty', '1'),
(174, 'default', 0, 'checkout/sidebar/display', '1'),
(175, 'default', 0, 'checkout/sidebar/count', '3'),
(176, 'default', 0, 'checkout/payment_failed/reciever', 'general'),
(177, 'default', 0, 'checkout/payment_failed/identity', 'general'),
(178, 'default', 0, 'checkout/payment_failed/template', 'checkout_payment_failed_template'),
(179, 'default', 0, 'checkout/payment_failed/copy_to', NULL),
(180, 'default', 0, 'checkout/payment_failed/copy_method', 'bcc'),
(181, 'default', 0, 'imagezoomconfig/general/zoomclound_enable', '1'),
(182, 'default', 0, 'imagezoomconfig/general/slideshow_enable', '1'),
(183, 'default', 0, 'imagezoomconfig/imagezoom_style_css/lens_border', '1'),
(184, 'default', 0, 'imagezoomconfig/imagezoom_style_css/lens_border_color', '#cccccc'),
(185, 'default', 0, 'imagezoomconfig/imagezoom_style_css/lens_background_color', '#ffffff'),
(186, 'default', 0, 'imagezoomconfig/imagezoom_style_css/zoom_window_border', '1'),
(187, 'default', 0, 'imagezoomconfig/imagezoom_style_css/zoom_window_border_color', '#cccccc'),
(188, 'default', 0, 'imagezoomconfig/imagezoom_options/zoomWidth', '200'),
(189, 'default', 0, 'imagezoomconfig/imagezoom_options/zoomHeight', '100'),
(190, 'default', 0, 'imagezoomconfig/imagezoom_options/position', '''left'''),
(191, 'default', 0, 'imagezoomconfig/imagezoom_options/adjustX', NULL),
(192, 'default', 0, 'imagezoomconfig/imagezoom_options/adjustY', '-1'),
(193, 'default', 0, 'imagezoomconfig/imagezoom_options/zoomeffect', '2'),
(194, 'default', 0, 'imagezoomconfig/imagezoom_options/lensOpacity', NULL),
(195, 'default', 0, 'imagezoomconfig/imagezoom_options/smoothMove', '50'),
(196, 'default', 0, 'imagezoomconfig/imagezoom_options/showTitle', '0'),
(197, 'default', 0, 'catalog/frontend/list_mode', 'grid-list'),
(198, 'default', 0, 'catalog/frontend/grid_per_page_values', '9,15,30'),
(199, 'default', 0, 'catalog/frontend/grid_per_page', '9'),
(200, 'default', 0, 'catalog/frontend/list_per_page_values', '5,10,15,20,25'),
(201, 'default', 0, 'catalog/frontend/list_per_page', '10'),
(202, 'default', 0, 'catalog/frontend/list_allow_all', '0'),
(203, 'default', 0, 'catalog/frontend/default_sort_by', 'position'),
(204, 'default', 0, 'catalog/frontend/flat_catalog_category', '0'),
(205, 'default', 0, 'catalog/frontend/flat_catalog_product', '0'),
(206, 'default', 0, 'catalog/frontend/parse_url_directives', '1'),
(207, 'default', 0, 'catalog/sitemap/tree_mode', '1'),
(208, 'default', 0, 'catalog/sitemap/lines_perpage', '30'),
(209, 'default', 0, 'catalog/review/allow_guest', '1'),
(210, 'default', 0, 'catalog/productalert/allow_price', '0'),
(211, 'default', 0, 'catalog/productalert/email_price_template', 'catalog_productalert_email_price_template'),
(212, 'default', 0, 'catalog/productalert/allow_stock', '0'),
(213, 'default', 0, 'catalog/productalert/email_stock_template', 'catalog_productalert_email_stock_template'),
(214, 'default', 0, 'catalog/productalert/email_identity', 'general'),
(215, 'default', 0, 'catalog/productalert_cron/frequency', 'D'),
(216, 'default', 0, 'crontab/jobs/catalog_product_alert/schedule/cron_expr', '0 0 * * *'),
(217, 'default', 0, 'crontab/jobs/catalog_product_alert/run/model', 'productalert/observer::process'),
(218, 'default', 0, 'catalog/productalert_cron/time', '00,00,00'),
(219, 'default', 0, 'catalog/productalert_cron/error_email', NULL),
(220, 'default', 0, 'catalog/productalert_cron/error_email_identity', 'general'),
(221, 'default', 0, 'catalog/productalert_cron/error_email_template', 'catalog_productalert_cron_error_email_template'),
(222, 'default', 0, 'catalog/recently_products/scope', 'website'),
(223, 'default', 0, 'catalog/recently_products/viewed_count', '5'),
(224, 'default', 0, 'catalog/recently_products/compared_count', '5'),
(225, 'default', 0, 'catalog/price/scope', '0'),
(226, 'default', 0, 'catalog/layered_navigation/display_product_count', '1'),
(227, 'default', 0, 'catalog/layered_navigation/price_range_calculation', 'auto'),
(228, 'default', 0, 'catalog/navigation/max_depth', '0'),
(229, 'default', 0, 'catalog/seo/site_map', '1'),
(230, 'default', 0, 'catalog/seo/search_terms', '1'),
(231, 'default', 0, 'catalog/seo/product_url_suffix', '.html'),
(232, 'default', 0, 'catalog/seo/category_url_suffix', '.html'),
(233, 'default', 0, 'catalog/seo/product_use_categories', '1'),
(234, 'default', 0, 'catalog/seo/save_rewrites_history', '1'),
(235, 'default', 0, 'catalog/seo/title_separator', '-'),
(236, 'default', 0, 'catalog/seo/category_canonical_tag', '0'),
(237, 'default', 0, 'catalog/seo/product_canonical_tag', '0'),
(238, 'default', 0, 'catalog/search/min_query_length', '1'),
(239, 'default', 0, 'catalog/search/max_query_length', '128'),
(240, 'default', 0, 'catalog/search/max_query_words', '10'),
(241, 'default', 0, 'catalog/search/search_type', '1'),
(242, 'default', 0, 'catalog/search/use_layered_navigation_count', '2000'),
(243, 'default', 0, 'catalog/downloadable/order_item_status', '9'),
(244, 'default', 0, 'catalog/downloadable/downloads_number', '0'),
(245, 'default', 0, 'catalog/downloadable/shareable', '0'),
(246, 'default', 0, 'catalog/downloadable/samples_title', 'Samples'),
(247, 'default', 0, 'catalog/downloadable/links_title', 'Links'),
(248, 'default', 0, 'catalog/downloadable/links_target_new_window', '1'),
(249, 'default', 0, 'catalog/downloadable/content_disposition', 'inline'),
(250, 'default', 0, 'catalog/downloadable/disable_guest_checkout', '1'),
(251, 'default', 0, 'catalog/custom_options/use_calendar', '0'),
(252, 'default', 0, 'catalog/custom_options/date_fields_order', 'm,d,y'),
(253, 'default', 0, 'catalog/custom_options/time_format', '12h'),
(254, 'default', 0, 'catalog/custom_options/year_range', ','),
(255, 'stores', 2, 'web/unsecure/base_url', 'http://10.0.1.225/ghirelli_02/americano/'),
(256, 'default', 0, 'web/seo/use_rewrites', '1'),
(257, 'stores', 1, 'dev/debug/template_hints', '0');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_email_template`
--

CREATE TABLE IF NOT EXISTS `mg_core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_MG_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_MG_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_MG_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_flag`
--

CREATE TABLE IF NOT EXISTS `mg_core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_MG_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_core_flag`
--

INSERT INTO `mg_core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2014-06-19 15:53:28'),
(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2014-05-07 14:18:06');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_layout_link`
--

CREATE TABLE IF NOT EXISTS `mg_core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_MG_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_MG_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_layout_update`
--

CREATE TABLE IF NOT EXISTS `mg_core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_MG_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_resource`
--

CREATE TABLE IF NOT EXISTS `mg_core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Dump dei dati per la tabella `mg_core_resource`
--

INSERT INTO `mg_core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.1', '1.6.1.1'),
('ajax_setup', '1.0', '1.0'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.6.0.0', '1.6.0.0'),
('catalog_setup', '1.6.0.0.18', '1.6.0.0.18'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.4', '1.6.0.4'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.3', '1.6.2.0.3'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.2', '1.6.0.2'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.1', '1.6.0.1'),
('extifcon_setup', '1.7.00', '1.7.00'),
('facebookconnect_setup', '1.0', '1.0'),
('faq_setup', '1.1.2', '1.1.2'),
('fiver_themeoptions_setup', '0.1.0', '0.1.0'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('less_setup', '0.1.0', '0.1.0'),
('log_setup', '1.6.0.0', '1.6.0.0'),
('megamenu_setup', '2.2.1', '2.2.1'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('newsletter_setup', '1.6.0.1', '1.6.0.1'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.4', '1.6.0.4'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.0', '1.6.0.0'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('revslideshow_setup', '1.0.0', '1.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.8', '1.6.0.8'),
('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0'),
('xmlconnect_setup', '1.6.0.0.1', '1.6.0.0.1');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_session`
--

CREATE TABLE IF NOT EXISTS `mg_core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_store`
--

CREATE TABLE IF NOT EXISTS `mg_core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_MG_CORE_STORE_CODE` (`code`),
  KEY `IDX_MG_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_MG_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_core_store`
--

INSERT INTO `mg_core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1),
(2, 'americano', 1, 2, 'Vista Negozio Americano', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_store_group`
--

CREATE TABLE IF NOT EXISTS `mg_core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_MG_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_core_store_group`
--

INSERT INTO `mg_core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1),
(2, 1, 'Sito Americano', 2, 2),
(3, 2, 'Default sito americano', 2, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_translate`
--

CREATE TABLE IF NOT EXISTS `mg_core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_MG_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_MG_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `mg_core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_MG_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_MG_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_MG_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_MG_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_MG_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_MG_CORE_URL_REWRITE_CTGR_ID_MG_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_MG_CORE_URL_REWRITE_PRD_ID_MG_CAT_CTGR_ENTT_ENTT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=408 ;

--
-- Dump dei dati per la tabella `mg_core_url_rewrite`
--

INSERT INTO `mg_core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
(1, 1, 'category/3', 'collezioni.html', 'catalog/category/view/id/3', 1, NULL, NULL, 3, NULL),
(2, 1, 'category/4', 'il-mondo-ghirelli.html', 'catalog/category/view/id/4', 1, NULL, NULL, 4, NULL),
(3, 1, 'category/5', 'la-storia.html', 'catalog/category/view/id/5', 1, NULL, NULL, 5, NULL),
(5, 1, 'product/1', 'rosario-tipo-1.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(7, 1, 'product/2', 'rosario-tipo-40.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(9, 1, 'product/3', 'rosario-tipo-41.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(11, 1, 'product/4', 'rosario-tipo-42.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(13, 1, 'product/5', 'rosario-tipo-43.html', 'catalog/product/view/id/5', 1, NULL, NULL, NULL, 5),
(15, 1, 'product/6', 'rosario-tipo-44.html', 'catalog/product/view/id/6', 1, NULL, NULL, NULL, 6),
(17, 1, 'product/7', 'rosario-tipo-45.html', 'catalog/product/view/id/7', 1, NULL, NULL, NULL, 7),
(18, 1, 'category/6', 'collezioni/rosari.html', 'catalog/category/view/id/6', 1, NULL, NULL, 6, NULL),
(19, 1, 'category/7', 'collezioni/bracciali-e-decine.html', 'catalog/category/view/id/7', 1, NULL, NULL, 7, NULL),
(20, 1, 'category/8', 'collezioni/pendenti.html', 'catalog/category/view/id/8', 1, NULL, NULL, 8, NULL),
(21, 1, 'category/9', 'collezioni/special-edition.html', 'catalog/category/view/id/9', 1, NULL, NULL, 9, NULL),
(22, 1, 'category/10', 'collezioni/altre-collezioni.html', 'catalog/category/view/id/10', 1, NULL, NULL, 10, NULL),
(23, 1, 'category/11', 'collezioni/outlet.html', 'catalog/category/view/id/11', 1, NULL, NULL, 11, NULL),
(24, 1, 'category/12', 'il-mondo-ghirelli/savoir-faire.html', 'catalog/category/view/id/12', 1, NULL, NULL, 12, NULL),
(25, 1, 'category/13', 'il-mondo-ghirelli/la-maison.html', 'catalog/category/view/id/13', 1, NULL, NULL, 13, NULL),
(26, 1, 'category/14', 'il-mondo-ghirelli/lo-stile.html', 'catalog/category/view/id/14', 1, NULL, NULL, 14, NULL),
(27, 1, 'category/15', 'la-storia/famiglia.html', 'catalog/category/view/id/15', 1, NULL, NULL, 15, NULL),
(28, 1, 'category/16', 'la-storia/tradizioni.html', 'catalog/category/view/id/16', 1, NULL, NULL, 16, NULL),
(29, 1, 'category/17', 'la-storia/territorio.html', 'catalog/category/view/id/17', 1, NULL, NULL, 17, NULL),
(34, 1, '04366100_1399297328', 'rosario-tipo-1-7.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(42, 1, '55627000_1399297368', 'rosario-tipo-1-2.html', 'rosario-tipo-40.html', 0, 'RP', NULL, NULL, 2),
(47, 1, '77151900_1399297381', 'rosario-tipo-1-3.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(52, 1, '17792400_1399297395', 'rosario-tipo-1-4.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(57, 1, '11111700_1399297408', 'rosario-tipo-1-5.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(62, 1, '14771300_1399297421', 'rosario-tipo-1-6.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(71, 1, '74763200_1399471106', 'rosario-tipo-3.html', 'rosario-tipo-40.html', 0, 'RP', NULL, NULL, 2),
(75, 1, '75804900_1399471106', 'rosario-tipo-4.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(79, 1, '76777900_1399471106', 'rosario-tipo-5.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(83, 1, '78318900_1399471106', 'rosario-tipo-6.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(87, 1, '79302400_1399471106', 'rosario-tipo-7.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(91, 1, '80297200_1399471106', 'rosario-tipo-2.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(115, 1, '59067700_1399479389', 'rosario-tipo-8.html', 'rosario-tipo-40.html', 0, 'RP', NULL, NULL, 2),
(119, 1, '60970800_1399479389', 'rosario-tipo-9.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(123, 1, '62033000_1399479389', 'rosario-tipo-10.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(127, 1, '63077300_1399479389', 'rosario-tipo-11.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(131, 1, '64118400_1399479389', 'rosario-tipo-12.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(135, 1, '65143000_1399479389', 'rosario-tipo-13.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(156, 1, '23420600_1399479486', 'rosario-tipo-14.html', 'rosario-tipo-40.html', 0, 'RP', NULL, NULL, 2),
(160, 1, '24457800_1399479486', 'rosario-tipo-15.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(164, 1, '25490200_1399479486', 'rosario-tipo-16.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(168, 1, '26508300_1399479486', 'rosario-tipo-17.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(172, 1, '27552600_1399479486', 'rosario-tipo-18.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(176, 1, '28584800_1399479486', 'rosario-tipo-19.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(178, 1, 'category/18', 'collezioni/rosari/miraculous-medal-collection.html', 'catalog/category/view/id/18', 1, NULL, NULL, 18, NULL),
(181, 1, 'product/7/18', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html', 'catalog/product/view/id/7/category/18', 1, NULL, NULL, 18, 7),
(183, 1, '72247000_1399976352', 'rosario-tipo-25.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(184, 1, 'category/19', 'collezioni/rosari/divine-mercy-collection.html', 'catalog/category/view/id/19', 1, NULL, NULL, 19, NULL),
(185, 1, 'category/20', 'collezioni/rosari/annunciation-collection.html', 'catalog/category/view/id/20', 1, NULL, NULL, 20, NULL),
(186, 1, 'category/21', 'collezioni/rosari/mary-s-motherly-love-collection.html', 'catalog/category/view/id/21', 1, NULL, NULL, 21, NULL),
(187, 1, 'category/22', 'collezioni/rosari/lourdes-immaculate-conception-collection.html', 'catalog/category/view/id/22', 1, NULL, NULL, 22, NULL),
(191, 1, '34002800_1399999025', 'rosario-tipo-26.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(192, 1, 'product/6/6', 'collezioni/rosari/rosario-tipo-7.html', 'catalog/product/view/id/6/category/6', 1, NULL, NULL, 6, 6),
(193, 1, 'product/6/19', 'collezioni/rosari/divine-mercy-collection/rosario-tipo-1.html', 'catalog/product/view/id/6/category/19', 1, NULL, NULL, 19, 6),
(195, 1, '94506600_1399999050', 'rosario-tipo-24.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(196, 1, 'product/5/6', 'collezioni/rosari/rosario-tipo-6.html', 'catalog/product/view/id/5/category/6', 1, NULL, NULL, 6, 5),
(197, 1, 'product/5/20', 'collezioni/rosari/annunciation-collection/rosario-tipo-1.html', 'catalog/product/view/id/5/category/20', 1, NULL, NULL, 20, 5),
(199, 1, '32570200_1399999069', 'rosario-tipo-23.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(200, 1, 'product/4/6', 'collezioni/rosari/rosario-tipo-5.html', 'catalog/product/view/id/4/category/6', 1, NULL, NULL, 6, 4),
(201, 1, 'product/4/21', 'collezioni/rosari/mary-s-motherly-love-collection/rosario-tipo-1.html', 'catalog/product/view/id/4/category/21', 1, NULL, NULL, 21, 4),
(203, 1, '37047000_1399999088', 'rosario-tipo-22.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(204, 1, 'product/3/6', 'collezioni/rosari/rosario-tipo-1.html', 'catalog/product/view/id/3/category/6', 1, NULL, NULL, 6, 3),
(205, 1, 'product/3/22', 'collezioni/rosari/lourdes-immaculate-conception-collection/rosario-tipo-1.html', 'catalog/product/view/id/3/category/22', 1, NULL, NULL, 22, 3),
(207, 1, '06024300_1399999106', 'rosario-tipo-21.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(210, 1, '04437300_1399999217', 'rosario-tipo-27.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(211, 1, 'product/8/18', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-3.html', 'catalog/product/view/id/8/category/18', 1, NULL, NULL, 18, 8),
(212, 1, 'product/8', 'rosario-tipo-46.html', 'catalog/product/view/id/8', 1, NULL, NULL, NULL, 8),
(213, 1, 'category/23', 'collezioni/custom-edition.html', 'catalog/category/view/id/23', 1, NULL, NULL, 23, NULL),
(237, 1, '84820900_1400777132', 'rosario-tipo-20.html', 'rosario-tipo-40.html', 0, 'RP', NULL, NULL, 2),
(239, 1, '85631200_1400777132', 'rosario-tipo-31.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(241, 1, '86044600_1400777132', 'collezioni/rosari/rosario-tipo-1-3.html', 'collezioni/rosari/rosario-tipo-1.html', 0, 'RP', NULL, 6, 3),
(244, 1, '86661300_1400777132', 'rosario-tipo-30.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(246, 1, '87219700_1400777132', 'collezioni/rosari/rosario-tipo-1-4.html', 'collezioni/rosari/rosario-tipo-5.html', 0, 'RP', NULL, 6, 4),
(249, 1, '87789500_1400777132', 'rosario-tipo-29.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(251, 1, '89903500_1400777132', 'collezioni/rosari/rosario-tipo-1-5.html', 'collezioni/rosari/rosario-tipo-6.html', 0, 'RP', NULL, 6, 5),
(254, 1, '90474500_1400777132', 'rosario-tipo-28.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(256, 1, '91033300_1400777132', 'collezioni/rosari/rosario-tipo-1-6.html', 'collezioni/rosari/rosario-tipo-7.html', 0, 'RP', NULL, 6, 6),
(259, 1, '91622700_1400777132', 'rosario-tipo-32.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(262, 1, '92740300_1400777132', 'rosario-tipo-1-8.html', 'rosario-tipo-46.html', 0, 'RP', NULL, NULL, 8),
(264, 1, '93314200_1400777132', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-1-8.html', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-3.html', 0, 'RP', NULL, 18, 8),
(265, 2, 'category/3', 'collezioni.html', 'catalog/category/view/id/3', 1, NULL, NULL, 3, NULL),
(266, 2, 'category/10', 'collezioni/altre-collezioni.html', 'catalog/category/view/id/10', 1, NULL, NULL, 10, NULL),
(267, 2, 'category/11', 'collezioni/outlet.html', 'catalog/category/view/id/11', 1, NULL, NULL, 11, NULL),
(268, 2, 'category/23', 'collezioni/custom-edition.html', 'catalog/category/view/id/23', 1, NULL, NULL, 23, NULL),
(269, 2, 'category/6', 'collezioni/rosari.html', 'catalog/category/view/id/6', 1, NULL, NULL, 6, NULL),
(270, 2, 'category/18', 'collezioni/rosari/miraculous-medal-collection.html', 'catalog/category/view/id/18', 1, NULL, NULL, 18, NULL),
(271, 2, 'category/19', 'collezioni/rosari/divine-mercy-collection.html', 'catalog/category/view/id/19', 1, NULL, NULL, 19, NULL),
(272, 2, 'category/20', 'collezioni/rosari/annunciation-collection.html', 'catalog/category/view/id/20', 1, NULL, NULL, 20, NULL),
(273, 2, 'category/21', 'collezioni/rosari/mary-s-motherly-love-collection.html', 'catalog/category/view/id/21', 1, NULL, NULL, 21, NULL),
(274, 2, 'category/22', 'collezioni/rosari/lourdes-immaculate-conception-collection.html', 'catalog/category/view/id/22', 1, NULL, NULL, 22, NULL),
(275, 2, 'category/7', 'collezioni/bracciali-e-decine.html', 'catalog/category/view/id/7', 1, NULL, NULL, 7, NULL),
(276, 2, 'category/8', 'collezioni/pendenti.html', 'catalog/category/view/id/8', 1, NULL, NULL, 8, NULL),
(277, 2, 'category/9', 'collezioni/special-edition.html', 'catalog/category/view/id/9', 1, NULL, NULL, 9, NULL),
(278, 2, 'category/4', 'il-mondo-ghirelli.html', 'catalog/category/view/id/4', 1, NULL, NULL, 4, NULL),
(279, 2, 'category/12', 'il-mondo-ghirelli/savoir-faire.html', 'catalog/category/view/id/12', 1, NULL, NULL, 12, NULL),
(280, 2, 'category/13', 'il-mondo-ghirelli/la-maison.html', 'catalog/category/view/id/13', 1, NULL, NULL, 13, NULL),
(281, 2, 'category/14', 'il-mondo-ghirelli/lo-stile.html', 'catalog/category/view/id/14', 1, NULL, NULL, 14, NULL),
(282, 2, 'category/5', 'la-storia.html', 'catalog/category/view/id/5', 1, NULL, NULL, 5, NULL),
(283, 2, 'category/15', 'la-storia/famiglia.html', 'catalog/category/view/id/15', 1, NULL, NULL, 15, NULL),
(284, 2, 'category/16', 'la-storia/tradizioni.html', 'catalog/category/view/id/16', 1, NULL, NULL, 16, NULL),
(285, 2, 'category/17', 'la-storia/territorio.html', 'catalog/category/view/id/17', 1, NULL, NULL, 17, NULL),
(286, 2, 'product/1', 'rosario-tipo-1.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
(287, 2, 'product/2', 'rosario-tipo-2.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
(288, 2, 'product/3', 'rosario-tipo-3.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
(289, 2, 'product/3/6', 'collezioni/rosari/rosario-tipo-1.html', 'catalog/product/view/id/3/category/6', 1, NULL, NULL, 6, 3),
(290, 2, 'product/3/22', 'collezioni/rosari/lourdes-immaculate-conception-collection/rosario-tipo-1.html', 'catalog/product/view/id/3/category/22', 1, NULL, NULL, 22, 3),
(291, 2, 'product/4', 'rosario-tipo-4.html', 'catalog/product/view/id/4', 1, NULL, NULL, NULL, 4),
(292, 2, 'product/4/6', 'collezioni/rosari/rosario-tipo-2.html', 'catalog/product/view/id/4/category/6', 1, NULL, NULL, 6, 4),
(293, 2, 'product/4/21', 'collezioni/rosari/mary-s-motherly-love-collection/rosario-tipo-1.html', 'catalog/product/view/id/4/category/21', 1, NULL, NULL, 21, 4),
(294, 2, 'product/5', 'rosario-tipo-5.html', 'catalog/product/view/id/5', 1, NULL, NULL, NULL, 5),
(295, 2, 'product/5/6', 'collezioni/rosari/rosario-tipo-3.html', 'catalog/product/view/id/5/category/6', 1, NULL, NULL, 6, 5),
(296, 2, 'product/5/20', 'collezioni/rosari/annunciation-collection/rosario-tipo-1.html', 'catalog/product/view/id/5/category/20', 1, NULL, NULL, 20, 5),
(297, 2, 'product/6', 'rosario-tipo-6.html', 'catalog/product/view/id/6', 1, NULL, NULL, NULL, 6),
(298, 2, 'product/6/6', 'collezioni/rosari/rosario-tipo-4.html', 'catalog/product/view/id/6/category/6', 1, NULL, NULL, 6, 6),
(299, 2, 'product/6/19', 'collezioni/rosari/divine-mercy-collection/rosario-tipo-1.html', 'catalog/product/view/id/6/category/19', 1, NULL, NULL, 19, 6),
(300, 2, 'product/7', 'rosario-tipo-7.html', 'catalog/product/view/id/7', 1, NULL, NULL, NULL, 7),
(301, 2, 'product/7/18', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html', 'catalog/product/view/id/7/category/18', 1, NULL, NULL, 18, 7),
(302, 2, 'product/8', 'rosario-tipo-8.html', 'catalog/product/view/id/8', 1, NULL, NULL, NULL, 8),
(303, 2, 'product/8/18', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-2.html', 'catalog/product/view/id/8/category/18', 1, NULL, NULL, 18, 8),
(331, 1, '06405200_1400777986', 'rosario-tipo-33.html', 'rosario-tipo-40.html', 0, 'RP', NULL, NULL, 2),
(333, 1, '07064100_1400777986', 'rosario-tipo-34.html', 'rosario-tipo-41.html', 0, 'RP', NULL, NULL, 3),
(337, 1, '07957300_1400777986', 'rosario-tipo-35.html', 'rosario-tipo-42.html', 0, 'RP', NULL, NULL, 4),
(339, 1, '08559900_1400777986', 'collezioni/rosari/rosario-tipo-2.html', 'collezioni/rosari/rosario-tipo-5.html', 0, 'RP', NULL, 6, 4),
(342, 1, '09171500_1400777986', 'rosario-tipo-36.html', 'rosario-tipo-43.html', 0, 'RP', NULL, NULL, 5),
(344, 1, '09814200_1400777986', 'collezioni/rosari/rosario-tipo-3.html', 'collezioni/rosari/rosario-tipo-6.html', 0, 'RP', NULL, 6, 5),
(347, 1, '10428600_1400777986', 'rosario-tipo-37.html', 'rosario-tipo-44.html', 0, 'RP', NULL, NULL, 6),
(349, 1, '11036900_1400777986', 'collezioni/rosari/rosario-tipo-4.html', 'collezioni/rosari/rosario-tipo-7.html', 0, 'RP', NULL, 6, 6),
(352, 1, '11683500_1400777986', 'rosario-tipo-38.html', 'rosario-tipo-45.html', 0, 'RP', NULL, NULL, 7),
(355, 1, '12459400_1400777986', 'rosario-tipo-39.html', 'rosario-tipo-46.html', 0, 'RP', NULL, NULL, 8),
(357, 1, '13090800_1400777986', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-2.html', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-3.html', 0, 'RP', NULL, 18, 8),
(381, 2, '22628000_1400777986', 'rosario-tipo-1-2.html', 'rosario-tipo-2.html', 0, 'RP', NULL, NULL, 2),
(383, 2, '23181800_1400777986', 'rosario-tipo-1-3.html', 'rosario-tipo-3.html', 0, 'RP', NULL, NULL, 3),
(387, 2, '23978900_1400777986', 'rosario-tipo-1-4.html', 'rosario-tipo-4.html', 0, 'RP', NULL, NULL, 4),
(389, 2, '24596000_1400777986', 'collezioni/rosari/rosario-tipo-1-4.html', 'collezioni/rosari/rosario-tipo-2.html', 0, 'RP', NULL, 6, 4),
(392, 2, '25133200_1400777986', 'rosario-tipo-1-5.html', 'rosario-tipo-5.html', 0, 'RP', NULL, NULL, 5),
(394, 2, '25720400_1400777986', 'collezioni/rosari/rosario-tipo-1-5.html', 'collezioni/rosari/rosario-tipo-3.html', 0, 'RP', NULL, 6, 5),
(397, 2, '26293500_1400777986', 'rosario-tipo-1-6.html', 'rosario-tipo-6.html', 0, 'RP', NULL, NULL, 6),
(399, 2, '26857300_1400777986', 'collezioni/rosari/rosario-tipo-1-6.html', 'collezioni/rosari/rosario-tipo-4.html', 0, 'RP', NULL, 6, 6),
(402, 2, '29159600_1400777986', 'rosario-tipo-1-7.html', 'rosario-tipo-7.html', 0, 'RP', NULL, NULL, 7),
(405, 2, '29845900_1400777986', 'rosario-tipo-1-8.html', 'rosario-tipo-8.html', 0, 'RP', NULL, NULL, 8),
(407, 2, '30425200_1400777986', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-1-8.html', 'collezioni/rosari/miraculous-medal-collection/rosario-tipo-2.html', 0, 'RP', NULL, 18, 8);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_variable`
--

CREATE TABLE IF NOT EXISTS `mg_core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_MG_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_variable_value`
--

CREATE TABLE IF NOT EXISTS `mg_core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_MG_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_MG_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_core_website`
--

CREATE TABLE IF NOT EXISTS `mg_core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_MG_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_MG_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_MG_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_core_website`
--

INSERT INTO `mg_core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1),
(2, 'sitoamericano', 'US_Site', 1, 3, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `mg_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MG_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_MG_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mg_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MG_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_MG_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mg_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `815F1B064BD39A72FFDC0A1547DD4909` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MG_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_MG_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mg Coupon Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_cron_schedule`
--

CREATE TABLE IF NOT EXISTS `mg_cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_MG_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_MG_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `mg_customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mg_customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CSTR_ADDR_ENTT_DEC_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `mg_customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `mg_customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mg_customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CSTR_ADDR_ENTT_VCHR_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dump dei dati per la tabella `mg_customer_eav_attribute`
--

INSERT INTO `mg_customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `mg_customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_MG_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_entity`
--

CREATE TABLE IF NOT EXISTS `mg_customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_customer_entity`
--

INSERT INTO `mg_customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`) VALUES
(1, 1, 0, 1, 'travaglini.fabio@yahoo.it', 1, NULL, 1, '2014-05-05 16:11:10', '2014-05-05 09:11:10', 1, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mg_customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `mg_customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `mg_customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mg_customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `mg_customer_entity_varchar`
--

INSERT INTO `mg_customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
(1, 1, 5, 1, 'Fabio'),
(2, 1, 7, 1, 'Travaglini'),
(3, 1, 12, 1, 'bcb83f8f96f2e2d552d5831257a5046f:U1B6LLGJ8GRFJQgYTjWUmYEp4uPInii5'),
(5, 1, 3, 1, 'Default Store View');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_MG_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dump dei dati per la tabella `mg_customer_form_attribute`
--

INSERT INTO `mg_customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_customer_group`
--

CREATE TABLE IF NOT EXISTS `mg_customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_customer_group`
--

INSERT INTO `mg_customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_MG_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_MG_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_MG_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_MG_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_MG_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_MG_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `mg_dataflow_profile`
--

INSERT INTO `mg_dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2014-05-05 08:07:33', '2014-05-05 08:07:33', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2014-05-05 08:07:33', '2014-05-05 08:07:33', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2014-05-05 08:07:34', '2014-05-05 08:07:34', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2014-05-05 08:07:34', '2014-05-05 08:07:34', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2014-05-05 08:07:34', '2014-05-05 08:07:34', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2014-05-05 08:07:34', '2014-05-05 08:07:34', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_MG_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `mg_dataflow_profile_history`
--

INSERT INTO `mg_dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2014-05-05 08:07:33'),
(2, 2, 'create', 0, '2014-05-05 08:07:33'),
(3, 3, 'create', 0, '2014-05-05 08:07:34'),
(4, 4, 'create', 0, '2014-05-05 08:07:34'),
(5, 5, 'create', 0, '2014-05-05 08:07:34'),
(6, 6, 'create', 0, '2014-05-05 08:07:34');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_dataflow_session`
--

CREATE TABLE IF NOT EXISTS `mg_dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_design_change`
--

CREATE TABLE IF NOT EXISTS `mg_design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_MG_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_directory_country`
--

CREATE TABLE IF NOT EXISTS `mg_directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dump dei dati per la tabella `mg_directory_country`
--

INSERT INTO `mg_directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_directory_country_format`
--

CREATE TABLE IF NOT EXISTS `mg_directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_MG_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_directory_country_region`
--

CREATE TABLE IF NOT EXISTS `mg_directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_MG_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- Dump dei dati per la tabella `mg_directory_country_region`
--

INSERT INTO `mg_directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `mg_directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_MG_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dump dei dati per la tabella `mg_directory_country_region_name`
--

INSERT INTO `mg_directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `mg_directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_MG_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dump dei dati per la tabella `mg_directory_currency_rate`
--

INSERT INTO `mg_directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', 1.000000000000),
('EUR', 'USD', 1.415000000000),
('USD', 'EUR', 0.706700000000),
('USD', 'USD', 1.000000000000);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_link`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_MG_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_MG_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_MG_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `mg_downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_MG_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_MG_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_MG_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_MG_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_MG_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=140 ;

--
-- Dump dei dati per la tabella `mg_eav_attribute`
--

INSERT INTO `mg_eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, '', 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container2', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(132, 3, 'thumbnail', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(133, 3, 'mtmenu_cat_block_right', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Block Right', NULL, NULL, 0, 1, NULL, 0, 'This field is applicable only for top-level categories.'),
(134, 3, 'mtmenu_cat_block_proportions', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Proportions: Subcategories / Block Right', NULL, 'megamenu/system_config_source_category_attribute_source_block_proportions', 0, 1, NULL, 0, 'Proportions between block of subcategories and Block Right. This field is applicable only for top-level categories.'),
(135, 3, 'mtmenu_cat_groups', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Category Menu Type', NULL, 'megamenu/system_config_source_category_attribute_source_block_types', 0, 1, NULL, 0, 'Show subcategories by. This field is applicable only for top-level categories.'),
(136, 3, 'mtmenu_cat_block_top', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Block Top', NULL, NULL, 0, 1, NULL, 0, NULL),
(137, 3, 'mtmenu_cat_block_bottom', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Block Bottom', NULL, NULL, 0, 1, NULL, 0, NULL),
(138, 3, 'mtmenu_cat_label', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Category Label', NULL, 'megamenu/system_config_source_category_attribute_source_categorylabel', 0, 1, NULL, 0, 'Labels have to be defined in menu settings'),
(139, 4, 'material', NULL, NULL, 'int', NULL, NULL, 'select', 'Materiale', NULL, 'eav/entity_attribute_source_table', 0, 1, '', 0, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `mg_eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_MG_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_MG_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=26 ;

--
-- Dump dei dati per la tabella `mg_eav_attribute_group`
--

INSERT INTO `mg_eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0),
(18, 3, 'Main Menu', 31, 0),
(19, 9, 'Gift Options', 7, 0),
(20, 9, 'Design', 6, 0),
(21, 9, 'Recurring Profile', 5, 0),
(22, 9, 'Images', 4, 0),
(23, 9, 'Meta Information', 3, 0),
(24, 9, 'Prices', 2, 0),
(25, 9, 'General', 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `mg_eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_MG_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_MG_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=15 ;

--
-- Dump dei dati per la tabella `mg_eav_attribute_label`
--

INSERT INTO `mg_eav_attribute_label` (`attribute_label_id`, `attribute_id`, `store_id`, `value`) VALUES
(12, 79, 1, 'Prezzo'),
(13, 92, 1, 'Colore'),
(14, 139, 1, 'Materiale');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `mg_eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MG_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `mg_eav_attribute_option`
--

INSERT INTO `mg_eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1),
(3, 92, 3),
(4, 92, 2),
(5, 92, 1),
(6, 92, 0),
(7, 139, 1),
(8, 139, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `mg_eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MG_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_MG_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=27 ;

--
-- Dump dei dati per la tabella `mg_eav_attribute_option_value`
--

INSERT INTO `mg_eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female'),
(15, 6, 0, 'Rosa'),
(16, 6, 1, 'Rosa'),
(17, 5, 0, 'Giallo'),
(18, 5, 1, 'Giallo'),
(19, 4, 0, 'Verde'),
(20, 4, 1, 'Verde'),
(21, 3, 0, 'Rosso'),
(22, 3, 1, 'Rosso'),
(23, 8, 0, 'Argento'),
(24, 8, 1, 'Argento'),
(25, 7, 0, 'Oro'),
(26, 7, 1, 'Oro');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `mg_eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_MG_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_MG_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `mg_eav_attribute_set`
--

INSERT INTO `mg_eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1),
(9, 4, 'Rosari', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_MG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_MG_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=425 ;

--
-- Dump dei dati per la tabella `mg_eav_entity_attribute`
--

INSERT INTO `mg_eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(88, 4, 4, 7, 89, 6),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(106, 4, 4, 7, 108, 13),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(121, 4, 4, 7, 123, 22),
(122, 4, 4, 7, 124, 23),
(123, 4, 4, 7, 125, 24),
(125, 4, 4, 7, 127, 25),
(126, 4, 4, 7, 128, 26),
(127, 4, 4, 7, 129, 27),
(128, 4, 4, 7, 130, 28),
(129, 4, 4, 7, 131, 29),
(130, 3, 3, 4, 132, 4),
(131, 3, 3, 18, 133, 1),
(132, 3, 3, 18, 134, 2),
(133, 3, 3, 18, 135, 3),
(134, 3, 3, 18, 136, 4),
(135, 3, 3, 18, 137, 5),
(136, 3, 3, 18, 138, 6),
(186, 4, 9, 24, 99, 8),
(208, 4, 9, 25, 89, 6),
(218, 4, 9, 25, 98, 11),
(222, 4, 9, 25, 108, 13),
(224, 4, 9, 25, 110, 14),
(226, 4, 9, 25, 111, 15),
(228, 4, 9, 25, 112, 16),
(230, 4, 9, 25, 113, 17),
(232, 4, 9, 25, 114, 18),
(234, 4, 9, 25, 115, 19),
(236, 4, 9, 25, 116, 20),
(240, 4, 9, 25, 123, 22),
(242, 4, 9, 25, 124, 23),
(244, 4, 9, 25, 125, 24),
(246, 4, 9, 25, 127, 25),
(248, 4, 9, 25, 128, 26),
(250, 4, 9, 25, 129, 27),
(252, 4, 9, 25, 130, 28),
(254, 4, 9, 25, 131, 29),
(256, 4, 9, 25, 71, 1),
(258, 4, 9, 25, 72, 2),
(260, 4, 9, 25, 73, 3),
(262, 4, 9, 25, 74, 4),
(264, 4, 9, 25, 80, 5),
(266, 4, 9, 25, 92, 12),
(268, 4, 9, 25, 93, 6),
(270, 4, 9, 25, 94, 7),
(272, 4, 9, 25, 96, 8),
(274, 4, 9, 25, 97, 9),
(276, 4, 9, 25, 102, 10),
(278, 4, 9, 25, 117, 11),
(280, 4, 9, 25, 139, 13),
(282, 4, 9, 24, 75, 1),
(284, 4, 9, 24, 76, 3),
(286, 4, 9, 24, 77, 4),
(288, 4, 9, 24, 78, 5),
(290, 4, 9, 24, 79, 6),
(292, 4, 9, 24, 90, 2),
(294, 4, 9, 24, 91, 7),
(296, 4, 9, 24, 118, 8),
(298, 4, 9, 24, 119, 9),
(300, 4, 9, 24, 120, 10),
(302, 4, 9, 24, 121, 11),
(304, 4, 9, 24, 126, 12),
(306, 4, 9, 23, 82, 1),
(308, 4, 9, 23, 83, 2),
(310, 4, 9, 23, 84, 3),
(312, 4, 9, 22, 85, 1),
(314, 4, 9, 22, 86, 2),
(316, 4, 9, 22, 87, 3),
(318, 4, 9, 22, 88, 4),
(320, 4, 9, 22, 95, 5),
(322, 4, 9, 21, 100, 1),
(324, 4, 9, 21, 101, 2),
(326, 4, 9, 20, 103, 1),
(328, 4, 9, 20, 104, 2),
(330, 4, 9, 20, 105, 3),
(332, 4, 9, 20, 106, 4),
(334, 4, 9, 20, 107, 5),
(336, 4, 9, 20, 109, 6),
(338, 4, 9, 19, 122, 1),
(340, 4, 4, 7, 71, 1),
(342, 4, 4, 7, 72, 2),
(344, 4, 4, 7, 73, 3),
(346, 4, 4, 7, 74, 4),
(348, 4, 4, 7, 80, 5),
(350, 4, 4, 7, 81, 12),
(352, 4, 4, 7, 92, 14),
(354, 4, 4, 7, 93, 6),
(356, 4, 4, 7, 94, 7),
(358, 4, 4, 7, 96, 8),
(360, 4, 4, 7, 97, 9),
(362, 4, 4, 7, 102, 10),
(364, 4, 4, 7, 117, 11),
(366, 4, 4, 7, 139, 13),
(368, 4, 4, 8, 75, 1),
(370, 4, 4, 8, 76, 3),
(372, 4, 4, 8, 77, 4),
(374, 4, 4, 8, 78, 5),
(376, 4, 4, 8, 79, 6),
(378, 4, 4, 8, 90, 2),
(380, 4, 4, 8, 91, 7),
(382, 4, 4, 8, 118, 8),
(384, 4, 4, 8, 119, 9),
(386, 4, 4, 8, 120, 10),
(388, 4, 4, 8, 121, 11),
(390, 4, 4, 8, 126, 12),
(392, 4, 4, 9, 82, 1),
(394, 4, 4, 9, 83, 2),
(396, 4, 4, 9, 84, 3),
(398, 4, 4, 10, 85, 1),
(400, 4, 4, 10, 86, 2),
(402, 4, 4, 10, 87, 3),
(404, 4, 4, 10, 88, 4),
(406, 4, 4, 10, 95, 5),
(408, 4, 4, 11, 100, 1),
(410, 4, 4, 11, 101, 2),
(412, 4, 4, 12, 103, 1),
(414, 4, 4, 12, 104, 2),
(416, 4, 4, 12, 105, 3),
(418, 4, 4, 12, 106, 4),
(420, 4, 4, 12, 107, 5),
(422, 4, 4, 12, 109, 6),
(424, 4, 4, 17, 122, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MG_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MG_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MG_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MG_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_MG_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MG_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_MG_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MG_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `mg_eav_entity_type`
--

INSERT INTO `mg_eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mg_eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MG_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MG_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MG_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MG_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MG_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MG_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_form_element`
--

CREATE TABLE IF NOT EXISTS `mg_eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_MG_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_MG_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_MG_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_MG_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=53 ;

--
-- Dump dei dati per la tabella `mg_eav_form_element`
--

INSERT INTO `mg_eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 22, 1),
(3, 1, NULL, 24, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 25, 4),
(6, 1, NULL, 26, 5),
(7, 1, NULL, 28, 6),
(8, 1, NULL, 30, 7),
(9, 1, NULL, 27, 8),
(10, 1, NULL, 31, 9),
(11, 1, NULL, 32, 10),
(12, 2, NULL, 20, 0),
(13, 2, NULL, 22, 1),
(14, 2, NULL, 24, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 25, 4),
(17, 2, NULL, 26, 5),
(18, 2, NULL, 28, 6),
(19, 2, NULL, 30, 7),
(20, 2, NULL, 27, 8),
(21, 2, NULL, 31, 9),
(22, 2, NULL, 32, 10),
(23, 3, NULL, 20, 0),
(24, 3, NULL, 22, 1),
(25, 3, NULL, 24, 2),
(26, 3, NULL, 25, 3),
(27, 3, NULL, 26, 4),
(28, 3, NULL, 28, 5),
(29, 3, NULL, 30, 6),
(30, 3, NULL, 27, 7),
(31, 3, NULL, 31, 8),
(32, 3, NULL, 32, 9),
(33, 4, NULL, 20, 0),
(34, 4, NULL, 22, 1),
(35, 4, NULL, 24, 2),
(36, 4, NULL, 25, 3),
(37, 4, NULL, 26, 4),
(38, 4, NULL, 28, 5),
(39, 4, NULL, 30, 6),
(40, 4, NULL, 27, 7),
(41, 4, NULL, 31, 8),
(42, 4, NULL, 32, 9),
(43, 5, 1, 5, 0),
(44, 5, 1, 7, 1),
(45, 5, 1, 9, 2),
(46, 5, 2, 24, 0),
(47, 5, 2, 31, 1),
(48, 5, 2, 25, 2),
(49, 5, 2, 26, 3),
(50, 5, 2, 28, 4),
(51, 5, 2, 30, 5),
(52, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `mg_eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_MG_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_MG_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_eav_form_fieldset`
--

INSERT INTO `mg_eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `mg_eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_MG_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_MG_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Dump dei dati per la tabella `mg_eav_form_fieldset_label`
--

INSERT INTO `mg_eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_form_type`
--

CREATE TABLE IF NOT EXISTS `mg_eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_MG_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_MG_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `mg_eav_form_type`
--

INSERT INTO `mg_eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `mg_eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_MG_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dump dei dati per la tabella `mg_eav_form_type_entity`
--

INSERT INTO `mg_eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_faq`
--

CREATE TABLE IF NOT EXISTS `mg_faq` (
  `faq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question` tinytext NOT NULL,
  `answer` text NOT NULL,
  `answer_html` tinyint(1) NOT NULL DEFAULT '1',
  `creation_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`faq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FAQ items' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_faq_category`
--

CREATE TABLE IF NOT EXISTS `mg_faq_category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `creation_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`category_id`),
  KEY `FK_FAQ_CATEGORY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ Categories' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_faq_category_item`
--

CREATE TABLE IF NOT EXISTS `mg_faq_category_item` (
  `category_id` int(10) unsigned NOT NULL,
  `faq_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`category_id`,`faq_id`),
  KEY `FK_FAQ_CATEGORY_ITEM_ITEM` (`faq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ Items to Cateories';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_faq_category_store`
--

CREATE TABLE IF NOT EXISTS `mg_faq_category_store` (
  `category_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`),
  KEY `FK_FAQ_CATEGORY_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='FAQ Categories to Stores';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_faq_store`
--

CREATE TABLE IF NOT EXISTS `mg_faq_store` (
  `faq_id` int(10) unsigned NOT NULL,
  `store_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`faq_id`,`store_id`),
  KEY `FK_FAQ_FAQ_STORE_STORE` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FAQ items to Stores';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_fiver_facebook_customer`
--

CREATE TABLE IF NOT EXISTS `mg_fiver_facebook_customer` (
  `customer_id` int(10) unsigned NOT NULL,
  `fb_id` bigint(20) NOT NULL,
  UNIQUE KEY `FB_CUSTOMER` (`customer_id`,`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_gift_message`
--

CREATE TABLE IF NOT EXISTS `mg_gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `mg_importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_index_event`
--

CREATE TABLE IF NOT EXISTS `mg_index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_MG_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=55 ;

--
-- Dump dei dati per la tabella `mg_index_event`
--

INSERT INTO `mg_index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2014-05-05 08:07:37', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2014-05-05 08:07:37', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(3, 'save', 'catalog_category', 3, '2014-05-05 08:45:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(4, 'save', 'catalog_category', 4, '2014-05-05 08:48:35', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(5, 'save', 'catalog_category', 5, '2014-05-05 08:48:58', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(6, 'save', 'cataloginventory_stock_item', 1, '2014-05-05 08:51:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(7, 'save', 'catalog_product', 1, '2014-05-05 08:51:37', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(8, 'catalog_reindex_price', 'catalog_product', 1, '2014-05-05 08:51:37', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(9, 'save', 'cataloginventory_stock_item', 2, '2014-05-05 08:54:30', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(10, 'save', 'catalog_product', 2, '2014-05-05 08:54:30', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(11, 'catalog_reindex_price', 'catalog_product', 2, '2014-05-05 08:54:31', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(12, 'save', 'cataloginventory_stock_item', 3, '2014-05-05 08:55:43', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(13, 'save', 'catalog_product', 3, '2014-05-05 08:55:43', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(14, 'catalog_reindex_price', 'catalog_product', 3, '2014-05-05 08:55:43', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(15, 'save', 'cataloginventory_stock_item', 4, '2014-05-05 08:56:52', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(16, 'save', 'catalog_product', 4, '2014-05-05 08:56:52', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(17, 'catalog_reindex_price', 'catalog_product', 4, '2014-05-05 08:56:52', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(18, 'save', 'cataloginventory_stock_item', 5, '2014-05-05 08:57:56', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(19, 'save', 'catalog_product', 5, '2014-05-05 08:57:56', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(20, 'catalog_reindex_price', 'catalog_product', 5, '2014-05-05 08:57:56', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(21, 'save', 'cataloginventory_stock_item', 6, '2014-05-05 08:58:45', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(22, 'save', 'catalog_product', 6, '2014-05-05 08:58:45', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(23, 'catalog_reindex_price', 'catalog_product', 6, '2014-05-05 08:58:45', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(24, 'save', 'cataloginventory_stock_item', 7, '2014-05-05 08:59:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(25, 'save', 'catalog_product', 7, '2014-05-05 08:59:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(26, 'catalog_reindex_price', 'catalog_product', 7, '2014-05-05 08:59:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(27, 'save', 'catalog_category', 6, '2014-05-05 11:38:36', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(28, 'save', 'catalog_category', 7, '2014-05-05 11:38:54', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(29, 'save', 'catalog_category', 8, '2014-05-05 11:39:04', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(30, 'save', 'catalog_category', 9, '2014-05-05 11:39:15', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(31, 'save', 'catalog_category', 10, '2014-05-05 11:39:27', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(32, 'save', 'catalog_category', 11, '2014-05-05 11:39:37', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(33, 'save', 'catalog_category', 12, '2014-05-05 11:39:49', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(34, 'save', 'catalog_category', 13, '2014-05-05 11:39:59', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(35, 'save', 'catalog_category', 14, '2014-05-05 11:40:11', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(36, 'save', 'catalog_category', 15, '2014-05-05 11:40:22', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(37, 'save', 'catalog_category', 16, '2014-05-05 11:40:44', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(38, 'save', 'catalog_category', 17, '2014-05-05 11:41:05', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(39, 'save', 'catalog_category', 18, '2014-05-13 08:18:21', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(40, 'save', 'catalog_category', 19, '2014-05-13 10:14:49', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(41, 'save', 'catalog_category', 20, '2014-05-13 10:15:19', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(42, 'save', 'catalog_category', 21, '2014-05-13 10:16:14', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(43, 'save', 'catalog_category', 22, '2014-05-13 10:16:55', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(44, 'save', 'catalog_eav_attribute', 79, '2014-05-13 14:46:12', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(45, 'save', 'catalog_eav_attribute', 92, '2014-05-13 15:09:42', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(46, 'save', 'catalog_eav_attribute', 139, '2014-05-13 15:11:47', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(47, 'save', 'cataloginventory_stock_item', 8, '2014-05-13 15:20:51', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(48, 'save', 'catalog_product', 8, '2014-05-13 15:20:51', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(49, 'catalog_reindex_price', 'catalog_product', 8, '2014-05-13 15:20:51', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(50, 'save', 'core_config_data', 225, '2014-05-13 15:43:26', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
(51, 'save', 'catalog_category', 23, '2014-05-22 14:40:44', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(52, 'save', 'store_group', 2, '2014-05-22 14:41:38', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(53, 'save', 'core_store', 2, '2014-05-22 14:44:14', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(54, 'save', 'store_group', 3, '2014-05-22 14:49:21', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:1;}');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_index_process`
--

CREATE TABLE IF NOT EXISTS `mg_index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_MG_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=10 ;

--
-- Dump dei dati per la tabella `mg_index_process`
--

INSERT INTO `mg_index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2014-05-22 14:58:34', '2014-05-22 14:58:34', 'real_time'),
(2, 'catalog_product_price', 'pending', '2014-05-22 14:58:34', '2014-05-22 14:59:45', 'real_time'),
(3, 'catalog_url', 'pending', '2014-05-29 11:45:12', '2014-05-29 11:45:12', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2014-05-07 14:18:06', '2014-05-07 14:18:06', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2014-05-07 14:18:06', '2014-05-07 14:18:06', 'real_time'),
(6, 'catalog_category_product', 'pending', '2014-05-29 11:45:12', '2014-05-29 11:45:12', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2014-05-29 11:45:12', '2014-05-29 11:45:12', 'real_time'),
(8, 'cataloginventory_stock', 'pending', '2014-05-22 14:58:34', '2014-05-22 14:58:34', 'real_time'),
(9, 'tag_summary', 'pending', '2014-05-22 14:59:46', '2014-05-22 14:59:46', 'real_time');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_index_process_event`
--

CREATE TABLE IF NOT EXISTS `mg_index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_MG_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_customer`
--

CREATE TABLE IF NOT EXISTS `mg_log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_MG_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=6 ;

--
-- Dump dei dati per la tabella `mg_log_customer`
--

INSERT INTO `mg_log_customer` (`log_id`, `visitor_id`, `customer_id`, `login_at`, `logout_at`, `store_id`) VALUES
(1, 1, 1, '2014-05-05 09:11:11', NULL, 1),
(2, 4, 1, '2014-05-05 14:27:37', NULL, 1),
(3, 6, 1, '2014-05-06 05:34:11', NULL, 1),
(4, 9, 1, '2014-05-06 13:34:08', NULL, 1),
(5, 18, 1, '2014-05-07 14:43:23', NULL, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_quote`
--

CREATE TABLE IF NOT EXISTS `mg_log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

--
-- Dump dei dati per la tabella `mg_log_quote`
--

INSERT INTO `mg_log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
(1, 1, '2014-05-05 09:11:11', NULL),
(2, 2, '2014-05-05 11:50:54', NULL),
(3, 20, '2014-05-08 05:46:32', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_summary`
--

CREATE TABLE IF NOT EXISTS `mg_log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_summary_type`
--

CREATE TABLE IF NOT EXISTS `mg_log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_log_summary_type`
--

INSERT INTO `mg_log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_url`
--

CREATE TABLE IF NOT EXISTS `mg_log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  PRIMARY KEY (`url_id`),
  KEY `IDX_MG_LOG_URL_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- Dump dei dati per la tabella `mg_log_url`
--

INSERT INTO `mg_log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2014-05-05 08:25:58'),
(2, 1, '2014-05-05 08:26:14'),
(3, 1, '2014-05-05 08:33:47'),
(4, 1, '2014-05-05 08:33:52'),
(5, 1, '2014-05-05 08:34:09'),
(6, 1, '2014-05-05 08:42:16'),
(7, 1, '2014-05-05 08:47:45'),
(8, 1, '2014-05-05 08:49:50'),
(9, 1, '2014-05-05 08:50:01'),
(10, 1, '2014-05-05 08:51:43'),
(11, 1, '2014-05-05 08:51:58'),
(12, 1, '2014-05-05 08:52:00'),
(13, 1, '2014-05-05 08:53:33'),
(14, 1, '2014-05-05 08:53:39'),
(15, 1, '2014-05-05 08:53:41'),
(16, 1, '2014-05-05 08:53:50'),
(17, 1, '2014-05-05 08:54:12'),
(18, 1, '2014-05-05 08:54:18'),
(19, 1, '2014-05-05 08:54:20'),
(20, 1, '2014-05-05 08:55:25'),
(21, 1, '2014-05-05 08:55:28'),
(22, 1, '2014-05-05 08:55:34'),
(23, 1, '2014-05-05 08:55:36'),
(24, 1, '2014-05-05 08:56:23'),
(25, 1, '2014-05-05 08:56:40'),
(26, 1, '2014-05-05 08:57:35'),
(27, 1, '2014-05-05 08:57:50'),
(28, 1, '2014-05-05 08:58:33'),
(29, 1, '2014-05-05 08:59:31'),
(30, 1, '2014-05-05 09:00:16'),
(31, 1, '2014-05-05 09:10:29'),
(32, 1, '2014-05-05 09:10:42'),
(33, 1, '2014-05-05 09:11:11'),
(34, 1, '2014-05-05 09:11:13'),
(35, 1, '2014-05-05 09:11:23'),
(36, 1, '2014-05-05 09:11:25'),
(37, 1, '2014-05-05 09:11:28'),
(38, 1, '2014-05-05 09:11:36'),
(39, 1, '2014-05-05 09:11:38'),
(40, 1, '2014-05-05 09:11:53'),
(41, 1, '2014-05-05 09:11:55'),
(42, 1, '2014-05-05 09:13:38'),
(43, 1, '2014-05-05 09:13:44'),
(44, 1, '2014-05-05 09:13:46'),
(45, 1, '2014-05-05 09:13:49'),
(46, 1, '2014-05-05 09:13:50'),
(47, 1, '2014-05-05 09:14:06'),
(48, 2, '2014-05-05 10:43:10'),
(49, 2, '2014-05-05 10:44:19'),
(50, 2, '2014-05-05 10:44:22'),
(51, 2, '2014-05-05 10:44:24'),
(52, 2, '2014-05-05 10:44:26'),
(53, 2, '2014-05-05 10:44:28'),
(54, 2, '2014-05-05 10:49:47'),
(55, 2, '2014-05-05 10:49:55'),
(56, 2, '2014-05-05 10:52:25'),
(57, 2, '2014-05-05 10:52:34'),
(58, 2, '2014-05-05 10:52:38'),
(59, 2, '2014-05-05 10:52:42'),
(60, 2, '2014-05-05 10:52:44'),
(61, 2, '2014-05-05 10:52:50'),
(62, 2, '2014-05-05 11:13:38'),
(63, 2, '2014-05-05 11:13:43'),
(64, 2, '2014-05-05 11:14:08'),
(65, 2, '2014-05-05 11:14:10'),
(66, 2, '2014-05-05 11:14:15'),
(67, 2, '2014-05-05 11:14:59'),
(68, 2, '2014-05-05 11:15:19'),
(69, 2, '2014-05-05 11:15:43'),
(70, 2, '2014-05-05 11:16:00'),
(71, 2, '2014-05-05 11:16:03'),
(72, 2, '2014-05-05 11:16:07'),
(73, 2, '2014-05-05 11:16:10'),
(74, 2, '2014-05-05 11:16:12'),
(75, 2, '2014-05-05 11:16:13'),
(76, 2, '2014-05-05 11:17:49'),
(77, 3, '2014-05-05 11:18:33'),
(78, 3, '2014-05-05 11:20:33'),
(79, 2, '2014-05-05 11:22:49'),
(80, 3, '2014-05-05 11:22:58'),
(81, 3, '2014-05-05 11:24:48'),
(82, 2, '2014-05-05 11:30:21'),
(83, 2, '2014-05-05 11:30:24'),
(84, 2, '2014-05-05 11:30:37'),
(85, 2, '2014-05-05 11:30:40'),
(86, 2, '2014-05-05 11:30:43'),
(87, 2, '2014-05-05 11:30:46'),
(88, 2, '2014-05-05 11:30:49'),
(89, 2, '2014-05-05 11:30:50'),
(90, 2, '2014-05-05 11:35:29'),
(91, 2, '2014-05-05 11:35:32'),
(92, 2, '2014-05-05 11:35:39'),
(93, 2, '2014-05-05 11:35:45'),
(94, 2, '2014-05-05 11:35:47'),
(95, 2, '2014-05-05 11:35:50'),
(96, 2, '2014-05-05 11:41:09'),
(97, 2, '2014-05-05 11:41:17'),
(98, 2, '2014-05-05 11:41:23'),
(99, 2, '2014-05-05 11:42:20'),
(100, 2, '2014-05-05 11:49:16'),
(101, 2, '2014-05-05 11:49:45'),
(102, 2, '2014-05-05 11:50:00'),
(103, 2, '2014-05-05 11:50:23'),
(104, 2, '2014-05-05 11:50:25'),
(105, 2, '2014-05-05 11:50:30'),
(106, 2, '2014-05-05 11:50:32'),
(107, 2, '2014-05-05 11:50:37'),
(108, 2, '2014-05-05 11:50:38'),
(109, 2, '2014-05-05 11:50:54'),
(110, 2, '2014-05-05 11:50:56'),
(111, 2, '2014-05-05 11:51:05'),
(112, 2, '2014-05-05 11:51:07'),
(113, 2, '2014-05-05 11:51:12'),
(114, 2, '2014-05-05 11:51:18'),
(115, 2, '2014-05-05 11:51:55'),
(116, 2, '2014-05-05 12:00:41'),
(117, 2, '2014-05-05 12:00:49'),
(118, 2, '2014-05-05 12:00:59'),
(119, 2, '2014-05-05 12:01:07'),
(120, 2, '2014-05-05 12:03:05'),
(121, 2, '2014-05-05 12:06:26'),
(122, 2, '2014-05-05 12:06:32'),
(123, 2, '2014-05-05 12:06:40'),
(124, 2, '2014-05-05 12:06:48'),
(125, 2, '2014-05-05 12:06:52'),
(126, 2, '2014-05-05 12:06:55'),
(127, 2, '2014-05-05 12:07:37'),
(128, 2, '2014-05-05 12:09:08'),
(129, 2, '2014-05-05 12:09:34'),
(130, 2, '2014-05-05 12:26:00'),
(131, 2, '2014-05-05 12:26:17'),
(132, 2, '2014-05-05 12:26:51'),
(133, 4, '2014-05-05 14:26:26'),
(134, 4, '2014-05-05 14:26:33'),
(135, 4, '2014-05-05 14:26:40'),
(136, 4, '2014-05-05 14:26:48'),
(137, 4, '2014-05-05 14:26:50'),
(138, 4, '2014-05-05 14:26:55'),
(139, 4, '2014-05-05 14:27:16'),
(140, 4, '2014-05-05 14:27:18'),
(141, 4, '2014-05-05 14:27:37'),
(142, 4, '2014-05-05 14:27:38'),
(143, 4, '2014-05-05 14:27:54'),
(144, 4, '2014-05-05 14:27:56'),
(145, 4, '2014-05-05 14:30:59'),
(146, 4, '2014-05-05 14:31:06'),
(147, 4, '2014-05-05 14:31:12'),
(148, 4, '2014-05-05 14:31:18'),
(149, 4, '2014-05-05 14:31:20'),
(150, 4, '2014-05-05 14:31:24'),
(151, 4, '2014-05-05 14:35:10'),
(152, 4, '2014-05-05 14:36:24'),
(153, 4, '2014-05-05 14:36:31'),
(154, 4, '2014-05-05 14:36:37'),
(155, 4, '2014-05-05 14:36:43'),
(156, 4, '2014-05-05 14:36:45'),
(157, 4, '2014-05-05 14:36:53'),
(158, 4, '2014-05-05 14:36:55'),
(159, 4, '2014-05-05 14:41:37'),
(160, 4, '2014-05-05 14:42:57'),
(161, 4, '2014-05-05 14:43:04'),
(162, 4, '2014-05-05 14:43:06'),
(163, 4, '2014-05-05 14:43:11'),
(164, 4, '2014-05-05 14:43:18'),
(165, 4, '2014-05-05 14:48:23'),
(166, 4, '2014-05-05 14:50:55'),
(167, 4, '2014-05-05 14:51:04'),
(168, 4, '2014-05-05 14:51:11'),
(169, 4, '2014-05-05 14:51:18'),
(170, 4, '2014-05-05 14:51:25'),
(171, 4, '2014-05-05 14:51:28'),
(172, 4, '2014-05-05 14:51:32'),
(173, 4, '2014-05-05 14:51:38'),
(174, 4, '2014-05-05 14:51:39'),
(175, 4, '2014-05-05 14:51:40'),
(176, 4, '2014-05-05 14:51:44'),
(177, 4, '2014-05-05 15:17:38'),
(178, 4, '2014-05-05 15:18:15'),
(179, 4, '2014-05-05 15:18:22'),
(180, 4, '2014-05-05 15:18:25'),
(181, 4, '2014-05-05 15:18:30'),
(182, 4, '2014-05-05 15:20:20'),
(183, 4, '2014-05-05 15:24:01'),
(184, 4, '2014-05-05 15:24:11'),
(185, 4, '2014-05-05 15:24:25'),
(186, 4, '2014-05-05 15:24:42'),
(187, 4, '2014-05-05 15:26:01'),
(188, 4, '2014-05-05 15:26:07'),
(189, 4, '2014-05-05 15:26:13'),
(190, 4, '2014-05-05 15:26:22'),
(191, 4, '2014-05-05 15:26:29'),
(192, 4, '2014-05-05 15:26:31'),
(193, 4, '2014-05-05 15:26:39'),
(194, 4, '2014-05-05 15:30:31'),
(195, 4, '2014-05-05 15:39:20'),
(196, 4, '2014-05-05 15:39:30'),
(197, 4, '2014-05-05 15:40:15'),
(198, 4, '2014-05-05 15:40:33'),
(199, 4, '2014-05-05 15:40:44'),
(200, 4, '2014-05-05 15:41:06'),
(201, 4, '2014-05-05 15:41:09'),
(202, 4, '2014-05-05 15:41:14'),
(203, 4, '2014-05-05 15:42:49'),
(204, 4, '2014-05-05 15:43:10'),
(205, 4, '2014-05-05 15:47:04'),
(206, 4, '2014-05-05 15:48:09'),
(207, 4, '2014-05-05 15:49:23'),
(208, 4, '2014-05-05 15:50:13'),
(209, 4, '2014-05-05 15:50:39'),
(210, 4, '2014-05-05 15:51:08'),
(211, 4, '2014-05-05 15:51:49'),
(212, 4, '2014-05-05 15:51:53'),
(213, 4, '2014-05-05 15:52:04'),
(214, 4, '2014-05-05 15:52:13'),
(215, 4, '2014-05-05 15:52:18'),
(216, 4, '2014-05-05 15:52:21'),
(217, 4, '2014-05-05 15:52:27'),
(218, 4, '2014-05-05 15:54:39'),
(219, 4, '2014-05-05 15:54:48'),
(220, 4, '2014-05-05 15:54:55'),
(221, 4, '2014-05-05 15:55:02'),
(222, 4, '2014-05-05 15:55:12'),
(223, 4, '2014-05-05 15:55:14'),
(224, 4, '2014-05-05 15:55:19'),
(225, 4, '2014-05-05 15:58:46'),
(226, 4, '2014-05-05 15:59:17'),
(227, 4, '2014-05-05 16:00:15'),
(228, 5, '2014-05-05 16:01:11'),
(229, 5, '2014-05-05 16:02:03'),
(230, 4, '2014-05-05 16:11:55'),
(231, 4, '2014-05-05 16:12:22'),
(232, 4, '2014-05-05 16:13:33'),
(233, 4, '2014-05-05 16:13:35'),
(234, 4, '2014-05-05 16:14:29'),
(235, 4, '2014-05-05 16:18:17'),
(236, 4, '2014-05-05 16:20:22'),
(237, 4, '2014-05-05 16:20:56'),
(238, 4, '2014-05-05 16:21:53'),
(239, 4, '2014-05-05 16:23:39'),
(240, 4, '2014-05-05 16:24:02'),
(241, 4, '2014-05-05 16:28:27'),
(242, 4, '2014-05-05 16:29:00'),
(243, 4, '2014-05-05 16:31:44'),
(244, 4, '2014-05-05 16:32:37'),
(245, 4, '2014-05-05 16:33:43'),
(246, 4, '2014-05-05 16:35:42'),
(247, 6, '2014-05-06 05:32:40'),
(248, 6, '2014-05-06 05:33:05'),
(249, 6, '2014-05-06 05:33:58'),
(250, 6, '2014-05-06 05:34:00'),
(251, 6, '2014-05-06 05:34:07'),
(252, 6, '2014-05-06 05:34:11'),
(253, 6, '2014-05-06 05:34:13'),
(254, 6, '2014-05-06 05:34:17'),
(255, 6, '2014-05-06 05:34:28'),
(256, 7, '2014-05-06 05:37:48'),
(257, 7, '2014-05-06 05:38:34'),
(258, 7, '2014-05-06 05:39:05'),
(259, 7, '2014-05-06 05:39:53'),
(260, 7, '2014-05-06 05:40:02'),
(261, 7, '2014-05-06 05:40:04'),
(262, 7, '2014-05-06 05:45:31'),
(263, 7, '2014-05-06 05:46:01'),
(264, 6, '2014-05-06 05:46:08'),
(265, 6, '2014-05-06 05:46:14'),
(266, 6, '2014-05-06 05:46:20'),
(267, 6, '2014-05-06 05:46:22'),
(268, 6, '2014-05-06 05:46:25'),
(269, 7, '2014-05-06 05:46:56'),
(270, 7, '2014-05-06 05:50:51'),
(271, 7, '2014-05-06 05:50:58'),
(272, 6, '2014-05-06 05:54:27'),
(273, 6, '2014-05-06 05:54:36'),
(274, 6, '2014-05-06 05:54:38'),
(275, 6, '2014-05-06 05:54:42'),
(276, 6, '2014-05-06 05:54:47'),
(277, 7, '2014-05-06 06:11:14'),
(278, 6, '2014-05-06 06:12:55'),
(279, 6, '2014-05-06 06:14:42'),
(280, 6, '2014-05-06 06:18:33'),
(281, 6, '2014-05-06 06:18:43'),
(282, 6, '2014-05-06 06:18:49'),
(283, 6, '2014-05-06 06:18:58'),
(284, 6, '2014-05-06 06:19:00'),
(285, 6, '2014-05-06 06:19:05'),
(286, 6, '2014-05-06 06:19:14'),
(287, 6, '2014-05-06 06:20:16'),
(288, 6, '2014-05-06 06:20:25'),
(289, 6, '2014-05-06 06:20:32'),
(290, 6, '2014-05-06 06:20:39'),
(291, 6, '2014-05-06 06:20:41'),
(292, 6, '2014-05-06 06:20:46'),
(293, 7, '2014-05-06 06:33:19'),
(294, 6, '2014-05-06 06:36:17'),
(295, 6, '2014-05-06 06:36:18'),
(296, 6, '2014-05-06 06:36:29'),
(297, 6, '2014-05-06 06:36:41'),
(298, 6, '2014-05-06 06:36:46'),
(299, 6, '2014-05-06 06:36:51'),
(300, 6, '2014-05-06 06:44:28'),
(301, 6, '2014-05-06 06:44:34'),
(302, 7, '2014-05-06 06:44:39'),
(303, 6, '2014-05-06 06:44:41'),
(304, 7, '2014-05-06 06:48:15'),
(305, 6, '2014-05-06 06:49:53'),
(306, 6, '2014-05-06 06:50:29'),
(307, 6, '2014-05-06 06:50:35'),
(308, 6, '2014-05-06 06:50:40'),
(309, 6, '2014-05-06 06:50:47'),
(310, 6, '2014-05-06 06:50:49'),
(311, 6, '2014-05-06 06:50:53'),
(312, 6, '2014-05-06 06:50:59'),
(313, 6, '2014-05-06 06:53:07'),
(314, 6, '2014-05-06 06:53:15'),
(315, 6, '2014-05-06 06:53:20'),
(316, 6, '2014-05-06 06:53:25'),
(317, 6, '2014-05-06 06:53:27'),
(318, 6, '2014-05-06 06:53:38'),
(319, 6, '2014-05-06 06:53:40'),
(320, 6, '2014-05-06 06:53:47'),
(321, 6, '2014-05-06 06:54:02'),
(322, 7, '2014-05-06 06:58:05'),
(323, 6, '2014-05-06 07:03:07'),
(324, 6, '2014-05-06 07:03:09'),
(325, 7, '2014-05-06 07:26:51'),
(326, 7, '2014-05-06 07:27:03'),
(327, 7, '2014-05-06 07:27:04'),
(328, 7, '2014-05-06 07:27:16'),
(329, 8, '2014-05-06 10:38:48'),
(330, 8, '2014-05-06 10:48:47'),
(331, 8, '2014-05-06 10:53:08'),
(332, 9, '2014-05-06 13:08:56'),
(333, 9, '2014-05-06 13:11:27'),
(334, 9, '2014-05-06 13:13:15'),
(335, 9, '2014-05-06 13:18:49'),
(336, 9, '2014-05-06 13:19:13'),
(337, 9, '2014-05-06 13:19:52'),
(338, 9, '2014-05-06 13:20:14'),
(339, 9, '2014-05-06 13:20:36'),
(340, 9, '2014-05-06 13:21:42'),
(341, 9, '2014-05-06 13:22:02'),
(342, 9, '2014-05-06 13:22:04'),
(343, 9, '2014-05-06 13:33:44'),
(344, 9, '2014-05-06 13:33:50'),
(345, 9, '2014-05-06 13:33:52'),
(346, 9, '2014-05-06 13:33:58'),
(347, 9, '2014-05-06 13:34:05'),
(348, 9, '2014-05-06 13:34:08'),
(349, 9, '2014-05-06 13:34:09'),
(350, 9, '2014-05-06 13:36:25'),
(351, 9, '2014-05-06 13:37:08'),
(352, 9, '2014-05-06 13:37:43'),
(353, 9, '2014-05-06 13:40:37'),
(354, 9, '2014-05-06 13:40:44'),
(355, 9, '2014-05-06 13:42:30'),
(356, 9, '2014-05-06 13:42:32'),
(357, 9, '2014-05-06 13:42:41'),
(358, 9, '2014-05-06 13:46:28'),
(359, 9, '2014-05-06 13:49:22'),
(360, 9, '2014-05-06 13:50:33'),
(361, 9, '2014-05-06 14:08:18'),
(362, 9, '2014-05-06 14:09:15'),
(363, 9, '2014-05-06 14:09:27'),
(364, 9, '2014-05-06 14:12:39'),
(365, 9, '2014-05-06 14:17:39'),
(366, 9, '2014-05-06 14:18:10'),
(367, 9, '2014-05-06 14:18:33'),
(368, 9, '2014-05-06 14:18:52'),
(369, 9, '2014-05-06 14:19:25'),
(370, 9, '2014-05-06 14:20:00'),
(371, 9, '2014-05-06 14:20:19'),
(372, 9, '2014-05-06 14:20:43'),
(373, 9, '2014-05-06 14:20:56'),
(374, 9, '2014-05-06 14:21:04'),
(375, 9, '2014-05-06 14:21:34'),
(376, 9, '2014-05-06 14:22:18'),
(377, 9, '2014-05-06 14:22:58'),
(378, 9, '2014-05-06 14:24:29'),
(379, 9, '2014-05-06 14:24:39'),
(380, 9, '2014-05-06 14:24:46'),
(381, 9, '2014-05-06 14:24:54'),
(382, 9, '2014-05-06 14:24:56'),
(383, 9, '2014-05-06 14:25:03'),
(384, 10, '2014-05-06 14:32:40'),
(385, 10, '2014-05-06 14:33:52'),
(386, 10, '2014-05-06 14:33:57'),
(387, 10, '2014-05-06 14:34:24'),
(388, 10, '2014-05-06 14:34:26'),
(389, 10, '2014-05-06 14:34:39'),
(390, 10, '2014-05-06 14:35:04'),
(391, 10, '2014-05-06 14:35:06'),
(392, 10, '2014-05-06 14:35:08'),
(393, 10, '2014-05-06 14:35:18'),
(394, 10, '2014-05-06 14:35:23'),
(395, 10, '2014-05-06 14:35:26'),
(396, 10, '2014-05-06 14:35:28'),
(397, 10, '2014-05-06 14:35:32'),
(398, 10, '2014-05-06 14:35:33'),
(399, 10, '2014-05-06 14:35:38'),
(400, 10, '2014-05-06 14:35:40'),
(401, 10, '2014-05-06 14:35:43'),
(402, 10, '2014-05-06 14:35:50'),
(403, 10, '2014-05-06 14:35:50'),
(404, 10, '2014-05-06 14:36:01'),
(405, 10, '2014-05-06 14:36:03'),
(406, 10, '2014-05-06 14:37:19'),
(407, 10, '2014-05-06 14:37:22'),
(408, 10, '2014-05-06 14:37:26'),
(409, 10, '2014-05-06 14:37:29'),
(410, 10, '2014-05-06 14:37:32'),
(411, 10, '2014-05-06 14:37:35'),
(412, 10, '2014-05-06 14:38:21'),
(413, 10, '2014-05-06 14:38:25'),
(414, 10, '2014-05-06 14:38:26'),
(415, 10, '2014-05-06 14:41:53'),
(416, 10, '2014-05-06 14:41:55'),
(417, 10, '2014-05-06 14:42:23'),
(418, 10, '2014-05-06 14:42:25'),
(419, 10, '2014-05-06 14:42:51'),
(420, 10, '2014-05-06 14:42:53'),
(421, 10, '2014-05-06 14:42:56'),
(422, 10, '2014-05-06 14:42:58'),
(423, 9, '2014-05-06 15:03:38'),
(424, 9, '2014-05-06 15:06:10'),
(425, 9, '2014-05-06 15:08:31'),
(426, 9, '2014-05-06 15:14:12'),
(427, 9, '2014-05-06 15:14:28'),
(428, 9, '2014-05-06 15:15:03'),
(429, 9, '2014-05-06 15:15:15'),
(430, 9, '2014-05-06 15:16:13'),
(431, 9, '2014-05-06 15:16:20'),
(432, 9, '2014-05-06 15:18:22'),
(433, 9, '2014-05-06 15:18:25'),
(434, 9, '2014-05-06 15:19:14'),
(435, 9, '2014-05-06 15:19:23'),
(436, 9, '2014-05-06 15:19:26'),
(437, 9, '2014-05-06 15:19:27'),
(438, 9, '2014-05-06 15:19:31'),
(439, 9, '2014-05-06 15:20:00'),
(440, 9, '2014-05-06 15:20:06'),
(441, 9, '2014-05-06 15:20:12'),
(442, 9, '2014-05-06 15:20:14'),
(443, 9, '2014-05-06 15:20:23'),
(444, 9, '2014-05-06 15:20:29'),
(445, 9, '2014-05-06 15:25:06'),
(446, 9, '2014-05-06 15:33:20'),
(447, 9, '2014-05-06 15:33:22'),
(448, 9, '2014-05-06 15:33:33'),
(449, 9, '2014-05-06 15:33:40'),
(450, 9, '2014-05-06 15:34:39'),
(451, 9, '2014-05-06 15:34:52'),
(452, 9, '2014-05-06 15:34:54'),
(453, 9, '2014-05-06 15:35:19'),
(454, 9, '2014-05-06 15:35:27'),
(455, 9, '2014-05-06 15:35:37'),
(456, 9, '2014-05-06 15:36:37'),
(457, 9, '2014-05-06 15:36:37'),
(458, 9, '2014-05-06 15:36:38'),
(459, 9, '2014-05-06 15:36:39'),
(460, 9, '2014-05-06 15:41:09'),
(461, 9, '2014-05-06 15:42:42'),
(462, 9, '2014-05-06 15:42:44'),
(463, 9, '2014-05-06 15:42:58'),
(464, 9, '2014-05-06 15:42:59'),
(465, 9, '2014-05-06 15:43:01'),
(466, 9, '2014-05-06 15:43:11'),
(467, 9, '2014-05-06 15:43:13'),
(468, 9, '2014-05-06 15:43:25'),
(469, 9, '2014-05-06 15:43:25'),
(470, 9, '2014-05-06 15:43:27'),
(471, 9, '2014-05-06 16:07:15'),
(472, 9, '2014-05-06 16:07:28'),
(473, 11, '2014-05-07 04:51:20'),
(474, 11, '2014-05-07 04:52:03'),
(475, 11, '2014-05-07 04:52:24'),
(476, 11, '2014-05-07 04:52:26'),
(477, 11, '2014-05-07 04:54:07'),
(478, 12, '2014-05-07 04:54:14'),
(479, 11, '2014-05-07 05:04:57'),
(480, 11, '2014-05-07 05:05:55'),
(481, 11, '2014-05-07 05:05:57'),
(482, 13, '2014-05-07 06:22:09'),
(483, 13, '2014-05-07 06:23:02'),
(484, 13, '2014-05-07 06:23:07'),
(485, 13, '2014-05-07 06:31:40'),
(486, 13, '2014-05-07 07:00:33'),
(487, 13, '2014-05-07 07:00:36'),
(488, 13, '2014-05-07 07:00:38'),
(489, 14, '2014-05-07 08:36:41'),
(490, 15, '2014-05-07 08:36:42'),
(491, 16, '2014-05-07 08:36:43'),
(492, 16, '2014-05-07 08:36:47'),
(493, 17, '2014-05-07 11:41:01'),
(494, 17, '2014-05-07 11:41:20'),
(495, 17, '2014-05-07 11:41:22'),
(496, 17, '2014-05-07 11:44:39'),
(497, 17, '2014-05-07 11:45:53'),
(498, 17, '2014-05-07 11:45:58'),
(499, 17, '2014-05-07 11:57:39'),
(500, 17, '2014-05-07 11:58:32'),
(501, 17, '2014-05-07 12:03:19'),
(502, 17, '2014-05-07 12:10:11'),
(503, 17, '2014-05-07 12:11:54'),
(504, 17, '2014-05-07 12:12:32'),
(505, 17, '2014-05-07 12:12:51'),
(506, 17, '2014-05-07 13:11:51'),
(507, 17, '2014-05-07 14:09:38'),
(508, 18, '2014-05-07 14:13:21'),
(509, 18, '2014-05-07 14:13:37'),
(510, 18, '2014-05-07 14:13:40'),
(511, 18, '2014-05-07 14:16:55'),
(512, 18, '2014-05-07 14:17:07'),
(513, 18, '2014-05-07 14:30:49'),
(514, 18, '2014-05-07 14:34:58'),
(515, 18, '2014-05-07 14:40:09'),
(516, 18, '2014-05-07 14:41:51'),
(517, 18, '2014-05-07 14:42:38'),
(518, 18, '2014-05-07 14:42:40'),
(519, 18, '2014-05-07 14:42:49'),
(520, 18, '2014-05-07 14:43:08'),
(521, 18, '2014-05-07 14:43:10'),
(522, 18, '2014-05-07 14:43:23'),
(523, 18, '2014-05-07 14:43:24'),
(524, 18, '2014-05-07 14:43:36'),
(525, 18, '2014-05-07 14:47:09'),
(526, 18, '2014-05-07 14:47:12'),
(527, 18, '2014-05-07 14:56:25'),
(528, 18, '2014-05-07 14:56:29'),
(529, 18, '2014-05-07 14:56:59'),
(530, 18, '2014-05-07 14:57:02'),
(531, 18, '2014-05-07 14:57:15'),
(532, 18, '2014-05-07 14:57:29'),
(533, 18, '2014-05-07 14:57:48'),
(534, 18, '2014-05-07 14:58:11'),
(535, 18, '2014-05-07 15:00:00'),
(536, 18, '2014-05-07 15:01:28'),
(537, 18, '2014-05-07 15:01:31'),
(538, 18, '2014-05-07 15:03:47'),
(539, 18, '2014-05-07 15:03:50'),
(540, 18, '2014-05-07 15:04:44'),
(541, 18, '2014-05-07 15:04:48'),
(542, 18, '2014-05-07 15:05:34'),
(543, 18, '2014-05-07 15:05:37'),
(544, 18, '2014-05-07 15:06:15'),
(545, 18, '2014-05-07 15:06:18'),
(546, 18, '2014-05-07 15:06:21'),
(547, 18, '2014-05-07 15:06:57'),
(548, 18, '2014-05-07 15:07:01'),
(549, 18, '2014-05-07 15:07:20'),
(550, 18, '2014-05-07 15:07:23'),
(551, 18, '2014-05-07 15:08:37'),
(552, 18, '2014-05-07 15:08:40'),
(553, 18, '2014-05-07 15:10:33'),
(554, 18, '2014-05-07 15:10:36'),
(555, 18, '2014-05-07 15:19:31'),
(556, 18, '2014-05-07 15:19:35'),
(557, 18, '2014-05-07 15:19:45'),
(558, 18, '2014-05-07 15:20:06'),
(559, 18, '2014-05-07 15:20:10'),
(560, 18, '2014-05-07 15:21:43'),
(561, 18, '2014-05-07 15:21:47'),
(562, 18, '2014-05-07 15:22:10'),
(563, 18, '2014-05-07 15:22:15'),
(564, 18, '2014-05-07 15:23:32'),
(565, 18, '2014-05-07 15:23:36'),
(566, 18, '2014-05-07 15:24:06'),
(567, 18, '2014-05-07 15:24:10'),
(568, 18, '2014-05-07 15:26:02'),
(569, 18, '2014-05-07 15:27:45'),
(570, 18, '2014-05-07 15:27:50'),
(571, 18, '2014-05-07 15:27:54'),
(572, 18, '2014-05-07 15:28:01'),
(573, 18, '2014-05-07 15:28:07'),
(574, 18, '2014-05-07 15:28:12'),
(575, 18, '2014-05-07 15:28:25'),
(576, 18, '2014-05-07 15:29:48'),
(577, 18, '2014-05-07 15:29:51'),
(578, 18, '2014-05-07 15:30:01'),
(579, 18, '2014-05-07 15:30:09'),
(580, 18, '2014-05-07 15:30:24'),
(581, 18, '2014-05-07 15:30:30'),
(582, 18, '2014-05-07 15:30:33'),
(583, 18, '2014-05-07 15:33:09'),
(584, 18, '2014-05-07 15:33:12'),
(585, 18, '2014-05-07 15:33:42'),
(586, 18, '2014-05-07 15:33:45'),
(587, 18, '2014-05-07 15:33:59'),
(588, 19, '2014-05-07 15:41:07'),
(589, 19, '2014-05-07 15:42:05'),
(590, 19, '2014-05-07 15:42:10'),
(591, 19, '2014-05-07 15:42:33'),
(592, 19, '2014-05-07 15:42:43'),
(593, 19, '2014-05-07 15:43:27'),
(594, 19, '2014-05-07 15:43:44'),
(595, 19, '2014-05-07 15:43:55'),
(596, 20, '2014-05-08 04:51:12'),
(597, 20, '2014-05-08 04:51:37'),
(598, 20, '2014-05-08 04:51:51'),
(599, 21, '2014-05-08 04:57:51'),
(600, 21, '2014-05-08 04:58:04'),
(601, 21, '2014-05-08 04:58:20'),
(602, 21, '2014-05-08 04:59:47'),
(603, 21, '2014-05-08 04:59:49'),
(604, 21, '2014-05-08 05:02:11'),
(605, 21, '2014-05-08 05:29:41'),
(606, 21, '2014-05-08 05:29:53'),
(607, 21, '2014-05-08 05:30:32'),
(608, 21, '2014-05-08 05:31:01'),
(609, 20, '2014-05-08 05:31:37'),
(610, 20, '2014-05-08 05:38:31'),
(611, 21, '2014-05-08 05:39:00'),
(612, 21, '2014-05-08 05:39:24'),
(613, 20, '2014-05-08 05:40:13'),
(614, 20, '2014-05-08 05:41:32'),
(615, 20, '2014-05-08 05:45:39'),
(616, 20, '2014-05-08 05:45:40'),
(617, 20, '2014-05-08 05:45:53'),
(618, 20, '2014-05-08 05:45:55'),
(619, 20, '2014-05-08 05:46:10'),
(620, 20, '2014-05-08 05:46:12'),
(621, 20, '2014-05-08 05:46:16'),
(622, 20, '2014-05-08 05:46:18'),
(623, 20, '2014-05-08 05:46:21'),
(624, 20, '2014-05-08 05:46:22'),
(625, 20, '2014-05-08 05:46:32'),
(626, 20, '2014-05-08 05:46:34'),
(627, 20, '2014-05-08 05:46:48'),
(628, 20, '2014-05-08 05:47:04'),
(629, 20, '2014-05-08 05:47:05'),
(630, 20, '2014-05-08 05:47:09'),
(631, 20, '2014-05-08 05:47:11'),
(632, 20, '2014-05-08 06:42:03'),
(633, 20, '2014-05-08 06:42:18'),
(634, 20, '2014-05-08 06:42:33'),
(635, 20, '2014-05-08 06:42:39'),
(636, 22, '2014-05-09 05:22:22'),
(637, 22, '2014-05-09 05:22:38'),
(638, 23, '2014-05-13 06:17:26'),
(639, 23, '2014-05-13 06:18:44'),
(640, 24, '2014-05-13 06:23:17'),
(641, 24, '2014-05-13 06:23:25'),
(642, 25, '2014-05-13 07:46:07'),
(643, 25, '2014-05-13 08:01:46'),
(644, 25, '2014-05-13 08:01:59'),
(645, 25, '2014-05-13 08:05:11'),
(646, 25, '2014-05-13 08:05:17'),
(647, 25, '2014-05-13 08:06:07'),
(648, 25, '2014-05-13 08:12:24'),
(649, 25, '2014-05-13 08:14:20'),
(650, 25, '2014-05-13 08:14:43'),
(651, 25, '2014-05-13 08:15:54'),
(652, 25, '2014-05-13 08:16:20'),
(653, 25, '2014-05-13 08:16:23'),
(654, 25, '2014-05-13 08:19:17'),
(655, 25, '2014-05-13 08:19:23'),
(656, 25, '2014-05-13 08:20:56'),
(657, 25, '2014-05-13 08:21:28'),
(658, 25, '2014-05-13 08:21:32'),
(659, 25, '2014-05-13 08:21:38'),
(660, 25, '2014-05-13 08:21:46'),
(661, 25, '2014-05-13 08:21:51'),
(662, 25, '2014-05-13 08:31:56'),
(663, 25, '2014-05-13 08:31:59'),
(664, 25, '2014-05-13 08:32:33'),
(665, 25, '2014-05-13 08:43:23'),
(666, 25, '2014-05-13 08:44:31'),
(667, 25, '2014-05-13 08:44:38'),
(668, 25, '2014-05-13 08:47:25'),
(669, 25, '2014-05-13 08:47:30'),
(670, 25, '2014-05-13 08:47:33'),
(671, 25, '2014-05-13 08:47:38'),
(672, 25, '2014-05-13 09:00:26'),
(673, 25, '2014-05-13 09:01:28'),
(674, 25, '2014-05-13 09:01:36'),
(675, 25, '2014-05-13 09:16:26'),
(676, 25, '2014-05-13 09:18:54'),
(677, 25, '2014-05-13 09:23:05'),
(678, 25, '2014-05-13 09:24:20'),
(679, 25, '2014-05-13 09:24:25'),
(680, 25, '2014-05-13 10:12:39'),
(681, 25, '2014-05-13 10:12:44'),
(682, 25, '2014-05-13 10:13:17'),
(683, 25, '2014-05-13 10:13:21'),
(684, 25, '2014-05-13 10:13:37'),
(685, 25, '2014-05-13 10:13:41'),
(686, 25, '2014-05-13 10:15:27'),
(687, 25, '2014-05-13 10:16:21'),
(688, 25, '2014-05-13 10:17:01'),
(689, 25, '2014-05-13 10:18:25'),
(690, 25, '2014-05-13 10:20:38'),
(691, 25, '2014-05-13 10:22:32'),
(692, 25, '2014-05-13 10:46:47'),
(693, 25, '2014-05-13 11:16:15'),
(694, 26, '2014-05-13 11:30:34'),
(695, 26, '2014-05-13 11:32:40'),
(696, 26, '2014-05-13 11:32:55'),
(697, 26, '2014-05-13 11:32:59'),
(698, 26, '2014-05-13 11:33:04'),
(699, 26, '2014-05-13 11:33:09'),
(700, 27, '2014-05-13 11:33:41'),
(701, 25, '2014-05-13 11:43:57'),
(702, 25, '2014-05-13 11:51:19'),
(703, 25, '2014-05-13 11:52:10'),
(704, 27, '2014-05-13 11:53:00'),
(705, 27, '2014-05-13 11:59:29'),
(706, 27, '2014-05-13 12:05:14'),
(707, 25, '2014-05-13 12:14:20'),
(708, 25, '2014-05-13 12:14:43'),
(709, 25, '2014-05-13 12:14:57'),
(710, 25, '2014-05-13 12:15:02'),
(711, 25, '2014-05-13 12:15:04'),
(712, 25, '2014-05-13 12:15:10'),
(713, 25, '2014-05-13 12:15:11'),
(714, 25, '2014-05-13 12:40:52'),
(715, 25, '2014-05-13 12:43:50'),
(716, 25, '2014-05-13 12:44:02'),
(717, 25, '2014-05-13 12:46:28'),
(718, 25, '2014-05-13 12:52:00'),
(719, 25, '2014-05-13 12:52:04'),
(720, 25, '2014-05-13 12:54:04'),
(721, 25, '2014-05-13 12:55:17'),
(722, 25, '2014-05-13 12:59:27'),
(723, 25, '2014-05-13 13:00:06'),
(724, 25, '2014-05-13 13:03:04'),
(725, 25, '2014-05-13 13:04:39'),
(726, 25, '2014-05-13 13:06:52'),
(727, 25, '2014-05-13 13:06:58'),
(728, 25, '2014-05-13 13:07:04'),
(729, 25, '2014-05-13 13:08:02'),
(730, 25, '2014-05-13 13:08:07'),
(731, 25, '2014-05-13 13:08:09'),
(732, 25, '2014-05-13 13:09:50'),
(733, 25, '2014-05-13 13:10:34'),
(734, 25, '2014-05-13 13:10:37'),
(735, 25, '2014-05-13 13:10:52'),
(736, 25, '2014-05-13 13:11:14'),
(737, 25, '2014-05-13 13:11:50'),
(738, 25, '2014-05-13 13:12:28'),
(739, 25, '2014-05-13 13:17:11'),
(740, 25, '2014-05-13 13:17:40'),
(741, 25, '2014-05-13 13:45:39'),
(742, 25, '2014-05-13 13:46:12'),
(743, 25, '2014-05-13 13:49:26'),
(744, 25, '2014-05-13 13:50:18'),
(745, 25, '2014-05-13 13:50:45'),
(746, 25, '2014-05-13 13:50:57'),
(747, 25, '2014-05-13 13:51:11'),
(748, 25, '2014-05-13 13:52:10'),
(749, 25, '2014-05-13 13:53:56'),
(750, 25, '2014-05-13 13:54:11'),
(751, 25, '2014-05-13 13:54:27'),
(752, 25, '2014-05-13 13:55:10'),
(753, 25, '2014-05-13 13:55:29'),
(754, 25, '2014-05-13 13:56:03'),
(755, 25, '2014-05-13 13:56:24'),
(756, 25, '2014-05-13 13:57:25'),
(757, 25, '2014-05-13 13:58:35'),
(758, 25, '2014-05-13 13:58:50'),
(759, 25, '2014-05-13 13:59:35'),
(760, 25, '2014-05-13 14:00:34'),
(761, 28, '2014-05-13 14:01:48'),
(762, 28, '2014-05-13 14:05:03'),
(763, 28, '2014-05-13 14:06:02'),
(764, 28, '2014-05-13 14:07:20'),
(765, 28, '2014-05-13 14:08:26'),
(766, 28, '2014-05-13 14:09:18'),
(767, 28, '2014-05-13 14:11:00'),
(768, 28, '2014-05-13 14:13:02'),
(769, 28, '2014-05-13 14:13:27'),
(770, 28, '2014-05-13 14:13:54'),
(771, 28, '2014-05-13 14:15:50'),
(772, 28, '2014-05-13 14:19:12'),
(773, 28, '2014-05-13 14:20:33'),
(774, 28, '2014-05-13 14:21:21'),
(775, 28, '2014-05-13 14:24:23'),
(776, 28, '2014-05-13 14:27:05'),
(777, 28, '2014-05-13 14:27:32'),
(778, 28, '2014-05-13 14:27:44'),
(779, 28, '2014-05-13 14:27:48'),
(780, 28, '2014-05-13 14:30:32'),
(781, 28, '2014-05-13 14:31:04'),
(782, 28, '2014-05-13 14:31:33'),
(783, 28, '2014-05-13 14:32:23'),
(784, 28, '2014-05-13 14:32:34'),
(785, 28, '2014-05-13 14:32:37'),
(786, 28, '2014-05-13 14:32:41'),
(787, 28, '2014-05-13 14:33:17'),
(788, 28, '2014-05-13 14:33:32'),
(789, 28, '2014-05-13 14:33:42'),
(790, 28, '2014-05-13 14:35:15'),
(791, 28, '2014-05-13 14:35:50'),
(792, 28, '2014-05-13 14:36:13'),
(793, 28, '2014-05-13 14:36:35'),
(794, 28, '2014-05-13 14:38:34'),
(795, 28, '2014-05-13 14:38:39'),
(796, 28, '2014-05-13 14:39:12'),
(797, 28, '2014-05-13 14:39:21'),
(798, 28, '2014-05-13 14:40:21'),
(799, 28, '2014-05-13 14:46:16'),
(800, 28, '2014-05-13 15:18:36'),
(801, 28, '2014-05-13 15:18:42'),
(802, 28, '2014-05-13 15:18:45'),
(803, 28, '2014-05-13 15:19:08'),
(804, 28, '2014-05-13 15:19:12'),
(805, 28, '2014-05-13 15:29:12'),
(806, 28, '2014-05-13 15:29:26'),
(807, 28, '2014-05-13 15:29:45'),
(808, 28, '2014-05-13 15:30:00'),
(809, 28, '2014-05-13 15:30:28'),
(810, 28, '2014-05-13 15:30:31'),
(811, 28, '2014-05-13 15:30:35'),
(812, 28, '2014-05-13 15:30:43'),
(813, 28, '2014-05-13 15:30:44'),
(814, 28, '2014-05-13 15:30:45'),
(815, 28, '2014-05-13 15:30:46'),
(816, 28, '2014-05-13 15:31:05'),
(817, 28, '2014-05-13 15:36:29'),
(818, 28, '2014-05-13 15:36:40'),
(819, 28, '2014-05-13 15:38:41'),
(820, 28, '2014-05-13 15:41:01'),
(821, 28, '2014-05-13 15:41:03'),
(822, 28, '2014-05-13 15:43:43'),
(823, 28, '2014-05-13 15:43:47'),
(824, 28, '2014-05-13 15:43:52'),
(825, 28, '2014-05-13 15:43:58'),
(826, 28, '2014-05-13 15:44:09'),
(827, 29, '2014-05-14 05:54:03'),
(828, 30, '2014-05-14 07:40:59'),
(829, 31, '2014-05-14 08:30:51'),
(830, 31, '2014-05-14 08:32:19'),
(831, 31, '2014-05-14 08:33:22'),
(832, 31, '2014-05-14 08:33:25'),
(833, 32, '2014-05-14 09:46:53'),
(834, 32, '2014-05-14 09:46:54'),
(835, 32, '2014-05-14 09:46:56'),
(836, 33, '2014-05-14 09:51:47'),
(837, 33, '2014-05-14 09:52:25'),
(838, 32, '2014-05-14 10:01:46'),
(839, 32, '2014-05-14 10:14:32'),
(840, 32, '2014-05-14 10:22:25'),
(841, 34, '2014-05-14 11:06:17'),
(842, 34, '2014-05-14 11:09:17'),
(843, 34, '2014-05-14 11:09:24'),
(844, 34, '2014-05-14 11:20:17'),
(845, 34, '2014-05-14 11:20:51'),
(846, 34, '2014-05-14 11:21:09'),
(847, 34, '2014-05-14 11:28:25'),
(848, 34, '2014-05-14 11:28:33'),
(849, 34, '2014-05-14 11:29:07'),
(850, 34, '2014-05-14 11:29:26'),
(851, 34, '2014-05-14 11:29:48'),
(852, 34, '2014-05-14 11:30:11'),
(853, 34, '2014-05-14 11:31:54'),
(854, 34, '2014-05-14 11:33:12'),
(855, 34, '2014-05-14 11:33:14'),
(856, 34, '2014-05-14 11:35:31'),
(857, 34, '2014-05-14 11:35:32'),
(858, 34, '2014-05-14 11:35:45'),
(859, 34, '2014-05-14 11:37:49'),
(860, 34, '2014-05-14 11:37:51'),
(861, 34, '2014-05-14 11:38:00'),
(862, 34, '2014-05-14 11:38:01'),
(863, 34, '2014-05-14 11:38:36'),
(864, 34, '2014-05-14 11:38:37'),
(865, 34, '2014-05-14 11:38:38'),
(866, 34, '2014-05-14 11:38:39'),
(867, 34, '2014-05-14 11:39:06'),
(868, 34, '2014-05-14 11:54:59'),
(869, 34, '2014-05-14 11:56:11'),
(870, 34, '2014-05-14 11:57:40'),
(871, 34, '2014-05-14 11:57:52'),
(872, 34, '2014-05-14 11:59:41'),
(873, 34, '2014-05-14 11:59:49'),
(874, 34, '2014-05-14 11:59:59'),
(875, 34, '2014-05-14 12:00:23'),
(876, 34, '2014-05-14 12:00:25'),
(877, 34, '2014-05-14 12:01:07'),
(878, 34, '2014-05-14 12:01:12'),
(879, 34, '2014-05-14 12:01:57'),
(880, 34, '2014-05-14 12:02:02'),
(881, 34, '2014-05-14 12:02:52'),
(882, 34, '2014-05-14 12:03:15'),
(883, 34, '2014-05-14 12:03:20'),
(884, 34, '2014-05-14 12:03:22'),
(885, 34, '2014-05-14 12:04:50'),
(886, 34, '2014-05-14 12:06:40'),
(887, 34, '2014-05-14 12:06:42'),
(888, 34, '2014-05-14 12:25:37'),
(889, 34, '2014-05-14 12:26:06'),
(890, 34, '2014-05-14 12:30:47'),
(891, 34, '2014-05-14 12:34:03'),
(892, 34, '2014-05-14 12:34:04'),
(893, 34, '2014-05-14 12:34:11'),
(894, 34, '2014-05-14 12:34:13'),
(895, 34, '2014-05-14 12:43:28'),
(896, 34, '2014-05-14 12:49:19'),
(897, 34, '2014-05-14 12:49:22'),
(898, 34, '2014-05-14 12:49:24'),
(899, 34, '2014-05-14 13:14:24'),
(900, 34, '2014-05-14 13:14:25'),
(901, 34, '2014-05-14 13:14:47'),
(902, 35, '2014-05-15 08:29:14'),
(903, 35, '2014-05-15 08:29:29'),
(904, 35, '2014-05-15 08:30:04'),
(905, 36, '2014-05-16 12:03:16'),
(906, 36, '2014-05-16 12:06:23'),
(907, 36, '2014-05-16 12:10:34'),
(908, 36, '2014-05-16 12:10:35'),
(909, 36, '2014-05-16 12:10:37'),
(910, 36, '2014-05-16 12:10:56'),
(911, 36, '2014-05-16 12:15:14'),
(912, 36, '2014-05-16 12:15:49'),
(913, 37, '2014-05-16 17:05:50'),
(914, 38, '2014-05-17 13:59:47'),
(915, 38, '2014-05-17 14:01:22'),
(916, 38, '2014-05-17 14:01:29'),
(917, 38, '2014-05-17 14:01:35'),
(918, 38, '2014-05-17 14:01:40'),
(919, 38, '2014-05-17 14:02:00'),
(920, 38, '2014-05-17 14:02:05'),
(921, 38, '2014-05-17 14:02:11'),
(922, 38, '2014-05-17 14:02:22'),
(923, 38, '2014-05-17 14:02:34'),
(924, 38, '2014-05-17 14:05:35'),
(925, 39, '2014-05-17 15:00:49'),
(926, 39, '2014-05-17 15:00:56'),
(927, 40, '2014-05-19 13:07:53'),
(928, 40, '2014-05-19 13:08:33'),
(929, 41, '2014-05-21 08:16:54'),
(930, 42, '2014-05-21 08:18:09'),
(931, 43, '2014-05-22 14:38:37'),
(932, 43, '2014-05-22 14:38:50'),
(933, 43, '2014-05-22 14:44:29'),
(934, 43, '2014-05-22 14:49:39'),
(935, 43, '2014-05-22 14:53:32'),
(936, 43, '2014-05-22 15:02:58'),
(937, 44, '2014-05-23 06:01:57'),
(938, 44, '2014-05-23 06:02:05'),
(939, 45, '2014-05-23 08:01:56'),
(940, 45, '2014-05-23 08:39:20'),
(941, 46, '2014-05-23 14:35:35'),
(942, 46, '2014-05-23 14:36:07'),
(943, 46, '2014-05-23 14:37:18'),
(944, 46, '2014-05-23 14:43:25'),
(945, 46, '2014-05-23 14:44:59'),
(946, 46, '2014-05-23 14:46:10'),
(947, 46, '2014-05-23 14:47:22'),
(948, 46, '2014-05-23 14:47:28'),
(949, 46, '2014-05-23 14:47:30'),
(950, 46, '2014-05-23 14:55:30'),
(951, 47, '2014-05-23 21:19:26'),
(952, 48, '2014-05-26 11:49:46'),
(953, 48, '2014-05-26 11:50:15'),
(954, 49, '2014-05-27 06:33:38'),
(955, 50, '2014-05-27 08:00:07'),
(956, 51, '2014-05-28 08:25:11'),
(957, 51, '2014-05-28 08:25:18'),
(958, 51, '2014-05-28 08:25:25'),
(959, 51, '2014-05-28 08:25:30'),
(960, 51, '2014-05-28 08:25:32'),
(961, 52, '2014-05-28 11:15:20'),
(962, 52, '2014-05-28 11:15:34'),
(963, 52, '2014-05-28 11:16:13'),
(964, 52, '2014-05-28 11:16:15'),
(965, 52, '2014-05-28 11:16:34'),
(966, 52, '2014-05-28 11:16:39'),
(967, 52, '2014-05-28 11:16:41'),
(968, 53, '2014-05-28 18:31:51'),
(969, 53, '2014-05-28 18:35:41'),
(970, 53, '2014-05-28 18:36:22'),
(971, 54, '2014-05-29 07:21:25'),
(972, 55, '2014-05-29 08:57:58'),
(973, 55, '2014-05-29 08:58:07'),
(974, 55, '2014-05-29 08:58:13'),
(975, 55, '2014-05-29 08:58:16'),
(976, 55, '2014-05-29 08:58:39'),
(977, 55, '2014-05-29 08:58:52'),
(978, 56, '2014-05-29 10:28:58'),
(979, 56, '2014-05-29 10:46:51'),
(980, 56, '2014-05-29 10:54:21'),
(981, 56, '2014-05-29 10:58:39'),
(982, 56, '2014-05-29 11:00:11'),
(983, 56, '2014-05-29 11:00:17'),
(984, 56, '2014-05-29 11:00:30'),
(985, 56, '2014-05-29 11:00:36'),
(986, 56, '2014-05-29 11:00:46'),
(987, 56, '2014-05-29 11:00:51'),
(988, 56, '2014-05-29 11:00:53'),
(989, 56, '2014-05-29 11:01:30'),
(990, 56, '2014-05-29 11:01:33'),
(991, 56, '2014-05-29 11:03:30'),
(992, 56, '2014-05-29 11:37:58'),
(993, 56, '2014-05-29 11:38:31'),
(994, 56, '2014-05-29 11:38:32'),
(995, 56, '2014-05-29 11:38:35'),
(996, 56, '2014-05-29 11:41:41'),
(997, 56, '2014-05-29 11:41:51'),
(998, 56, '2014-05-29 11:42:12'),
(999, 56, '2014-05-29 11:42:15'),
(1000, 56, '2014-05-29 11:44:42'),
(1001, 56, '2014-05-29 11:45:19'),
(1002, 56, '2014-05-29 11:46:08'),
(1003, 56, '2014-05-29 11:52:24'),
(1004, 56, '2014-05-29 12:05:44'),
(1005, 56, '2014-05-29 12:06:46'),
(1006, 56, '2014-05-29 12:07:20'),
(1007, 56, '2014-05-29 12:10:41'),
(1008, 56, '2014-05-29 12:19:54'),
(1009, 56, '2014-05-29 12:24:12'),
(1010, 56, '2014-05-29 12:25:36'),
(1011, 56, '2014-05-29 12:26:15'),
(1012, 56, '2014-05-29 12:28:34'),
(1013, 56, '2014-05-29 12:31:19'),
(1014, 56, '2014-05-29 12:32:34'),
(1015, 56, '2014-05-29 12:32:59'),
(1016, 56, '2014-05-29 12:34:32'),
(1017, 56, '2014-05-29 12:39:09'),
(1018, 57, '2014-06-01 12:23:25'),
(1019, 57, '2014-06-01 12:23:51'),
(1020, 58, '2014-06-03 05:42:23'),
(1021, 59, '2014-06-04 04:52:16'),
(1022, 59, '2014-06-04 04:52:37'),
(1023, 60, '2014-06-04 10:08:44'),
(1024, 61, '2014-06-09 12:31:35'),
(1025, 61, '2014-06-09 12:44:04'),
(1026, 61, '2014-06-09 12:44:22'),
(1027, 61, '2014-06-09 12:44:30'),
(1028, 61, '2014-06-09 12:44:36'),
(1029, 61, '2014-06-09 12:44:40'),
(1030, 62, '2014-06-09 12:59:39'),
(1031, 62, '2014-06-09 13:06:03'),
(1032, 62, '2014-06-09 13:06:08'),
(1033, 62, '2014-06-09 13:06:13'),
(1034, 62, '2014-06-09 13:06:19'),
(1035, 63, '2014-06-09 13:09:40'),
(1036, 62, '2014-06-09 13:46:50'),
(1037, 62, '2014-06-09 13:46:50'),
(1038, 62, '2014-06-09 13:49:24'),
(1039, 62, '2014-06-09 13:49:24'),
(1040, 62, '2014-06-09 14:18:17'),
(1041, 62, '2014-06-09 14:18:17'),
(1042, 62, '2014-06-09 14:19:54'),
(1043, 62, '2014-06-09 14:19:54'),
(1044, 62, '2014-06-09 14:23:13'),
(1045, 62, '2014-06-09 14:23:17'),
(1046, 64, '2014-06-10 09:11:12'),
(1047, 65, '2014-06-11 10:56:49'),
(1048, 66, '2014-06-19 15:53:35'),
(1049, 68, '2014-06-20 17:42:23'),
(1050, 67, '2014-06-20 17:42:23'),
(1051, 69, '2014-06-23 09:24:49'),
(1052, 69, '2014-06-23 09:24:52'),
(1053, 69, '2014-06-23 09:25:06'),
(1054, 69, '2014-06-23 09:26:18'),
(1055, 70, '2014-06-23 09:34:27'),
(1056, 70, '2014-06-23 09:34:28'),
(1057, 71, '2014-06-23 09:35:13'),
(1058, 71, '2014-06-23 09:35:14'),
(1059, 69, '2014-06-23 09:50:55'),
(1060, 72, '2014-06-23 09:53:29'),
(1061, 72, '2014-06-23 09:53:32'),
(1062, 72, '2014-06-23 09:53:32'),
(1063, 72, '2014-06-23 10:01:55'),
(1064, 73, '2014-06-24 05:16:33'),
(1065, 73, '2014-06-24 05:19:48'),
(1066, 74, '2014-06-24 06:43:04'),
(1067, 75, '2014-06-24 06:44:48'),
(1068, 75, '2014-06-24 06:44:49'),
(1069, 76, '2014-06-24 06:45:08'),
(1070, 78, '2014-06-26 02:24:46'),
(1071, 77, '2014-06-26 02:24:47'),
(1072, 80, '2014-06-26 02:24:47'),
(1073, 79, '2014-06-26 02:24:47'),
(1074, 81, '2014-07-01 12:30:57'),
(1075, 81, '2014-07-01 13:02:44'),
(1076, 81, '2014-07-01 13:10:12'),
(1077, 81, '2014-07-01 13:10:16'),
(1078, 82, '2014-07-01 14:39:11'),
(1079, 82, '2014-07-01 14:39:13'),
(1080, 83, '2014-07-01 14:39:24'),
(1081, 83, '2014-07-01 14:39:25'),
(1082, 84, '2014-07-01 15:20:15'),
(1083, 84, '2014-07-01 15:20:24'),
(1084, 85, '2014-07-01 18:15:09'),
(1085, 85, '2014-07-01 18:15:23'),
(1086, 85, '2014-07-01 18:17:23'),
(1087, 85, '2014-07-01 18:17:25'),
(1088, 85, '2014-07-01 18:23:04'),
(1089, 85, '2014-07-01 18:25:27'),
(1090, 85, '2014-07-01 18:25:35'),
(1091, 85, '2014-07-01 18:26:29'),
(1092, 85, '2014-07-01 18:26:31'),
(1093, 85, '2014-07-01 18:26:43'),
(1094, 85, '2014-07-01 18:26:44'),
(1095, 85, '2014-07-01 18:27:12'),
(1096, 85, '2014-07-01 18:27:15'),
(1097, 85, '2014-07-01 18:33:03'),
(1098, 85, '2014-07-01 18:33:06'),
(1099, 85, '2014-07-01 18:33:08'),
(1100, 85, '2014-07-01 18:33:08'),
(1101, 85, '2014-07-01 18:33:15'),
(1102, 86, '2014-07-02 06:03:57'),
(1103, 86, '2014-07-02 06:03:59'),
(1104, 86, '2014-07-02 06:56:46'),
(1105, 86, '2014-07-02 06:56:48'),
(1106, 86, '2014-07-02 07:01:03'),
(1107, 86, '2014-07-02 07:01:05'),
(1108, 86, '2014-07-02 07:11:25'),
(1109, 86, '2014-07-02 07:11:34'),
(1110, 86, '2014-07-02 07:13:26'),
(1111, 86, '2014-07-02 07:13:37'),
(1112, 86, '2014-07-02 07:16:08'),
(1113, 86, '2014-07-02 07:16:11'),
(1114, 86, '2014-07-02 07:43:39'),
(1115, 86, '2014-07-02 07:43:46'),
(1116, 86, '2014-07-02 07:44:48'),
(1117, 86, '2014-07-02 07:45:58'),
(1118, 86, '2014-07-02 07:46:01'),
(1119, 86, '2014-07-02 07:49:37'),
(1120, 86, '2014-07-02 07:56:09'),
(1121, 86, '2014-07-02 07:56:12'),
(1122, 86, '2014-07-02 08:06:57'),
(1123, 86, '2014-07-02 08:06:59'),
(1124, 86, '2014-07-02 08:07:30'),
(1125, 86, '2014-07-02 08:07:31'),
(1126, 86, '2014-07-02 08:11:11'),
(1127, 86, '2014-07-02 08:11:13'),
(1128, 86, '2014-07-02 08:35:36'),
(1129, 86, '2014-07-02 08:35:47'),
(1130, 86, '2014-07-02 09:07:04'),
(1131, 86, '2014-07-02 09:07:06'),
(1132, 87, '2014-07-02 11:41:49'),
(1133, 87, '2014-07-02 11:41:52'),
(1134, 87, '2014-07-02 11:49:57'),
(1135, 87, '2014-07-02 11:49:59'),
(1136, 87, '2014-07-02 12:01:20'),
(1137, 87, '2014-07-02 12:01:22'),
(1138, 87, '2014-07-02 12:07:12'),
(1139, 87, '2014-07-02 12:07:15'),
(1140, 87, '2014-07-02 12:19:16'),
(1141, 87, '2014-07-02 12:19:18'),
(1142, 87, '2014-07-02 12:48:28'),
(1143, 87, '2014-07-02 12:48:31'),
(1144, 87, '2014-07-02 12:49:54'),
(1145, 87, '2014-07-02 12:49:56'),
(1146, 87, '2014-07-02 13:08:41'),
(1147, 87, '2014-07-02 13:08:43'),
(1148, 87, '2014-07-02 13:28:38'),
(1149, 87, '2014-07-02 13:28:40'),
(1150, 88, '2014-07-02 16:27:06'),
(1151, 88, '2014-07-02 16:27:59'),
(1152, 89, '2014-07-02 18:00:44'),
(1153, 89, '2014-07-02 18:00:53'),
(1154, 89, '2014-07-02 18:10:02'),
(1155, 89, '2014-07-02 18:11:16'),
(1156, 89, '2014-07-02 18:12:25'),
(1157, 89, '2014-07-02 18:18:31'),
(1158, 91, '2014-07-05 19:58:08'),
(1159, 90, '2014-07-05 19:58:08'),
(1160, 92, '2014-07-06 08:08:19'),
(1161, 93, '2014-07-06 12:18:30'),
(1162, 93, '2014-07-06 12:19:25');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_url_info`
--

CREATE TABLE IF NOT EXISTS `mg_log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=1163 ;

--
-- Dump dei dati per la tabella `mg_log_url_info`
--

INSERT INTO `mg_log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/install/wizard/end/'),
(2, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(3, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/install/wizard/end/'),
(4, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(5, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(6, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(7, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(8, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(9, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(10, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(11, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(12, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(13, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(14, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(15, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(16, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(17, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(18, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(19, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(20, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(21, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(22, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(23, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(24, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(25, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(26, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(27, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(28, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(29, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(30, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(31, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(32, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(33, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/createpost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(34, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/index/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(35, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(36, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(37, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(38, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/add/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpby10aXBvLTEuaHRtbA,,/product/1/form_key/fpUh4UXQtZqyZYVs/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(39, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(40, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(41, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(42, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(43, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(44, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(45, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(46, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/index/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(47, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(48, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(49, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(50, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(51, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(52, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(53, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(54, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(55, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(56, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(57, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(58, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(59, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(60, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(61, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(62, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(63, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(64, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(65, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(66, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(67, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(68, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(69, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(70, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(71, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(72, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(73, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(74, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(75, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(76, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(77, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(78, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(79, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(80, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(81, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(82, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(83, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(84, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(85, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(86, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(87, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(88, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(89, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(90, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(91, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(92, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(93, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(94, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(95, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(96, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(97, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/17', 'http://10.0.1.225/ghirelli_02/index.php/'),
(98, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(99, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(100, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(101, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(102, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(103, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/1/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/form_key/DxNP3ES1ONDT3qNa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(104, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(105, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/form_key/DxNP3ES1ONDT3qNa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(106, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(107, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/items/1,2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(108, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(109, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/add/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/product/1/form_key/DxNP3ES1ONDT3qNa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(110, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(111, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/delete/id/2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NoZWNrb3V0L2NhcnQv/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(112, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(113, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(114, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(115, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(116, 'http://10.0.1.225/ghirelli_02/index.php/sales/guest/form/', 'http://10.0.1.225/ghirelli_02/index.php/contacts/'),
(117, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/term/popular/', 'http://10.0.1.225/ghirelli_02/index.php/contacts/'),
(118, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/advanced/', 'http://10.0.1.225/ghirelli_02/index.php/contacts/'),
(119, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/contacts/'),
(120, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(121, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(122, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(123, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(124, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(125, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(126, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(127, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(128, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(129, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(130, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(131, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(132, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(133, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(134, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(135, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(136, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(137, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(138, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/create/'),
(139, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/loginPost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(140, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(141, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/loginPost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(142, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(143, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(144, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(145, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(146, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(147, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(148, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(149, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(150, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(151, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(152, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(153, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(154, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(155, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(156, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(157, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(158, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(159, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(160, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(161, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(162, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(163, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(164, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(165, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(166, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(167, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(168, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(169, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(170, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(171, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(172, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(173, 'http://10.0.1.225/ghirelli_02/index.php/customer/address/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/'),
(174, 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/'),
(175, 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/'),
(176, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(177, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(178, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(179, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(180, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(181, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(182, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(183, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(184, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(185, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(186, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(187, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(188, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(189, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(190, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(191, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(192, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(193, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(194, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(195, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(196, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(197, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(198, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(199, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(200, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(201, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(202, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(203, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(204, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(205, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(206, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(207, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(208, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(209, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(210, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(211, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(212, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(213, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(214, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(215, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(216, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(217, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(218, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(219, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(220, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(221, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(222, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(223, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(224, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/address/new/'),
(225, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(226, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(227, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(228, 'http://10.0.1.225/ghirelli_02/', NULL),
(229, 'http://10.0.1.225/ghirelli_02/index.php', NULL),
(230, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(231, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(232, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(233, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(234, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(235, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(236, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(237, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(238, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(239, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(240, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(241, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(242, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(243, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(244, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(245, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(246, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(247, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(248, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(249, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(250, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(251, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(252, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/loginPost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(253, 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(254, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(255, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(256, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://mailitalsoft.busnet.it/'),
(257, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(258, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(259, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(260, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(261, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(262, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(263, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/index.php/'),
(264, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(265, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(266, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(267, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(268, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(269, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(270, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/15', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(271, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/famiglia.html'),
(272, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(273, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(274, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(275, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(276, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(277, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/famiglia.html'),
(278, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(279, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(280, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(281, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(282, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(283, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(284, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(285, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(286, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(287, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(288, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(289, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(290, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(291, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(292, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(293, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(294, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(295, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(296, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(297, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(298, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(299, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(300, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(301, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(302, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(303, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(304, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(305, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(306, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(307, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(308, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(309, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(310, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(311, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(312, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(313, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(314, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(315, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(316, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(317, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(318, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(319, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(320, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(321, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(322, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(323, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/'),
(324, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(325, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/11', 'http://10.0.1.225/ghirelli_02/index.php/'),
(326, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/4', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/outlet.html'),
(327, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/outlet.html'),
(328, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(329, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(330, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(331, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(332, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(333, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(334, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(335, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(336, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(337, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(338, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(339, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(340, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(341, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(342, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(343, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(344, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(345, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(346, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(347, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(348, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/loginPost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(349, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(350, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(351, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(352, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(353, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(354, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(355, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(356, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(357, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(358, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(359, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(360, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(361, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(362, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(363, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(364, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(365, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(366, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(367, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(368, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(369, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(370, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(371, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(372, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(373, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(374, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(375, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(376, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(377, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(378, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(379, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(380, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(381, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(382, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(383, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(384, 'http://10.0.1.225/ghirelli_02/', NULL),
(385, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/'),
(386, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(387, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/3/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(388, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-4.html'),
(389, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(390, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(391, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-1.html'),
(392, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(393, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(394, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(395, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkuaHRtbA,,/form_key/We8q5r2ejcVGi7kT/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(396, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(397, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/3/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkuaHRtbA,,/form_key/We8q5r2ejcVGi7kT/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(398, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(399, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/4/category/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(400, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosario-tipo-5.html'),
(401, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(402, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/items/2,3/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkuaHRtbA,,/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(403, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(404, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/'),
(405, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/rosario-tipo-4.html'),
(406, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(407, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(408, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(409, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/'),
(410, 'http://10.0.1.225/ghirelli_02/', NULL),
(411, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/'),
(412, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(413, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(414, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(415, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(416, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(417, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(418, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(419, 'http://10.0.1.225/ghirelli_02/index.php/review/product/list/id/1/category/6/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(420, 'http://10.0.1.225/ghirelli_02/index.php/review/product/list/id/1/category/6/', 'http://10.0.1.225/ghirelli_02/index.php/review/product/list/id/1/category/6/'),
(421, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(422, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(423, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(424, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(425, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(426, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(427, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(428, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(429, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(430, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/7', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(431, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/8', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/bracciali-e-decine.html');
INSERT INTO `mg_log_url_info` (`url_id`, `url`, `referer`) VALUES
(432, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(433, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(434, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(435, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(436, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(437, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/8', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/bracciali-e-decine.html'),
(438, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html'),
(439, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(440, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html'),
(441, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(442, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(443, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(444, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(445, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html'),
(446, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(447, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(448, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(449, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/wishlist/index/index/'),
(450, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html'),
(451, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(452, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(453, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(454, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/'),
(455, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(456, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/saveBilling/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(457, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/getAdditional/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(458, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/progress/?prevStep=billing', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(459, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/progress/?prevStep=shipping', 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/'),
(460, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(461, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(462, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(463, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(464, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(465, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(466, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/estimateUpdatePost/?estimate_method=flatrate_flatrate&do=Aggiorna+totale', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(467, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(468, 'http://10.0.1.225/ghirelli_02/index.php/checkout/multishipping/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(469, 'http://10.0.1.225/ghirelli_02/index.php/checkout/multishipping/addresses/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(470, 'http://10.0.1.225/ghirelli_02/index.php/checkout/multishipping_address/newShipping/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(471, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(472, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html'),
(473, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(474, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(475, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(476, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(477, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(478, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(479, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(480, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(481, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(482, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(483, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(484, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(485, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(486, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(487, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(488, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(489, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(490, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(491, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(492, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(493, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html'),
(494, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(495, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(496, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(497, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html'),
(498, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(499, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(500, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(501, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(502, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(503, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(504, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(505, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(506, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(507, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(508, 'http://10.0.1.225/ghirelli_02/', NULL),
(509, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(510, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/'),
(511, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(512, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(513, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(514, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(515, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(516, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(517, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(518, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(519, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(520, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/loginPost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(521, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(522, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/loginPost/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(523, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(524, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/'),
(525, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(526, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(527, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(528, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(529, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(530, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(531, 'http://10.0.1.225/ghirelli_02/', NULL),
(532, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(533, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(534, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/'),
(535, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(536, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(537, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(538, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(539, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(540, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(541, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(542, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(543, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(544, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/'),
(545, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(546, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(547, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(548, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(549, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(550, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(551, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(552, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(553, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(554, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(555, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(556, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(557, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(558, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(559, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(560, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(561, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(562, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(563, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(564, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(565, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(566, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(567, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(568, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/4', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(569, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli.html'),
(570, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/13', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(571, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/14', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/la-maison.html'),
(572, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/15', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/lo-stile.html'),
(573, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/16', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/famiglia.html'),
(574, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/17', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/tradizioni.html'),
(575, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(576, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(577, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(578, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(579, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(580, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/territorio.html'),
(581, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(582, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(583, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(584, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(585, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(586, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(587, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(588, 'http://10.0.1.225/ghirelli_02/', NULL),
(589, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/'),
(590, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(591, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/9', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(592, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/special-edition.html'),
(593, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/7', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(594, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/bracciali-e-decine.html'),
(595, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(596, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(597, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(598, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(599, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(600, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(601, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(602, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(603, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(604, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-14.html'),
(605, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(606, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(607, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(608, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(609, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(610, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(611, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(612, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(613, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(614, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(615, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/1/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/form_key/cYmwmLeaFbbqZcRa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(616, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(617, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/remove/product/1/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(618, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(619, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/1/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/form_key/cYmwmLeaFbbqZcRa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(620, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(621, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/add/product/2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/form_key/cYmwmLeaFbbqZcRa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(622, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(623, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/items/1,2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(624, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/index/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(625, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/add/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/product/1/form_key/cYmwmLeaFbbqZcRa/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(626, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(627, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(628, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/remove/product/1/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(629, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(630, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product_compare/remove/product/2/uenc/aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(631, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(632, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(633, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(634, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(635, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(636, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(637, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(638, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(639, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(640, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(641, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(642, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(643, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(644, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(645, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(646, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(647, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(648, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(649, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(650, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(651, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(652, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(653, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(654, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(655, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(656, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(657, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(658, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(659, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(660, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18?mode=list', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(661, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18?mode=grid', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html?mode=list'),
(662, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18?mode=grid', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html?mode=list'),
(663, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html?mode=grid'),
(664, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html?mode=grid'),
(665, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(666, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(667, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/'),
(668, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/'),
(669, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(670, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(671, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(672, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(673, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(674, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(675, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(676, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(677, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(678, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(679, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(680, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(681, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(682, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(683, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(684, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(685, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(686, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(687, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(688, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(689, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(690, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(691, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(692, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(693, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(694, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(695, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(696, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18?limit=15', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(697, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18?limit=15&mode=list', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html?limit=15'),
(698, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(699, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(700, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(701, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(702, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(703, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(704, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(705, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(706, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(707, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(708, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(709, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/product/', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(710, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/1', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/product/'),
(711, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/rosario-tipo-1.html'),
(712, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/product/', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(713, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(714, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(715, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(716, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(717, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(718, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(719, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(720, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(721, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(722, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(723, 'http://10.0.1.225/ghirelli_02/index.php/about-magento-demo-store', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(724, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(725, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(726, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(727, 'http://10.0.1.225/ghirelli_02/index.php/terms_condition', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(728, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(729, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(730, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(731, 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(732, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(733, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/catalog/seo_sitemap/category/'),
(734, 'http://10.0.1.225/ghirelli_02/index.php/terms_condition', 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni'),
(735, 'http://10.0.1.225/ghirelli_02/index.php/terms_condition', 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni'),
(736, 'http://10.0.1.225/ghirelli_02/index.php/terms_condition', 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni'),
(737, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(738, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(739, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(740, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(741, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(742, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(743, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(744, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(745, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(746, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(747, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(748, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(749, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(750, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(751, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(752, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(753, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(754, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(755, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(756, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(757, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(758, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(759, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(760, 'http://10.0.1.225/ghirelli_02/index.php/resi_spedizioni', 'http://10.0.1.225/ghirelli_02/index.php/terms_condition'),
(761, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(762, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(763, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(764, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(765, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(766, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(767, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(768, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(769, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(770, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(771, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(772, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(773, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(774, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(775, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(776, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(777, 'http://10.0.1.225/ghirelli_02/index.php/terms_condition', 'http://10.0.1.225/ghirelli_02/index.php/'),
(778, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(779, 'http://10.0.1.225/ghirelli_02/index.php/contacts/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(780, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/contacts/'),
(781, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/15', 'http://10.0.1.225/ghirelli_02/index.php/'),
(782, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/la-storia/famiglia.html'),
(783, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(784, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(785, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(786, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(787, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(788, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/19', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(789, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(790, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(791, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(792, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(793, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(794, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(795, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(796, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/19', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(797, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(798, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(799, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(800, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=7', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(801, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=7'),
(802, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/rosario-tipo-32.html'),
(803, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=7'),
(804, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/rosario-tipo-32.html'),
(805, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/rosario-tipo-32.html'),
(806, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/rosario-tipo-32.html'),
(807, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(808, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(809, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/3/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(810, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html');
INSERT INTO `mg_log_url_info` (`url_id`, `url`, `referer`) VALUES
(811, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html'),
(812, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=ro', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(813, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=rosar', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(814, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=rosari', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(815, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(816, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(817, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(818, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?dir=asc&order=material', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(819, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?dir=asc&order=material', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(820, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=oro', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&order=material'),
(821, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=oro', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&order=material'),
(822, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=oro', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&order=material'),
(823, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=oro'),
(824, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(825, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(826, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(827, 'http://10.0.1.225/ghirelli_02/', NULL),
(828, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(829, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(830, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(831, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/3/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(832, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html'),
(833, 'http://10.0.1.225/ghirelli_02/index.php/checkout/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html'),
(834, 'http://10.0.1.225/ghirelli_02/index.php/checkout/onepage/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html'),
(835, 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html'),
(836, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(837, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(838, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(839, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(840, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/checkout/cart/'),
(841, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(842, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'http://10.0.1.225/ghirelli_02/index.php/'),
(843, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/'),
(844, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(845, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/19', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(846, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/divine-mercy-collection.html'),
(847, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(848, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(849, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(850, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(851, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(852, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(853, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(854, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=rosari', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(855, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(856, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=verde', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(857, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=verde', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(858, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=verde'),
(859, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=medal', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(860, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(861, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=verde', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal'),
(862, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=verde', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal'),
(863, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(864, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(865, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(866, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(867, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=medal'),
(868, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(869, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(870, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(871, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(872, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(873, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(874, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(875, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=verde', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(876, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=verde', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(877, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=verde'),
(878, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(879, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?dir=asc&order=price', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(880, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?dir=asc&order=color', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&order=price'),
(881, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?dir=asc&mode=list&order=color', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&order=color'),
(882, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?dir=asc&mode=grid&order=color', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&mode=list&order=color'),
(883, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/6/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?dir=asc&mode=grid&order=color'),
(884, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(885, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(886, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/6/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(887, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(888, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/13', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(889, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/la-maison.html'),
(890, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(891, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(892, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(893, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/6/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(894, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(895, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(896, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(897, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/6/category/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(898, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(899, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(900, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-6.html'),
(901, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(902, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(903, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(904, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(905, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(906, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(907, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=ro', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(908, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=rosari', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(909, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(910, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(911, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(912, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosari'),
(913, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(914, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(915, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(916, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/9', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(917, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/special-edition.html?___store=default'),
(918, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(919, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/7', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(920, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/bracciali-e-decine.html?___store=default'),
(921, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(922, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/19', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(923, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/13', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/divine-mercy-collection.html'),
(924, 'http://10.0.1.225/ghirelli_02/index.php/about-magento-demo-store/?___store=default', 'http://10.0.1.225/ghirelli_02/index.php/admin/cms_page/index/key/bde426b627ebac443dad4be4dc2b4244/'),
(925, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/la-maison.html'),
(926, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(927, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(928, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(929, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(930, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', NULL),
(931, 'http://10.0.1.225/ghirelli_02/', NULL),
(932, 'http://10.0.1.225/ghirelli_02/', NULL),
(933, 'http://10.0.1.225/ghirelli_02/', NULL),
(934, 'http://10.0.1.225/ghirelli_02/', NULL),
(935, 'http://10.0.1.225/ghirelli_02/', NULL),
(936, 'http://10.0.1.225/ghirelli_02/', NULL),
(937, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(938, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(939, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(940, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(941, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(942, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(943, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(944, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(945, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(946, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(947, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(948, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(949, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(950, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(951, 'http://10.0.1.225/ghirelli_02/', NULL),
(952, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(953, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/7', 'http://10.0.1.225/ghirelli_02/index.php/'),
(954, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(955, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(956, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(957, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(958, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(959, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(960, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(961, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(962, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/index.php/'),
(963, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(964, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(965, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/22', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(966, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/3/category/22', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/lourdes-immaculate-conception-collection.html'),
(967, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/lourdes-immaculate-conception-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/lourdes-immaculate-conception-collection/rosario-tipo-1.html'),
(968, 'http://10.0.1.225/ghirelli_02/index.php', NULL),
(969, 'http://10.0.1.225/ghirelli_02/', NULL),
(970, 'http://10.0.1.225/ghirelli_02/index.php', NULL),
(971, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(972, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(973, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(974, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(975, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(976, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/12', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(977, 'http://10.0.1.225/ghirelli_02/index.php/', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/savoir-faire.html'),
(978, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(979, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(980, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(981, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(982, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(983, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/index.php/'),
(984, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/13', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(985, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/la-maison.html'),
(986, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(987, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(988, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(989, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(990, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(991, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(992, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(993, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(994, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(995, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(996, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(997, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(998, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/ajax/suggest/?q=rosa', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(999, 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosar', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1000, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosar'),
(1001, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/catalogsearch/result/?q=rosar'),
(1002, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1003, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1004, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1005, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1006, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1007, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1008, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1009, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1010, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1011, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1012, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1013, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1014, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1015, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1016, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1017, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6?price=7-', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1018, 'http://10.0.1.225/ghirelli_02/', NULL),
(1019, 'http://10.0.1.225/ghirelli_02/index.php', NULL),
(1020, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(1021, 'http://10.0.1.225/ghirelli_02/index.php/', NULL),
(1022, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(1023, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/'),
(1024, 'http://10.0.1.225/ghirelli_02/', NULL),
(1025, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/3', 'http://10.0.1.225/ghirelli_02/'),
(1026, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html'),
(1027, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html?___store=default'),
(1028, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1029, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(1030, 'http://10.0.1.225/ghirelli_02/', NULL),
(1031, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/6', 'http://10.0.1.225/ghirelli_02/'),
(1032, 'http://10.0.1.225/ghirelli_02/index.php/catalog/category/view/id/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html'),
(1033, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1034, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(1035, 'http://10.0.1.225/ghirelli_02/', NULL),
(1036, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1037, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1038, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1039, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1040, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1041, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1042, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1043, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1044, 'http://10.0.1.225/ghirelli_02/index.php/catalog/product/view/id/7/category/18', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection.html'),
(1045, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/', 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html'),
(1046, 'http://10.0.1.225/ghirelli_02/', NULL),
(1047, 'http://10.0.1.225/ghirelli_02/', NULL),
(1048, 'http://ghirellitest.localhost.com/index.php/', 'http://ghirellitest.localhost.com/index.php/install/wizard/end/'),
(1049, 'http://ghirellitest.localhost.com/', NULL),
(1050, 'http://ghirellitest.localhost.com/', NULL),
(1051, 'http://ghirellitest.localhost.com/', NULL),
(1052, 'http://ghirellitest.localhost.com/', NULL),
(1053, 'http://ghirellitest.localhost.com/', NULL),
(1054, 'http://ghirellitest.localhost.com/', NULL),
(1055, 'http://ghirellitest.localhost.com/', NULL),
(1056, 'http://ghirellitest.localhost.com/', NULL),
(1057, 'http://ghirellitest.localhost.com/', NULL),
(1058, 'http://ghirellitest.localhost.com/', NULL),
(1059, 'http://ghirellitest.localhost.com/', NULL),
(1060, 'http://ghirellitest.localhost.com/', NULL),
(1061, 'http://ghirellitest.localhost.com/', NULL),
(1062, 'http://ghirellitest.localhost.com/', NULL),
(1063, 'http://ghirellitest.localhost.com/', NULL),
(1064, 'http://ghirellitest.localhost.com/', NULL),
(1065, 'http://ghirellitest.localhost.com/catalog/category/view/id/6', 'http://ghirellitest.localhost.com/'),
(1066, 'http://ghirellitest.localhost.com/', NULL),
(1067, 'http://ghirellitest.localhost.com/', NULL),
(1068, 'http://ghirellitest.localhost.com/', NULL),
(1069, 'http://ghirellitest.localhost.com/', NULL),
(1070, 'http://ghirellitest.localhost.com/', NULL),
(1071, 'http://ghirellitest.localhost.com/', NULL),
(1072, 'http://ghirellitest.localhost.com/', NULL),
(1073, 'http://ghirellitest.localhost.com/', NULL),
(1074, 'http://ghirellitest.localhost.com/', NULL),
(1075, 'http://ghirellitest.localhost.com/', NULL),
(1076, 'http://ghirellitest.localhost.com/', NULL),
(1077, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1078, 'http://ghirellitest.localhost.com/', NULL),
(1079, 'http://ghirellitest.localhost.com/', NULL),
(1080, 'http://ghirellitest.localhost.com/', NULL),
(1081, 'http://ghirellitest.localhost.com/PhpStorm-74f523cb-9bdf-4933-8d2a-cdfa1a1b46eb.php', NULL),
(1082, 'http://ghirellitest.localhost.com/', NULL),
(1083, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1084, 'http://ghirellitest.localhost.com/', NULL),
(1085, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1086, 'http://ghirellitest.localhost.com/', NULL),
(1087, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1088, 'http://ghirellitest.localhost.com/', NULL),
(1089, 'http://ghirellitest.localhost.com/', NULL),
(1090, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1091, 'http://ghirellitest.localhost.com/', NULL),
(1092, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1093, 'http://ghirellitest.localhost.com/', NULL),
(1094, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1095, 'http://ghirellitest.localhost.com/', NULL),
(1096, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1097, 'http://ghirellitest.localhost.com/customer/account/login/', 'http://ghirellitest.localhost.com/'),
(1098, 'http://ghirellitest.localhost.com/customer/account/login/', 'http://ghirellitest.localhost.com/'),
(1099, 'http://ghirellitest.localhost.com/customer/account/login/', 'http://ghirellitest.localhost.com/'),
(1100, 'http://ghirellitest.localhost.com/checkout/', 'http://ghirellitest.localhost.com/'),
(1101, 'http://ghirellitest.localhost.com/catalog/category/view/id/3', 'http://ghirellitest.localhost.com/customer/account/login/'),
(1102, 'http://ghirellitest.localhost.com/', NULL),
(1103, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1104, 'http://ghirellitest.localhost.com/', NULL),
(1105, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1106, 'http://ghirellitest.localhost.com/', NULL),
(1107, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1108, 'http://ghirellitest.localhost.com/', NULL),
(1109, 'http://ghirellitest.localhost.com/', NULL),
(1110, 'http://ghirellitest.localhost.com/', NULL),
(1111, 'http://ghirellitest.localhost.com/', NULL),
(1112, 'http://ghirellitest.localhost.com/', NULL),
(1113, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1114, 'http://ghirellitest.localhost.com/', NULL),
(1115, 'http://ghirellitest.localhost.com/', NULL),
(1116, 'http://ghirellitest.localhost.com/', NULL),
(1117, 'http://ghirellitest.localhost.com/', NULL),
(1118, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1119, 'http://ghirellitest.localhost.com/', NULL),
(1120, 'http://ghirellitest.localhost.com/', NULL),
(1121, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1122, 'http://ghirellitest.localhost.com/', NULL),
(1123, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1124, 'http://ghirellitest.localhost.com/', NULL),
(1125, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1126, 'http://ghirellitest.localhost.com/', NULL),
(1127, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1128, 'http://ghirellitest.localhost.com/', NULL),
(1129, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1130, 'http://ghirellitest.localhost.com/', NULL),
(1131, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1132, 'http://ghirellitest.localhost.com/', NULL),
(1133, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1134, 'http://ghirellitest.localhost.com/', NULL),
(1135, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1136, 'http://ghirellitest.localhost.com/', NULL),
(1137, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1138, 'http://ghirellitest.localhost.com/', NULL),
(1139, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1140, 'http://ghirellitest.localhost.com/', NULL),
(1141, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1142, 'http://ghirellitest.localhost.com/', NULL),
(1143, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1144, 'http://ghirellitest.localhost.com/', NULL),
(1145, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1146, 'http://ghirellitest.localhost.com/', NULL),
(1147, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1148, 'http://ghirellitest.localhost.com/', NULL),
(1149, 'http://ghirellitest.localhost.com/', 'http://ghirellitest.localhost.com/'),
(1150, 'http://ghirellitest.localhost.com/', NULL),
(1151, 'http://ghirellitest.localhost.com/', NULL),
(1152, 'http://ghirellitest.localhost.com/', NULL),
(1153, 'http://ghirellitest.localhost.com/', NULL),
(1154, 'http://ghirellitest.localhost.com/', NULL),
(1155, 'http://ghirellitest.localhost.com/', NULL),
(1156, 'http://ghirellitest.localhost.com/', NULL),
(1157, 'http://ghirellitest.localhost.com/', NULL),
(1158, 'http://ghirellitest.localhost.com/', NULL),
(1159, 'http://ghirellitest.localhost.com/', NULL),
(1160, 'http://ghirellitest.localhost.com/', NULL),
(1161, 'http://ghirellitest.localhost.com/', NULL),
(1162, 'http://ghirellitest.localhost.com/catalog/category/view/id/3', 'http://ghirellitest.localhost.com/');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_visitor`
--

CREATE TABLE IF NOT EXISTS `mg_log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=94 ;

--
-- Dump dei dati per la tabella `mg_log_visitor`
--

INSERT INTO `mg_log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, '84lsh2ii5mrarprmpgsgleb9i7', '2014-05-05 08:25:57', '2014-05-05 09:14:06', 47, 1),
(2, '2flvtamgcju0669fkfcai7bbc3', '2014-05-05 10:43:09', '2014-05-05 12:26:51', 132, 1),
(3, 'fd29i0l1g7rgg761drb8psuqu0', '2014-05-05 11:18:32', '2014-05-05 11:24:48', 81, 1),
(4, 'nr2kb34hd59au4p03an2j980q0', '2014-05-05 14:26:25', '2014-05-05 16:35:42', 246, 1),
(5, 'kksfs38jtp4nqv28u1qasg2it1', '2014-05-05 16:01:09', '2014-05-05 16:02:03', 229, 1),
(6, '0pthsukhb3tq7c39m7rh915gn6', '2014-05-06 05:32:38', '2014-05-06 07:03:09', 324, 1),
(7, '3erf10olmgjj0o2pajttggl3e3', '2014-05-06 05:37:47', '2014-05-06 07:27:16', 328, 1),
(8, 'f5i4prq1vbiqpu5bnu270htnu7', '2014-05-06 10:38:47', '2014-05-06 10:53:08', 331, 1),
(9, 'gq0k7utrei8q2h2o6jqit4h0c6', '2014-05-06 13:08:54', '2014-05-06 16:07:28', 472, 1),
(10, 'tcem1an4m3tdafa98v8t3tv417', '2014-05-06 14:32:38', '2014-05-06 14:42:58', 422, 1),
(11, 's8r2940cqn3gg0hgldu0bbnob6', '2014-05-07 04:51:18', '2014-05-07 05:05:57', 481, 1),
(12, '58gegu5jck30igeeraihrf5ef6', '2014-05-07 04:54:13', '2014-05-07 04:54:14', 478, 1),
(13, 'ubopr4qeu7ajn6r13hjb95mf86', '2014-05-07 06:22:08', '2014-05-07 07:00:38', 488, 1),
(14, 'crq0rjsnao2uj1kdg1g8qot1o1', '2014-05-07 08:36:39', '2014-05-07 08:36:41', 489, 1),
(15, '99ft5on7gd9bkadlap2ue7opu1', '2014-05-07 08:36:40', '2014-05-07 08:36:42', 490, 1),
(16, 'sgeme9hiu0pmhti0dm0fk0i075', '2014-05-07 08:36:42', '2014-05-07 08:36:47', 492, 1),
(17, 'vbli8kuh0fto5sdem6fo0s1ap5', '2014-05-07 11:41:00', '2014-05-07 14:09:38', 507, 1),
(18, '17rk8p3jo7kesbkuelco04fnv3', '2014-05-07 14:13:20', '2014-05-07 15:33:59', 587, 1),
(19, 'df20sb9rgbggbc77dm4ujprk02', '2014-05-07 15:41:06', '2014-05-07 15:43:55', 595, 1),
(20, 'ogar1l1vrnadb7h8s3466keio1', '2014-05-08 04:51:10', '2014-05-08 06:42:39', 635, 1),
(21, 'elpb0g2pq9mvcf7rj5e17feki1', '2014-05-08 04:57:49', '2014-05-08 05:39:24', 612, 1),
(22, 'gip60g9ko43t6am626k45ue7l1', '2014-05-09 05:22:20', '2014-05-09 05:22:38', 637, 1),
(23, 'emao0ldv1hk4qj50ejqjh2u2a0', '2014-05-13 06:17:24', '2014-05-13 06:18:44', 639, 1),
(24, 'pkfigiosnke9dafp7qtvouien3', '2014-05-13 06:23:16', '2014-05-13 06:23:25', 641, 1),
(25, 'kpurerjbfpp43bcndaguifi8v7', '2014-05-13 07:46:05', '2014-05-13 14:00:34', 760, 1),
(26, '2bvo9k6mobj89uuncdq3thob46', '2014-05-13 11:30:33', '2014-05-13 11:33:09', 699, 1),
(27, 'fjarmii4qsm5i34dd5uhj5h2p4', '2014-05-13 11:33:39', '2014-05-13 12:05:14', 706, 1),
(28, '1imb9ocusnv0cej31sh88o4rp1', '2014-05-13 14:01:47', '2014-05-13 15:44:09', 826, 1),
(29, '8eep5bd7amft50lv3iqht5ivp0', '2014-05-14 05:54:01', '2014-05-14 05:54:03', 827, 1),
(30, 'cf3bt9ehi7ss2t9fp7vrpuq8k2', '2014-05-14 07:40:56', '2014-05-14 07:40:59', 828, 1),
(31, 'b077gh70gf7s6qi0hbm80v0304', '2014-05-14 08:30:50', '2014-05-14 08:33:25', 832, 1),
(32, '5vhntb154g3a02ejdgmon36mg7', '2014-05-14 09:46:53', '2014-05-14 10:22:25', 840, 1),
(33, 'eatqj5cikmpie29bapn4ofj2r4', '2014-05-14 09:51:46', '2014-05-14 09:52:25', 837, 1),
(34, 'n0q6nan2431uanj7oo87putl50', '2014-05-14 11:06:16', '2014-05-14 13:14:47', 901, 1),
(35, 't2mk0sa9e344unfk16sk7krm21', '2014-05-15 08:29:12', '2014-05-15 08:30:04', 904, 1),
(36, 't6ivkphmka3k4o37m6r3t9nvf3', '2014-05-16 12:03:15', '2014-05-16 12:15:49', 912, 1),
(37, 'i601t25vi89b10fotdkd7uffa2', '2014-05-16 17:05:48', '2014-05-16 17:05:50', 913, 1),
(38, '0119pej17ap0kjrvsaetccfvj4', '2014-05-17 13:59:44', '2014-05-17 14:05:35', 924, 1),
(39, '4spnsbjkfl14sn0rla9hbec0f0', '2014-05-17 15:00:48', '2014-05-17 15:00:56', 926, 1),
(40, 'dh9gl4beri6m3ufj0f6evbmm83', '2014-05-19 13:07:50', '2014-05-19 13:08:33', 928, 1),
(41, '1don6pql1vcn2khnklbb9qf074', '2014-05-21 08:16:52', '2014-05-21 08:16:54', 929, 1),
(42, 'u4q495lc1ti5ve5ehn7o9u7cp6', '2014-05-21 08:18:06', '2014-05-21 08:18:09', 930, 1),
(43, 'n0k14o2v6797k9qg0p1e8q7h13', '2014-05-22 14:38:35', '2014-05-22 15:02:58', 936, 1),
(44, '180en4jg7ih4esi3ramob6he87', '2014-05-23 06:01:55', '2014-05-23 06:02:05', 938, 1),
(45, 'uikvuthb9rmqnut020hn42dea1', '2014-05-23 08:01:54', '2014-05-23 08:39:20', 940, 1),
(46, '1d51ejumvesol4crogg2bdttl7', '2014-05-23 14:35:34', '2014-05-23 14:55:30', 950, 1),
(47, 'hfhmgprqr7spes5nj9tptrrp90', '2014-05-23 21:19:25', '2014-05-23 21:19:26', 951, 1),
(48, 'svvjqrp1caa2hbi16gqulckbh3', '2014-05-26 11:49:44', '2014-05-26 11:50:15', 953, 1),
(49, 'nurehkt9f9bfv7rjradd01mr72', '2014-05-27 06:33:37', '2014-05-27 06:33:38', 954, 1),
(50, 'lq2mdibl7q14vco52lgptrkib6', '2014-05-27 08:00:06', '2014-05-27 08:00:07', 955, 1),
(51, 'do2bp7tebssmith5kjv10k4182', '2014-05-28 08:25:09', '2014-05-28 08:25:32', 960, 1),
(52, '2429nrf9gh5ruasac10e80usu7', '2014-05-28 11:15:19', '2014-05-28 11:16:41', 967, 1),
(53, 'tbfsn2efvp9sn5414oerldnmk3', '2014-05-28 18:31:50', '2014-05-28 18:36:22', 970, 1),
(54, 'kvski57haup2jev36a69v67ek3', '2014-05-29 07:21:23', '2014-05-29 07:21:25', 971, 1),
(55, 'es516ki1guuo4141bgnhdfq7u6', '2014-05-29 08:57:56', '2014-05-29 08:58:52', 977, 1),
(56, 't6s10go1p88phobdlno24had54', '2014-05-29 10:28:57', '2014-05-29 12:39:09', 1017, 1),
(57, '7jlrpkmp6q2f9k0johi7vu4m55', '2014-06-01 12:23:23', '2014-06-01 12:23:51', 1019, 1),
(58, 'pitiv9voa174rten73giu92uh0', '2014-06-03 05:42:21', '2014-06-03 05:42:23', 1020, 1),
(59, '78t4iiuil92gju8li90p2ka5s7', '2014-06-04 04:52:14', '2014-06-04 04:52:37', 1022, 1),
(60, '4vvil0o50tfis9sgou2uho8064', '2014-06-04 10:08:42', '2014-06-04 10:08:44', 1023, 1),
(61, '80mpj62gbuuv6il51ejisd2tb0', '2014-06-09 12:31:32', '2014-06-09 12:44:40', 1029, 1),
(62, 'd2ge3i6qh05rc5bdc36jaonm26', '2014-06-09 12:59:37', '2014-06-09 14:23:17', 1045, 1),
(63, 'uscuh6v0csb1hkf9rs549qn9h0', '2014-06-09 13:09:38', '2014-06-09 13:09:39', 1035, 1),
(64, 'fp2n2o87u7dp8ms8tpha09vtq3', '2014-06-10 09:11:10', '2014-06-10 09:11:12', 1046, 1),
(65, 'dsmucrermbglg4grm7mjm6n500', '2014-06-11 10:56:46', '2014-06-11 10:56:49', 1047, 1),
(66, 'k62a166r3q28sf7k7e9ho1em81', '2014-06-19 15:53:34', '2014-06-19 15:53:35', 1048, 1),
(67, '03s6o8tsqjtt8vh7unckemgn15', '2014-06-20 17:42:20', '2014-06-20 17:42:23', 1050, 1),
(68, 'gklauu9egl99nq62q98tqo6tv3', '2014-06-20 17:42:20', '2014-06-20 17:42:23', 1049, 1),
(69, 'od23ljetr5kfb107tfa714tbj5', '2014-06-23 09:24:43', '2014-06-23 09:50:55', 1059, 1),
(70, '57d2cnqtmlhhpvm8m40ngvkb04', '2014-06-23 09:34:26', '2014-06-23 09:34:28', 1056, 1),
(71, 'thgmr07pp4p0v644nb5nv6aik5', '2014-06-23 09:35:13', '2014-06-23 09:35:14', 1058, 1),
(72, 'qanpmg691a4ll919cmp4s4j1d4', '2014-06-23 09:53:28', '2014-06-23 10:01:55', 1063, 1),
(73, '8g5867mjn628eo885ggttr6rp4', '2014-06-24 05:16:30', '2014-06-24 05:19:48', 1065, 1),
(74, 'mp8uip19k8852r8bttfb3k4kj2', '2014-06-24 06:43:04', '2014-06-24 06:43:04', 1066, 1),
(75, '98b8292kcffde1b104s8atp2a5', '2014-06-24 06:44:48', '2014-06-24 06:44:49', 1068, 1),
(76, 'vga0eabtunne7v7aa0na2vfak2', '2014-06-24 06:45:07', '2014-06-24 06:45:08', 1069, 1),
(77, 'v1ejcm3pqpho037vm9t38bm8a4', '2014-06-26 02:24:32', '2014-06-26 02:24:47', 1071, 1),
(78, 'qhl9sqtte670lksldk6u0nb5e1', '2014-06-26 02:24:32', '2014-06-26 02:24:46', 1070, 1),
(79, 'i681u80faf4kgsi5iu9rn09vt6', '2014-06-26 02:24:42', '2014-06-26 02:24:47', 1073, 1),
(80, 'neu2ma2i2ns7k60sks2lt4q4c6', '2014-06-26 02:24:43', '2014-06-26 02:24:47', 1072, 1),
(81, 'c2kpc780e99f1jd0o4ig0tleq2', '2014-07-01 12:30:56', '2014-07-01 13:10:16', 1077, 1),
(82, '3o9vdoc493k82kkeoodo96t5i1', '2014-07-01 14:39:10', '2014-07-01 14:39:13', 1079, 1),
(83, 'ndngc32nv251gqllrucejun8q0', '2014-07-01 14:39:22', '2014-07-01 14:39:25', 1081, 1),
(84, 'movcni44aotl4bfel93jt585p2', '2014-07-01 15:20:13', '2014-07-01 15:20:24', 1083, 1),
(85, 'ritm2tdu748i8qrlteralgahg4', '2014-07-01 18:14:59', '2014-07-01 18:33:15', 1101, 1),
(86, 't1a2aif9v6e98l2prbt17b0353', '2014-07-02 06:03:54', '2014-07-02 09:07:06', 1131, 1),
(87, 'e7io84t10jfeo7jajc7ehantp2', '2014-07-02 11:41:45', '2014-07-02 13:28:40', 1149, 1),
(88, 'lfsds7fqkb0fdv44qaoibs6an3', '2014-07-02 16:27:04', '2014-07-02 16:27:59', 1151, 1),
(89, 'a5koplijbmi60ve75hnf9kl9r7', '2014-07-02 18:00:43', '2014-07-02 18:18:31', 1157, 1),
(90, 'd75ou3ulpl3uoclvp37v0ar9p0', '2014-07-05 19:58:05', '2014-07-05 19:58:08', 1159, 1),
(91, 's27j70n1ssp10p8dj9v3jmgij0', '2014-07-05 19:58:05', '2014-07-05 19:58:08', 1158, 1),
(92, 'b2jsv0m3j81u7u2i32shoq01m5', '2014-07-06 08:08:15', '2014-07-06 08:08:19', 1160, 1),
(93, 'ula5hchb6ehdfhmrc0v7q96581', '2014-07-06 12:18:28', '2014-07-06 12:19:25', 1162, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `mg_log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Dump dei dati per la tabella `mg_log_visitor_info`
--

INSERT INTO `mg_log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, 'http://10.0.1.225/ghirelli_02/index.php/install/wizard/end/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(2, 'http://10.0.1.225/ghirelli_02/index.php/customer/account/login/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(3, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772485),
(4, 'http://10.0.1.225/ghirelli_02/index.php/collezioni.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(5, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772485),
(6, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(7, 'http://mailitalsoft.busnet.it/', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(8, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(9, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(10, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772434),
(11, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(12, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(13, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(14, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(15, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(16, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-1.html', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(17, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/pendenti.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(18, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(19, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko', NULL, 'it-IT', 167772641, 167772504),
(20, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(21, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(22, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(23, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(24, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(25, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari.html', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(26, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko', NULL, 'it-IT', 167772641, 167772504),
(27, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772504),
(28, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(29, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.131 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(30, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772504),
(31, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(32, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/rosario-tipo-1-3.html', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(33, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(34, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(35, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(36, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(37, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772670),
(38, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', NULL, 'it-IT', 167772641, 167772670),
(39, 'http://10.0.1.225/ghirelli_02/index.php/il-mondo-ghirelli/la-maison.html', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', NULL, 'it-IT', 167772641, 167772670),
(40, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772436),
(41, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(42, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(43, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.137 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(44, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(45, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(46, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(47, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', NULL, 'it-IT', 167772641, 167772670),
(48, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(49, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772485),
(50, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(51, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(52, 'http://10.0.1.225/ghirelli_02/index.php/collezioni/rosari/miraculous-medal-collection/rosario-tipo-1.html', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772488),
(53, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772670),
(54, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772670),
(55, 'http://10.0.1.225/ghirelli_02/index.php/', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772670),
(56, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 167772641, 167772670),
(57, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0) like Gecko', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772670),
(58, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772434),
(59, NULL, 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772434),
(60, 'http://10.0.1.225/ghirelli_02/index.php/', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772434),
(61, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772463),
(62, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772463),
(63, NULL, 'Java/1.7.0_40', NULL, NULL, 167772641, 167772463),
(64, NULL, 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772485),
(65, NULL, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:29.0) Gecko/20100101 Firefox/29.0', NULL, 'it-IT,it;q=0.8,en-US;q=0.5,en;q=0.3', 167772641, 167772485),
(66, 'http://ghirellitest.localhost.com/index.php/install/wizard/end/', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(67, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(68, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(69, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(70, NULL, 'Jakarta Commons-HttpClient/3.1', NULL, NULL, 2130706433, 2130706433),
(71, NULL, 'Jakarta Commons-HttpClient/3.1', NULL, NULL, 2130706433, 2130706433),
(72, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(73, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(74, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(75, NULL, 'Jakarta Commons-HttpClient/3.1', NULL, NULL, 2130706433, 2130706433),
(76, NULL, 'Jakarta Commons-HttpClient/3.1', NULL, NULL, 2130706433, 2130706433),
(77, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(78, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(79, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(80, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(81, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(82, NULL, 'Jakarta Commons-HttpClient/3.1', NULL, NULL, 2130706433, 2130706433),
(83, NULL, 'Jakarta Commons-HttpClient/3.1', NULL, NULL, 2130706433, 2130706433),
(84, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(85, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(86, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(87, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(88, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(89, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.114 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(90, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(91, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(92, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433),
(93, NULL, 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.153 Safari/537.36', NULL, 'it-IT,it;q=0.8,en-US;q=0.6,en;q=0.4', 2130706433, 2130706433);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `mg_log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_MG_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_MG_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_MG_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `mg_newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_MG_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_MG_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `mg_newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_MG_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `mg_newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_MG_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_MG_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_MG_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `mg_newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_MG_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `mg_newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_MG_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_newsletter_subscriber`
--

INSERT INTO `mg_newsletter_subscriber` (`subscriber_id`, `store_id`, `change_status_at`, `customer_id`, `subscriber_email`, `subscriber_status`, `subscriber_confirm_code`) VALUES
(1, 1, NULL, 1, 'travaglini.fabio@yahoo.it', 1, 'kpg19vckk2x7jdhb1fiigrp0rtocoupv');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_newsletter_template`
--

CREATE TABLE IF NOT EXISTS `mg_newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_MG_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_MG_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_MG_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `mg_oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_MG_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_MG_MG_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_MG_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_MG_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `mg_oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_MG_MG_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='mg_oauth_nonce';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_oauth_token`
--

CREATE TABLE IF NOT EXISTS `mg_oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_MG_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_MG_MG_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_MG_OAUTH_TOKEN_ADMIN_ID_MG_MG_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_MG_OAUTH_TOKEN_CUSTOMER_ID_MG_MG_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_paypal_cert`
--

CREATE TABLE IF NOT EXISTS `mg_paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_MG_PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `mg_paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_MG_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `mg_paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_MG_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `mg_paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_MG_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_persistent_session`
--

CREATE TABLE IF NOT EXISTS `mg_persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_MG_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_MG_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_MG_PERSISTENT_SESSION_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_poll`
--

CREATE TABLE IF NOT EXISTS `mg_poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_MG_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_poll`
--

INSERT INTO `mg_poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2014-05-05 08:07:38', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_poll_answer`
--

CREATE TABLE IF NOT EXISTS `mg_poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_MG_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `mg_poll_answer`
--

INSERT INTO `mg_poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_poll_store`
--

CREATE TABLE IF NOT EXISTS `mg_poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_MG_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- Dump dei dati per la tabella `mg_poll_store`
--

INSERT INTO `mg_poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_poll_vote`
--

CREATE TABLE IF NOT EXISTS `mg_poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_MG_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_product_alert_price`
--

CREATE TABLE IF NOT EXISTS `mg_product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_MG_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `mg_product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_MG_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating`
--

CREATE TABLE IF NOT EXISTS `mg_rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_MG_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_MG_RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ratings' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_rating`
--

INSERT INTO `mg_rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating_entity`
--

CREATE TABLE IF NOT EXISTS `mg_rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_rating_entity`
--

INSERT INTO `mg_rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating_option`
--

CREATE TABLE IF NOT EXISTS `mg_rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MG_RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- Dump dei dati per la tabella `mg_rating_option`
--

INSERT INTO `mg_rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `mg_rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_MG_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_MG_RATING_OPTION_VOTE_REVIEW_ID_MG_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `mg_rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_MG_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_MG_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating_store`
--

CREATE TABLE IF NOT EXISTS `mg_rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_MG_RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_rating_title`
--

CREATE TABLE IF NOT EXISTS `mg_rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_MG_RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `mg_report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_MG_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_MG_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MG_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_MG_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_MG_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table' AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `mg_report_compared_product_index`
--

INSERT INTO `mg_report_compared_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 2, NULL, 1, 1, '2014-05-05 11:50:23'),
(2, 2, NULL, 2, 1, '2014-05-05 11:50:30'),
(3, 10, NULL, 2, 1, '2014-05-06 14:35:26'),
(4, 10, NULL, 3, 1, '2014-05-06 14:35:32'),
(5, 20, NULL, 1, 1, '2014-05-08 05:46:10'),
(7, 20, NULL, 2, 1, '2014-05-08 05:46:16');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_event`
--

CREATE TABLE IF NOT EXISTS `mg_report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_MG_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_MG_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_MG_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_MG_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_MG_REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Table' AUTO_INCREMENT=117 ;

--
-- Dump dei dati per la tabella `mg_report_event`
--

INSERT INTO `mg_report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
(1, '2014-05-05 08:51:57', 1, 1, 1, 1, 1),
(2, '2014-05-05 08:53:38', 1, 1, 1, 1, 1),
(3, '2014-05-05 08:54:17', 1, 1, 1, 1, 1),
(4, '2014-05-05 08:55:33', 1, 1, 1, 1, 1),
(5, '2014-05-05 09:11:22', 1, 1, 1, 0, 1),
(6, '2014-05-05 09:11:35', 4, 1, 1, 0, 1),
(7, '2014-05-05 09:11:52', 1, 1, 1, 0, 1),
(8, '2014-05-05 09:13:45', 1, 1, 1, 0, 1),
(9, '2014-05-05 10:44:23', 1, 1, 2, 1, 1),
(10, '2014-05-05 10:52:41', 1, 1, 2, 1, 1),
(11, '2014-05-05 11:14:07', 1, 1, 2, 1, 1),
(12, '2014-05-05 11:16:09', 1, 1, 2, 1, 1),
(13, '2014-05-05 11:30:45', 1, 1, 2, 1, 1),
(14, '2014-05-05 11:35:44', 1, 1, 2, 1, 1),
(15, '2014-05-05 11:50:23', 3, 1, 2, 1, 1),
(16, '2014-05-05 11:50:30', 3, 2, 2, 1, 1),
(17, '2014-05-05 11:50:54', 4, 1, 2, 1, 1),
(18, '2014-05-05 12:06:51', 1, 1, 2, 1, 1),
(19, '2014-05-05 14:26:47', 1, 1, 4, 1, 1),
(20, '2014-05-05 14:31:17', 1, 1, 1, 0, 1),
(21, '2014-05-05 14:36:42', 1, 1, 1, 0, 1),
(22, '2014-05-05 14:36:51', 1, 1, 1, 0, 1),
(23, '2014-05-05 14:43:03', 1, 1, 1, 0, 1),
(24, '2014-05-05 14:51:24', 1, 1, 1, 0, 1),
(25, '2014-05-05 15:18:21', 1, 1, 1, 0, 1),
(26, '2014-05-05 15:26:28', 1, 1, 1, 0, 1),
(27, '2014-05-05 15:41:05', 1, 1, 1, 0, 1),
(28, '2014-05-05 15:52:17', 1, 1, 1, 0, 1),
(29, '2014-05-05 15:55:11', 1, 1, 1, 0, 1),
(30, '2014-05-06 05:33:57', 1, 1, 6, 1, 1),
(31, '2014-05-06 05:40:00', 1, 1, 7, 1, 1),
(32, '2014-05-06 05:46:18', 1, 1, 1, 0, 1),
(33, '2014-05-06 05:54:34', 1, 1, 1, 0, 1),
(34, '2014-05-06 06:18:57', 1, 1, 1, 0, 1),
(35, '2014-05-06 06:20:38', 1, 1, 1, 0, 1),
(36, '2014-05-06 06:36:45', 1, 1, 1, 0, 1),
(37, '2014-05-06 06:50:46', 1, 1, 1, 0, 1),
(38, '2014-05-06 06:53:24', 1, 1, 1, 0, 1),
(39, '2014-05-06 06:53:37', 1, 1, 1, 0, 1),
(40, '2014-05-06 13:22:00', 1, 1, 9, 1, 1),
(41, '2014-05-06 13:33:49', 1, 1, 9, 1, 1),
(42, '2014-05-06 13:42:29', 1, 1, 1, 0, 1),
(43, '2014-05-06 14:24:52', 1, 1, 1, 0, 1),
(44, '2014-05-06 14:34:23', 1, 3, 10, 1, 1),
(45, '2014-05-06 14:35:03', 1, 1, 10, 1, 1),
(46, '2014-05-06 14:35:26', 3, 2, 10, 1, 1),
(47, '2014-05-06 14:35:32', 3, 3, 10, 1, 1),
(48, '2014-05-06 14:35:37', 1, 4, 10, 1, 1),
(49, '2014-05-06 14:36:00', 1, 3, 10, 1, 1),
(50, '2014-05-06 14:38:24', 1, 1, 10, 1, 1),
(51, '2014-05-06 14:42:22', 1, 1, 10, 1, 1),
(52, '2014-05-06 14:42:55', 1, 1, 10, 1, 1),
(53, '2014-05-06 15:18:21', 1, 1, 1, 0, 1),
(54, '2014-05-06 15:19:22', 1, 1, 1, 0, 1),
(55, '2014-05-06 15:20:11', 1, 1, 1, 0, 1),
(56, '2014-05-06 15:33:19', 1, 1, 1, 0, 1),
(57, '2014-05-06 15:34:50', 1, 1, 1, 0, 1),
(58, '2014-05-07 04:52:22', 1, 1, 11, 1, 1),
(59, '2014-05-07 07:00:35', 1, 1, 13, 1, 1),
(60, '2014-05-07 11:41:18', 1, 1, 17, 1, 1),
(61, '2014-05-07 14:42:37', 1, 1, 18, 1, 1),
(62, '2014-05-07 14:47:08', 1, 1, 1, 0, 1),
(63, '2014-05-07 14:56:23', 1, 1, 1, 0, 1),
(64, '2014-05-07 14:56:57', 1, 1, 1, 0, 1),
(65, '2014-05-07 15:01:27', 1, 1, 1, 0, 1),
(66, '2014-05-07 15:03:46', 1, 1, 1, 0, 1),
(67, '2014-05-07 15:04:43', 1, 1, 1, 0, 1),
(68, '2014-05-07 15:05:33', 1, 1, 1, 0, 1),
(69, '2014-05-07 15:06:17', 1, 1, 1, 0, 1),
(70, '2014-05-07 15:06:56', 1, 1, 1, 0, 1),
(71, '2014-05-07 15:07:18', 1, 1, 1, 0, 1),
(72, '2014-05-07 15:08:36', 1, 1, 1, 0, 1),
(73, '2014-05-07 15:10:31', 1, 1, 1, 0, 1),
(74, '2014-05-07 15:19:30', 1, 1, 1, 0, 1),
(75, '2014-05-07 15:20:05', 1, 1, 1, 0, 1),
(76, '2014-05-07 15:21:42', 1, 1, 1, 0, 1),
(77, '2014-05-07 15:22:09', 1, 1, 1, 0, 1),
(78, '2014-05-07 15:23:31', 1, 1, 1, 0, 1),
(79, '2014-05-07 15:24:05', 1, 1, 1, 0, 1),
(80, '2014-05-07 15:29:46', 1, 1, 1, 0, 1),
(81, '2014-05-07 15:30:29', 1, 1, 1, 0, 1),
(82, '2014-05-07 15:33:07', 1, 1, 1, 0, 1),
(83, '2014-05-07 15:33:41', 1, 1, 1, 0, 1),
(84, '2014-05-08 04:59:45', 1, 1, 21, 1, 1),
(85, '2014-05-08 05:45:38', 3, 1, 20, 1, 1),
(86, '2014-05-08 05:46:10', 3, 1, 20, 1, 1),
(87, '2014-05-08 05:46:16', 3, 2, 20, 1, 1),
(88, '2014-05-08 05:46:32', 4, 1, 20, 1, 1),
(89, '2014-05-13 12:15:01', 1, 1, 25, 1, 1),
(90, '2014-05-13 14:32:33', 1, 7, 28, 1, 1),
(91, '2014-05-13 15:18:40', 1, 7, 28, 1, 1),
(92, '2014-05-13 15:19:07', 1, 7, 28, 1, 1),
(93, '2014-05-13 15:30:26', 1, 3, 28, 1, 1),
(94, '2014-05-14 08:33:20', 1, 3, 31, 1, 1),
(95, '2014-05-14 12:03:18', 1, 6, 34, 1, 1),
(96, '2014-05-14 12:06:39', 1, 6, 34, 1, 1),
(97, '2014-05-14 12:34:10', 1, 6, 34, 1, 1),
(98, '2014-05-14 12:49:21', 1, 6, 34, 1, 1),
(99, '2014-05-23 14:47:27', 1, 7, 46, 1, 1),
(100, '2014-05-28 08:25:28', 1, 7, 51, 1, 1),
(101, '2014-05-28 11:16:38', 1, 3, 52, 1, 1),
(102, '2014-05-29 08:58:12', 1, 7, 55, 1, 1),
(103, '2014-05-29 11:00:49', 1, 7, 56, 1, 1),
(104, '2014-05-29 11:01:29', 1, 7, 56, 1, 1),
(105, '2014-06-09 12:44:34', 1, 7, 61, 1, 1),
(106, '2014-06-09 13:06:12', 1, 7, 62, 1, 1),
(107, '2014-06-09 13:34:12', 1, 7, 62, 1, 1),
(108, '2014-06-09 13:35:30', 1, 7, 62, 1, 1),
(109, '2014-06-09 13:46:50', 1, 7, 62, 1, 1),
(110, '2014-06-09 13:49:24', 1, 7, 62, 1, 1),
(111, '2014-06-09 13:55:02', 1, 7, 62, 1, 1),
(112, '2014-06-09 13:55:21', 1, 7, 62, 1, 1),
(113, '2014-06-09 14:18:17', 1, 7, 62, 1, 1),
(114, '2014-06-09 14:19:54', 1, 7, 62, 1, 1),
(115, '2014-06-09 14:20:39', 1, 7, 62, 1, 1),
(116, '2014-06-09 14:23:11', 1, 7, 62, 1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_event_types`
--

CREATE TABLE IF NOT EXISTS `mg_report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table' AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `mg_report_event_types`
--

INSERT INTO `mg_report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_viewed_product_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `mg_report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_viewed_product_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `mg_report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_viewed_product_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `mg_report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `mg_report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_MG_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_MG_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_MG_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table' AUTO_INCREMENT=97 ;

--
-- Dump dei dati per la tabella `mg_report_viewed_product_index`
--

INSERT INTO `mg_report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
(1, 18, 1, 1, 1, '2014-05-07 15:33:41'),
(8, 2, NULL, 1, 1, '2014-05-05 12:06:51'),
(27, 7, NULL, 1, 1, '2014-05-06 05:40:00'),
(40, 10, NULL, 3, 1, '2014-05-06 14:36:00'),
(41, 10, NULL, 1, 1, '2014-05-06 14:42:55'),
(42, 10, NULL, 4, 1, '2014-05-06 14:35:37'),
(52, 11, NULL, 1, 1, '2014-05-07 04:52:22'),
(53, 13, NULL, 1, 1, '2014-05-07 07:00:35'),
(54, 17, NULL, 1, 1, '2014-05-07 11:41:18'),
(78, 21, NULL, 1, 1, '2014-05-08 04:59:45'),
(79, 25, NULL, 1, 1, '2014-05-13 12:15:01'),
(80, 28, NULL, 7, 1, '2014-05-13 15:19:07'),
(83, 28, NULL, 3, 1, '2014-05-13 15:30:26'),
(84, 31, NULL, 3, 1, '2014-05-14 08:33:20'),
(85, 34, NULL, 6, 1, '2014-05-14 12:49:21'),
(89, 46, NULL, 7, 1, '2014-05-23 14:47:27'),
(90, 51, NULL, 7, 1, '2014-05-28 08:25:28'),
(91, 52, NULL, 3, 1, '2014-05-28 11:16:38'),
(92, 55, NULL, 7, 1, '2014-05-29 08:58:12'),
(93, 56, NULL, 7, 1, '2014-05-29 11:01:29'),
(95, 61, NULL, 7, 1, '2014-06-09 12:44:34'),
(96, 62, NULL, 7, 1, '2014-06-09 14:23:11');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_review`
--

CREATE TABLE IF NOT EXISTS `mg_review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_MG_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_MG_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_review_detail`
--

CREATE TABLE IF NOT EXISTS `mg_review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_MG_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_MG_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_MG_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_review_entity`
--

CREATE TABLE IF NOT EXISTS `mg_review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_review_entity`
--

INSERT INTO `mg_review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `mg_review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_MG_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_review_status`
--

CREATE TABLE IF NOT EXISTS `mg_review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_review_status`
--

INSERT INTO `mg_review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_review_store`
--

CREATE TABLE IF NOT EXISTS `mg_review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_MG_REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_revslideshow_slideshow`
--

CREATE TABLE IF NOT EXISTS `mg_revslideshow_slideshow` (
  `slideshow_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) unsigned NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slide_url` varchar(255) NOT NULL DEFAULT '',
  `slide_target` varchar(255) NOT NULL DEFAULT '',
  `slide_transition` varchar(255) NOT NULL DEFAULT '',
  `slot_amount` int(11) NOT NULL DEFAULT '0',
  `transition_rotation` varchar(255) NOT NULL DEFAULT '',
  `transition_duration` int(11) NOT NULL DEFAULT '0',
  `delay` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `alt_text` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `json` text NOT NULL,
  PRIMARY KEY (`slideshow_id`),
  KEY `ID_SLIDESHOW` (`slideshow_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_revslideshow_slideshow`
--

INSERT INTO `mg_revslideshow_slideshow` (`slideshow_id`, `store_id`, `title`, `slide_url`, `slide_target`, `slide_transition`, `slot_amount`, `transition_rotation`, `transition_duration`, `delay`, `image`, `alt_text`, `sort_order`, `is_enabled`, `json`) VALUES
(1, 0, 'Image1', '', '0', 'random', 7, '0', 300, '', 'homepage_slideshow_1.jpg', '', 0, 1, ''),
(2, 0, 'Image2', '', '0', 'random', 7, '0', 300, '', 'homepage_slideshow_2.jpg', '', 0, 1, ''),
(3, 0, 'Image3', '', '0', 'random', 7, '0', 300, '', 'homepage_slideshow_3.jpg', '', 0, 1, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_revslideshow_stores`
--

CREATE TABLE IF NOT EXISTS `mg_revslideshow_stores` (
  `slideshow_id` int(11) NOT NULL DEFAULT '0',
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`slideshow_id`,`store_id`),
  KEY `IDX_SLIDESHOW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `mg_revslideshow_stores`
--

INSERT INTO `mg_revslideshow_stores` (`slideshow_id`, `store_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MG_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_MG_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_MG_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_MG_SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_MG_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_MG_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_MG_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_MG_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_MG_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_MG_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_label`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_MG_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_MG_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALESRULE_LABEL_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_MG_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MG_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_salesrule_website`
--

CREATE TABLE IF NOT EXISTS `mg_salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_MG_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MG_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `mg_sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MG_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `mg_sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MG_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `mg_sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MG_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `mg_sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_MG_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `mg_sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_MG_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_MG_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_MG_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_MG_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_sales_flat_quote`
--

INSERT INTO `mg_sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`) VALUES
(1, 1, '2014-05-05 09:11:11', '2014-05-07 14:43:35', NULL, 1, 0, 1, 1, 1.0000, 0, 1.0000, 1.0000, 'EUR', 'EUR', 'EUR', 5.0000, 5.0000, NULL, 1, 3, 1, 'travaglini.fabio@yahoo.it', NULL, 'Fabio', NULL, 'Travaglini', NULL, NULL, NULL, 1, 0, '10.0.1.69', NULL, NULL, NULL, NULL, 'EUR', 1.0000, 1.0000, NULL, NULL, 5.0000, 5.0000, 5.0000, 5.0000, 1, 0, NULL, NULL, 0),
(2, 1, '2014-05-05 11:50:54', '2014-05-05 11:51:05', NULL, 1, 0, 0, 0, 0.0000, 0, 1.0000, 1.0000, 'EUR', 'EUR', 'EUR', 0.0000, 0.0000, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '10.0.1.69', NULL, NULL, NULL, NULL, 'EUR', 1.0000, 1.0000, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 1, 0, NULL, NULL, 0),
(3, 1, '2014-05-08 05:46:32', '2014-05-08 05:46:33', NULL, 1, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'EUR', 'EUR', 'EUR', 5.0000, 5.0000, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '10.0.1.20', NULL, NULL, NULL, NULL, 'EUR', 1.0000, 1.0000, NULL, NULL, 5.0000, 5.0000, 5.0000, 5.0000, 1, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address' AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `mg_sales_flat_quote_address`
--

INSERT INTO `mg_sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
(3, 2, '2014-05-05 11:50:54', '2014-05-05 11:51:05', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, '2014-05-05 11:50:54', '2014-05-05 11:51:05', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, '2014-05-07 14:43:35', '2014-05-07 14:43:35', 1, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, '2014-05-07 14:43:35', '2014-05-07 14:43:35', 1, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 1.0000, 5.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.0000, 5.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 5.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 3, '2014-05-08 05:46:32', '2014-05-08 05:46:33', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 3, '2014-05-08 05:46:32', '2014-05-08 05:46:33', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 1.0000, 5.0000, 5.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.0000, 5.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 5.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_sales_flat_quote_item`
--

INSERT INTO `mg_sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
(1, 1, '2014-05-05 09:11:35', '2014-05-05 09:11:35', 1, 1, NULL, 0, '1', 'Rosario tipo 1', NULL, NULL, NULL, 0, 0, 0, 1.0000, 1.0000, 5.0000, 5.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.0000, 5.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 5.0000, 5.0000, 5.0000, 5.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
(3, 3, '2014-05-08 05:46:32', '2014-05-08 05:46:32', 1, 1, NULL, 0, '1', 'Rosario tipo 1', NULL, NULL, NULL, 0, 0, 0, 1.0000, 1.0000, 5.0000, 5.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 5.0000, 5.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 5.0000, 5.0000, 5.0000, 5.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option' AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `mg_sales_flat_quote_item_option`
--

INSERT INTO `mg_sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
(1, 1, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:96:"aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpby10aXBvLTEuaHRtbA,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"fpUh4UXQtZqyZYVs";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
(3, 3, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:84:"aHR0cDovLzEwLjAuMS4yMjUvZ2hpcmVsbGlfMDIvaW5kZXgucGhwL2NvbGxlemlvbmkvcm9zYXJpLmh0bWw,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"cYmwmLeaFbbqZcRa";s:3:"qty";i:1;}');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_MG_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MG_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `mg_sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `mg_sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MG_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mg_sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_INVOICED_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MG_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MG_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MG_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mg Sales Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_status`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dump dei dati per la tabella `mg_sales_order_status`
--

INSERT INTO `mg_sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_MG_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dump dei dati per la tabella `mg_sales_order_status_state`
--

INSERT INTO `mg_sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_MG_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `mg_sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_MG_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_MG_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_MG_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `mg_sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_MG_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_MG_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_MG_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_MG_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `mg_sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_MG_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_MG_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `mg_sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MG_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_MG_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `mg_sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MG_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mg_sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MG_SALES_REFUNDED_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MG_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `mg_sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `01510D7BAD92162CADEDC6961AC1B60A` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_MG_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mg_sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `2F05DEC97D704DCC8AAEA9140E6202CF` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_MG_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `mg_sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_MG_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_MG_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `mg_shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `24C5BFAC7AC50711F0FDC69DF46D7286` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sitemap`
--

CREATE TABLE IF NOT EXISTS `mg_sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_MG_SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_sl_less_file`
--

CREATE TABLE IF NOT EXISTS `mg_sl_less_file` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `path` text NOT NULL,
  `cache` text,
  `use_global_variables` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `force_global_variables` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_variables` text,
  `force_rebuild` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_sl_less_file`
--

INSERT INTO `mg_sl_less_file` (`file_id`, `store_id`, `path`, `cache`, `use_global_variables`, `force_global_variables`, `custom_variables`, `force_rebuild`) VALUES
(1, 1, 'skin/frontend/fiver/fivershop/css/presets/_custom.less', 'a:3:{s:4:"root";s:75:"/var/www/ghirelli_02/skin/frontend/fiver/fivershop/css/presets/_custom.less";s:5:"files";a:1:{s:75:"/var/www/ghirelli_02/skin/frontend/fiver/fivershop/css/presets/_custom.less";i:1402953279;}s:7:"updated";i:1404227411;}', 1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tag`
--

CREATE TABLE IF NOT EXISTS `mg_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_MG_TAG_FIRST_CUSTOMER_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_MG_TAG_FIRST_STORE_ID_MG_CORE_STORE_STORE_ID` (`first_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tag_properties`
--

CREATE TABLE IF NOT EXISTS `mg_tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_MG_TAG_PROPERTIES_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tag_relation`
--

CREATE TABLE IF NOT EXISTS `mg_tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_MG_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_MG_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_MG_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_TAG_RELATION_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tag_summary`
--

CREATE TABLE IF NOT EXISTS `mg_tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_MG_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_MG_TAG_SUMMARY_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_calculation`
--

CREATE TABLE IF NOT EXISTS `mg_tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_MG_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_MG_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_MG_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_MG_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `D41E1E1C7864EE3C619CFC0240A91E8D` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_tax_calculation`
--

INSERT INTO `mg_tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `mg_tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_MG_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_MG_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `CCA86D7F60DE4DB9AA7FE619BA73E321` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate' AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `mg_tax_calculation_rate`
--

INSERT INTO `mg_tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', 8.2500, NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', 8.3750, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `mg_tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_MG_TAX_CALC_RATE_TTL_TAX_CALC_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_MG_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_MG_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `mg_tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_MG_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_MG_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_tax_calculation_rule`
--

INSERT INTO `mg_tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_class`
--

CREATE TABLE IF NOT EXISTS `mg_tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Class' AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `mg_tax_class`
--

INSERT INTO `mg_tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `mg_tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `8B6479C64CB72174486393DFC6709D0D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_MG_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mg_tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `BC3FBF6C5EAB506C2B2655E6F079B2F2` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_MG_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mg Tax Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_weee_discount`
--

CREATE TABLE IF NOT EXISTS `mg_weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_MG_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_weee_tax`
--

CREATE TABLE IF NOT EXISTS `mg_weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MG_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MG_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MG_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_MG_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_widget`
--

CREATE TABLE IF NOT EXISTS `mg_widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_MG_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_widget_instance`
--

CREATE TABLE IF NOT EXISTS `mg_widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `mg_widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_MG_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `mg_widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_MG_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_MG_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_MG_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_wishlist`
--

CREATE TABLE IF NOT EXISTS `mg_wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_MG_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MG_WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table' AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `mg_wishlist`
--

INSERT INTO `mg_wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
(1, 1, 0, 'af23c26803bc34d1be52bb9579a6271c', '2014-05-06 05:34:11');

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_wishlist_item`
--

CREATE TABLE IF NOT EXISTS `mg_wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_MG_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_MG_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MG_WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `mg_wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_52740CF0FD0849C46ABC912037133550` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_xmlconnect_application`
--

CREATE TABLE IF NOT EXISTS `mg_xmlconnect_application` (
  `application_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Application Id',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  `type` varchar(32) NOT NULL COMMENT 'Device Type',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `active_from` date DEFAULT NULL COMMENT 'Active From',
  `active_to` date DEFAULT NULL COMMENT 'Active To',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `browsing_mode` smallint(5) unsigned DEFAULT '0' COMMENT 'Browsing Mode',
  PRIMARY KEY (`application_id`),
  UNIQUE KEY `UNQ_MG_MG_XMLCONNECT_APPLICATION_CODE` (`code`),
  KEY `FK_814443420C7DC25E68C1E7728E5F3D8A` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Application' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_xmlconnect_config_data`
--

CREATE TABLE IF NOT EXISTS `mg_xmlconnect_config_data` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `category` varchar(60) NOT NULL DEFAULT 'default' COMMENT 'Category',
  `path` varchar(250) NOT NULL COMMENT 'Path',
  `value` text NOT NULL COMMENT 'Value',
  UNIQUE KEY `UNQ_MG_MG_XMLCONNECT_CONFIG_DATA_APPLICATION_ID_CATEGORY_PATH` (`application_id`,`category`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Configuration Data';

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_xmlconnect_history`
--

CREATE TABLE IF NOT EXISTS `mg_xmlconnect_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `params` blob COMMENT 'Params',
  `title` varchar(200) NOT NULL COMMENT 'Title',
  `activation_key` varchar(255) NOT NULL COMMENT 'Activation Key',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  PRIMARY KEY (`history_id`),
  KEY `FK_B4B2394A09DCDF2F0FFEAE835E028069` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_xmlconnect_images`
--

CREATE TABLE IF NOT EXISTS `mg_xmlconnect_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Image Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `image_file` varchar(255) NOT NULL COMMENT 'Image File',
  `image_type` varchar(255) NOT NULL COMMENT 'Image Type',
  `order` int(10) unsigned NOT NULL COMMENT 'Order',
  PRIMARY KEY (`image_id`),
  KEY `FK_5985897E61F8E5F1E5BBD37C9EA6D46F` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Images' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_xmlconnect_notification_template`
--

CREATE TABLE IF NOT EXISTS `mg_xmlconnect_notification_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `name` varchar(255) NOT NULL COMMENT 'Template Name',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) NOT NULL COMMENT 'Message Title',
  `content` text NOT NULL COMMENT 'Message Content',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  PRIMARY KEY (`template_id`),
  KEY `FK_2F14BFC88FBCF27F619842C0918A7432` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `mg_xmlconnect_queue`
--

CREATE TABLE IF NOT EXISTS `mg_xmlconnect_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `exec_time` timestamp NULL DEFAULT NULL COMMENT 'Scheduled Execution Time',
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) DEFAULT '' COMMENT 'Message Title',
  `content` text COMMENT 'Message Content',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `type` varchar(12) NOT NULL COMMENT 'Type of Notification',
  PRIMARY KEY (`queue_id`),
  KEY `FK_DA50CA04D69D478FA928FDC8381C3244` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Queue' AUTO_INCREMENT=1 ;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `mg_admin_rule`
--
ALTER TABLE `mg_admin_rule`
  ADD CONSTRAINT `FK_MG_ADMIN_RULE_ROLE_ID_MG_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `mg_admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_api2_acl_rule`
--
ALTER TABLE `mg_api2_acl_rule`
  ADD CONSTRAINT `FK_MG_API2_ACL_RULE_ROLE_ID_MG_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `mg_api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_api2_acl_user`
--
ALTER TABLE `mg_api2_acl_user`
  ADD CONSTRAINT `FK_MG_API2_ACL_USER_ADMIN_ID_MG_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `mg_admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_API2_ACL_USER_ROLE_ID_MG_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `mg_api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_api_rule`
--
ALTER TABLE `mg_api_rule`
  ADD CONSTRAINT `FK_MG_API_RULE_ROLE_ID_MG_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `mg_api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_api_session`
--
ALTER TABLE `mg_api_session`
  ADD CONSTRAINT `FK_MG_API_SESSION_USER_ID_MG_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `mg_api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_cataloginventory_stock_item`
--
ALTER TABLE `mg_cataloginventory_stock_item`
  ADD CONSTRAINT `FK_MG_CATINV_STOCK_ITEM_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATINV_STOCK_ITEM_STOCK_ID_MG_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `mg_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_cataloginventory_stock_status`
--
ALTER TABLE `mg_cataloginventory_stock_status`
  ADD CONSTRAINT `FK_MG_CATINV_STOCK_STS_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATINV_STOCK_STS_STOCK_ID_MG_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `mg_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATINV_STOCK_STS_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogrule_customer_group`
--
ALTER TABLE `mg_catalogrule_customer_group`
  ADD CONSTRAINT `FK_DB19917F3E55031806A021CC446CFE57` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_MG_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogrule_group_website`
--
ALTER TABLE `mg_catalogrule_group_website`
  ADD CONSTRAINT `FK_MG_CATALOGRULE_GROUP_WEBSITE_RULE_ID_MG_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATRULE_GROUP_WS_CSTR_GROUP_ID_MG_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATRULE_GROUP_WS_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogrule_product`
--
ALTER TABLE `mg_catalogrule_product`
  ADD CONSTRAINT `FK_MG_CATALOGRULE_PRODUCT_RULE_ID_MG_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATALOGRULE_PRODUCT_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATRULE_PRD_CSTR_GROUP_ID_MG_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATRULE_PRD_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogrule_product_price`
--
ALTER TABLE `mg_catalogrule_product_price`
  ADD CONSTRAINT `FK_DE5A3C2AAD6957284E4FCA2DAA7A75AD` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATRULE_PRD_PRICE_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATRULE_PRD_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogrule_website`
--
ALTER TABLE `mg_catalogrule_website`
  ADD CONSTRAINT `FK_MG_CATALOGRULE_WEBSITE_RULE_ID_MG_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATALOGRULE_WEBSITE_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogsearch_query`
--
ALTER TABLE `mg_catalogsearch_query`
  ADD CONSTRAINT `FK_MG_CATALOGSEARCH_QUERY_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalogsearch_result`
--
ALTER TABLE `mg_catalogsearch_result`
  ADD CONSTRAINT `FK_MG_CATSRCH_RESULT_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CATSRCH_RESULT_QR_ID_MG_CATSRCH_QR_QR_ID` FOREIGN KEY (`query_id`) REFERENCES `mg_catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_entity_datetime`
--
ALTER TABLE `mg_catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_DTIME_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_DTIME_ENTT_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_DTIME_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_entity_decimal`
--
ALTER TABLE `mg_catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_DEC_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_DEC_ENTT_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_DEC_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_entity_int`
--
ALTER TABLE `mg_catalog_category_entity_int`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_INT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_INT_ENTT_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_INT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_entity_text`
--
ALTER TABLE `mg_catalog_category_entity_text`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_TEXT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_TEXT_ENTT_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_TEXT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_entity_varchar`
--
ALTER TABLE `mg_catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_VCHR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_VCHR_ENTT_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_ENTT_VCHR_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_flat_store_1`
--
ALTER TABLE `mg_catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_FLAT_STORE_1_ENTT_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_FLAT_STORE_1_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_product`
--
ALTER TABLE `mg_catalog_category_product`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_PRD_CTGR_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_PRD_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_category_product_index`
--
ALTER TABLE `mg_catalog_category_product_index`
  ADD CONSTRAINT `FK_MG_CAT_CTGR_PRD_IDX_CTGR_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_PRD_IDX_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CTGR_PRD_IDX_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_compare_item`
--
ALTER TABLE `mg_catalog_compare_item`
  ADD CONSTRAINT `FK_MG_CATALOG_COMPARE_ITEM_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CMP_ITEM_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_CMP_ITEM_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_eav_attribute`
--
ALTER TABLE `mg_catalog_eav_attribute`
  ADD CONSTRAINT `FK_MG_CAT_EAV_ATTR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_bundle_option`
--
ALTER TABLE `mg_catalog_product_bundle_option`
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_OPT_PARENT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_bundle_option_value`
--
ALTER TABLE `mg_catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_OPT_VAL_OPT_ID_MG_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_bundle_price_index`
--
ALTER TABLE `mg_catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_F3E860D0DACEEBBFBF279E8F78E46AAD` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_PRICE_IDX_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_bundle_selection`
--
ALTER TABLE `mg_catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_SELECTION_OPT_ID_MG_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_SELECTION_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_bundle_selection_price`
--
ALTER TABLE `mg_catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_F2D0521A203A5C27BFDE0C64B836525D` FOREIGN KEY (`selection_id`) REFERENCES `mg_catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_enabled_index`
--
ALTER TABLE `mg_catalog_product_enabled_index`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENABLED_IDX_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENABLED_IDX_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity`
--
ALTER TABLE `mg_catalog_product_entity`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_ATTR_SET_ID_MG_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `mg_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_datetime`
--
ALTER TABLE `mg_catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_DTIME_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_DTIME_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_DTIME_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_decimal`
--
ALTER TABLE `mg_catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_DEC_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_DEC_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_DEC_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_gallery`
--
ALTER TABLE `mg_catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_GLR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_GLR_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_GLR_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_group_price`
--
ALTER TABLE `mg_catalog_product_entity_group_price`
  ADD CONSTRAINT `FK_AD48413C102AC1E809BAAE0CEA27AA8E` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_int`
--
ALTER TABLE `mg_catalog_product_entity_int`
  ADD CONSTRAINT `FK_MG_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_INT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_INT_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_media_gallery`
--
ALTER TABLE `mg_catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_media_gallery_value`
--
ALTER TABLE `mg_catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_9E74861600CFFB7DC3B1B92170DF6782` FOREIGN KEY (`value_id`) REFERENCES `mg_catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_text`
--
ALTER TABLE `mg_catalog_product_entity_text`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_TEXT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_TEXT_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_TEXT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_tier_price`
--
ALTER TABLE `mg_catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_0EAD7FC34CF8EEB6DA933AC217A9F138` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_TIER_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_entity_varchar`
--
ALTER TABLE `mg_catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_VCHR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_VCHR_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_ENTT_VCHR_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_flat_1`
--
ALTER TABLE `mg_catalog_product_flat_1`
  ADD CONSTRAINT `FK_MG_MG_CAT_PRD_FLAT_1_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_index_eav`
--
ALTER TABLE `mg_catalog_product_index_eav`
  ADD CONSTRAINT `FK_MG_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_EAV_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_EAV_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_index_eav_decimal`
--
ALTER TABLE `mg_catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_EAV_DEC_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_EAV_DEC_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_EAV_DEC_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_index_group_price`
--
ALTER TABLE `mg_catalog_product_index_group_price`
  ADD CONSTRAINT `FK_A9267616724242949BFBAFFB13855168` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_GROUP_PRICE_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_GROUP_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_index_price`
--
ALTER TABLE `mg_catalog_product_index_price`
  ADD CONSTRAINT `FK_74DDC26ED5FB574D3E963E6FC395C1EE` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_PRICE_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_index_tier_price`
--
ALTER TABLE `mg_catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_3EF0EFE7EEF4423557A86C7D6DFBCB2D` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_TIER_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_index_website`
--
ALTER TABLE `mg_catalog_product_index_website`
  ADD CONSTRAINT `FK_MG_CAT_PRD_IDX_WS_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_link`
--
ALTER TABLE `mg_catalog_product_link`
  ADD CONSTRAINT `FK_MG_CAT_PRD_LNK_LNKED_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_LNK_LNK_TYPE_ID_MG_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `mg_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_LNK_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_link_attribute`
--
ALTER TABLE `mg_catalog_product_link_attribute`
  ADD CONSTRAINT `FK_4672F1428F23AAF233DCC6C147443700` FOREIGN KEY (`link_type_id`) REFERENCES `mg_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_link_attribute_decimal`
--
ALTER TABLE `mg_catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_38E871CE377CDC9B63D9A1CAE959099D` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mg_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_LNK_ATTR_DEC_LNK_ID_MG_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mg_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_link_attribute_int`
--
ALTER TABLE `mg_catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_77EBD7C6B6B4BF3208DD69658F5BAC4A` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mg_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_LNK_ATTR_INT_LNK_ID_MG_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mg_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_link_attribute_varchar`
--
ALTER TABLE `mg_catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_24039B2859452C276743FB232A0B805B` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mg_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_MG_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mg_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_option`
--
ALTER TABLE `mg_catalog_product_option`
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_option_price`
--
ALTER TABLE `mg_catalog_product_option_price`
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_PRICE_OPT_ID_MG_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_PRICE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_option_title`
--
ALTER TABLE `mg_catalog_product_option_title`
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_TTL_OPT_ID_MG_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_TTL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_option_type_price`
--
ALTER TABLE `mg_catalog_product_option_type_price`
  ADD CONSTRAINT `FK_144DB6851C12D4DF43807C8D904278D5` FOREIGN KEY (`option_type_id`) REFERENCES `mg_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_option_type_title`
--
ALTER TABLE `mg_catalog_product_option_type_title`
  ADD CONSTRAINT `FK_E094412A592F73545A15400FBE8AC662` FOREIGN KEY (`option_type_id`) REFERENCES `mg_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_TYPE_TTL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_option_type_value`
--
ALTER TABLE `mg_catalog_product_option_type_value`
  ADD CONSTRAINT `FK_MG_CAT_PRD_OPT_TYPE_VAL_OPT_ID_MG_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_relation`
--
ALTER TABLE `mg_catalog_product_relation`
  ADD CONSTRAINT `FK_MG_CAT_PRD_RELATION_CHILD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_RELATION_PARENT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_super_attribute`
--
ALTER TABLE `mg_catalog_product_super_attribute`
  ADD CONSTRAINT `FK_MG_CAT_PRD_SPR_ATTR_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_catalog_product_super_attribute_label`
--
ALTER TABLE `mg_catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_FDC7F5C8A5A6011A7C891585668338C6` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `mg_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_SPR_ATTR_LBL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_super_attribute_pricing`
--
ALTER TABLE `mg_catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_F7212F8F0D3A049C1D8ED8624A0EC5E3` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `mg_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_SPR_ATTR_PRICING_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_super_link`
--
ALTER TABLE `mg_catalog_product_super_link`
  ADD CONSTRAINT `FK_MG_CAT_PRD_SPR_LNK_PARENT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_SPR_LNK_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_catalog_product_website`
--
ALTER TABLE `mg_catalog_product_website`
  ADD CONSTRAINT `FK_MG_CAT_PRD_WS_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CAT_PRD_WS_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_checkout_agreement_store`
--
ALTER TABLE `mg_checkout_agreement_store`
  ADD CONSTRAINT `FK_MG_CHECKOUT_AGREEMENT_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CHKT_AGRT_STORE_AGRT_ID_MG_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `mg_checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_cms_block_store`
--
ALTER TABLE `mg_cms_block_store`
  ADD CONSTRAINT `FK_MG_CMS_BLOCK_STORE_BLOCK_ID_MG_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `mg_cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CMS_BLOCK_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_cms_page_store`
--
ALTER TABLE `mg_cms_page_store`
  ADD CONSTRAINT `FK_MG_CMS_PAGE_STORE_PAGE_ID_MG_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `mg_cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CMS_PAGE_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_core_layout_link`
--
ALTER TABLE `mg_core_layout_link`
  ADD CONSTRAINT `FK_1607CB0E4832106A5C1165C4C588FC4E` FOREIGN KEY (`layout_update_id`) REFERENCES `mg_core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CORE_LAYOUT_LINK_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_core_store`
--
ALTER TABLE `mg_core_store`
  ADD CONSTRAINT `FK_MG_CORE_STORE_GROUP_ID_MG_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `mg_core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CORE_STORE_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_core_store_group`
--
ALTER TABLE `mg_core_store_group`
  ADD CONSTRAINT `FK_MG_CORE_STORE_GROUP_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_core_translate`
--
ALTER TABLE `mg_core_translate`
  ADD CONSTRAINT `FK_MG_CORE_TRANSLATE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_core_url_rewrite`
--
ALTER TABLE `mg_core_url_rewrite`
  ADD CONSTRAINT `FK_MG_CORE_URL_REWRITE_CTGR_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mg_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CORE_URL_REWRITE_PRD_ID_MG_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CORE_URL_REWRITE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_core_variable_value`
--
ALTER TABLE `mg_core_variable_value`
  ADD CONSTRAINT `FK_MG_CORE_VARIABLE_VALUE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CORE_VARIABLE_VAL_VARIABLE_ID_MG_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `mg_core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_coupon_aggregated`
--
ALTER TABLE `mg_coupon_aggregated`
  ADD CONSTRAINT `FK_MG_COUPON_AGGREGATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_coupon_aggregated_order`
--
ALTER TABLE `mg_coupon_aggregated_order`
  ADD CONSTRAINT `FK_MG_COUPON_AGGREGATED_ORDER_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_coupon_aggregated_updated`
--
ALTER TABLE `mg_coupon_aggregated_updated`
  ADD CONSTRAINT `FK_MG_COUPON_AGGREGATED_UPDATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_address_entity`
--
ALTER TABLE `mg_customer_address_entity`
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_PARENT_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_address_entity_datetime`
--
ALTER TABLE `mg_customer_address_entity_datetime`
  ADD CONSTRAINT `FK_0FBAAF0F7BE8B5AF7C82844656F517A2` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_DTIME_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_DTIME_ENTT_ID_MG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_address_entity_decimal`
--
ALTER TABLE `mg_customer_address_entity_decimal`
  ADD CONSTRAINT `FK_FD5C63EED4CBB71CEF3D1473C636CB33` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_DEC_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_DEC_ENTT_ID_MG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_address_entity_int`
--
ALTER TABLE `mg_customer_address_entity_int`
  ADD CONSTRAINT `FK_D11FEDA0C1F560AC5E30BF7453F77FAB` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_INT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_INT_ENTT_ID_MG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_address_entity_text`
--
ALTER TABLE `mg_customer_address_entity_text`
  ADD CONSTRAINT `FK_3761216D8EF798CF4AE896616E646C71` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_TEXT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_TEXT_ENTT_ID_MG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_address_entity_varchar`
--
ALTER TABLE `mg_customer_address_entity_varchar`
  ADD CONSTRAINT `FK_3FC96E6F8357F23F616A6C67FDC0AF5D` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_VCHR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ADDR_ENTT_VCHR_ENTT_ID_MG_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_eav_attribute`
--
ALTER TABLE `mg_customer_eav_attribute`
  ADD CONSTRAINT `FK_MG_CSTR_EAV_ATTR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_eav_attribute_website`
--
ALTER TABLE `mg_customer_eav_attribute_website`
  ADD CONSTRAINT `FK_MG_CSTR_EAV_ATTR_WS_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_EAV_ATTR_WS_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_entity`
--
ALTER TABLE `mg_customer_entity`
  ADD CONSTRAINT `FK_MG_CUSTOMER_ENTITY_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CUSTOMER_ENTITY_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_entity_datetime`
--
ALTER TABLE `mg_customer_entity_datetime`
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_DTIME_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_DTIME_ENTT_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_DTIME_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_entity_decimal`
--
ALTER TABLE `mg_customer_entity_decimal`
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_DEC_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_DEC_ENTT_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_DEC_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_entity_int`
--
ALTER TABLE `mg_customer_entity_int`
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_INT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_INT_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CUSTOMER_ENTITY_INT_ENTITY_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_entity_text`
--
ALTER TABLE `mg_customer_entity_text`
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_TEXT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_TEXT_ENTT_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_TEXT_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_entity_varchar`
--
ALTER TABLE `mg_customer_entity_varchar`
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_VCHR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_VCHR_ENTT_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_CSTR_ENTT_VCHR_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_customer_form_attribute`
--
ALTER TABLE `mg_customer_form_attribute`
  ADD CONSTRAINT `FK_MG_CSTR_FORM_ATTR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_dataflow_batch`
--
ALTER TABLE `mg_dataflow_batch`
  ADD CONSTRAINT `FK_MG_DATAFLOW_BATCH_PROFILE_ID_MG_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `mg_dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_DATAFLOW_BATCH_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_dataflow_batch_export`
--
ALTER TABLE `mg_dataflow_batch_export`
  ADD CONSTRAINT `FK_MG_DATAFLOW_BATCH_EXPORT_BATCH_ID_MG_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `mg_dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_dataflow_batch_import`
--
ALTER TABLE `mg_dataflow_batch_import`
  ADD CONSTRAINT `FK_MG_DATAFLOW_BATCH_IMPORT_BATCH_ID_MG_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `mg_dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_dataflow_import_data`
--
ALTER TABLE `mg_dataflow_import_data`
  ADD CONSTRAINT `FK_MG_DATAFLOW_IMPORT_DATA_SESS_ID_MG_DATAFLOW_SESS_SESS_ID` FOREIGN KEY (`session_id`) REFERENCES `mg_dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_dataflow_profile_history`
--
ALTER TABLE `mg_dataflow_profile_history`
  ADD CONSTRAINT `FK_5288BB3CF36357474365D42DD74B6C48` FOREIGN KEY (`profile_id`) REFERENCES `mg_dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_design_change`
--
ALTER TABLE `mg_design_change`
  ADD CONSTRAINT `FK_MG_DESIGN_CHANGE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_directory_country_region_name`
--
ALTER TABLE `mg_directory_country_region_name`
  ADD CONSTRAINT `FK_6A6A5D963124973EC754F67FE713657B` FOREIGN KEY (`region_id`) REFERENCES `mg_directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_link`
--
ALTER TABLE `mg_downloadable_link`
  ADD CONSTRAINT `FK_MG_DL_LNK_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_link_price`
--
ALTER TABLE `mg_downloadable_link_price`
  ADD CONSTRAINT `FK_MG_DL_LNK_PRICE_LNK_ID_MG_DL_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mg_downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_DL_LNK_PRICE_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_link_purchased`
--
ALTER TABLE `mg_downloadable_link_purchased`
  ADD CONSTRAINT `FK_MG_DL_LNK_PURCHASED_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_DL_LNK_PURCHASED_ORDER_ID_MG_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_link_purchased_item`
--
ALTER TABLE `mg_downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_9CE53D86AF3E987F074E6E975F48B58C` FOREIGN KEY (`purchased_id`) REFERENCES `mg_downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B235119BEAE7DC9F9B423F9A11BE0A42` FOREIGN KEY (`order_item_id`) REFERENCES `mg_sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_link_title`
--
ALTER TABLE `mg_downloadable_link_title`
  ADD CONSTRAINT `FK_MG_DL_LNK_TTL_LNK_ID_MG_DL_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mg_downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_DOWNLOADABLE_LINK_TITLE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_sample`
--
ALTER TABLE `mg_downloadable_sample`
  ADD CONSTRAINT `FK_MG_DL_SAMPLE_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_downloadable_sample_title`
--
ALTER TABLE `mg_downloadable_sample_title`
  ADD CONSTRAINT `FK_MG_DL_SAMPLE_TTL_SAMPLE_ID_MG_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `mg_downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_attribute`
--
ALTER TABLE `mg_eav_attribute`
  ADD CONSTRAINT `FK_MG_EAV_ATTR_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_attribute_group`
--
ALTER TABLE `mg_eav_attribute_group`
  ADD CONSTRAINT `FK_MG_EAV_ATTR_GROUP_ATTR_SET_ID_MG_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `mg_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_attribute_label`
--
ALTER TABLE `mg_eav_attribute_label`
  ADD CONSTRAINT `FK_MG_EAV_ATTRIBUTE_LABEL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ATTR_LBL_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_attribute_option`
--
ALTER TABLE `mg_eav_attribute_option`
  ADD CONSTRAINT `FK_MG_EAV_ATTR_OPT_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_attribute_option_value`
--
ALTER TABLE `mg_eav_attribute_option_value`
  ADD CONSTRAINT `FK_MG_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ATTR_OPT_VAL_OPT_ID_MG_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_attribute_set`
--
ALTER TABLE `mg_eav_attribute_set`
  ADD CONSTRAINT `FK_MG_EAV_ATTR_SET_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity`
--
ALTER TABLE `mg_eav_entity`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_attribute`
--
ALTER TABLE `mg_eav_entity_attribute`
  ADD CONSTRAINT `FK_9C0321A28848B176F99C362D0FA5BE8D` FOREIGN KEY (`attribute_group_id`) REFERENCES `mg_eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_ATTR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_datetime`
--
ALTER TABLE `mg_eav_entity_datetime`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_DATETIME_ENTITY_ID_MG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_DATETIME_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_DTIME_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_decimal`
--
ALTER TABLE `mg_eav_entity_decimal`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_DECIMAL_ENTITY_ID_MG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_DECIMAL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_DEC_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_int`
--
ALTER TABLE `mg_eav_entity_int`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_INT_ENTITY_ID_MG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_INT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_INT_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_store`
--
ALTER TABLE `mg_eav_entity_store`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_STORE_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_text`
--
ALTER TABLE `mg_eav_entity_text`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_TEXT_ENTITY_ID_MG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_TEXT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_TEXT_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_entity_varchar`
--
ALTER TABLE `mg_eav_entity_varchar`
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_VARCHAR_ENTITY_ID_MG_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTITY_VARCHAR_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_ENTT_VCHR_ENTT_TYPE_ID_MG_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_form_element`
--
ALTER TABLE `mg_eav_form_element`
  ADD CONSTRAINT `FK_MG_EAV_FORM_ELEMENT_TYPE_ID_MG_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mg_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_FORM_ELM_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_FORM_ELM_FSET_ID_MG_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `mg_eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_form_fieldset`
--
ALTER TABLE `mg_eav_form_fieldset`
  ADD CONSTRAINT `FK_MG_EAV_FORM_FIELDSET_TYPE_ID_MG_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mg_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_form_fieldset_label`
--
ALTER TABLE `mg_eav_form_fieldset_label`
  ADD CONSTRAINT `FK_MG_EAV_FORM_FIELDSET_LABEL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_FORM_FSET_LBL_FSET_ID_MG_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `mg_eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_form_type`
--
ALTER TABLE `mg_eav_form_type`
  ADD CONSTRAINT `FK_MG_EAV_FORM_TYPE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_eav_form_type_entity`
--
ALTER TABLE `mg_eav_form_type_entity`
  ADD CONSTRAINT `FK_665D3691CA1CF6254187EC28E23D868B` FOREIGN KEY (`entity_type_id`) REFERENCES `mg_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_EAV_FORM_TYPE_ENTITY_TYPE_ID_MG_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mg_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_faq_category`
--
ALTER TABLE `mg_faq_category`
  ADD CONSTRAINT `FK_FAQ_CATEGORY_PARENT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mg_faq_category` (`category_id`) ON DELETE SET NULL;

--
-- Limiti per la tabella `mg_faq_category_item`
--
ALTER TABLE `mg_faq_category_item`
  ADD CONSTRAINT `FK_FAQ_CATEGORY_ITEM_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `mg_faq_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_FAQ_CATEGORY_ITEM_ITEM` FOREIGN KEY (`faq_id`) REFERENCES `mg_faq` (`faq_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_faq_category_store`
--
ALTER TABLE `mg_faq_category_store`
  ADD CONSTRAINT `FK_FAQ_CATEGORY_STORE_CATEGORY` FOREIGN KEY (`category_id`) REFERENCES `mg_faq_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_FAQ_CATEGORY_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_faq_store`
--
ALTER TABLE `mg_faq_store`
  ADD CONSTRAINT `FK_FAQ_FAQ_STORE_FAQ` FOREIGN KEY (`faq_id`) REFERENCES `mg_faq` (`faq_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_FAQ_FAQ_STORE_STORE` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_fiver_facebook_customer`
--
ALTER TABLE `mg_fiver_facebook_customer`
  ADD CONSTRAINT `mg_fiver_facebook_customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `mg_index_process_event`
--
ALTER TABLE `mg_index_process_event`
  ADD CONSTRAINT `FK_MG_INDEX_PROCESS_EVENT_EVENT_ID_MG_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `mg_index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_INDEX_PROCESS_EVENT_PROCESS_ID_MG_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `mg_index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_newsletter_problem`
--
ALTER TABLE `mg_newsletter_problem`
  ADD CONSTRAINT `FK_6BDCF392A2CCC81CE37A06E592E044DE` FOREIGN KEY (`subscriber_id`) REFERENCES `mg_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_NEWSLETTER_PROBLEM_QUEUE_ID_MG_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mg_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_newsletter_queue`
--
ALTER TABLE `mg_newsletter_queue`
  ADD CONSTRAINT `FK_MG_NLTTR_QUEUE_TEMPLATE_ID_MG_NLTTR_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `mg_newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_newsletter_queue_link`
--
ALTER TABLE `mg_newsletter_queue_link`
  ADD CONSTRAINT `FK_D8FD38FB1EB36B24D71B41B531373E43` FOREIGN KEY (`subscriber_id`) REFERENCES `mg_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_NLTTR_QUEUE_LNK_QUEUE_ID_MG_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mg_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_newsletter_queue_store_link`
--
ALTER TABLE `mg_newsletter_queue_store_link`
  ADD CONSTRAINT `FK_MG_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_MG_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mg_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_NLTTR_QUEUE_STORE_LNK_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_newsletter_subscriber`
--
ALTER TABLE `mg_newsletter_subscriber`
  ADD CONSTRAINT `FK_MG_NEWSLETTER_SUBSCRIBER_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_oauth_token`
--
ALTER TABLE `mg_oauth_token`
  ADD CONSTRAINT `FK_MG_OAUTH_TOKEN_ADMIN_ID_MG_MG_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `mg_admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_OAUTH_TOKEN_CONSUMER_ID_MG_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `mg_oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_OAUTH_TOKEN_CUSTOMER_ID_MG_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_paypal_cert`
--
ALTER TABLE `mg_paypal_cert`
  ADD CONSTRAINT `FK_MG_PAYPAL_CERT_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_paypal_settlement_report_row`
--
ALTER TABLE `mg_paypal_settlement_report_row`
  ADD CONSTRAINT `FK_B0234CCA0A59BECD0BF179CC6B28399C` FOREIGN KEY (`report_id`) REFERENCES `mg_paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_persistent_session`
--
ALTER TABLE `mg_persistent_session`
  ADD CONSTRAINT `FK_MG_PERSISTENT_SESSION_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_PERSISTENT_SESS_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_poll`
--
ALTER TABLE `mg_poll`
  ADD CONSTRAINT `FK_MG_POLL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_poll_answer`
--
ALTER TABLE `mg_poll_answer`
  ADD CONSTRAINT `FK_MG_POLL_ANSWER_POLL_ID_MG_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `mg_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_poll_store`
--
ALTER TABLE `mg_poll_store`
  ADD CONSTRAINT `FK_MG_POLL_STORE_POLL_ID_MG_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `mg_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_POLL_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_poll_vote`
--
ALTER TABLE `mg_poll_vote`
  ADD CONSTRAINT `FK_MG_POLL_VOTE_POLL_ANSWER_ID_MG_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `mg_poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_product_alert_price`
--
ALTER TABLE `mg_product_alert_price`
  ADD CONSTRAINT `FK_MG_PRD_ALERT_PRICE_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_PRD_ALERT_PRICE_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_PRODUCT_ALERT_PRICE_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_product_alert_stock`
--
ALTER TABLE `mg_product_alert_stock`
  ADD CONSTRAINT `FK_MG_PRD_ALERT_STOCK_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_PRD_ALERT_STOCK_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_PRODUCT_ALERT_STOCK_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_rating`
--
ALTER TABLE `mg_rating`
  ADD CONSTRAINT `FK_MG_RATING_ENTITY_ID_MG_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_rating_option`
--
ALTER TABLE `mg_rating_option`
  ADD CONSTRAINT `FK_MG_RATING_OPTION_RATING_ID_MG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_rating_option_vote`
--
ALTER TABLE `mg_rating_option_vote`
  ADD CONSTRAINT `FK_MG_RATING_OPTION_VOTE_OPTION_ID_MG_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `mg_rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_RATING_OPTION_VOTE_REVIEW_ID_MG_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mg_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_rating_option_vote_aggregated`
--
ALTER TABLE `mg_rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_MG_RATING_OPT_VOTE_AGGRED_RATING_ID_MG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_RATING_OPT_VOTE_AGGRED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_rating_store`
--
ALTER TABLE `mg_rating_store`
  ADD CONSTRAINT `FK_MG_RATING_STORE_RATING_ID_MG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_RATING_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_rating_title`
--
ALTER TABLE `mg_rating_title`
  ADD CONSTRAINT `FK_MG_RATING_TITLE_RATING_ID_MG_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mg_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_RATING_TITLE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_report_compared_product_index`
--
ALTER TABLE `mg_report_compared_product_index`
  ADD CONSTRAINT `FK_MG_REPORT_CMPD_PRD_IDX_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REPORT_CMPD_PRD_IDX_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REPORT_CMPD_PRD_IDX_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_report_event`
--
ALTER TABLE `mg_report_event`
  ADD CONSTRAINT `FK_7FB0045BED6FAB7156FAC80981D0BBBD` FOREIGN KEY (`event_type_id`) REFERENCES `mg_report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REPORT_EVENT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_report_viewed_product_aggregated_daily`
--
ALTER TABLE `mg_report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `FK_1EF3543D030461BF5D0B6005D17486A5` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_C0A3C4FDE6FF39EC1D4D4EAFCC79B9B9` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_report_viewed_product_aggregated_monthly`
--
ALTER TABLE `mg_report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `FK_A2E75A181734B2B0F2888AED6784A7B8` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F11D1EA64FDB54FD1B2A36F9C3E282F0` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_report_viewed_product_aggregated_yearly`
--
ALTER TABLE `mg_report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `FK_396A409172FCF1266E16A15CEF86D227` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_8BBFD267A2B27E5164883845EA2F130E` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_report_viewed_product_index`
--
ALTER TABLE `mg_report_viewed_product_index`
  ADD CONSTRAINT `FK_MG_REPORT_VIEWED_PRD_IDX_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REPORT_VIEWED_PRD_IDX_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REPORT_VIEWED_PRD_IDX_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_review`
--
ALTER TABLE `mg_review`
  ADD CONSTRAINT `FK_MG_REVIEW_ENTITY_ID_MG_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REVIEW_STATUS_ID_MG_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `mg_review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_review_detail`
--
ALTER TABLE `mg_review_detail`
  ADD CONSTRAINT `FK_MG_REVIEW_DETAIL_CUSTOMER_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REVIEW_DETAIL_REVIEW_ID_MG_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mg_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REVIEW_DETAIL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_review_entity_summary`
--
ALTER TABLE `mg_review_entity_summary`
  ADD CONSTRAINT `FK_MG_REVIEW_ENTITY_SUMMARY_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_review_store`
--
ALTER TABLE `mg_review_store`
  ADD CONSTRAINT `FK_MG_REVIEW_STORE_REVIEW_ID_MG_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mg_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_REVIEW_STORE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_salesrule_coupon`
--
ALTER TABLE `mg_salesrule_coupon`
  ADD CONSTRAINT `FK_MG_SALESRULE_COUPON_RULE_ID_MG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_salesrule_coupon_usage`
--
ALTER TABLE `mg_salesrule_coupon_usage`
  ADD CONSTRAINT `FK_AA86A62AD7748CE6E698463B3B55410B` FOREIGN KEY (`coupon_id`) REFERENCES `mg_salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALESRULE_COUPON_USAGE_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_salesrule_customer`
--
ALTER TABLE `mg_salesrule_customer`
  ADD CONSTRAINT `FK_MG_SALESRULE_CSTR_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALESRULE_CUSTOMER_RULE_ID_MG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_salesrule_customer_group`
--
ALTER TABLE `mg_salesrule_customer_group`
  ADD CONSTRAINT `FK_A1922381C1A4656E87C084376ADABA51` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALESRULE_CUSTOMER_GROUP_RULE_ID_MG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_salesrule_label`
--
ALTER TABLE `mg_salesrule_label`
  ADD CONSTRAINT `FK_MG_SALESRULE_LABEL_RULE_ID_MG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALESRULE_LABEL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_salesrule_product_attribute`
--
ALTER TABLE `mg_salesrule_product_attribute`
  ADD CONSTRAINT `FK_FB6F0E141326644713448A6488F1365C` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_SALESRULE_PRD_ATTR_ATTR_ID_MG_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_SALESRULE_PRD_ATTR_WS_ID_MG_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_MG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_salesrule_website`
--
ALTER TABLE `mg_salesrule_website`
  ADD CONSTRAINT `FK_MG_SALESRULE_WEBSITE_RULE_ID_MG_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mg_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALESRULE_WEBSITE_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_bestsellers_aggregated_daily`
--
ALTER TABLE `mg_sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_44AE06384CF50236725E0B88859802C6` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_8639794DCA69188A0C011824EC3F7190` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `mg_sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_2038EC237428B5977F4B30F5C9BBB0DF` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_9944B45581E671CFCDB46079647E36CF` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `mg_sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_87133022E26DB3056A20A60218F9F85D` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D9AEE21187B9770F184B046E80B8E698` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_billing_agreement`
--
ALTER TABLE `mg_sales_billing_agreement`
  ADD CONSTRAINT `FK_MG_SALES_BILLING_AGREEMENT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_BILLING_AGRT_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_billing_agreement_order`
--
ALTER TABLE `mg_sales_billing_agreement_order`
  ADD CONSTRAINT `FK_31670F14AFC78FB0A478CCF2660E5E02` FOREIGN KEY (`agreement_id`) REFERENCES `mg_sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_338889E55466AEFA52ACD8F9C26B050E` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_creditmemo`
--
ALTER TABLE `mg_sales_flat_creditmemo`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_CREDITMEMO_ORDER_ID_MG_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_CREDITMEMO_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_creditmemo_comment`
--
ALTER TABLE `mg_sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_52F34EBAA818FC05C65C6C270CD5FB7F` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_creditmemo_grid`
--
ALTER TABLE `mg_sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_0E714B16D5D6BFEF0A15E5C73DBA022F` FOREIGN KEY (`entity_id`) REFERENCES `mg_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_creditmemo_item`
--
ALTER TABLE `mg_sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_BFDB94E8F8CB2F7C937600724BA9BEE8` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_invoice`
--
ALTER TABLE `mg_sales_flat_invoice`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_INVOICE_ORDER_ID_MG_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_INVOICE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_invoice_comment`
--
ALTER TABLE `mg_sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_24D51E774A79F61137C14D4A416998C6` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_invoice_grid`
--
ALTER TABLE `mg_sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_4B12C38DDB06CF50E60522DF95C15D2F` FOREIGN KEY (`entity_id`) REFERENCES `mg_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_INVOICE_GRID_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_invoice_item`
--
ALTER TABLE `mg_sales_flat_invoice_item`
  ADD CONSTRAINT `FK_3CD912263FB8C41AE5BF24B6B03C01ED` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_order`
--
ALTER TABLE `mg_sales_flat_order`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_CUSTOMER_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_order_address`
--
ALTER TABLE `mg_sales_flat_order_address`
  ADD CONSTRAINT `FK_46BBB74C318187269F1E8248884A2824` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_order_grid`
--
ALTER TABLE `mg_sales_flat_order_grid`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_GRID_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_GRID_ENTT_ID_MG_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_GRID_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_order_item`
--
ALTER TABLE `mg_sales_flat_order_item`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_ITEM_ORDER_ID_MG_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_ORDER_ITEM_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_order_payment`
--
ALTER TABLE `mg_sales_flat_order_payment`
  ADD CONSTRAINT `FK_6A9A4EB2AB30FAB767172556DC97B00A` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_order_status_history`
--
ALTER TABLE `mg_sales_flat_order_status_history`
  ADD CONSTRAINT `FK_5BA9729A87A2E86CC1C33560DC3FC202` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote`
--
ALTER TABLE `mg_sales_flat_quote`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_QUOTE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote_address`
--
ALTER TABLE `mg_sales_flat_quote_address`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_QUOTE_ADDR_QUOTE_ID_MG_SALES_FLAT_QUOTE_ENTT_ID` FOREIGN KEY (`quote_id`) REFERENCES `mg_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote_address_item`
--
ALTER TABLE `mg_sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_4C1146A013B0DCEA37C0E62B31FC3239` FOREIGN KEY (`quote_item_id`) REFERENCES `mg_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6BCC931EBBF202977F2D359127EEF2C6` FOREIGN KEY (`parent_item_id`) REFERENCES `mg_sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_FB0643954A7EEB64340BD9AA3E8471B4` FOREIGN KEY (`quote_address_id`) REFERENCES `mg_sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote_item`
--
ALTER TABLE `mg_sales_flat_quote_item`
  ADD CONSTRAINT `FK_A9FB1A2DC36FE6685F59E13CEB9087D9` FOREIGN KEY (`parent_item_id`) REFERENCES `mg_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_QUOTE_ITEM_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_MG_SALES_FLAT_QUOTE_ENTT_ID` FOREIGN KEY (`quote_id`) REFERENCES `mg_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_QUOTE_ITEM_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote_item_option`
--
ALTER TABLE `mg_sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_ECBBA2B10ACCAFA3FA3D5C4BD768DCD8` FOREIGN KEY (`item_id`) REFERENCES `mg_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote_payment`
--
ALTER TABLE `mg_sales_flat_quote_payment`
  ADD CONSTRAINT `FK_E3EE0976D8F01C00DA44F7F41E1E2797` FOREIGN KEY (`quote_id`) REFERENCES `mg_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_quote_shipping_rate`
--
ALTER TABLE `mg_sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_1EA40552D6118DEBE72CD1A977F10250` FOREIGN KEY (`address_id`) REFERENCES `mg_sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_shipment`
--
ALTER TABLE `mg_sales_flat_shipment`
  ADD CONSTRAINT `FK_MG_SALES_FLAT_SHIPMENT_ORDER_ID_MG_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_SHIPMENT_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_shipment_comment`
--
ALTER TABLE `mg_sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_50AD2F74A813C72D878226A41CB7989F` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_shipment_grid`
--
ALTER TABLE `mg_sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_D538984C71D0C56EC8D21F7F38ADC170` FOREIGN KEY (`entity_id`) REFERENCES `mg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_FLAT_SHIPMENT_GRID_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_shipment_item`
--
ALTER TABLE `mg_sales_flat_shipment_item`
  ADD CONSTRAINT `FK_D9ED52874692ED77BE31E0FD424D52E0` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_flat_shipment_track`
--
ALTER TABLE `mg_sales_flat_shipment_track`
  ADD CONSTRAINT `FK_0E83429825C66E9BC666C188373BBC1B` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_invoiced_aggregated`
--
ALTER TABLE `mg_sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_MG_SALES_INVOICED_AGGREGATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_invoiced_aggregated_order`
--
ALTER TABLE `mg_sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_7FDC82E7477512A5A05B533896C5319E` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_order_aggregated_created`
--
ALTER TABLE `mg_sales_order_aggregated_created`
  ADD CONSTRAINT `FK_MG_SALES_ORDER_AGGRED_CREATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_order_aggregated_updated`
--
ALTER TABLE `mg_sales_order_aggregated_updated`
  ADD CONSTRAINT `FK_MG_SALES_ORDER_AGGRED_UPDATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_order_status_label`
--
ALTER TABLE `mg_sales_order_status_label`
  ADD CONSTRAINT `FK_MG_SALES_ORDER_STATUS_LABEL_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_ORDER_STS_LBL_STS_MG_SALES_ORDER_STS_STS` FOREIGN KEY (`status`) REFERENCES `mg_sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_order_status_state`
--
ALTER TABLE `mg_sales_order_status_state`
  ADD CONSTRAINT `FK_MG_SALES_ORDER_STS_STATE_STS_MG_SALES_ORDER_STS_STS` FOREIGN KEY (`status`) REFERENCES `mg_sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_order_tax_item`
--
ALTER TABLE `mg_sales_order_tax_item`
  ADD CONSTRAINT `FK_78865D45F16B96BA5664E53F070FBB6F` FOREIGN KEY (`item_id`) REFERENCES `mg_sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_ORDER_TAX_ITEM_TAX_ID_MG_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `mg_sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_payment_transaction`
--
ALTER TABLE `mg_sales_payment_transaction`
  ADD CONSTRAINT `FK_79BC39932E1D0C2FACF4F68AFC0ADE89` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_C06950956E5B7800FEA8C79B9829366A` FOREIGN KEY (`payment_id`) REFERENCES `mg_sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DBC36626E185E30AB299A4F902A37036` FOREIGN KEY (`parent_id`) REFERENCES `mg_sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_recurring_profile`
--
ALTER TABLE `mg_sales_recurring_profile`
  ADD CONSTRAINT `FK_MG_SALES_RECURRING_PROFILE_CSTR_ID_MG_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_SALES_RECURRING_PROFILE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_recurring_profile_order`
--
ALTER TABLE `mg_sales_recurring_profile_order`
  ADD CONSTRAINT `FK_5AD359FFD1B730214227742897EB0F04` FOREIGN KEY (`order_id`) REFERENCES `mg_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_AE6786939BEDDC7C41204928BF53D5D7` FOREIGN KEY (`profile_id`) REFERENCES `mg_sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_refunded_aggregated`
--
ALTER TABLE `mg_sales_refunded_aggregated`
  ADD CONSTRAINT `FK_MG_SALES_REFUNDED_AGGREGATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_refunded_aggregated_order`
--
ALTER TABLE `mg_sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_ADA65BC7A91F771E9395CD1012CDF2AD` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_shipping_aggregated`
--
ALTER TABLE `mg_sales_shipping_aggregated`
  ADD CONSTRAINT `FK_MG_SALES_SHIPPING_AGGREGATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sales_shipping_aggregated_order`
--
ALTER TABLE `mg_sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_MG_SALES_SHPP_AGGRED_ORDER_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_sitemap`
--
ALTER TABLE `mg_sitemap`
  ADD CONSTRAINT `FK_MG_SITEMAP_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tag`
--
ALTER TABLE `mg_tag`
  ADD CONSTRAINT `FK_MG_TAG_FIRST_CUSTOMER_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MG_TAG_FIRST_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Limiti per la tabella `mg_tag_properties`
--
ALTER TABLE `mg_tag_properties`
  ADD CONSTRAINT `FK_MG_TAG_PROPERTIES_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAG_PROPERTIES_TAG_ID_MG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mg_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tag_relation`
--
ALTER TABLE `mg_tag_relation`
  ADD CONSTRAINT `FK_MG_TAG_RELATION_CUSTOMER_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAG_RELATION_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAG_RELATION_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAG_RELATION_TAG_ID_MG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mg_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tag_summary`
--
ALTER TABLE `mg_tag_summary`
  ADD CONSTRAINT `FK_MG_TAG_SUMMARY_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAG_SUMMARY_TAG_ID_MG_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mg_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tax_calculation`
--
ALTER TABLE `mg_tax_calculation`
  ADD CONSTRAINT `FK_210C9E4DF73AB75B727E8BD7C6823BCF` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `mg_tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D5ADAC9C26DE49214A704FCD9746A9A9` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `mg_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_MG_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `mg_tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAX_CALC_CSTR_TAX_CLASS_ID_MG_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `mg_tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tax_calculation_rate_title`
--
ALTER TABLE `mg_tax_calculation_rate_title`
  ADD CONSTRAINT `FK_B3F89DCF0C5B43C5641DFF2A044C0BEA` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `mg_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_TAX_CALCULATION_RATE_TITLE_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tax_order_aggregated_created`
--
ALTER TABLE `mg_tax_order_aggregated_created`
  ADD CONSTRAINT `FK_MG_TAX_ORDER_AGGRED_CREATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_tax_order_aggregated_updated`
--
ALTER TABLE `mg_tax_order_aggregated_updated`
  ADD CONSTRAINT `FK_MG_TAX_ORDER_AGGRED_UPDATED_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_weee_discount`
--
ALTER TABLE `mg_weee_discount`
  ADD CONSTRAINT `FK_MG_WEEE_DISCOUNT_CSTR_GROUP_ID_MG_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `mg_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WEEE_DISCOUNT_ENTT_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WEEE_DISCOUNT_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_weee_tax`
--
ALTER TABLE `mg_weee_tax`
  ADD CONSTRAINT `FK_MG_WEEE_TAX_ATTRIBUTE_ID_MG_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mg_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WEEE_TAX_COUNTRY_MG_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `mg_directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WEEE_TAX_ENTITY_ID_MG_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WEEE_TAX_WEBSITE_ID_MG_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mg_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_widget_instance_page`
--
ALTER TABLE `mg_widget_instance_page`
  ADD CONSTRAINT `FK_68AC700EE56C18FF6C12FBB0E6486BEF` FOREIGN KEY (`instance_id`) REFERENCES `mg_widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_widget_instance_page_layout`
--
ALTER TABLE `mg_widget_instance_page_layout`
  ADD CONSTRAINT `FK_10B3A671EF73F604D71271B76E3B6EBD` FOREIGN KEY (`layout_update_id`) REFERENCES `mg_core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A9220BD2C9A049E331807813978C1461` FOREIGN KEY (`page_id`) REFERENCES `mg_widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_wishlist`
--
ALTER TABLE `mg_wishlist`
  ADD CONSTRAINT `FK_MG_WISHLIST_CUSTOMER_ID_MG_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mg_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_wishlist_item`
--
ALTER TABLE `mg_wishlist_item`
  ADD CONSTRAINT `FK_MG_WISHLIST_ITEM_PRD_ID_MG_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mg_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WISHLIST_ITEM_STORE_ID_MG_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MG_WISHLIST_ITEM_WISHLIST_ID_MG_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `mg_wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_wishlist_item_option`
--
ALTER TABLE `mg_wishlist_item_option`
  ADD CONSTRAINT `FK_52740CF0FD0849C46ABC912037133550` FOREIGN KEY (`wishlist_item_id`) REFERENCES `mg_wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_xmlconnect_application`
--
ALTER TABLE `mg_xmlconnect_application`
  ADD CONSTRAINT `FK_814443420C7DC25E68C1E7728E5F3D8A` FOREIGN KEY (`store_id`) REFERENCES `mg_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limiti per la tabella `mg_xmlconnect_config_data`
--
ALTER TABLE `mg_xmlconnect_config_data`
  ADD CONSTRAINT `FK_6F2C508A2D00CCDA99C41C86E048A2B2` FOREIGN KEY (`application_id`) REFERENCES `mg_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_xmlconnect_history`
--
ALTER TABLE `mg_xmlconnect_history`
  ADD CONSTRAINT `FK_B4B2394A09DCDF2F0FFEAE835E028069` FOREIGN KEY (`application_id`) REFERENCES `mg_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_xmlconnect_images`
--
ALTER TABLE `mg_xmlconnect_images`
  ADD CONSTRAINT `FK_5985897E61F8E5F1E5BBD37C9EA6D46F` FOREIGN KEY (`application_id`) REFERENCES `mg_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_xmlconnect_notification_template`
--
ALTER TABLE `mg_xmlconnect_notification_template`
  ADD CONSTRAINT `FK_2F14BFC88FBCF27F619842C0918A7432` FOREIGN KEY (`application_id`) REFERENCES `mg_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `mg_xmlconnect_queue`
--
ALTER TABLE `mg_xmlconnect_queue`
  ADD CONSTRAINT `FK_DA50CA04D69D478FA928FDC8381C3244` FOREIGN KEY (`template_id`) REFERENCES `mg_xmlconnect_notification_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
