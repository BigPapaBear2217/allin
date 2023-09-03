$(function(){
      
    $("#prev").on(    "click",  function()
    {  
        trigger_page = trigger_page - 1;
        if(trigger_page < 1){trigger_page = 1}
        PageHide(); 
        TabThroughPages();
    }  
    );  
    $("#next").on(    "click",  function()
    {  
        trigger_page = trigger_page + 1;
        if(trigger_page > 3){trigger_page = 3}        
        PageHide(); 
        TabThroughPages();    
    }     
    );        

    var title = "Default Title";         
    var display = "hidden";
    var subtext1 = "Title1 SubText";
    var subtext2 = "Title2 SubText";
    var subtext3 = "Title3 SubText";
    var subtext1_title = "Default SubText1";
    var subtext2_title = "Default SubText2";
    var subtext3_title = "Default SubText3";
    var duration = 2000; 
    var window_visible = false
    var trigger_page = 1

    function TabThroughPages()
    {
        if(trigger_page == 1)
        {
            Func_Page1();  
        } 
        if(trigger_page == 2)
        {
            Func_Page2();  
        }
        if(trigger_page == 3)
        {
            Func_Page3();  
        }
    }
      
    function PageHide(){
        document.getElementById("title").innerHTML = "";
        document.getElementById("title").style.visibility = "hidden";
        document.getElementById("chapter_title").innerHTML = "";     
        document.getElementById("chapter_title").style.visibility = "hidden";
        document.getElementById("page").innerHTML = "";        
        document.getElementById("page").style.visibility = "hidden";
      }; 

    function Func_Page1(){
        document.getElementById("title").innerHTML = title;
        document.getElementById("title").style.visibility = "visible";
        document.getElementById("chapter_title").innerHTML = subtext1_title;        
        document.getElementById("chapter_title").style.visibility = "visible";
        document.getElementById("page").innerHTML = subtext1;        
        document.getElementById("page").style.visibility = "visible";
      };  
      function Func_Page2(){        
        document.getElementById("title").innerHTML = title;
        document.getElementById("title").style.visibility = "visible";
        document.getElementById("chapter_title").innerHTML = subtext2_title;   
        document.getElementById("chapter_title").style.visibility = "visible";
        document.getElementById("page").innerHTML = subtext2;
        document.getElementById("page").style.visibility = "visible";
      }; 
      function Func_Page3(){        
        document.getElementById("title").innerHTML = title;
        document.getElementById("title").style.visibility = "visible";
        document.getElementById("chapter_title").innerHTML = subtext3_title;  
        document.getElementById("chapter_title").style.visibility = "visible";
        document.getElementById("page").innerHTML = subtext3;
        document.getElementById("page").style.visibility = "visible";
      };   

    function Func_Close()
    { 
        $("#container").hide();          
        $.post("http://mm_burns/exit/", JSON.stringify({}) );
    };   

    function Func_Open()
    { 
        $("#container").show(); 
    };   
 

    window.addEventListener('message', function(event)
    { 
        var mydata = event.data;             
        if (mydata !== undefined) 
        {
            if (mydata.type === "openstory") 
            {
                if (mydata.title !== undefined) { title = mydata.title; };
                if (mydata.subtext1 !== undefined) { subtext1 = mydata.subtext1; };
                if (mydata.subtext2 !== undefined) { subtext2 = mydata.subtext2; };
                if (mydata.subtext3 !== undefined) { subtext3 = mydata.subtext3; };   
                if (mydata.subtext1_title !== undefined) { subtext1_title = mydata.subtext1_title; };   
                if (mydata.subtext2_title !== undefined) { subtext2_title = mydata.subtext2_title; };   
                if (mydata.subtext3_title !== undefined) { subtext3_title = mydata.subtext3_title; }; 
                if (mydata.display === true) 
                {
                    Func_Page1();
                    Func_Open();      
                    window_visible = true;         
                } 
                else
                {
                    if (window_visible == true)
                    { 
                        Func_Close();
                        window_visible = false;   
                    }
                }         
            }
            else
            {
                if (window_visible == true)
                { 
                    Func_Close();
                    window_visible = false;   
                }
            }
        }
        else
        {
            if (window_visible == true)
            { 
                Func_Close();
                window_visible = false;   
            }
        }
    });
    document.onkeyup = function(data)
    {
        if(data.which == 27) // escape
        {
            if (window_visible == true)
            { 
                Func_Close();
                window_visible = false;   
            } 
        }
        if(data.which == 46) // delete
        {
            if (window_visible == true)
            { 
                Func_Close();
                window_visible = false;   
            }
        }    
        if(data.which == 8) // backspace
        {
            if (window_visible == true)
            { 
                Func_Close();
                window_visible = false;   
            }
        }       
    }   
    $( document ).ready( function(data){        
        Func_Close();
        window_visible = false;       
    } )
});
 