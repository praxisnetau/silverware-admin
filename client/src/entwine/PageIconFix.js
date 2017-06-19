/* Page Icon Fix
===================================================================================================================== */

import $ from 'jquery';

$.entwine('ss', function($) {
  
  // Handle SilverStripe Class Names:
  
  $('*[class*=class-]').entwine({
    
    onmatch: function() {
      
      // Fix Page Icon:
      
      this.fixIcon();
      
      // Trigger Next Method:
      
      this._super();
      
    },
    
    fixIcon: function() {
      
      // Replace Backslashes with Underscores
      
      $(this).attr('class', $(this).attr('class').replace(/\\/g, '_'));
      
    }
    
  });
  
  // Handle CMS Tree Updates:
  
  $('body').on('DOMSubtreeModified', 'div.cms-tree ul li[class*=class-]', function() {
    
    // Match Class Names with Backslashes:
    
    if ($(this).attr('class').indexOf('\\') > -1) {
      $(this).fixIcon();
    }
    
  });
  
});
