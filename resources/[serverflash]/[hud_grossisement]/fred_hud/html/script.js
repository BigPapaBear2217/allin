window.addEventListener('message', function (event) {
    var hud = this.document.getElementById("statusHud");
    var hud2 = this.document.getElementById("varTemp");
//    console.log(event.data.temp);
    
//    if(typeof(event.data.items) != 'undefined') {
//                    $("#varMoney small").text(event.data.cash);
//        // .toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
//    }
    if(event.data.items) {
        //console.log(JSON.stringify(event.data.items));
        $("#varMoney small").text(event.data.items.cash.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
    }
    
	switch (event.data.action) {
        case 'updateStatusHud':
                if(event.data.temp) { 
                    $("#varTemp small").text(event.data.temp);
                }

                if(event.data.cash) {
                    $("#varMoney small").text(event.data.cash.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ","));
                }

				if(event.data.hunger) {
                    if (event.data.alignment == 'normal') {
                        $("#varHunger").attr("class", "c100 small first p"+ Math.ceil(event.data.hunger));
                    }
                    if (event.data.alignment == "altered") {
                        $("#varHunger").attr("class", "c100 small firstA p"+ Math.ceil(event.data.hunger));
                    }
                }
                
                if(event.data.thirst) {
                    if (event.data.alignment == 'normal') {
                        $("#varThirst").attr("class", "c100 small second p"+ Math.ceil(event.data.thirst));
                    }
                    if (event.data.alignment == 'altered') {
                        $("#varThirst").attr("class", "c100 small secondA p"+ Math.ceil(event.data.thirst));
                    }
                }

                if(event.data.stress) {
                    $("#varStress").attr("class", "c100 small first p"+ Math.ceil(event.data.stress));
                }
    }
    switch (event.data.alignment) {
        case 'normal':
            hud.style.bottom = "30vh";
            hud.style.left = "3.7vw";
            hud2.style.bottom = "0vh";
            hud2.style.left = "0vw";
            break;
        case 'altered':
            hud.style.bottom = "9vh";
            hud.style.left = "1vw";
            hud2.style.bottom = "7vh";
            hud2.style.left = "-2.7vw";
            break;
    }
    if (event.data.show === false) {
        hud.style.display = "none";
    }
    else {
        hud.style.display = "block";
    }
});
