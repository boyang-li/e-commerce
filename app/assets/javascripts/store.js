function prepareSideMenu() {
  $('#sideMenu').find('li:has(ul)')
  	.click( function(event) {
  		if (this == event.target) {
  			$(this).toggleClass('list-group-item active');
  			$(this).children('ul').toggle('medium');
  		}
  		return false;
  	})
  	.addClass('list-group-item')
  	.children('ul').hide();
 };

$(document).ready( function() {
	prepareSideMenu()
});