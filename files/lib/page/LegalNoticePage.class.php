<?php
// wcf imports
require_once(WCF_DIR.'lib/page/AbstractPage.class.php');
require_once(WCF_DIR.'lib/data/message/bbcode/MessageParser.class.php');

/**
 * Shows the legalNotice page.
 * 
 * @svn			$Id: LegalNoticePage.class.php 1467 2010-06-06 14:52:47Z TobiasH87 $
 * @package		de.community4wcf.wcf.page.legalNotice
 */

class LegalNoticePage extends AbstractPage {
	// system
	public $templateName = 'legalNotice';

	/**
	 * @see Page::assignVariables()
	 */
	public function assignVariables() {
		parent::assignVariables();
		
		WCF::getTPL()->assign(array(
		'legalnoticetext' => MessageParser::getInstance()->parse(LEGALNOTICE_TEXT, LEGALNOTICE_TEXT_ENABLE_SMILIES, LEGALNOTICE_TEXT_ENABLE_HTML, LEGALNOTICE_TEXT_ENABLE_BBCODES),
		'allowSpidersToIndexThisPage' => LEGALNOTICE_ALLOW_SPIDER));
	}

	/**
	 * @see Page::show()
	 */
	public function show() {
		// set active menu item
		require_once(WCF_DIR.'lib/page/util/menu/PageMenu.class.php');
		PageMenu::setActiveMenuItem('wcf.header.menu.legalnotice');
		
		// check module options
		if (!MODULE_LEGALNOTICE) {
			throw new IllegalLinkException();
		}
		
		// check url_use
		if (LEGALNOTICE_URL_USE == 1) {
			HeaderUtil::redirect(LEGALNOTICE_URL, false);
			exit;
		}
		
		parent::show();
	}	
}
?>