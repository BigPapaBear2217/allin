$(document).ready(function(){
  window.addEventListener('message', function( event ) {
if (event.data.action == 'open') {
      var type      = event.data.type;
	  var fdest  	= event.data.array['fdest'];
      var ldest  	= event.data.array['ldest'];
      var sender  	= event.data.array['sender'];
      var text  	= event.data.array['text']; 
    
     if (type == "read") {
        $('#reg-paper').css('background', 'url(assets/images/papertelegram.png)');
        $('#reg-paper').css('background-repeat', 'no-repeat');
        $('#reg-paper').css('background-size', '100% 100%');  
        $('#last-name').show(); 
        $('#last-name2').show();  
        $('#first-name').text(sender);
        $('#dob').text(text);
        $('#last-name').text(fdest);
        $('#last-name2').text(ldest); 
         
        $('#send_button').hide();
        $('#telegram').hide();
        $('#textid').hide();
        $('#textid2').hide(); 
        $('#cancel_button').hide();
        $('#reg-paper').show();   
      } else if ( type == "send") {
        $('#last-name').hide(); 
        $('#last-name2').hide();   
        $('#reg-paper').css('background', 'url(assets/images/papertelegram.png)');
        $('#reg-paper').css('background-repeat', 'no-repeat');
        $('#reg-paper').css('background-size', '100% 100%');   
          
        $('#first-name').text(sender);
        $('#send_button').show();
        $('#telegram').show();
        $('#textid').show();
        $('#textid2').show();  
        $('#cancel_button').show(); 
        $('#reg-paper').show();
      } else if ( type == "send2") {
        $('#last-name').hide(); 
        $('#last-name2').hide();   
        $('#reg-paper').css('background', 'url(assets/images/anonytelegram.png)');
        $('#reg-paper').css('background-repeat', 'no-repeat');
        $('#reg-paper').css('background-size', '100% 100%');  
          
        $('#first-name').text(sender);
        $('#send_button').show();
        $('#telegram').show();
        $('#textid').show();
        $('#textid2').show();  
        $('#cancel_button').show(); 
        $('#reg-paper').show();
      } else if ( type == "read2") {
        $('#last-name').show(); 
        $('#last-name2').show();  
        $('#first-name').text(sender);
        $('#dob').text(text);
        $('#last-name').text(fdest);
        $('#last-name2').text(ldest); 
        $('#reg-paper').css('background', 'url(assets/images/anonytelegram.png)');
        $('#reg-paper').css('background-repeat', 'no-repeat');
        $('#reg-paper').css('background-size', '100% 100%');   
        $('#send_button').hide();
        $('#telegram').hide();
        $('#textid').hide();
        $('#textid2').hide(); 
        $('#cancel_button').hide();
        $('#reg-paper').show();  
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
      init()
    }
  });
});

function init() {
document.getElementById("textid").value = "";
document.getElementById("textid2").value = "";
document.getElementById("telegram").value = "";
}
window.onload = init;

$(document).on('click', '#send_button', function() {
	  var text = $('#telegram').val();
      var firstname = $('#textid').val();    
      var lastname = $('#textid2').val();       
      $.post('https://SS-Telegram/sendtelegram', JSON.stringify({ text:text, firstname:firstname, lastname:lastname }))
});

$(document).on('click', '#cancel_button', function() { 
$.post('https://SS-Telegram/closetelegram', JSON.stringify({ }))
});