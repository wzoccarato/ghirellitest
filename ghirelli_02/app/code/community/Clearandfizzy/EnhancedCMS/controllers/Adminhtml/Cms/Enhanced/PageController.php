<?php
/**
 * @category    Clearandfizzy
 * @package     Clearandfizzy_EnhancedCMS
 * @copyright   Copyright (c) 2012 Clearandfizzy ltd. (http://www.clearandfizzy.com/)
 * @license     http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 *
 */
require_once 'Mage/Adminhtml/controllers/Cms/PageController.php';
class Clearandfizzy_EnhancedCMS_Adminhtml_Cms_Enhanced_PageController extends Mage_Adminhtml_Cms_PageController {

	private $destination_filename = 'cms_pages.csv';

	/**
	 * Exports a CSV file
	 */
	public function exportCsvAction() {
        $fileName   = 'cms_pages.csv';
        $content    = $this->getLayout()->createBlock('clearandfizzy_enhancedcms/cms_enhanced_page_grid')->getCsvFile();

        $this->_prepareDownloadResponse($fileName, $content);

	}

	/**
	 * Renders the Upload CSV Form
	 */
	public function uploadCsvAction() {
		$this->loadLayout();
		$block = $this->getLayout()->createBlock('clearandfizzy_enhancedcms/cms_enhanced_page_upload');
		$this->getLayout()->getBlock('content')->append($block);
		$this->renderLayout();
	} // end



	/**
	 * Imports a csv into the static block model
	 */
	public function importCsvAction() {

		// get uploaded file
		$filepath = $this->getUploadedFile();

		if ($filepath != null) {
			try {
				// import into model
				Mage::getSingleton('clearandfizzy_enhancedcms/import_page')->process($filepath);
				Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('cms')->__('CSV Imported Successfully'));

			} catch (Exception $e) {
				Mage::logException($e);
				Mage::getSingleton('adminhtml/session')->addError(Mage::helper('cms')->__('An Error occured importing CSV.'));
				Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
			} // end if
			
		} // end

		// redirect to grid page.
		$this->_redirect('*/cms_page/index');

	} // end


	/**
	 * Handles CSV upload
	 * @return string $filepath
	 */
	private function getUploadedFile() {
		$filepath = null;

		if(isset($_FILES['importfile']['name']) and (file_exists($_FILES['importfile']['tmp_name']))) {
			try {
				$uploader = new Varien_File_Uploader('importfile');
				$uploader->setAllowedExtensions(array('csv','txt')); // or pdf or anything
				$uploader->setAllowRenameFiles(false);
				$uploader->setFilesDispersion(false);

				$path = Mage::helper('clearandfizzy_enhancedcms/data')->getImportPath();
				$uploader->save($path, $this->destination_filename);
				$filepath = $path . $this->destination_filename;

			} catch(Exception $e) {
				// log error
				Mage::logException($e);
			} // end if

		} // end if

		return $filepath;

	}

}
