<?php
/**
 * FAQ for Magento
 *
 * @category   Flagbit
 * @package    Flagbit_Faq
 * @copyright  Copyright (c) 2009 Flagbit GmbH & Co. KG <magento@flagbit.de>
 */

/**
 * FAQ for Magento
 *
 * @category   Flagbit
 * @package    Flagbit_Faq
 * @author     Flagbit GmbH & Co. KG <magento@flagbit.de>
 */
class Flagbit_Faq_Adminhtml_FaqController extends Mage_Adminhtml_Controller_Action
{
	/**
	 * Initialization of current view - add's breadcrumps and the current menu status
	 * 
	 * @return Flagbit_Faq_AdminController
	 */
	protected function _initAction()
	{
		$this->_usedModuleName = 'flagbit_faq';
		
		$this->loadLayout()
				->_setActiveMenu('cms/faq')
				->_addBreadcrumb($this->__('CMS'), $this->__('CMS'))
				->_addBreadcrumb($this->__('FAQ'), $this->__('FAQ'));
		
		return $this;
	}

	/**
	 * Displays the FAQ overview grid.
	 * 
	 */
	public function indexAction()
	{
		$this->_initAction()
    			->_addContent($this->getLayout()->createBlock('flagbit_faq/adminhtml_item'))
    			->renderLayout();
	}
	
	/**
	 * Displays the new FAQ item form
	 */
	public function newAction()
	{
		$this->_forward('edit');
	}
	
	/**
	 * Displays the new FAQ item form or the edit FAQ item form.
	 */
	public function editAction()
	{
		$id = $this->getRequest()->getParam('faq_id');
		$model = Mage::getModel('flagbit_faq/faq');
		
		// if current id given -> try to load and edit current FAQ item
		if ($id) {
			$model->load($id);
			if (!$model->getId()) {
				Mage::getSingleton('adminhtml/session')->addError(
					Mage::helper('flagbit_faq')->__('This FAQ item no longer exists')
				);
				$this->_redirect('*/*/');
				return;
			}
		}
		
		$data = Mage::getSingleton('adminhtml/session')->getFormData(true);
		if (!empty($data)) {
			$model->setData($data);
		}
		
		Mage::register('faq', $model);
		
		$this->_initAction()
				->_addBreadcrumb(
					$id
						? Mage::helper('flagbit_faq')->__('Edit FAQ Item')
						: Mage::helper('flagbit_faq')->__('New FAQ Item'),
					$id
						? Mage::helper('flagbit_faq')->__('Edit FAQ Item')
						: Mage::helper('flagbit_faq')->__('New FAQ Item')
				)
				->_addContent(
						$this->getLayout()
								->createBlock('flagbit_faq/adminhtml_item_edit')
								->setData('action', $this->getUrl('adminhtml/faq/save'))
				)
				->_addLeft($this->getLayout()->createBlock('flagbit_faq/adminhtml_item_edit_tabs'));
		
		$this->renderLayout();
	}

	/**
	 * Action that does the actual saving process and redirects back to overview
	 */
	public function saveAction()
	{
		// check if data sent
		if ($data = $this->getRequest()->getPost()) {
			
			// init model and set data
			$model = Mage::getModel('flagbit_faq/faq');
			$model->setData($data);
			
			// try to save it
			try {
				// save the data
				$model->save();
				
				// display success message
				Mage::getSingleton('adminhtml/session')->addSuccess(
						Mage::helper('cms')->__('FAQ Item was successfully saved')
				);
				// clear previously saved data from session
				Mage::getSingleton('adminhtml/session')->setFormData(false);
				// check if 'Save and Continue'
				if ($this->getRequest()->getParam('back')) {
					$this->_redirect('*/*/edit', array (
							'faq_id' => $model->getId() ));
					return;
				}
				// go to grid
				$this->_redirect('*/*/');
				return;
			
			}
			catch (Exception $e) {
				// display error message
				Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
				// save data in session
				Mage::getSingleton('adminhtml/session')->setFormData($data);
				// redirect to edit form
				$this->_redirect('*/*/edit', array (
						'faq_id' => $this->getRequest()->getParam('faq_id') ));
				return;
			}
		}
		$this->_redirect('*/*/');
	}

	
	/**
	 * Simple access control
	 *
	 * @return boolean True if user is allowed to edit FAQ
	 */
	protected function _isAllowed()
	{
		return Mage::getSingleton('admin/session')->isAllowed('admin/cms/faq');
	}

	/**
	 * Action that does the actual saving process and redirects back to overview
	 */
	public function deleteAction()
	{
		// check if we know what should be deleted
		if ($id = $this->getRequest()->getParam('faq_id')) {
			try {
				
				// init model and delete
				$model = Mage::getModel('flagbit_faq/faq');
				$model->load($id);
				$model->delete();
				
				// display success message
				Mage::getSingleton('adminhtml/session')->addSuccess(Mage::helper('cms')->__('FAQ Entry was successfully deleted'));
				
				// go to grid
				$this->_redirect('*/*/');
				return;
			
			}
			catch (Exception $e) {
				
				// display error message
				Mage::getSingleton('adminhtml/session')->addError($e->getMessage());
				
				// go back to edit form
				$this->_redirect('*/*/edit', array (
						'faq_id' => $id ));
				return;
			}
		}
		
		// display error message
		Mage::getSingleton('adminhtml/session')->addError(Mage::helper('cms')->__('Unable to find a FAQ entry to delete'));
		
		// go to grid
		$this->_redirect('*/*/');
	}
}
