<?php
$installer = $this;
$installer->startSetup();



$installer->addAttribute('catalog_category', 'mtmenu_cat_block_right', array(
	'group'				=> 'Main Menu',
	'label'				=> 'Block Right',
	'note'				=> "This field is applicable only for top-level categories.",
	'type'				=> 'text',
	'input'				=> 'textarea',
	'visible'			=> true,
	'required'			=> false,
	'backend'			=> '',
	'frontend'			=> '',
	'searchable'		=> false,
	'filterable'		=> false,
	'comparable'		=> false,
	'user_defined'		=> true,
	'visible_on_front'	=> true,
	'wysiwyg_enabled'	=> true,
	'is_html_allowed_on_front'	=> true,
	'global'			=> Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
));

$installer->addAttribute('catalog_category', 'mtmenu_cat_block_proportions', array(
	'group'				=> 'Main Menu',
	'label'				=> 'Proportions: Subcategories / Block Right',
	'note'				=> "Proportions between block of subcategories and Block Right. This field is applicable only for top-level categories.",
	'type'				=> 'varchar',
	'input'				=> 'select',
	'source'			=> 'megamenu/system_config_source_category_attribute_source_block_proportions',
	'visible'			=> true,
	'required'			=> false,
	'backend'			=> '',
	'frontend'			=> '',
	'searchable'		=> false,
	'filterable'		=> false,
	'comparable'		=> false,
	'user_defined'		=> true,
	'visible_on_front'	=> true,
	'wysiwyg_enabled'	=> false,
	'is_html_allowed_on_front'	=> false,
	'global'			=> Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
));

$installer->addAttribute('catalog_category', 'mtmenu_cat_groups', array(
    'group'				=> 'Main Menu',
    'label'				=> 'Category Menu Type',
    'note'				=> "Show subcategories by. This field is applicable only for top-level categories.",
    'type'				=> 'varchar',
    'input'				=> 'select',
    'source'			=> 'megamenu/system_config_source_category_attribute_source_block_types',
    'visible'			=> true,
    'required'			=> false,
    'backend'			=> '',
    'frontend'			=> '',
    'searchable'		=> false,
    'filterable'		=> false,
    'comparable'		=> false,
    'user_defined'		=> true,
    'visible_on_front'	=> true,
    'wysiwyg_enabled'	=> false,
    'is_html_allowed_on_front'	=> false,
    'global'			=> Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
));

$installer->addAttribute('catalog_category', 'mtmenu_cat_block_top', array(
	'group'				=> 'Main Menu',
	'label'				=> 'Block Top',
	'type'				=> 'text',
	'input'				=> 'textarea',
	'visible'			=> true,
	'required'			=> false,
	'backend'			=> '',
	'frontend'			=> '',
	'searchable'		=> false,
	'filterable'		=> false,
	'comparable'		=> false,
	'user_defined'		=> true,
	'visible_on_front'	=> true,
	'wysiwyg_enabled'	=> true,
	'is_html_allowed_on_front'	=> true,
	'global'			=> Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
));

$installer->addAttribute('catalog_category', 'mtmenu_cat_block_bottom', array(
	'group'				=> 'Main Menu',
	'label'				=> 'Block Bottom',
	'type'				=> 'text',
	'input'				=> 'textarea',
	'visible'			=> true,
	'required'			=> false,
	'backend'			=> '',
	'frontend'			=> '',
	'searchable'		=> false,
	'filterable'		=> false,
	'comparable'		=> false,
	'user_defined'		=> true,
	'visible_on_front'	=> true,
	'wysiwyg_enabled'	=> true,
	'is_html_allowed_on_front'	=> true,
	'global'			=> Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
));

$installer->addAttribute('catalog_category', 'mtmenu_cat_label', array(
	'group'				=> 'Main Menu',
	'label'				=> 'Category Label',
	'note'				=> "Labels have to be defined in menu settings",
	'type'				=> 'varchar',
	'input'				=> 'select',
	'source'			=> 'megamenu/system_config_source_category_attribute_source_categorylabel',
	'visible'			=> true,
	'required'			=> false,
	'backend'			=> '',
	'frontend'			=> '',
	'searchable'		=> false,
	'filterable'		=> false,
	'comparable'		=> false,
	'user_defined'		=> true,
	'visible_on_front'	=> true,
	'wysiwyg_enabled'	=> false,
	'is_html_allowed_on_front'	=> false,
	'global'			=> Mage_Catalog_Model_Resource_Eav_Attribute::SCOPE_STORE,
));



$installer->endSetup();