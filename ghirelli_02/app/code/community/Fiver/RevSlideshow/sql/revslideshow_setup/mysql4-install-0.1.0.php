<?php
/**
 * @category    Fiver
 * @package     Fiver_RevSlideshow
 * @license     http://fiver.net
 * @author      Dzung Nova <dzung@fiver.vn>
 */

	$this->startSetup();
	
	$this->run("

		DROP TABLE IF EXISTS {$this->getTable('revslideshow_slideshow')};
		CREATE TABLE IF NOT EXISTS {$this->getTable('revslideshow_slideshow')} (
			`slideshow_id` int(11) unsigned NOT NULL auto_increment,
			`store_id` int(11) unsigned NOT NULL,
			`title` varchar(255) NOT NULL default '',
			`slide_url` varchar(255) NOT NULL default '',
			`slide_target` varchar(255) NOT NULL default '',
			`slide_transition` varchar(255) NOT NULL default '',
			`slot_amount` int(11) NOT NULL default 0,
			`transition_rotation` varchar(255) NOT NULL default '',
			`transition_duration` int(11) NOT NULL default 0,
			`delay` varchar(255) NOT NULL default '',
			`image` varchar(255) NOT NULL default '',
			`alt_text` varchar(255) NOT NULL default '',
			`sort_order` tinyint(3) unsigned NOT NULL default 1,
			`is_enabled` tinyint(1) unsigned NOT NULL default 1,
			`json` text NOT NULL default '',
			KEY `ID_SLIDESHOW` (`slideshow_id`),
			PRIMARY KEY (`slideshow_id`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;		

	");
	$this->run("

		DROP TABLE IF EXISTS {$this->getTable('revslideshow_stores')};
		CREATE TABLE IF NOT EXISTS {$this->getTable('revslideshow_stores')} (
			`slideshow_id` int(11) NOT NULL default 0,
			`store_id` int(11) NOT NULL default 0,
			PRIMARY KEY (`slideshow_id`,`store_id`),
			KEY `IDX_SLIDESHOW_STORE_STORE_ID` (`store_id`)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8;		

	");	
	$this->endSetup();
