/**
 * @category    MT
 * @package     KidsPlaza
 * @copyright   Copyright (C) 2008-2015 ZooExtension.com. All Rights Reserved.
 * @license     GNU General Public License version 2 or later
 * @author ZooExtension.com
 * @email       magento@cleversoft.co
 */

var isBootstrapEvent = false;
if (window.jQuery) {
    jQuery('*').on('hide.bs.popover', function(){ isBootstrapEvent = true; });
    jQuery('*').on('hide.bs.dropdown', function(){ isBootstrapEvent = true; });
    jQuery('*').on('hide.bs.collapse', function(){ isBootstrapEvent = true; });
    jQuery('*').on('hide.bs.modal', function(){ isBootstrapEvent = true; });
}
