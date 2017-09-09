<?php

/**
 * This file is part of SilverWare.
 *
 * PHP version >=5.6.0
 *
 * For full copyright and license information, please view the
 * LICENSE.md file that was distributed with this source code.
 *
 * @package SilverWare\Admin\Extensions
 * @author Colin Tucker <colin@praxis.net.au>
 * @copyright 2017 Praxis Interactive
 * @license https://opensource.org/licenses/BSD-3-Clause BSD-3-Clause
 * @link https://github.com/praxisnetau/silverware-admin
 */

namespace SilverWare\Admin\Extensions;

use SilverStripe\Admin\LeftAndMainExtension as BaseExtension;
use SilverStripe\View\Requirements;

/**
 * An extension to add SilverWare Admin features to the admin.
 *
 * @package SilverWare\Admin\Extensions
 * @author Colin Tucker <colin@praxis.net.au>
 * @copyright 2017 Praxis Interactive
 * @license https://opensource.org/licenses/BSD-3-Clause BSD-3-Clause
 * @link https://github.com/praxisnetau/silverware-admin
 */
class LeftAndMainExtension extends BaseExtension
{
    /**
     * Array of admin styles from the extended object.
     *
     * @var array
     */
    private $styles = [];
    
    /**
     * Event handler method triggered when the admin initialises.
     *
     * @return void
     */
    public function init()
    {
        if (is_array($this->owner->config()->admin_style)) {
            $this->styles = $this->owner->config()->admin_style;
        }
        
        if (!$this->owner->config()->admin_style_disabled) {
            Requirements::customCSS($this->generateCustomCSS());
        }
    }
    
    /**
     * Answers the admin style with the specified name.
     *
     * @param $name Name of style.
     *
     * @return string
     */
    public function getAdminStyle($name)
    {
        if ($this->hasAdminStyle($name)) {
            return $this->styles[$name];
        }
    }
    
    /**
     * Answers true if an admin style exists with the specified name.
     *
     * @param $name Name of style.
     *
     * @return boolean
     */
    public function hasAdminStyle($name)
    {
        return isset($this->styles[$name]);
    }
    
    /**
     * Answers true if disabled page types are to be hidden from the CMS add form.
     *
     * @return boolean
     */
    public function getHideDisabledPageTypes()
    {
        return (boolean) $this->owner->config()->hide_disabled_page_types;
    }
    
    /**
     * Generates a string of custom CSS for the admin.
     *
     * @return string
     */
    private function generateCustomCSS()
    {
        return $this->owner->renderWith(sprintf('%s\CustomCSS', self::class));
    }
}
