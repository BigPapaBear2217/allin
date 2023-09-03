$(document).ready(function(){
  window.addEventListener('message', function( event ) {
if (event.data.action == 'open') {
      var type = event.data.type;
      var text = event.data.array;
     if (type == "read") { 
        $('#intro-text').show();
        $("#intro-text > h2").text(text)
        $("#intro-text > h2").css('opacity', 1).lettering('words').children("span").lettering().children("span").lettering(); 
      } 
    
} else if (event.data.action == 'close') {
      $('#first-name').text('');
      $('#last-name').text('');
      $('#dob').text('');
      $('#reg-plate').text('');
      $('#sex').text('');
      $('#reg-date').text('');
      $('#reg-payment').text('');
      $('#reg-paper').hide();
    }
  });
});