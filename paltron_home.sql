/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.37-MariaDB : Database - paltron
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`paltron` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `paltron`;

/*Table structure for table `caches` */

DROP TABLE IF EXISTS `caches`;

CREATE TABLE `caches` (
  `name` varchar(128) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `caches` */

insert  into `caches`(`name`,`data`,`expires`) values ('Modules.wire/modules/','AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module','2010-04-08 03:10:01'),('ModulesVerbose.info','{\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"156\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.0\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.4\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.0\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.5\"},\"89\":{\"summary\":\"Field that stores a floating point (decimal) number\",\"core\":true,\"versionStr\":\"1.0.5\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.1\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.5\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"161\":{\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"162\":{\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.0\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"1.2.1\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.5\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.7\"},\"151\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.6.1\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.6\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.5\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.3\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"158\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.2\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.2\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.4\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.5\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.7\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.2\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"153\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.0.9\"},\"170\":{\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.0\"},\"171\":{\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"core\":true,\"versionStr\":\"1.0.0\"},\"169\":{\"summary\":\"Field that stores a single line of text in multiple languages\",\"core\":true,\"versionStr\":\"1.0.0\"},\"165\":{\"summary\":\"ProcessWire multi-language support.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.3\"},\"168\":{\"summary\":\"Required to use multi-language fields.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.0\"},\"167\":{\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"1.0.1\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"164\":{\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"core\":true,\"versionStr\":\"1.0.1\"},\"152\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.2\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.3\",\"searchable\":\"fields\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"157\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.1\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.6\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.8\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.0.9\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.8\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.2\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.4\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.4\"},\"155\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.6\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"159\":{\"summary\":\"AIOM+ (All In One Minify) is a module to easily improve the performance of your website. By a simple function call Stylesheets, LESS  and Javascript files can be parsed, minimized and combined into one single file. This reduces the server requests, loading time and minimizes the traffic. In addition, the generated HTML source code can be minimized and all generated files can be loaded over a cookieless domain (domain sharding).\",\"author\":\"David Karich & Conclurer GbR\",\"href\":\"https:\\/\\/github.com\\/conclurer\\/ProcessWire-AIOM-All-In-One-Minify\",\"versionStr\":\"3.1.4\"},\"160\":{\"summary\":\"An example module to get browser-update.org snippet on the page.\",\"href\":\"http:\\/\\/browser-update.org\",\"versionStr\":\"1.0.0\"}}','2010-04-08 03:10:01'),('ModulesUninstalled.info','{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":107,\"versionStr\":\"1.0.7\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1559601034,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1559601034,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1559601034,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":13,\"versionStr\":\"0.1.3\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":114,\"versionStr\":\"1.1.4\",\"author\":\"adamspruijt, ryan\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1559601034,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1559601034,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":8,\"versionStr\":\"0.0.8\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1559601034,\"installed\":false,\"searchable\":\"comments\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1559601034,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1559601034,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":130,\"versionStr\":\"1.3.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1559601034,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1559601034,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1559601034,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"Helloworld\":{\"name\":\"Helloworld\",\"title\":\"Hello World\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"An example module used for demonstration purposes.\",\"href\":\"https:\\/\\/processwire.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1559833634,\"installed\":false},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1559833451,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"useNavJSON\":true}}','2010-04-08 03:10:01'),('Permissions.names','{\"logs-edit\":1013,\"logs-view\":1012,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1010,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}','2010-04-08 03:10:10'),('Modules.site/modules/','AllInOneMinify/AllInOneMinify.module\nHelloworld/Helloworld.module\nMarkupBrowserUpdate/MarkupBrowserUpdate.module','2010-04-08 03:10:01'),('FileCompiler__36958b645685df7344430db518ed28d2','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/home.php\",\"hash\":\"6d31b17d89712c1514ccb8431835fc24\",\"size\":6700,\"time\":1560036732,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"d2ba52364fbcd7b0f05a12f14902b2d4\",\"size\":7655,\"time\":1560036732}}','2010-04-08 03:10:10'),('FileCompiler__a0a446c4a9225dca85cb871ec4c4b1bf','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/head.inc\",\"hash\":\"b249f8f22889c486ba88a5b53c6846ae\",\"size\":5280,\"time\":1559601034,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/head.inc\",\"hash\":\"1984cd9e77419fd156959677c8dbf092\",\"size\":5292,\"time\":1559601034}}','2010-04-08 03:10:10'),('FileCompiler__7bffdb978ff92d7f32a161d0f68d40e4','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/foot.inc\",\"hash\":\"003d5e289aa6d288f497706f9ad7f10b\",\"size\":948,\"time\":1559601034,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/foot.inc\",\"hash\":\"003d5e289aa6d288f497706f9ad7f10b\",\"size\":948,\"time\":1559601034}}','2010-04-08 03:10:10'),('FileCompiler__77134264a86db707b65690d58e0f1bae','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/includes\\/head.inc\",\"hash\":\"15a3ba045c5f0b5dc1c08127c7c70f53\",\"size\":4344,\"time\":1560032197,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/includes\\/head.inc\",\"hash\":\"15a3ba045c5f0b5dc1c08127c7c70f53\",\"size\":4344,\"time\":1560032197}}','2010-04-08 03:10:10'),('FileCompiler__ae1e0afe9efb3f33473f20aa04b0d52f','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/includes\\/contact.inc\",\"hash\":\"e1136e8848bc23598cc231e57cab4ae8\",\"size\":2484,\"time\":1560030422,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/includes\\/contact.inc\",\"hash\":\"01b79c57818f06eb22800c72ccff94d0\",\"size\":2562,\"time\":1560030422}}','2010-04-08 03:10:10'),('FileCompiler__d5fcdafb7e2b47414b183f4469b09b4a','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1559601034,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"9636f854995462a4cb877cb1204bc2fe\",\"size\":467,\"time\":1559601034}}','2010-04-08 03:10:10'),('FileCompiler__6da622feb942269ab36c01075279afaf','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/includes\\/foot.inc\",\"hash\":\"25f824fcbd7c4ec6651a33296adf7c58\",\"size\":2372,\"time\":1560032678,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/includes\\/foot.inc\",\"hash\":\"7c1e57160d0237b2db7a1d5eee5dfdf5\",\"size\":2398,\"time\":1560032678}}','2010-04-08 03:10:10'),('FileCompiler__c75255753e289b0511ce877637ad73dd','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/basic-page.php\",\"hash\":\"117a034e43ad3d6c70c72ba2872497c7\",\"size\":123,\"time\":1559833817,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"aa6e1960e467e2ad4259fc485ce6638d\",\"size\":475,\"time\":1559833817}}','2010-04-08 03:10:10'),('FileCompiler__0e2713935a4645e22ab96ff9385c28df','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"ed05f1521cf18851aea18aeacec6bddd\",\"size\":58251,\"time\":1469736774,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/AllInOneMinify\\/AllInOneMinify.module\",\"hash\":\"e71bca1f8e666f99fd1851ad0deb6e1c\",\"size\":60055,\"time\":1469736774}}','2010-04-08 03:10:10'),('FileCompiler__cdcf0d7ec68f3af605e541d1dbf14f17','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/modules\\/MarkupBrowserUpdate\\/MarkupBrowserUpdate.module\",\"hash\":\"2bc28de4a5b81a62da8312c3c6c35bd3\",\"size\":4263,\"time\":1469736774,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/MarkupBrowserUpdate\\/MarkupBrowserUpdate.module\",\"hash\":\"1d0f24d1f57d87a6ebdd89fb2f693065\",\"size\":4419,\"time\":1469736774}}','2010-04-08 03:10:10'),('FileCompiler__2940753ae379994868bc81371ab9c981','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/includes\\/testimonial.inc\",\"hash\":\"fbf046434155fd47bd0c762e39b912ca\",\"size\":1274,\"time\":1560028930,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/includes\\/testimonial.inc\",\"hash\":\"787cf567697ba55f7ea8837f8606bfab\",\"size\":1287,\"time\":1560028930}}','2010-04-08 03:10:10'),('FileCompiler__8667a7175f9a2eeb703efe63611de4f9','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/includes\\/besetzung.inc\",\"hash\":\"140eeda0b166939ec51ec43ba53cafa0\",\"size\":1456,\"time\":1559846222,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/includes\\/besetzung.inc\",\"hash\":\"140eeda0b166939ec51ec43ba53cafa0\",\"size\":1456,\"time\":1559846222}}','2010-04-08 03:10:10'),('FileCompiler__6755a18ae2a84696a86cf607b5116293','{\"source\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/templates\\/includes\\/featured_partner.inc\",\"hash\":\"8f23575955d348fbfcb15598664533ca\",\"size\":481,\"time\":1560034844,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/My workspace\\/processwire-dev\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/includes\\/featured_partner.inc\",\"hash\":\"8f23575955d348fbfcb15598664533ca\",\"size\":481,\"time\":1560034844}}','2010-04-08 03:10:10'),('Modules.info','{\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1559855234,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"156\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":30,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.100\"]},\"autoload\":\"template=admin\",\"created\":1559855260,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":104,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":100,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":105,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":105,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":105,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"161\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":106,\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"singular\":true,\"created\":1559868679,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"162\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":106,\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1559868679,\"namespace\":\"ProcessWire\\\\\"},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":100,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":121,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":105,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":107,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"151\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":161,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":106,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":125,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":103,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"158\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":2,\"created\":1559855267,\"namespace\":\"ProcessWire\\\\\"},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":122,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":104,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":107,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":105,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":27,\"autoload\":\"template=admin\",\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"153\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":true,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":109,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"170\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"singular\":true,\"created\":1559943566,\"namespace\":\"ProcessWire\\\\\"},\"171\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"singular\":true,\"created\":1559943566,\"namespace\":\"ProcessWire\\\\\"},\"169\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"singular\":true,\"created\":1559943566,\"namespace\":\"ProcessWire\\\\\"},\"165\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1559943562,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"168\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":100,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1559943566,\"namespace\":\"ProcessWire\\\\\"},\"167\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"singular\":1,\"created\":1559943566,\"namespace\":\"ProcessWire\\\\\"},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"164\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"autoload\":true,\"singular\":true,\"created\":1559911829,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"152\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":492,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":113,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"157\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":1,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1559855267,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":106,\"permission\":\"page-view\",\"created\":1559855234,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":118,\"permission\":\"module-admin\",\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":109,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":108,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":122,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":24,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1559855234,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":104,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"155\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1559855259,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1559855234,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":16,\"singular\":true,\"created\":1559855234,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1559855234,\"namespace\":\"ProcessWire\\\\\"},\"159\":{\"name\":\"AllInOneMinify\",\"title\":\"AIOM+ (All In One Minify) for CSS, LESS, JS and HTML\",\"version\":314,\"autoload\":true,\"singular\":true,\"created\":1559860328,\"configurable\":true,\"namespace\":\"\\\\\"},\"160\":{\"name\":\"MarkupBrowserUpdate\",\"title\":\"Markup Browser Update\",\"version\":100,\"icon\":\"globe\",\"autoload\":true,\"singular\":true,\"created\":1559860355,\"configurable\":true,\"namespace\":\"\\\\\"}}','2010-04-08 03:10:01');

/*Table structure for table `field_about_description` */

DROP TABLE IF EXISTS `field_about_description`;

CREATE TABLE `field_about_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_about_description` */

/*Table structure for table `field_about_image` */

DROP TABLE IF EXISTS `field_about_image`;

CREATE TABLE `field_about_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_about_image` */

/*Table structure for table `field_about_title` */

DROP TABLE IF EXISTS `field_about_title`;

CREATE TABLE `field_about_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_about_title` */

/*Table structure for table `field_accordion_block` */

DROP TABLE IF EXISTS `field_accordion_block`;

CREATE TABLE `field_accordion_block` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_accordion_block` */

/*Table structure for table `field_accordion_header` */

DROP TABLE IF EXISTS `field_accordion_header`;

CREATE TABLE `field_accordion_header` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_accordion_header` */

/*Table structure for table `field_accordion_panel` */

DROP TABLE IF EXISTS `field_accordion_panel`;

CREATE TABLE `field_accordion_panel` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_accordion_panel` */

/*Table structure for table `field_admin_theme` */

DROP TABLE IF EXISTS `field_admin_theme`;

CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_admin_theme` */

/*Table structure for table `field_besetzung_block` */

DROP TABLE IF EXISTS `field_besetzung_block`;

CREATE TABLE `field_besetzung_block` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_besetzung_block` */

/*Table structure for table `field_besetzung_description` */

DROP TABLE IF EXISTS `field_besetzung_description`;

CREATE TABLE `field_besetzung_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_besetzung_description` */

/*Table structure for table `field_besetzung_image` */

DROP TABLE IF EXISTS `field_besetzung_image`;

CREATE TABLE `field_besetzung_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_besetzung_image` */

/*Table structure for table `field_besetzung_title` */

DROP TABLE IF EXISTS `field_besetzung_title`;

CREATE TABLE `field_besetzung_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_besetzung_title` */

/*Table structure for table `field_body` */

DROP TABLE IF EXISTS `field_body`;

CREATE TABLE `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_body` */

insert  into `field_body`(`pages_id`,`data`) values (27,'<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>'),(1002,'<h2>Ut capio feugiat saepius torqueo olim</h2><h3>In utinam facilisi eum vicis feugait nimis</h3><p>Iusto incassum appellatio cui macto genitus vel. Lobortis aliquam luctus, roto enim, imputo wisi tamen. Ratis odio, genitus acsi, neo illum consequat consectetuer ut. </p><p>Wisi fere virtus cogo, ex ut vel nullus similis vel iusto. Tation incassum adsum in, quibus capto premo diam suscipere facilisi. Uxor laoreet mos capio premo feugait ille et. Pecus abigo immitto epulae duis vel. Neque causa, indoles verto, decet ingenium dignissim. </p><p>Patria iriure vel vel autem proprius indoles ille sit. Tation blandit refoveo, accumsan ut ulciscor lucidus inhibeo capto aptent opes, foras. </p><h3>Dolore ea valde refero feugait utinam luctus</h3><p>Usitas, nostrud transverbero, in, amet, nostrud ad. Ex feugiat opto diam os aliquam regula lobortis dolore ut ut quadrum. Esse eu quis nunc jugis iriure volutpat wisi, fere blandit inhibeo melior, hendrerit, saluto velit. Eu bene ideo dignissim delenit accumsan nunc. Usitas ille autem camur consequat typicus feugait elit ex accumsan nutus accumsan nimis pagus, occuro. Immitto populus, qui feugiat opto pneum letalis paratus. Mara conventio torqueo nibh caecus abigo sit eum brevitas. Populus, duis ex quae exerci hendrerit, si antehabeo nobis, consequat ea praemitto zelus. </p><p>Immitto os ratis euismod conventio erat jus caecus sudo. Appellatio consequat, et ibidem ludus nulla dolor augue abdo tego euismod plaga lenis. Sit at nimis venio venio tego os et pecus enim pneum magna nobis ad pneum. Saepius turpis probo refero molior nonummy aliquam neque appellatio jus luctus acsi. Ulciscor refero pagus imputo eu refoveo valetudo duis dolore usitas. Consequat suscipere quod torqueo ratis ullamcorper, dolore lenis, letalis quia quadrum plaga minim. </p>'),(1003,'<h2>The site template files are located in /site/templates/</h2>\n\n<p>Each of the template files in this site profile includes the header template (head.inc), outputs the bodycopy, and then includes the footer template (foot.inc). This is to avoid duplication of the markup that is the same across all pages in the site. This strategy is called <em>direct output with includes</em> and is just one strategy you can use for templates.</p>\n\n<p>You could of course make each template completely self contained with its own markup (called direct output), but if you have more than one template with some of the same markup, then it wouldn\'t be very efficient to do that. As a result, it\'s better to move the reused parts (aka partials) into include files.</p>\n\n<p>Another strategy would be to use a have a <em>main</em> template that contains all your markup and has placeholders (variables) for the dynamic parts. Then your other templates would populate the placeholders before including the main template. This strategy is called <em>delayed output.</em></p>\n\n<p><a href=\"https://processwire.com/docs/tutorials/how-to-structure-your-template-files/\">Read more about these template strategies</a></p>'),(1001,'<h2>Si lobortis singularis genitus ibidem saluto.</h2>\n\n<p>Dolore ad nunc, mos accumsan paratus duis suscipit luptatum facilisis macto uxor iaceo quadrum. Demoveo, appellatio elit neque ad commodo ea. Wisi, iaceo, tincidunt at commoveo rusticus et, ludus. Feugait at blandit bene blandit suscipere abdo duis ideo bis commoveo pagus ex, velit. Consequat commodo roto accumsan, duis transverbero.</p>'),(1004,'<h2>Pertineo vel dignissim, natu letalis fere odio</h2><h3>Si lobortis singularis genitus ibidem saluto</h3><p>Magna in gemino, gilvus iusto capto jugis abdo mos aptent acsi qui. Utrum inhibeo humo humo duis quae. Lucidus paulatim facilisi scisco quibus hendrerit conventio adsum. Feugiat eligo foras ex elit sed indoles hos elit ex antehabeo defui et nostrud. Letatio valetudo multo consequat inhibeo ille dignissim pagus et in quadrum eum eu. Aliquam si consequat, ut nulla amet et turpis exerci, adsum luctus ne decet, delenit. Commoveo nunc diam valetudo cui, aptent commoveo at obruo uxor nulla aliquip augue. </p><p>Iriure, ex velit, praesent vulpes delenit capio vero gilvus inhibeo letatio aliquip metuo qui eros. Transverbero demoveo euismod letatio torqueo melior. Ut odio in suscipit paulatim amet huic letalis suscipere eros causa, letalis magna. </p>');

/*Table structure for table `field_cta_image` */

DROP TABLE IF EXISTS `field_cta_image`;

CREATE TABLE `field_cta_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_cta_image` */

/*Table structure for table `field_email` */

DROP TABLE IF EXISTS `field_email`;

CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_email` */

insert  into `field_email`(`pages_id`,`data`) values (41,'dmytro.kiselov@outlook.com');

/*Table structure for table `field_expertise_card_image` */

DROP TABLE IF EXISTS `field_expertise_card_image`;

CREATE TABLE `field_expertise_card_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_expertise_card_image` */

/*Table structure for table `field_expertise_card_link` */

DROP TABLE IF EXISTS `field_expertise_card_link`;

CREATE TABLE `field_expertise_card_link` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_expertise_card_link` */

/*Table structure for table `field_expertise_card_title` */

DROP TABLE IF EXISTS `field_expertise_card_title`;

CREATE TABLE `field_expertise_card_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_expertise_card_title` */

/*Table structure for table `field_expertise_cards` */

DROP TABLE IF EXISTS `field_expertise_cards`;

CREATE TABLE `field_expertise_cards` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_expertise_cards` */

/*Table structure for table `field_faq_description` */

DROP TABLE IF EXISTS `field_faq_description`;

CREATE TABLE `field_faq_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_faq_description` */

/*Table structure for table `field_faq_title` */

DROP TABLE IF EXISTS `field_faq_title`;

CREATE TABLE `field_faq_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_faq_title` */

/*Table structure for table `field_featured_partners_image` */

DROP TABLE IF EXISTS `field_featured_partners_image`;

CREATE TABLE `field_featured_partners_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_featured_partners_image` */

/*Table structure for table `field_find_job_description` */

DROP TABLE IF EXISTS `field_find_job_description`;

CREATE TABLE `field_find_job_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_find_job_description` */

/*Table structure for table `field_find_job_image` */

DROP TABLE IF EXISTS `field_find_job_image`;

CREATE TABLE `field_find_job_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_find_job_image` */

/*Table structure for table `field_find_job_title` */

DROP TABLE IF EXISTS `field_find_job_title`;

CREATE TABLE `field_find_job_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_find_job_title` */

/*Table structure for table `field_header_block` */

DROP TABLE IF EXISTS `field_header_block`;

CREATE TABLE `field_header_block` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_header_block` */

/*Table structure for table `field_header_description` */

DROP TABLE IF EXISTS `field_header_description`;

CREATE TABLE `field_header_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_header_description` */

/*Table structure for table `field_header_image` */

DROP TABLE IF EXISTS `field_header_image`;

CREATE TABLE `field_header_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_header_image` */

insert  into `field_header_image`(`pages_id`,`data`,`sort`,`description`,`modified`,`created`,`filedata`) values (1,'home-header.jpg',0,'','2019-06-06 21:15:11','2019-06-06 21:15:11','');

/*Table structure for table `field_header_text` */

DROP TABLE IF EXISTS `field_header_text`;

CREATE TABLE `field_header_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_header_text` */

insert  into `field_header_text`(`pages_id`,`data`) values (1,'Genau die IT-Führungskräfte und Experten finden, die Sie suchen.');

/*Table structure for table `field_headline` */

DROP TABLE IF EXISTS `field_headline`;

CREATE TABLE `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_headline` */

insert  into `field_headline`(`pages_id`,`data`,`data1067`) values (1,'PALTRON','PALTRON'),(1001,'About Us',NULL),(1003,'Developing Site Templates',NULL);

/*Table structure for table `field_images` */

DROP TABLE IF EXISTS `field_images`;

CREATE TABLE `field_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_images` */

/*Table structure for table `field_language` */

DROP TABLE IF EXISTS `field_language`;

CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_language` */

insert  into `field_language`(`pages_id`,`data`,`sort`) values (40,1065,0),(41,1065,0);

/*Table structure for table `field_language_files` */

DROP TABLE IF EXISTS `field_language_files`;

CREATE TABLE `field_language_files` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_language_files` */

/*Table structure for table `field_language_files_site` */

DROP TABLE IF EXISTS `field_language_files_site`;

CREATE TABLE `field_language_files_site` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_language_files_site` */

insert  into `field_language_files_site`(`pages_id`,`data`,`sort`,`description`,`modified`,`created`,`filedata`) values (1067,'site--templates--includes--head-inc.json',1,'[\"\"]','2019-06-08 23:14:00','2019-06-08 23:14:00',''),(1067,'site--templates--includes--testimonial-inc.json',2,'[\"\"]','2019-06-08 23:23:59','2019-06-08 23:23:59',''),(1067,'site--templates--home-php.json',0,'[\"\"]','2019-06-07 21:48:48','2019-06-07 21:48:48',''),(1067,'site--templates--includes--foot-inc.json',3,'[\"\"]','2019-06-08 23:57:55','2019-06-08 23:57:55','');

/*Table structure for table `field_office_address` */

DROP TABLE IF EXISTS `field_office_address`;

CREATE TABLE `field_office_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_office_address` */

/*Table structure for table `field_office_city` */

DROP TABLE IF EXISTS `field_office_city`;

CREATE TABLE `field_office_city` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_office_city` */

/*Table structure for table `field_office_email` */

DROP TABLE IF EXISTS `field_office_email`;

CREATE TABLE `field_office_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_office_email` */

/*Table structure for table `field_office_image` */

DROP TABLE IF EXISTS `field_office_image`;

CREATE TABLE `field_office_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_office_image` */

/*Table structure for table `field_office_phone_number` */

DROP TABLE IF EXISTS `field_office_phone_number`;

CREATE TABLE `field_office_phone_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_office_phone_number` */

/*Table structure for table `field_offices` */

DROP TABLE IF EXISTS `field_offices`;

CREATE TABLE `field_offices` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`,`pages_id`),
  KEY `parent_id` (`parent_id`,`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_offices` */

/*Table structure for table `field_pass` */

DROP TABLE IF EXISTS `field_pass`;

CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

/*Data for the table `field_pass` */

insert  into `field_pass`(`pages_id`,`data`,`salt`) values (41,'fGUvw9olZvSr55g8cNltLeLDn/T696q','$2y$11$YNHPXnz7dU/uw95q58/3dO'),(40,'','');

/*Table structure for table `field_permissions` */

DROP TABLE IF EXISTS `field_permissions`;

CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_permissions` */

insert  into `field_permissions`(`pages_id`,`data`,`sort`) values (38,32,1),(38,34,2),(38,35,3),(37,36,0),(38,36,0),(38,50,4),(38,51,5),(38,52,7),(38,53,8),(38,54,6);

/*Table structure for table `field_process` */

DROP TABLE IF EXISTS `field_process`;

CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_process` */

insert  into `field_process`(`pages_id`,`data`) values (6,17),(3,12),(8,12),(9,14),(10,7),(11,47),(16,48),(300,104),(21,50),(29,66),(23,10),(304,138),(31,136),(22,76),(30,68),(303,129),(2,87),(302,121),(301,109),(28,76),(1007,150),(1009,155),(1011,157),(1064,166),(1066,167);

/*Table structure for table `field_roles` */

DROP TABLE IF EXISTS `field_roles`;

CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_roles` */

insert  into `field_roles`(`pages_id`,`data`,`sort`) values (40,37,0),(41,37,0),(41,38,2);

/*Table structure for table `field_sidebar` */

DROP TABLE IF EXISTS `field_sidebar`;

CREATE TABLE `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_sidebar` */

insert  into `field_sidebar`(`pages_id`,`data`) values (1002,'<h3>Sudo nullus</h3><p>Et torqueo vulpes vereor luctus augue quod consectetuer antehabeo causa patria tation ex plaga ut. Abluo delenit wisi iriure eros feugiat probo nisl aliquip nisl, patria. Antehabeo esse camur nisl modo utinam. Sudo nullus ventosus ibidem facilisis saepius eum sino pneum, vicis odio voco opto.</p>');

/*Table structure for table `field_summary` */

DROP TABLE IF EXISTS `field_summary`;

CREATE TABLE `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1067` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_summary` */

insert  into `field_summary`(`pages_id`,`data`,`data1067`) values (1002,'Dolore ea valde refero feugait utinam luctus. Probo velit commoveo et, delenit praesent, suscipit zelus, hendrerit zelus illum facilisi, regula. ',NULL),(1001,'This is a placeholder page with two child pages to serve as an example. ',NULL),(1005,'View this template\'s source for a demonstration of how to create a basic site map. ',NULL),(1003,'More about the templates included in this basic site profile. ',NULL),(1004,'Mos erat reprobo in praesent, mara premo, obruo iustum pecus velit lobortis te sagaciter populus.',NULL),(1,'PALTRON website','PALTRON website');

/*Table structure for table `field_title` */

DROP TABLE IF EXISTS `field_title`;

CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1067` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1067` (`data1067`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1067` (`data1067`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_title` */

insert  into `field_title`(`pages_id`,`data`,`data1067`) values (11,'Templates',NULL),(16,'Fields',NULL),(22,'Setup',NULL),(3,'Pages',NULL),(6,'Add Page',NULL),(8,'Tree',NULL),(9,'Save Sort',NULL),(10,'Edit',NULL),(21,'Modules',NULL),(29,'Users',NULL),(30,'Roles',NULL),(2,'Admin',NULL),(7,'Trash',NULL),(27,'404 Page Not Found',NULL),(302,'Insert Link',NULL),(23,'Login',NULL),(304,'Profile',NULL),(301,'Empty Trash',NULL),(300,'Search',NULL),(303,'Insert Image',NULL),(28,'Access',NULL),(31,'Permissions',NULL),(32,'Edit pages',NULL),(34,'Delete pages',NULL),(35,'Move pages (change parent)',NULL),(36,'View pages',NULL),(50,'Sort child pages',NULL),(51,'Change templates on pages',NULL),(52,'Administer users',NULL),(53,'User can update profile/password',NULL),(54,'Lock or unlock a page',NULL),(1,'Home','Home'),(1001,'About',NULL),(1002,'Child page example 1',NULL),(1000,'Search',NULL),(1003,'Templates',NULL),(1004,'Child page example 2',NULL),(1005,'Site Map',NULL),(1006,'Use Page Lister',NULL),(1007,'Find',NULL),(1009,'Recent',NULL),(1010,'Can see recently edited pages',NULL),(1011,'Logs',NULL),(1012,'Can view system logs',NULL),(1013,'Can manage system logs',NULL),(1014,'Repeaters',NULL),(1015,'header_block',NULL),(1018,'besetzung_block',NULL),(1023,'accordion_block',NULL),(1028,'expertise_card',NULL),(1055,'offices',NULL),(1064,'Languages',NULL),(1065,'Deutsch','German'),(1066,'Language Translator',NULL),(1067,'English','English');

/*Table structure for table `field_usps_image` */

DROP TABLE IF EXISTS `field_usps_image`;

CREATE TABLE `field_usps_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `field_usps_image` */

/*Table structure for table `fieldgroups` */

DROP TABLE IF EXISTS `fieldgroups`;

CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

/*Data for the table `fieldgroups` */

insert  into `fieldgroups`(`id`,`name`) values (2,'admin'),(3,'user'),(4,'role'),(5,'permission'),(1,'home'),(88,'sitemap'),(83,'basic-page'),(80,'search'),(97,'repeater_header_block'),(98,'repeater_besetzung_block'),(99,'repeater_accordion_block'),(100,'repeater_expertise_cards'),(101,'repeater_offices'),(102,'language');

/*Table structure for table `fieldgroups_fields` */

DROP TABLE IF EXISTS `fieldgroups_fields`;

CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `fieldgroups_fields` */

insert  into `fieldgroups_fields`(`fieldgroups_id`,`fields_id`,`sort`,`data`) values (2,1,0,NULL),(3,4,2,NULL),(3,92,1,NULL),(4,5,0,NULL),(5,1,0,NULL),(3,3,0,NULL),(97,101,2,NULL),(80,1,0,NULL),(97,100,1,NULL),(83,82,4,NULL),(83,1,0,NULL),(88,1,0,NULL),(97,99,0,NULL),(88,79,1,NULL),(83,76,3,NULL),(83,78,1,NULL),(83,79,2,NULL),(3,98,3,NULL),(2,2,1,NULL),(83,44,5,NULL),(98,121,0,NULL),(100,129,1,NULL),(100,130,0,NULL),(98,122,1,NULL),(98,120,2,NULL),(99,127,1,NULL),(99,126,0,NULL),(1,100,4,NULL),(1,99,3,NULL),(1,79,2,NULL),(1,78,1,NULL),(101,134,3,NULL),(101,133,2,NULL),(101,137,1,NULL),(101,132,0,NULL),(1,1,0,NULL),(101,135,4,NULL),(102,1,0,NULL),(102,138,1,NULL),(102,139,2,NULL),(3,140,4,NULL),(100,142,2,'{\"label\":\"Expertise Card Link\",\"maxlength\":2048}');

/*Table structure for table `fields` */

DROP TABLE IF EXISTS `fields`;

CREATE TABLE `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

/*Data for the table `fields` */

insert  into `fields`(`id`,`type`,`name`,`flags`,`label`,`data`) values (1,'FieldtypePageTitleLanguage','title',13,'Title','{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"minlength\":0,\"showCount\":0}'),(2,'FieldtypeModule','process',25,'Process','{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'),(3,'FieldtypePassword','pass',24,'Set Password','{\"collapsed\":1,\"size\":50,\"maxlength\":128}'),(5,'FieldtypePage','permissions',24,'Permissions','{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'),(4,'FieldtypePage','roles',24,'Roles','{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'),(92,'FieldtypeEmail','email',9,'E-Mail Address','{\"size\":70,\"maxlength\":255}'),(82,'FieldtypeTextarea','sidebar',0,'Sidebar','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":5,\"contentType\":1,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"toggles\":[2,4,8],\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"collapsed\":2}'),(44,'FieldtypeImage','images',0,'Images','{\"extensions\":\"gif jpg jpeg png\",\"adminThumbs\":1,\"inputfieldClass\":\"InputfieldImage\",\"maxFiles\":0,\"descriptionRows\":1,\"fileSchema\":6,\"textformatters\":[\"TextformatterEntities\"],\"outputFormat\":1,\"defaultValuePage\":0,\"defaultGrid\":0,\"icon\":\"camera\"}'),(79,'FieldtypeTextareaLanguage','summary',1,'Summary','{\"textformatters\":[\"TextformatterEntities\"],\"inputfieldClass\":\"InputfieldTextarea\",\"collapsed\":2,\"rows\":3,\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0}'),(76,'FieldtypeTextarea','body',0,'Body','{\"inputfieldClass\":\"InputfieldCKEditor\",\"rows\":10,\"contentType\":1,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\r\\nNumberedList, BulletedList, -, Blockquote\\r\\nPWLink, Unlink, Anchor\\r\\nPWImage, Table, HorizontalRule, SpecialChar\\r\\nPasteText, PasteFromWord\\r\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"toggles\":[2,4,8]}'),(78,'FieldtypeTextLanguage','headline',0,'Headline','{\"description\":\"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.\",\"textformatters\":[\"TextformatterEntities\"],\"collapsed\":2,\"size\":0,\"maxlength\":1024,\"minlength\":0,\"showCount\":0}'),(98,'FieldtypeModule','admin_theme',8,'Admin Theme','{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'),(99,'FieldtypeImage','header_image',0,'Header Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}'),(100,'FieldtypeText','header_text',0,'Header Text','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"langBlankInherit\":0}'),(101,'FieldtypeTextareaLanguage','header_description',0,'Header Description','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'),(103,'FieldtypeImage','featured_partners_image',0,'Featured Partners Image','{\"description\":\"featured partners carousel\",\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6,\"collapsed\":0}'),(104,'FieldtypeImage','find_job_image',0,'Find Job Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}'),(105,'FieldtypeTextLanguage','find_job_title',0,'Find Job Title','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(106,'FieldtypeTextareaLanguage','find_job_description',0,'Find Job Description','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'),(107,'FieldtypeImage','about_image',0,'About Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}'),(108,'FieldtypeText','about_title',0,'About Title','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"langBlankInherit\":0}'),(109,'FieldtypeTextareaLanguage','about_description',0,'About Description','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'),(114,'FieldtypeImage','cta_image',0,'CTA Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}'),(121,'FieldtypeTextLanguage','besetzung_title',0,'Besetzung Title','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(119,'FieldtypeRepeater','header_block',0,'Header Block','{\"template_id\":43,\"parent_id\":1015,\"repeaterFields\":[99,100,101],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}'),(120,'FieldtypeImage','besetzung_image',0,'Besetzung Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}'),(122,'FieldtypeTextareaLanguage','besetzung_description',0,'Besetzung Description','{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'),(123,'FieldtypeRepeater','besetzung_block',0,'Besetzung Block','{\"template_id\":44,\"parent_id\":1018,\"repeaterFields\":[121,122,120],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}'),(124,'FieldtypeTextLanguage','faq_title',0,'FAQ Title','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(125,'FieldtypeTextareaLanguage','faq_description',0,'FAQ Description','{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'),(126,'FieldtypeTextLanguage','accordion_header',0,'Accordion Header','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(127,'FieldtypeTextareaLanguage','accordion_panel',0,'Accordion Panel','{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\",\"size\":0}'),(128,'FieldtypeRepeater','accordion_block',0,'Accordion Block','{\"template_id\":45,\"parent_id\":1023,\"repeaterFields\":[126,127],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}'),(129,'FieldtypeTextLanguage','expertise_card_title',0,'Expertise Card Title','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(130,'FieldtypeImage','expertise_card_image',0,'Expertise Card Image','{\"fileSchema\":6,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"textformatters\":[\"TextformatterEntities\"]}'),(131,'FieldtypeRepeater','expertise_cards',0,'Expertise Cards','{\"template_id\":46,\"parent_id\":1028,\"repeaterFields\":[130,129,142],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}'),(132,'FieldtypeImage','office_image',0,'Office Image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"fileSchema\":6}'),(133,'FieldtypeTextareaLanguage','office_address',0,'Office Address','{\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'),(134,'FieldtypeText','office_phone_number',0,'Office Phone Number',''),(135,'FieldtypeText','office_email',0,'office_email','{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(136,'FieldtypeRepeater','offices',0,'Offices','{\"template_id\":47,\"parent_id\":1055,\"repeaterFields\":[132,137,133,134,135],\"repeaterCollapse\":0,\"repeaterLoading\":1,\"collapsed\":0}'),(137,'FieldtypeTextLanguage','office_city',0,'Office City','{\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(138,'FieldtypeFile','language_files_site',24,'Site Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}'),(139,'FieldtypeFile','language_files',24,'Core Translation Files','{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}'),(140,'FieldtypePage','language',24,'Language','{\"derefAsPage\":1,\"parent_id\":1064,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}'),(142,'FieldtypeText','expertise_card_link',0,'Expertise Card Link','{\"collapsed\":0,\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'),(143,'FieldtypeImage','usps_image',0,'USPs image','{\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":0,\"defaultValuePage\":0,\"useTags\":0,\"inputfieldClass\":\"InputfieldImage\",\"collapsed\":0,\"descriptionRows\":1,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0}');

/*Table structure for table `modules` */

DROP TABLE IF EXISTS `modules`;

CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

/*Data for the table `modules` */

insert  into `modules`(`id`,`class`,`flags`,`data`,`created`) values (1,'FieldtypeTextarea',0,'','2019-06-06 23:07:14'),(2,'FieldtypeNumber',0,'','2019-06-06 23:07:14'),(3,'FieldtypeText',0,'','2019-06-06 23:07:14'),(4,'FieldtypePage',0,'','2019-06-06 23:07:14'),(30,'InputfieldForm',0,'','2019-06-06 23:07:14'),(6,'FieldtypeFile',0,'','2019-06-06 23:07:14'),(7,'ProcessPageEdit',1,'','2019-06-06 23:07:14'),(10,'ProcessLogin',0,'','2019-06-06 23:07:14'),(12,'ProcessPageList',0,'{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}','2019-06-06 23:07:14'),(121,'ProcessPageEditLink',1,'','2019-06-06 23:07:14'),(14,'ProcessPageSort',0,'','2019-06-06 23:07:14'),(15,'InputfieldPageListSelect',0,'','2019-06-06 23:07:14'),(117,'JqueryUI',1,'','2019-06-06 23:07:14'),(17,'ProcessPageAdd',0,'','2019-06-06 23:07:14'),(125,'SessionLoginThrottle',11,'','2019-06-06 23:07:14'),(122,'InputfieldPassword',0,'','2019-06-06 23:07:14'),(25,'InputfieldAsmSelect',0,'','2019-06-06 23:07:14'),(116,'JqueryCore',1,'','2019-06-06 23:07:14'),(27,'FieldtypeModule',0,'','2019-06-06 23:07:14'),(28,'FieldtypeDatetime',0,'','2019-06-06 23:07:14'),(29,'FieldtypeEmail',0,'','2019-06-06 23:07:14'),(108,'InputfieldURL',0,'','2019-06-06 23:07:14'),(32,'InputfieldSubmit',0,'','2019-06-06 23:07:14'),(33,'InputfieldWrapper',0,'','2019-06-06 23:07:14'),(34,'InputfieldText',0,'','2019-06-06 23:07:14'),(35,'InputfieldTextarea',0,'','2019-06-06 23:07:14'),(36,'InputfieldSelect',0,'','2019-06-06 23:07:14'),(37,'InputfieldCheckbox',0,'','2019-06-06 23:07:14'),(38,'InputfieldCheckboxes',0,'','2019-06-06 23:07:14'),(39,'InputfieldRadios',0,'','2019-06-06 23:07:14'),(40,'InputfieldHidden',0,'','2019-06-06 23:07:14'),(41,'InputfieldName',0,'','2019-06-06 23:07:14'),(43,'InputfieldSelectMultiple',0,'','2019-06-06 23:07:14'),(45,'JqueryWireTabs',0,'','2019-06-06 23:07:14'),(46,'ProcessPage',0,'','2019-06-06 23:07:14'),(47,'ProcessTemplate',0,'','2019-06-06 23:07:14'),(48,'ProcessField',32,'','2019-06-06 23:07:14'),(50,'ProcessModule',0,'','2019-06-06 23:07:14'),(114,'PagePermissions',3,'','2019-06-06 23:07:14'),(97,'FieldtypeCheckbox',1,'','2019-06-06 23:07:14'),(115,'PageRender',3,'{\"clearCache\":1}','2019-06-06 23:07:14'),(55,'InputfieldFile',0,'','2019-06-06 23:07:14'),(56,'InputfieldImage',0,'','2019-06-06 23:07:14'),(57,'FieldtypeImage',0,'','2019-06-06 23:07:14'),(60,'InputfieldPage',0,'{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}','2019-06-06 23:07:14'),(61,'TextformatterEntities',0,'','2019-06-06 23:07:14'),(66,'ProcessUser',0,'{\"showFields\":[\"name\",\"email\",\"roles\"]}','2019-06-06 23:07:14'),(67,'MarkupAdminDataTable',0,'','2019-06-06 23:07:14'),(68,'ProcessRole',0,'{\"showFields\":[\"name\"]}','2019-06-06 23:07:14'),(76,'ProcessList',0,'','2019-06-06 23:07:14'),(78,'InputfieldFieldset',0,'','2019-06-06 23:07:14'),(79,'InputfieldMarkup',0,'','2019-06-06 23:07:14'),(80,'InputfieldEmail',0,'','2019-06-06 23:07:14'),(89,'FieldtypeFloat',1,'','2019-06-06 23:07:14'),(83,'ProcessPageView',0,'','2019-06-06 23:07:14'),(84,'FieldtypeInteger',0,'','2019-06-06 23:07:14'),(85,'InputfieldInteger',0,'','2019-06-06 23:07:14'),(86,'InputfieldPageName',0,'','2019-06-06 23:07:14'),(87,'ProcessHome',0,'','2019-06-06 23:07:14'),(90,'InputfieldFloat',0,'','2019-06-06 23:07:14'),(94,'InputfieldDatetime',0,'','2019-06-06 23:07:14'),(98,'MarkupPagerNav',0,'','2019-06-06 23:07:14'),(129,'ProcessPageEditImageSelect',1,'','2019-06-06 23:07:14'),(103,'JqueryTableSorter',1,'','2019-06-06 23:07:14'),(104,'ProcessPageSearch',1,'{\"searchFields\":\"title\",\"displayField\":\"title path\"}','2019-06-06 23:07:14'),(105,'FieldtypeFieldsetOpen',1,'','2019-06-06 23:07:14'),(106,'FieldtypeFieldsetClose',1,'','2019-06-06 23:07:14'),(107,'FieldtypeFieldsetTabOpen',1,'','2019-06-06 23:07:14'),(109,'ProcessPageTrash',1,'','2019-06-06 23:07:14'),(111,'FieldtypePageTitle',1,'','2019-06-06 23:07:14'),(112,'InputfieldPageTitle',0,'','2019-06-06 23:07:14'),(113,'MarkupPageArray',3,'','2019-06-06 23:07:14'),(131,'InputfieldButton',0,'','2019-06-06 23:07:14'),(133,'FieldtypePassword',1,'','2019-06-06 23:07:14'),(134,'ProcessPageType',33,'{\"showFields\":[]}','2019-06-06 23:07:14'),(135,'FieldtypeURL',1,'','2019-06-06 23:07:14'),(136,'ProcessPermission',1,'{\"showFields\":[\"name\",\"title\"]}','2019-06-06 23:07:14'),(137,'InputfieldPageListSelectMultiple',0,'','2019-06-06 23:07:14'),(138,'ProcessProfile',1,'{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"language\"]}','2019-06-06 23:07:14'),(139,'SystemUpdater',1,'{\"systemVersion\":16,\"coreVersion\":\"3.0.132\"}','2019-06-06 23:07:14'),(92,'InputfieldTinyMCE',0,'','2019-06-06 23:07:14'),(148,'AdminThemeDefault',10,'','2019-06-06 23:07:14'),(149,'InputfieldSelector',42,'','2019-06-06 23:07:14'),(150,'ProcessPageLister',32,'','2019-06-06 23:07:14'),(151,'InputfieldCKEditor',0,'','2019-06-06 23:07:14'),(152,'MarkupHTMLPurifier',0,'','2019-06-06 23:07:14'),(153,'JqueryMagnific',1,'','2019-06-06 23:07:14'),(155,'ProcessRecentPages',1,'','2019-06-06 23:07:39'),(156,'AdminThemeUikit',10,'','2019-06-06 23:07:40'),(157,'ProcessLogger',1,'','2019-06-06 23:07:47'),(158,'InputfieldIcon',0,'','2019-06-06 23:07:47'),(159,'AllInOneMinify',3,'{\"stylesheet_prefix\":\"css_\",\"javascript_prefix\":\"js_\",\"max_cache_lifetime\":\"2419200\",\"html_minify\":\"\",\"development_mode\":\"\",\"directory_traversal\":\"\",\"empty_cache\":\"Empty cache\",\"domain_sharding\":\"\",\"domain_sharding_ssl\":\"\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2019-06-07 00:32:08'),(160,'MarkupBrowserUpdate',3,'{\"ie\":10,\"ff\":27,\"op\":17,\"sa\":6,\"test\":\"false\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2019-06-07 00:32:35'),(161,'FieldtypeRepeater',35,'{\"repeatersRootPageID\":1014,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2019-06-07 02:51:19'),(162,'InputfieldRepeater',0,'','2019-06-07 02:51:19'),(164,'MarkupCache',3,'{\"noExpire\":\"1\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}','2019-06-07 14:50:29'),(165,'LanguageSupport',35,'{\"languagesPageID\":1064,\"defaultLanguagePageID\":1065,\"otherLanguagePageIDs\":[1067],\"languageTranslatorPageID\":1066}','2019-06-07 23:39:22'),(167,'ProcessLanguageTranslator',1,'','2019-06-07 23:39:26'),(168,'LanguageSupportFields',3,'','2019-06-07 23:39:26'),(169,'FieldtypeTextLanguage',1,'','2019-06-07 23:39:26'),(170,'FieldtypePageTitleLanguage',1,'','2019-06-07 23:39:26'),(171,'FieldtypeTextareaLanguage',1,'','2019-06-07 23:39:26');

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1069 DEFAULT CHARSET=utf8;

/*Data for the table `pages` */

insert  into `pages`(`id`,`parent_id`,`templates_id`,`name`,`status`,`modified`,`modified_users_id`,`created`,`created_users_id`,`published`,`sort`) values (1,0,1,'home',9,'2019-06-09 06:49:29',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(2,1,2,'admin',1035,'2019-06-06 23:07:40',40,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',5),(3,2,2,'page',21,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(6,3,2,'add',21,'2019-06-06 23:07:58',40,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(7,1,2,'trash',1039,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',6),(8,3,2,'list',21,'2019-06-06 23:08:07',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(9,3,2,'sort',1047,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',3),(10,3,2,'edit',1045,'2019-06-06 23:08:06',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',4),(11,22,2,'template',21,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(16,22,2,'field',21,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',2),(21,2,2,'module',21,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',2),(22,2,2,'setup',21,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(23,2,2,'login',1035,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',4),(27,1,29,'http404',1035,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',3,'2019-06-06 23:07:14',4),(28,2,2,'access',13,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',3),(29,28,2,'users',29,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(30,28,2,'roles',29,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(31,28,2,'permissions',29,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',2),(32,31,5,'page-edit',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',2),(34,31,5,'page-delete',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',3),(35,31,5,'page-move',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',4),(36,31,5,'page-view',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(37,30,4,'guest',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(38,30,4,'superuser',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(41,29,3,'admin',1,'2019-06-07 23:39:26',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(40,29,3,'guest',25,'2019-06-07 23:39:26',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(50,31,5,'page-sort',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',5),(51,31,5,'page-template',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',6),(52,31,5,'user-admin',25,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',10),(53,31,5,'profile-edit',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',13),(54,31,5,'page-lock',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',8),(300,3,2,'search',1045,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',6),(301,3,2,'trash',1047,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',6),(302,3,2,'link',1041,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',7),(303,3,2,'image',1041,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',8),(304,2,2,'profile',1025,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',5),(1000,1,26,'search',1025,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',3),(1001,1,29,'about',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(1002,1001,29,'what',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',0),(1003,1,29,'templates',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(1004,1001,29,'background',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',1),(1005,1,34,'site-map',1,'2019-06-06 23:07:14',41,'2019-06-06 23:07:14',2,'2019-06-06 23:07:14',2),(1006,31,5,'page-lister',1,'2019-06-06 23:07:14',40,'2019-06-06 23:07:14',40,'2019-06-06 23:07:14',9),(1007,3,2,'lister',1,'2019-06-06 23:07:14',40,'2019-06-06 23:07:14',40,'2019-06-06 23:07:14',9),(1009,3,2,'recent-pages',1,'2019-06-06 23:07:39',40,'2019-06-06 23:07:39',40,'2019-06-06 23:07:39',10),(1010,31,5,'page-edit-recent',1,'2019-06-06 23:07:39',40,'2019-06-06 23:07:39',40,'2019-06-06 23:07:39',10),(1011,22,2,'logs',1,'2019-06-06 23:07:47',40,'2019-06-06 23:07:47',40,'2019-06-06 23:07:47',2),(1012,31,5,'logs-view',1,'2019-06-06 23:07:47',40,'2019-06-06 23:07:47',40,'2019-06-06 23:07:47',11),(1013,31,5,'logs-edit',1,'2019-06-06 23:07:47',40,'2019-06-06 23:07:47',40,'2019-06-06 23:07:47',12),(1014,2,2,'repeaters',1036,'2019-06-07 02:51:19',41,'2019-06-07 02:51:19',41,'2019-06-07 02:51:19',6),(1015,1014,2,'for-field-119',17,'2019-06-07 02:51:59',41,'2019-06-07 02:51:59',41,'2019-06-07 02:51:59',0),(1018,1014,2,'for-field-123',17,'2019-06-07 03:06:23',41,'2019-06-07 03:06:23',41,'2019-06-07 03:06:23',1),(1023,1014,2,'for-field-128',17,'2019-06-07 03:30:47',41,'2019-06-07 03:30:47',41,'2019-06-07 03:30:47',2),(1028,1014,2,'for-field-131',17,'2019-06-07 03:55:32',41,'2019-06-07 03:55:32',41,'2019-06-07 03:55:32',3),(1055,1014,2,'for-field-136',17,'2019-06-07 04:53:12',41,'2019-06-07 04:53:12',41,'2019-06-07 04:53:12',4),(1064,22,2,'languages',16,'2019-06-07 23:39:26',41,'2019-06-07 23:39:26',41,'2019-06-07 23:39:26',3),(1065,1064,48,'default',16,'2019-06-08 03:07:00',41,'2019-06-07 23:39:26',41,'2019-06-07 23:39:26',0),(1066,22,2,'language-translator',1040,'2019-06-07 23:39:26',41,'2019-06-07 23:39:26',41,'2019-06-07 23:39:26',4),(1067,1064,48,'english',1,'2019-06-09 05:57:55',41,'2019-06-07 23:47:30',41,'2019-06-07 23:47:30',1);

/*Table structure for table `pages_access` */

DROP TABLE IF EXISTS `pages_access`;

CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pages_access` */

insert  into `pages_access`(`pages_id`,`templates_id`,`ts`) values (37,2,'2019-06-06 23:07:14'),(38,2,'2019-06-06 23:07:14'),(32,2,'2019-06-06 23:07:14'),(34,2,'2019-06-06 23:07:14'),(35,2,'2019-06-06 23:07:14'),(36,2,'2019-06-06 23:07:14'),(50,2,'2019-06-06 23:07:14'),(51,2,'2019-06-06 23:07:14'),(52,2,'2019-06-06 23:07:14'),(53,2,'2019-06-06 23:07:14'),(54,2,'2019-06-06 23:07:14'),(1006,2,'2019-06-06 23:07:14'),(1010,2,'2019-06-06 23:07:39'),(1012,2,'2019-06-06 23:07:47'),(1013,2,'2019-06-06 23:07:47'),(1065,2,'2019-06-07 23:39:26'),(1067,2,'2019-06-07 23:47:30');

/*Table structure for table `pages_parents` */

DROP TABLE IF EXISTS `pages_parents`;

CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pages_parents` */

insert  into `pages_parents`(`pages_id`,`parents_id`) values (2,1),(3,1),(3,2),(7,1),(22,1),(22,2),(28,1),(28,2),(29,1),(29,2),(29,28),(30,1),(30,2),(30,28),(31,1),(31,2),(31,28),(1001,1),(1002,1),(1002,1001),(1003,1),(1004,1),(1004,1001),(1005,1),(1014,2),(1015,2),(1015,1014),(1018,2),(1018,1014),(1023,2),(1023,1014),(1028,2),(1028,1014),(1055,2),(1055,1014),(1064,2),(1064,22);

/*Table structure for table `pages_sortfields` */

DROP TABLE IF EXISTS `pages_sortfields`;

CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `pages_sortfields` */

/*Table structure for table `session_login_throttle` */

DROP TABLE IF EXISTS `session_login_throttle`;

CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `session_login_throttle` */

insert  into `session_login_throttle`(`name`,`attempts`,`last_attempt`) values ('admin',1,1560265953);

/*Table structure for table `templates` */

DROP TABLE IF EXISTS `templates`;

CREATE TABLE `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `templates` */

insert  into `templates`(`id`,`name`,`fieldgroups_id`,`flags`,`cache_time`,`data`) values (2,'admin',2,8,0,'{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1559601034,\"ns\":\"ProcessWire\"}'),(3,'user',3,8,0,'{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(4,'role',4,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(5,'permission',5,8,0,'{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'),(1,'home',1,0,0,'{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1560266399,\"ns\":\"\\\\\",\"roles\":[37]}'),(29,'basic-page',83,0,0,'{\"slashUrls\":1,\"compile\":3,\"modified\":1559833817,\"ns\":\"\\\\\"}'),(26,'search',80,0,0,'{\"noChildren\":1,\"noParents\":1,\"allowPageNum\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1559601034,\"ns\":\"\\\\\"}'),(34,'sitemap',88,0,0,'{\"noChildren\":1,\"noParents\":1,\"redirectLogin\":23,\"slashUrls\":1,\"compile\":3,\"modified\":1559601034,\"ns\":\"\\\\\"}'),(43,'repeater_header_block',97,8,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1559847119}'),(44,'repeater_besetzung_block',98,8,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1559847983}'),(45,'repeater_accordion_block',99,8,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1559849447}'),(46,'repeater_expertise_cards',100,8,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1559851162}'),(47,'repeater_offices',101,8,0,'{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1559854391}'),(48,'language',102,8,0,'{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1559921966}');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
