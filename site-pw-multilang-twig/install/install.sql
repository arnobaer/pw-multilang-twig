# --- WireDatabaseBackup {"time":"2018-05-18 13:53:25","user":"","dbName":"opendata_dev","description":"","tables":[],"excludeTables":["pages_drafts","pages_roles","permissions","roles","roles_permissions","users","users_roles","user","role","permission"],"excludeCreateTables":[],"excludeExportTables":["field_roles","field_permissions","field_email","field_pass","caches","session_login_throttle","page_path_history"]}

DROP TABLE IF EXISTS `caches`;
CREATE TABLE `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_admin_theme`;
CREATE TABLE `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_content`;
CREATE TABLE `field_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  `data1019` mediumtext,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1019` (`data1019`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `field_email`;
CREATE TABLE `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_iso639`;
CREATE TABLE `field_iso639` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_iso639` (`pages_id`, `data`) VALUES('1019', 'en');
INSERT INTO `field_iso639` (`pages_id`, `data`) VALUES('1017', 'de');

DROP TABLE IF EXISTS `field_language`;
CREATE TABLE `field_language` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('40', '1017', '0');
INSERT INTO `field_language` (`pages_id`, `data`, `sort`) VALUES('41', '1017', '0');

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

INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--admin-php.json', '0', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--admintheme-php.json', '1', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--adminthemeframework-php.json', '2', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--field-php.json', '3', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldgroups-php.json', '4', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fields-php.json', '5', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldselectorinfo-php.json', '6', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldtype-php.json', '7', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--fieldtypemulti-php.json', '8', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--filecompiler-php.json', '9', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--filecompilermodule-php.json', '10', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--filevalidatormodule-php.json', '11', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--functions-php.json', '12', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--imagesizerengine-php.json', '13', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--inputfield-php.json', '14', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--inputfieldwrapper-php.json', '15', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--markupqa-php.json', '16', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--modules-php.json', '17', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--modulesduplicates-php.json', '18', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--pageimage-php.json', '19', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--pageseditor-php.json', '20', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--paginatedarray-php.json', '21', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--password-php.json', '22', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--permissions-php.json', '23', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--process-php.json', '24', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--sanitizer-php.json', '25', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--session-php.json', '26', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--sessioncsrf-php.json', '27', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wirecache-php.json', '28', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wiredatetime-php.json', '29', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wirehttp-php.json', '30', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wireshutdown-php.json', '31', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wiretempdir-php.json', '32', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--core--wireupload-php.json', '33', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemedefault--adminthemedefault-module.json', '34', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--adminthemereno-module.json', '35', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--adminthemerenohelpers-php.json', '36', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--debug-inc.json', '37', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--admintheme--adminthemereno--default-php.json', '38', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentfilterakismet-module.json', '39', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentform-php.json', '40', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentlist-php.json', '41', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentnotifications-php.json', '42', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--commentstars-php.json', '43', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--fieldtypecomments-module.json', '44', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypecomments--inputfieldcommentsadmin-module.json', '45', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypedatetime-module.json', '46', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypefieldsettabopen-module.json', '47', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypefile-module.json', '48', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypefloat-module.json', '49', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeinteger-module.json', '50', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypemodule-module.json', '51', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeoptions--fieldtypeoptions-module.json', '52', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionconfig-php.json', '53', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeoptions--selectableoptionmanager-php.json', '54', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypepage-module.json', '55', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypepagetable-module.json', '56', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--config-php.json', '57', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--fieldtyperepeater-module.json', '58', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtyperepeater--inputfieldrepeater-module.json', '59', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeselector-module.json', '60', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypetext-module.json', '61', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypetextareahelper-php.json', '62', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--fieldtype--fieldtypeurl-module.json', '63', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--filecompilertags-module.json', '64', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldasmselect--inputfieldasmselect-module.json', '65', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldbutton-module.json', '66', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldcheckbox-module.json', '67', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldcheckboxes--inputfieldcheckboxes-module.json', '68', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldckeditor--inputfieldckeditor-module.json', '69', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfielddatetime--inputfielddatetime-module.json', '70', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldemail-module.json', '71', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldfieldset-module.json', '72', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldfile--inputfieldfile-module.json', '73', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldfloat-module.json', '74', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldform-module.json', '75', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldhidden-module.json', '76', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldicon--inputfieldicon-module.json', '77', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldimage--inputfieldimage-module.json', '78', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldinteger-module.json', '79', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldmarkup-module.json', '80', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldname-module.json', '81', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpage--inputfieldpage-module.json', '82', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpageautocomplete--inputfieldpageautocomplete-module.json', '83', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselect-module.json', '84', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagelistselect--inputfieldpagelistselectmultiple-module.json', '85', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagename--inputfieldpagename-module.json', '86', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetable-module.json', '87', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagetable--inputfieldpagetableajax-php.json', '88', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpagetitle--inputfieldpagetitle-module.json', '89', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldpassword--inputfieldpassword-module.json', '90', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldradios--inputfieldradios-module.json', '91', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldselect-module.json', '92', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldselectmultiple-module.json', '93', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldselector--inputfieldselector-module.json', '94', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldsubmit--inputfieldsubmit-module.json', '95', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldtext-module.json', '96', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldtextarea-module.json', '97', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--inputfield--inputfieldurl-module.json', '98', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--jquery--jqueryui--jqueryui-module.json', '99', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--jquery--jquerywiretabs--jquerywiretabs-module.json', '100', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languageparser-php.json', '101', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupport-module.json', '102', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupportfields-module.json', '103', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagesupportpagenames-module.json', '104', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagetabs-module.json', '105', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--languagetranslator-php.json', '106', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--languagesupport--processlanguage-module.json', '107', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--markup--markuppagefields-module.json', '108', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--markup--markuppagernav--markuppagernav-module.json', '109', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--page--pagefrontedit--pagefrontedit-module.json', '110', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--page--pagefrontedit--pagefronteditconfig-php.json', '111', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--pagepaths-module.json', '112', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--pagerender-module.json', '113', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processcommentsmanager--processcommentsmanager-module.json', '114', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processfield--processfield-module.json', '115', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processfield--processfieldexportimport-php.json', '116', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processforgotpassword-module.json', '117', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processhome-module.json', '118', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processlist-module.json', '119', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processlogger--processlogger-module.json', '120', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processlogin--processlogin-module.json', '121', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processmodule--processmodule-module.json', '122', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processmodule--processmoduleinstall-php.json', '123', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageadd--processpageadd-module.json', '124', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageclone-module.json', '125', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageedit--pagebookmarks-php.json', '126', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageedit--processpageedit-module.json', '127', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageeditimageselect--processpageeditimageselect-module.json', '128', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageeditlink--processpageeditlink-module.json', '129', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelist-module.json', '130', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelistactions-php.json', '131', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelistrender-php.json', '132', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelist--processpagelistrenderjson-php.json', '133', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelister--processpagelister-module.json', '134', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagelister--processpagelisterbookmarks-php.json', '135', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagesearch--processpagesearch-module.json', '136', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagesort-module.json', '137', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagetrash-module.json', '138', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpagetype--processpagetype-module.json', '139', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpageview-module.json', '140', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processpermission--processpermission-module.json', '141', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processprofile--processprofile-module.json', '142', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processrecentpages--processrecentpages-module.json', '143', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processrole--processrole-module.json', '144', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processtemplate--processtemplate-module.json', '145', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processtemplate--processtemplateexportimport-php.json', '146', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processuser--processuser-module.json', '147', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--process--processuser--processuserconfig-php.json', '148', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--session--sessionhandlerdb--processsessiondb-module.json', '149', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--session--sessionhandlerdb--sessionhandlerdb-module.json', '150', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--session--sessionloginthrottle--sessionloginthrottle-module.json', '151', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--system--systemnotifications--systemnotifications-module.json', '152', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--system--systemnotifications--systemnotificationsconfig-php.json', '153', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--system--systemupdater--systemupdater-module.json', '154', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformatterentities-module.json', '155', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformattermarkdownextra--textformattermarkdownextra-module.json', '156', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--modules--textformatter--textformattersmartypants--textformattersmartypants-module.json', '157', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--templates-admin--debug-inc.json', '158', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');
INSERT INTO `field_language_files` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`, `filedata`) VALUES('1017', 'wire--templates-admin--default-php.json', '159', '[\"\"]', '2018-05-18 13:11:41', '2018-05-18 13:11:41', '');

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


