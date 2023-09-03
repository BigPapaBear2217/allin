$(document).keydown(function(e){
	var close = 27;
	var close2 = 8;
	switch (e.keyCode) {
		case close:
               $.post('http://gum_farming/cancel')
          break;
		case close2:
               $.post('http://gum_farming/cancel')
          break;
	}
});
$(function () {
     $.post('http://gum_farming/screen', JSON.stringify({ x:window.screen.availWidth, y:window.screen.availHeight}))
     window.addEventListener('click', event => {
          $.post('http://gum_farming/simulateClick')
      });
})
