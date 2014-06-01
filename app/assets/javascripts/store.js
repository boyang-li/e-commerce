// function prepareSideMenu() {
//   $('#sideMenu').find('a:has(ul)')
//   	.click( function(event) {
//   		if (this == event.target) {
//   			$(this).toggleClass('list-group-item active');
//   			$(this).children('ul').toggle('medium');
//   		}
//   		return false;
//   	})
//   	.addClass('list-group-item')
//   	.children('ul').hide();
//  };

// $(document).ready( function() {
// 	prepareSideMenu()
// });

$(document).ready(function() {
  $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
  $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
});