DROP TABLE IF EXISTS `field_pass`;
CREATE TABLE `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

DROP TABLE IF EXISTS `field_permissions`;
CREATE TABLE `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_process`;
CREATE TABLE `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_process` (`pages_id`, `data`) VALUES('6', '17');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('3', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('8', '12');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('9', '14');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('10', '7');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('11', '47');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('16', '48');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('300', '104');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('21', '50');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('29', '66');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('23', '10');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('304', '138');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('31', '136');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('22', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('30', '68');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('303', '129');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('2', '87');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('302', '121');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('301', '109');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('28', '76');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1007', '150');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1010', '159');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1012', '161');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1016', '166');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1018', '167');
INSERT INTO `field_process` (`pages_id`, `data`) VALUES('1020', '179');

DROP TABLE IF EXISTS `field_roles`;
CREATE TABLE `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `field_title`;
CREATE TABLE `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `data1019` text,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  KEY `data_exact1019` (`data1019`(250)),
  FULLTEXT KEY `data` (`data`),
  FULLTEXT KEY `data1019` (`data1019`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('11', 'Templates', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('16', 'Fields', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('22', 'Setup', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('3', 'Pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('6', 'Add Page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('8', 'Tree', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('9', 'Save Sort', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('10', 'Edit', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('21', 'Modules', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('29', 'Users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('30', 'Roles', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('2', 'Admin', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('7', 'Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('27', '404 Not Found', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('302', 'Insert Link', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('23', 'Login', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('304', 'Profile', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('301', 'Empty Trash', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('300', 'Search', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('303', 'Insert Image', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('28', 'Access', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('31', 'Permissions', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('32', 'Edit pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('34', 'Delete pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('35', 'Move pages (change parent)', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('36', 'View pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('50', 'Sort child pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('51', 'Change templates on pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('52', 'Administer users', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('53', 'User can update profile/password', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('54', 'Lock or unlock a page', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1', 'Willkommen!', 'Welcome!');
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1006', 'Use Page Lister', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1007', 'Find', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1010', 'Recent', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1011', 'Can see recently edited pages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1012', 'Logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1013', 'Can view system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1014', 'Can manage system logs', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1015', 'Administer languages and static translation files', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1016', 'Languages', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1017', 'Deutsch', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1018', 'Language Translator', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1019', 'English', NULL);
INSERT INTO `field_title` (`pages_id`, `data`, `data1019`) VALUES('1020', 'Export/Import', '');

DROP TABLE IF EXISTS `fieldgroups`;
CREATE TABLE `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups` (`id`, `name`) VALUES('2', 'admin');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('3', 'user');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('4', 'role');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('5', 'permission');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('1', 'home');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('83', 'basic-page');
INSERT INTO `fieldgroups` (`id`, `name`) VALUES('97', 'language');

DROP TABLE IF EXISTS `fieldgroups_fields`;
CREATE TABLE `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '2', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('2', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '4', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '92', '1', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('4', '5', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('5', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '97', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('1', '1', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '3', '0', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '98', '2', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '101', '1', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '1', '0', '{\"columnWidth\":50}');
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('3', '100', '4', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('97', '99', '3', NULL);
INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES('83', '102', '1', NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('1', 'FieldtypePageTitleLanguage', 'title', '13', 'Titel', '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255,\"label1019\":\"Title\",\"minlength\":0,\"showCount\":0,\"langBlankInherit\":0,\"collapsed\":0}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('2', 'FieldtypeModule', 'process', '25', 'Process', '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('3', 'FieldtypePassword', 'pass', '24', 'Set Password', '{\"collapsed\":1,\"size\":50,\"maxlength\":128}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('5', 'FieldtypePage', 'permissions', '24', 'Permissions', '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('4', 'FieldtypePage', 'roles', '24', 'Roles', '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('92', 'FieldtypeEmail', 'email', '9', 'E-Mail Address', '{\"size\":70,\"maxlength\":255}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('97', 'FieldtypeModule', 'admin_theme', '8', 'Admin Theme', '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('98', 'FieldtypeFile', 'language_files_site', '24', 'Site Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for translations specific to your site (like files in \\/site\\/templates\\/ for example).\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('99', 'FieldtypeFile', 'language_files', '24', 'Core Translation Files', '{\"extensions\":\"json csv\",\"maxFiles\":0,\"inputfieldClass\":\"InputfieldFile\",\"unzip\":1,\"description\":\"Use this field for [language packs](http:\\/\\/modules.processwire.com\\/categories\\/language-pack\\/). To delete all files, double-click the trash can for any file, then save.\",\"descriptionRows\":0,\"fileSchema\":6}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('100', 'FieldtypePage', 'language', '24', 'Language', '{\"derefAsPage\":1,\"parent_id\":1016,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldRadios\",\"required\":1}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('101', 'FieldtypeText', 'iso639', '0', 'ISO 639-1 Sprachencode', '{\"collapsed\":0,\"required\":1,\"minlength\":2,\"maxlength\":2,\"showCount\":0,\"size\":0,\"pattern\":\"[a-z]*\",\"label1019\":\"ISO 639-1 Language Code\"}');
INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES('102', 'FieldtypeTextareaLanguage', 'content', '0', 'Inhalt', '{\"label1019\":\"Content\",\"textformatters\":[\"TextformatterMarkdownExtra\"],\"inputfieldClass\":\"InputfieldTextarea\",\"contentType\":0,\"langBlankInherit\":0,\"collapsed\":0,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5}');

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('1', 'FieldtypeTextarea', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('2', 'FieldtypeNumber', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('3', 'FieldtypeText', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('4', 'FieldtypePage', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('30', 'InputfieldForm', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('6', 'FieldtypeFile', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('7', 'ProcessPageEdit', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('10', 'ProcessLogin', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('12', 'ProcessPageList', '0', '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('121', 'ProcessPageEditLink', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('14', 'ProcessPageSort', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('15', 'InputfieldPageListSelect', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('117', 'JqueryUI', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('17', 'ProcessPageAdd', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('125', 'SessionLoginThrottle', '11', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('122', 'InputfieldPassword', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('25', 'InputfieldAsmSelect', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('116', 'JqueryCore', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('27', 'FieldtypeModule', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('28', 'FieldtypeDatetime', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('29', 'FieldtypeEmail', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('108', 'InputfieldURL', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('32', 'InputfieldSubmit', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('33', 'InputfieldWrapper', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('34', 'InputfieldText', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('35', 'InputfieldTextarea', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('36', 'InputfieldSelect', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('37', 'InputfieldCheckbox', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('38', 'InputfieldCheckboxes', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('39', 'InputfieldRadios', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('40', 'InputfieldHidden', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('41', 'InputfieldName', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('43', 'InputfieldSelectMultiple', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('45', 'JqueryWireTabs', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('46', 'ProcessPage', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('47', 'ProcessTemplate', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('48', 'ProcessField', '32', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('50', 'ProcessModule', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('114', 'PagePermissions', '3', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('97', 'FieldtypeCheckbox', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('115', 'PageRender', '3', '{\"clearCache\":1}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('55', 'InputfieldFile', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('56', 'InputfieldImage', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('57', 'FieldtypeImage', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('60', 'InputfieldPage', '0', '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('61', 'TextformatterEntities', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('66', 'ProcessUser', '0', '{\"showFields\":[\"name\",\"email\",\"roles\"]}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('67', 'MarkupAdminDataTable', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('68', 'ProcessRole', '0', '{\"showFields\":[\"name\"]}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('76', 'ProcessList', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('78', 'InputfieldFieldset', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('79', 'InputfieldMarkup', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('80', 'InputfieldEmail', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('89', 'FieldtypeFloat', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('83', 'ProcessPageView', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('84', 'FieldtypeInteger', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('85', 'InputfieldInteger', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('86', 'InputfieldPageName', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('87', 'ProcessHome', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('90', 'InputfieldFloat', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('94', 'InputfieldDatetime', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('98', 'MarkupPagerNav', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('129', 'ProcessPageEditImageSelect', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('103', 'JqueryTableSorter', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('104', 'ProcessPageSearch', '1', '{\"searchFields\":\"title\",\"displayField\":\"title path\"}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('105', 'FieldtypeFieldsetOpen', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('106', 'FieldtypeFieldsetClose', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('107', 'FieldtypeFieldsetTabOpen', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('109', 'ProcessPageTrash', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('111', 'FieldtypePageTitle', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('112', 'InputfieldPageTitle', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('113', 'MarkupPageArray', '3', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('131', 'InputfieldButton', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('133', 'FieldtypePassword', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('134', 'ProcessPageType', '33', '{\"showFields\":[]}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('135', 'FieldtypeURL', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('136', 'ProcessPermission', '1', '{\"showFields\":[\"name\",\"title\"]}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('137', 'InputfieldPageListSelectMultiple', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('138', 'ProcessProfile', '1', '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\",\"admin_theme\",\"language\"]}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('139', 'SystemUpdater', '1', '{\"systemVersion\":16,\"coreVersion\":\"3.0.98\"}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('148', 'AdminThemeDefault', '10', '{\"colors\":\"classic\"}', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('149', 'InputfieldSelector', '42', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('150', 'ProcessPageLister', '32', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('151', 'JqueryMagnific', '1', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('155', 'InputfieldCKEditor', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('156', 'MarkupHTMLPurifier', '0', '', '2018-05-18 10:42:22');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('159', 'ProcessRecentPages', '1', '', '2018-05-18 10:42:48');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('160', 'AdminThemeUikit', '10', '', '2018-05-18 10:42:49');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('161', 'ProcessLogger', '1', '', '2018-05-18 10:42:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('162', 'InputfieldIcon', '0', '', '2018-05-18 10:42:57');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('163', 'AdminThemeReno', '10', '{\"colors\":\"\",\"avatar_field_user\":\"\",\"userFields_user\":\"name\",\"notices\":\"fa-bell\",\"home\":\"fa-home\",\"signout\":\"fa-power-off\",\"page\":\"fa-file-text\",\"setup\":\"fa-wrench\",\"module\":\"fa-briefcase\",\"access\":\"fa-unlock\"}', '2018-05-18 10:43:42');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('164', 'TextformatterMarkdownExtra', '1', '{\"flavor\":\"2\"}', '2018-05-18 10:49:52');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('165', 'LanguageSupport', '35', '{\"languagesPageID\":1016,\"defaultLanguagePageID\":1017,\"otherLanguagePageIDs\":[1019],\"languageTranslatorPageID\":1018}', '2018-05-18 10:50:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('166', 'ProcessLanguage', '1', '', '2018-05-18 10:50:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('167', 'ProcessLanguageTranslator', '1', '', '2018-05-18 10:50:10');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('168', 'LanguageSupportFields', '3', '', '2018-05-18 10:50:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('169', 'FieldtypeTextLanguage', '1', '', '2018-05-18 10:50:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('170', 'FieldtypePageTitleLanguage', '1', '', '2018-05-18 10:50:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('171', 'FieldtypeTextareaLanguage', '1', '', '2018-05-18 10:50:23');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('172', 'LanguageSupportPageNames', '3', '{\"moduleVersion\":9}', '2018-05-18 10:50:28');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('173', 'LanguageTabs', '11', '', '2018-05-18 10:50:32');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('184', 'LanguageTranslatorTwig', '3', '{\"intlextension\":1}', '2018-05-18 11:44:07');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('183', 'TemplateTwigReplace', '3', '{\"fuel\":\"page, pages, config, session, user, input\",\"ignoredTemplates\":[],\"allowedTemplates\":[],\"cacheEnable\":\"\",\"cacheDir\":\"twig\\/\",\"cacheAutoReload\":1,\"autoEscape\":\"\",\"twigVersion\":\"1.18.0\"}', '2018-05-18 11:43:34');
INSERT INTO `modules` (`id`, `class`, `flags`, `data`, `created`) VALUES('177', 'LanguageTranslatorList', '3', '', '2018-05-18 10:58:11');

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
  `name1019` varchar(128) CHARACTER SET ascii DEFAULT NULL,
  `status1019` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  UNIQUE KEY `name1019_parent_id` (`name1019`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=1022 DEFAULT CHARSET=utf8;

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1', '0', '1', 'home', '9', '2018-05-18 11:31:03', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', 'en', '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('2', '1', '2', 'processwire', '1035', '2018-05-18 10:42:49', '40', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('3', '2', '2', 'page', '21', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('6', '3', '2', 'add', '21', '2018-05-18 10:43:04', '40', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('7', '1', '2', 'trash', '1039', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('8', '3', '2', 'list', '21', '2018-05-18 10:43:05', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('9', '3', '2', 'sort', '1047', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('10', '3', '2', 'edit', '1045', '2018-05-18 10:43:05', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('11', '22', '2', 'template', '21', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('16', '22', '2', 'field', '21', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('21', '2', '2', 'module', '21', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('22', '2', '2', 'setup', '21', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('23', '2', '2', 'login', '1035', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('27', '1', '29', 'http404', '1035', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '3', '2018-05-18 10:42:22', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('28', '2', '2', 'access', '13', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('29', '28', '2', 'users', '29', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('30', '28', '2', 'roles', '29', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('31', '28', '2', 'permissions', '29', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('32', '31', '5', 'page-edit', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('34', '31', '5', 'page-delete', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('35', '31', '5', 'page-move', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('36', '31', '5', 'page-view', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('37', '30', '4', 'guest', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('38', '30', '4', 'superuser', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('41', '29', '3', 'admin', '1', '2018-05-18 10:50:10', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('40', '29', '3', 'guest', '25', '2018-05-18 10:50:10', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('50', '31', '5', 'page-sort', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('51', '31', '5', 'page-template', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('52', '31', '5', 'user-admin', '25', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('53', '31', '5', 'profile-edit', '1', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('54', '31', '5', 'page-lock', '1', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('300', '3', '2', 'search', '1045', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('301', '3', '2', 'trash', '1047', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '6', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('302', '3', '2', 'link', '1041', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '7', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('303', '3', '2', 'image', '1041', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '2', '2018-05-18 10:42:22', '8', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('304', '2', '2', 'profile', '1025', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '41', '2018-05-18 10:42:22', '5', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1006', '31', '5', 'page-lister', '1', '2018-05-18 10:42:22', '40', '2018-05-18 10:42:22', '40', '2018-05-18 10:42:22', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1007', '3', '2', 'lister', '1', '2018-05-18 10:42:22', '40', '2018-05-18 10:42:22', '40', '2018-05-18 10:42:22', '9', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1010', '3', '2', 'recent-pages', '1', '2018-05-18 10:42:48', '40', '2018-05-18 10:42:48', '40', '2018-05-18 10:42:48', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1011', '31', '5', 'page-edit-recent', '1', '2018-05-18 10:42:48', '40', '2018-05-18 10:42:48', '40', '2018-05-18 10:42:48', '10', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1012', '22', '2', 'logs', '1', '2018-05-18 10:42:57', '40', '2018-05-18 10:42:57', '40', '2018-05-18 10:42:57', '2', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1013', '31', '5', 'logs-view', '1', '2018-05-18 10:42:57', '40', '2018-05-18 10:42:57', '40', '2018-05-18 10:42:57', '11', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1014', '31', '5', 'logs-edit', '1', '2018-05-18 10:42:57', '40', '2018-05-18 10:42:57', '40', '2018-05-18 10:42:57', '12', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1015', '31', '5', 'lang-edit', '1', '2018-05-18 10:50:10', '41', '2018-05-18 10:50:10', '41', '2018-05-18 10:50:10', '13', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1016', '22', '2', 'languages', '16', '2018-05-18 10:50:10', '41', '2018-05-18 10:50:10', '41', '2018-05-18 10:50:10', '3', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1017', '1016', '43', 'default', '16', '2018-05-18 11:14:46', '41', '2018-05-18 10:50:10', '41', '2018-05-18 10:50:10', '0', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1018', '22', '2', 'language-translator', '21', '2018-05-18 10:58:11', '41', '2018-05-18 10:50:10', '41', '2018-05-18 10:50:10', '4', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1019', '1016', '43', 'english', '1', '2018-05-18 11:08:31', '41', '2018-05-18 11:05:25', '41', '2018-05-18 11:05:25', '1', NULL, '1');
INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `published`, `sort`, `name1019`, `status1019`) VALUES('1020', '7', '2', '1020.3.10_export-import', '8193', '2018-05-18 11:21:45', '41', '2018-05-18 11:20:17', '41', '2018-05-18 11:20:17', '10', NULL, '0');

DROP TABLE IF EXISTS `pages_access`;
CREATE TABLE `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('37', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('38', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('32', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('34', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('35', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('36', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('50', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('51', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('52', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('53', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('54', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1006', '2', '2018-05-18 10:42:22');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1011', '2', '2018-05-18 10:42:48');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1013', '2', '2018-05-18 10:42:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1014', '2', '2018-05-18 10:42:57');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1015', '2', '2018-05-18 10:50:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1017', '2', '2018-05-18 10:50:10');
INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES('1019', '2', '2018-05-18 11:05:25');

DROP TABLE IF EXISTS `pages_parents`;
CREATE TABLE `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('2', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('3', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('22', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('28', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('29', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('30', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '1');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('31', '28');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '2');
INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES('1016', '22');

DROP TABLE IF EXISTS `pages_sortfields`;
CREATE TABLE `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `session_login_throttle`;
CREATE TABLE `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('2', 'admin', '2', '8', '0', '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1523039149,\"ns\":\"ProcessWire\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('3', 'user', '3', '8', '0', '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('4', 'role', '4', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('5', 'permission', '5', '8', '0', '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('1', 'home', '1', '0', '0', '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1526643949,\"ns\":\"\\\\\",\"roles\":[37]}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('29', 'basic-page', '83', '0', '0', '{\"slashUrls\":1,\"compile\":3,\"modified\":1526643976,\"ns\":\"\\\\\"}');
INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES('43', 'language', '97', '8', '0', '{\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Language\",\"pageLabelField\":\"name\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noChangeTemplate\":1,\"noUnpublish\":1,\"compile\":3,\"nameContentTab\":1,\"modified\":1526641694}');

UPDATE pages SET created_users_id=41, modified_users_id=41, created=NOW(), modified=NOW();

# --- /WireDatabaseBackup {"numTables":17,"numCreateTables":23,"numInserts":466,"numSeconds":0}
