<?php
/**
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 *
 * @category   Soczed
 * @package    Soczed_Less
 * @copyright  Copyright (c) 2012 Soczed <magento@soczed.com> (Benoît Leulliette <benoit@soczed.com>)
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

set_include_path(get_include_path().PS.Mage::getBaseDir('lib').DS.'Soczed'.DS.'less');
require_once('lessc.inc.php');

class Soczed_Less_Model_Observer
{
    protected function _getHelper()
    {
        return Mage::helper('less');
    }
    
    protected function _getConfigHelper()
    {
        return Mage::helper('less/config');
    }
    
    protected function _checkWritableFile($file)
    {
        $pathinfo = pathinfo($file);
        
        if (empty($pathinfo['dirname']) || !is_writable($pathinfo['dirname'])) {
            return $this->_getHelper()->__('Directory is not writable');
        }
        if (is_file($file) && !is_writable($file)) {
            return $this->_getHelper()->__('File is not writable');
        }
        
        return true;
    }
    
    protected function _getLessVariables($file)
    {
        // Base variables
        // @todo complete this array with any variable that could be useful
        $variables = array();
        
        // Get additional variables
        $response = new Varien_Object(array('less_variables' => array()));
        
        Mage::dispatchEvent(
            'soczed_less_additional_variables',
            array(
                'response'  => $response,
                'file_name' => $file,
            )
        );
        
        if (is_array($additional = $response->getLessVariables())) {
            $variables = array_merge($variables, $additional);
        }
        
        return $variables;
    }
    
    protected function _getLessFunctions($file)
    {
        // Base functions
        // @todo complete this array with any function that could be useful
        $functions = array();
        
        // Get additional functions
        $response = new Varien_Object(array('less_functions' => array()));
        
        Mage::dispatchEvent(
            'soczed_less_additional_functions',
            array(
                'response'  => $response,
                'file_name' => $file,
            )
        );
        
        if (is_array($additional = $response->getLessFunctions())) {
            $functions = array_merge($functions, $additional);
        }
        
        return $functions;
    }
    
    
    public function beforeLayoutRender($observer)
    {
    	$storeId = Mage::app()->getStore()->getStoreId();
        if (!$this->_getConfigHelper()->isEnabled()) {
            return;
        }
        
        $layout = Mage::getSingleton('core/layout');
        
        if (($head = $layout->getBlock('head'))
            && ($head instanceof Mage_Page_Block_Html_Head)) {
            $baseJsDir     = Mage::getBaseDir() . DS . 'js' . DS;
            $designPackage = Mage::getDesign();
            $newItems      = $head->getData('items');
            $body_font_size  = Mage::getStoreConfig('themeoptions_theming/theme_fonts/body_font_size', $storeId);
            $body_font  = Mage::getStoreConfig('themeoptions_theming/theme_fonts/body_font', $storeId);
            $heading_font  = Mage::getStoreConfig('themeoptions_theming/theme_fonts/heading_font', $storeId);
            $globalVars    = 
            array(
            "body_font_size" => $body_font_size,
            "body_font" => $body_font,
            "heading_font" => $heading_font,
            "l_background_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_background_color', $storeId),
            "l_text_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_text_color', $storeId),
            "l_link_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_link_color', $storeId),
            "l_link_hover_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_link_hover_color', $storeId),
            "l_active_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_active_color', $storeId),
            "l_heading_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_heading_color', $storeId),
            "l_icons_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_icons_color', $storeId),
            "l_buttons_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_buttons_color', $storeId),
            "l_buttons_hover_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_buttons_hover_color', $storeId),
            "l_new_label_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_new_label_color', $storeId),
            "l_sale_label_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/l_sale_label_color', $storeId),
            
            "d_background_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_background_color', $storeId),
            "d_text_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_text_color', $storeId),
            "d_link_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_link_color', $storeId),
            "d_link_hover_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_link_hover_color', $storeId),
            "d_active_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_active_color', $storeId),
            "d_heading_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_heading_color', $storeId),
            "d_icons_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_icons_color', $storeId),
            "d_buttons_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_buttons_color', $storeId),
            "d_buttons_hover_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_buttons_hover_color', $storeId),
            "d_new_label_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_new_label_color', $storeId),
            "d_sale_label_color" => Mage::getStoreConfig('themeoptions_theming/theme_body/d_sale_label_color', $storeId),
            
            "footer_one_background" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_one_background', $storeId),
            "footer_one_text_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_one_text_color', $storeId),
            "footer_one_link_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_one_link_color', $storeId),
            "footer_one_link_hover_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_one_link_hover_color', $storeId),
            "footer_copyright_background" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_copyright_background', $storeId),
            "footer_copyright_text_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_copyright_text_color', $storeId),
            "footer_copyright_link_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_copyright_link_color', $storeId),
            "footer_copyright_link_hover_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_copyright_link_hover_color', $storeId),
       
            "footer_one_heading_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_one_heading_color', $storeId),
            "footer_copyright_heading_color" => Mage::getStoreConfig('themeoptions_theming/theme_footer/footer_copyright_heading_color', $storeId)
            );
     
            // Cache by file path
            $filesCollection = Mage::getModel('less/file')
                ->getCollection()
                ->addFilter('store_id',$storeId)
                ->load();

            $filesIds = array_flip($filesCollection->toOptionHash());
            foreach ($newItems as $key => $item) {
                if (in_array($item['type'], array('js_css', 'skin_css'))) {
                    // CSS file
                    if (substr($item['name'], -5) == '.less') {
                        // LESS file
                        if ($item['type'] == 'js_css') {
                            $lessFile = $baseJsDir . $item['name'];
                        } else {
                            $lessFile = $designPackage->getFilename($item['name'], array('_type' => 'skin'));
                        }
                        $baseFile = ltrim(str_replace(Mage::getBaseDir(), '', $lessFile), DS);
                        $cssFile  = substr($lessFile, 0, -5) . '_store'.$storeId.'.css';          
                        //die();            
                        try {
                            // Init file config
                            if (isset($filesIds[$baseFile])) {
                                $isNewModel      = false;
                                $model           = $filesCollection->getItemById($filesIds[$baseFile]);
                                $oldCache        = $model->getCache();
                                $forceRebuild    = (bool)$model->getForceRebuild();
                                $customVars      = $model->getCustomVariables();
                                $useGlobalVars   = (bool)$model->getUseGlobalVariables();
                                $forceGlobalVars = (bool)$model->getForceGlobalVariables();
                            } else {
                                $isNewModel      = true;
                                $model           = null;
                                $oldCache        = null;
                                $forceRebuild    = false;
                                $customVars      = array();
                                $useGlobalVars   = true;
                                $forceGlobalVars = false;
                            }
                            
                            // Get all needed variables for current file
                            if (is_array($customVars)) {
                                $oldVars    = $customVars;
                                $customVars = array();
                                
                                foreach ($oldVars as $oldVar) {
                                    $customVars[$oldVar['code']] = $oldVar['value'];
                                }
                            } else {
                                $customVars = array();
                            }
                            if ($useGlobalVars) {
                                $variables  = array_merge(
                                    ($forceGlobalVars  ? $customVars : $globalVars),
                                    ($forceGlobalVars ? $globalVars : $customVars)
                                );
                            } else {
                                $variables = $customVars;
                            }
                            $variables = array_merge($variables, $this->_getLessVariables($item['name']));
                            
                            // Compile if needed (depends on cache and rebuild flag)
                            $oldCache = (is_array($oldCache) ? $oldCache : $lessFile);
                            
                            try {
                                $newCache = lessc::cexecute(
                                    $oldCache,
                                    $forceRebuild,
                                    $variables,
                                    $this->_getLessFunctions($item['name'])
                                );
                            } catch (Exception $e) {
                                if ($this->_getConfigHelper()->getShowErrors()) {
                                    if (!is_string($result = $this->_checkWritableFile($cssFile))) {
                                        file_put_contents($cssFile, "\n/* ".$e->getMessage()." */\n", FILE_APPEND);
                                    }
                                }
                                throw $e;
                            }
                            if (!is_array($oldCache) || ($newCache['updated'] > $oldCache['updated'])) {
                                if (!is_string($result = $this->_checkWritableFile($cssFile))) {
                                    file_put_contents($cssFile, $newCache['compiled']);
                                } else {
                                    Mage::throwException($result);
                                }
                                if ($isNewModel) {
                                    $model = Mage::getModel('less/file')->setPath($baseFile);
                                }
                                // Won't be further needed and takes most of the place
                                unset($newCache['compiled']); 
                                $model->setCache($newCache)->save();
                            }
                        } catch (Exception $e) {
                            Mage::logException($e);
                        }
                        
                        // Force adding the CSS file instead of Less one
                        $newItems[$key]['name'] = substr($item['name'], 0, -5) . '_store'.$storeId.'.css';
                    }
                }
            }
            
            // Replace old items with parsed ones
            $head->setData('items', $newItems);
        }
    }
}