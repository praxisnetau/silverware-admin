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

use SilverStripe\Admin\LeftAndMainExtension;
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\Control\Director;
use SilverStripe\Core\ClassInfo;
use SilverStripe\Core\Convert;
use SilverStripe\Core\Injector\Injector;
use SilverStripe\View\Requirements;

/**
 * An extension which generates correct page icon CSS for the admin (fixes a bug in SS4 alpha).
 *
 * @package SilverWare\Admin\Extensions
 * @author Colin Tucker <colin@praxis.net.au>
 * @copyright 2017 Praxis Interactive
 * @license https://opensource.org/licenses/BSD-3-Clause BSD-3-Clause
 * @link https://github.com/praxisnetau/silverware-admin
 */
class PageIconExtension extends LeftAndMainExtension
{
    /**
     * Event handler method triggered when the admin initialises.
     *
     * @return void
     */
    public function init()
    {
        Requirements::customCSS($this->generateCustomCSS());
    }
    
    /**
     * Generates a string of custom CSS to display the icons for site tree subclasses.
     *
     * @return string
     */
    private function generateCustomCSS()
    {
        // Create CSS Array:
        
        $css = [];
        
        // Define CSS Array:
        
        foreach (ClassInfo::subclassesFor(SiteTree::class) as $class) {
            
            // Obtain Icon Config:
            
            if ($icon = Injector::inst()->get($class)->config()->icon) {
                
                // Create CSS Selector:
                
                $selector = implode(
                    ', ',
                    array_map(
                        function ($value) use ($class) {
                            return sprintf($value, Convert::raw2htmlid($class));
                        },
                        $this->getPageIconSelectors()
                    )
                );
                
                // Create CSS Definition:
                
                if (Director::fileExists($icon)) {
                    $css[] = sprintf("%s { background: transparent url('%s') 0 0 no-repeat; }", $selector, $icon);
                } else {
                    $css[] = sprintf("%s { %s }", $selector, $icon);
                }
                
            }
            
        }
        
        // Answer CSS String:
        
        return implode("\n", $css);
    }
    
    /**
     * Answers an array of page icon selectors to use when generating the custom CSS.
     *
     * @return array
     */
    private function getPageIconSelectors()
    {
        return $this->owner->config()->page_icon_selectors;
    }
}
