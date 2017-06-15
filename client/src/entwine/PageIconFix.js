/* Page Icon Fix
===================================================================================================================== */

import $ from 'jquery';

$.entwine('ss', function($) {
  
  // Handle SilverStripe Class Names:
  
  $('*[class*=class-]').entwine({
    
    onmatch: function() {
      
      // Replace Backslashes with Underscores:
      
      $(this).attr('class', $(this).attr('class').replace(/\\/g, '_'));
      
      // Trigger Next Method:
      
      this._super();
      
    }
    
  });
  
});
