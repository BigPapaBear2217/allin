var petData = []
var modelSkin = 0
var skinValue = 1
var myPetData = []
var isOver = false
var called = false
var callrange = 0
var yrange = 0
var preEdit = 0
var language = []
var selectedDog = 0
var selectedSkills = []

$(document).keydown(function(e) {
    var close = 27;
    var close2 = 8;
    switch (e.keyCode) {
        case close:
            hideMenu()
            $.post('http://gum_pets/close', JSON.stringify({}));

        break;
        case close2:
            hideMenu()
            $.post('http://gum_pets/close', JSON.stringify({}));
        break;
    }
});

function healthpet_bar(){
    var health_active = $("#health_active");
    var prec = health_active.children().children().text();
    if (prec > 100)
        prec = 100;
    var deg = prec*3.6;
    if (deg <= 180){
        health_active.css('background-image','linear-gradient(' + (90+deg) + 'deg, transparent 50%, #000000 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
    else{
        health_active.css('background-image','linear-gradient(' + (deg-90) + 'deg, transparent 50%, #ffffff 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
}

function stamina_bar(){
    var stamina_active = $("#stamina_active");
    var prec = stamina_active.children().children().text();
    if (prec > 100)
        prec = 100;
    var deg = prec*3.6;
    if (deg <= 180){
        stamina_active.css('background-image','linear-gradient(' + (90+deg) + 'deg, transparent 50%, #000000 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
    else{
        stamina_active.css('background-image','linear-gradient(' + (deg-90) + 'deg, transparent 50%, #ffffff 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
}


function hungerpet_bar(){
    var hunger_active = $("#hunger_active");
    var prec = hunger_active.children().children().text();
    if (prec > 100)
        prec = 100;
    var deg = prec*3.6;
    if (deg <= 180){
        hunger_active.css('background-image','linear-gradient(' + (90+deg) + 'deg, transparent 50%, #000000 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
    else{
        hunger_active.css('background-image','linear-gradient(' + (deg-90) + 'deg, transparent 50%, #ffffff 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
}

function thirstpet_bar(){
    var thirst_active = $("#thirst_active");
    var prec = thirst_active.children().children().text();
    if (prec > 100)
        prec = 100;
    var deg = prec*3.6;
    if (deg <= 180){
        thirst_active.css('background-image','linear-gradient(' + (90+deg) + 'deg, transparent 50%, #000000 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
    else{
        thirst_active.css('background-image','linear-gradient(' + (deg-90) + 'deg, transparent 50%, #ffffff 50%),linear-gradient(90deg, #000000 50%, transparent 50%)');
    }
}
var inHand = false
var onShoulder = false
var supporter = 0
$(document).ready(function () {
    $("#hunger_active").hide();
    $("#thirst_active").hide();
    $("#health_active").hide();
    $("#favoriteEmotes").hide();
    $("#petStore").hide();
    $("#petManage").hide();
    window.addEventListener("message", function (event) {
            if (event.data.show===true) {
                show_hud(event.data.show);
                setpet_health(event.data.health);
                setpet_hunger(event.data.hunger);
                setpet_thirst(event.data.thirst);
            } else{
                show_hud(event.data.show);
            }
            if (event.data.type==="store") {
                if (event.data.open === true) {
                    language = event.data.language
                    if (event.data.gold == true) {
                        $("#gold").show();
                        $("#goldText").show();
                    } else {
                        $("#gold").hide();
                        $("#goldText").hide();
                    }
                    $("#petStore").show();
                    petData = event.data.petData
                    loadStore()
                } else {
                    $("#petManage").hide();
                    $("#petStore").hide();
                    $("#favoriteEmotes").hide();
                }
            }
            if (event.data.type==="petManage") {
                if (event.data.open===true) {
                    myPetData = event.data.myPetData
                    language = event.data.language
                    $("#petManage").show();
                    $("#favoriteEmotes").show();
                    loadMyPets()
                    callrange=event.data.callrange
                    yrange=event.data.yrange
                    onShoulder = event.data.shoulder
                    inHand = event.data.hand
                } else {
                    loadStore()
                    $("#petManage").hide();
                    $("#favoriteEmotes").hide();
                }
            }
            if (event.data.type==="callPet") {
                called = event.data.called
            }
    });
});

function makeInteraction(num) {
    $.post('http://gum_pets/makeInteraction', JSON.stringify({interaction:num}));
}

function showStore(state) {
    if (state===true){
        $("#petStore").show();
    } else {
        $("#petStore").hide();
    }
}

function buyGold() {
    $.post('http://gum_pets/buyGold', JSON.stringify({skin:skinValue,model:petData[modelSkin].Model,price:petData[modelSkin].Gold}));
}
function buyMoney() {
    $.post('http://gum_pets/buyMoney', JSON.stringify({skin:skinValue,model:petData[modelSkin].Model,price:petData[modelSkin].Dolar}));
}


function loadMyPets() {
    const tableBody2 = document.getElementById('myPetData1');
    let dataHtml2 = '';
    for (var a in myPetData) {
        if (myPetData[a].selected === 1) {
            if (called === false) {
                dataHtml2 += '<div class="button2" id="callPet" onclick="callPet()">'+language[20]+'</div>'
            } else {
                dataHtml2 += '<div class="button2" id="callPet" onclick="callPet()">'+language[19]+'</div>'
            }
        }
    }
    for (var a in myPetData) {
        if (myPetData[a].selected === 1) {
            selectedSkills = myPetData[a].skills
            dataHtml2 += '<div class="buttonConfig" id="buttonConfig" onclick="openSetup()">'+language[22]+'</div>'
        }
    }
    tableBody2.innerHTML = dataHtml2
    const tableBody = document.getElementById('myPetData2');
    let dataHtml = '';
    dataHtml += '<div class="buttonCategory">'+language[62]+'</div>'
    for (var a in myPetData) {
        if (myPetData[a].selected === 1) {
            selectedDog = a
            if (isNaN(myPetData[a].age)) {
                dataHtml += '<div class="button3" id="petButon" onmouseover="setPets(\''+myPetData[a].id+'\')"><div id="textLeft">'+language[25]+' : '+myPetData[a].mname+'</br>'+language[28]+' : '+myPetData[a].age+'</div><div id="textRight">'+language[42]+' : '+myPetData[a].name+'</br>'+language[17]+' : '+Math.round(myPetData[a].exp*100)/100+'</div></div>'
            } else {
                dataHtml += '<div class="button3" id="petButon" onmouseover="setPets(\''+myPetData[a].id+'\')"><div id="textLeft">'+language[25]+' : '+myPetData[a].mname+'</br>'+language[28]+' : '+Math.round(myPetData[a].age*100)/100+'</div><div id="textRight">'+language[42]+' : '+myPetData[a].name+'</br>'+language[17]+' : '+Math.round(myPetData[a].exp*100)/100+'</div></div>'
            }
        }
    }
    for (var a in myPetData) {
        if (myPetData[a].selected === 0) {
            if (isNaN(myPetData[a].age)) {
                dataHtml += '<div class="button4" id="petButon" onmouseover="setPets(\''+myPetData[a].id+'\')" onclick="selectPet(\''+myPetData[a].id+'\',\''+myPetData[a].name+'\')"><div id="textLeft">'+language[25]+' : '+myPetData[a].mname+'</br>'+language[28]+' : '+myPetData[a].age+'</div><div id="textRight">'+language[42]+' : '+myPetData[a].name+'</br>'+language[17]+' : '+Math.round(myPetData[a].exp*100)/100+'</div></div>'
            } else {
                dataHtml += '<div class="button4" id="petButon" onmouseover="setPets(\''+myPetData[a].id+'\')" onclick="selectPet(\''+myPetData[a].id+'\',\''+myPetData[a].name+'\')"><div id="textLeft">'+language[25]+' : '+myPetData[a].mname+'</br>'+language[28]+' : '+Math.round(myPetData[a].age*100)/100+'</div><div id="textRight">'+language[42]+' : '+myPetData[a].name+'</br>'+language[17]+' : '+Math.round(myPetData[a].exp*100)/100+'</div></div>'
            }
        }
    }
    tableBody.innerHTML = dataHtml
    if (document.getElementById("buttonConfig") !== null) {
        document.getElementById("buttonConfig").style.height = "25px"
    }
    if (isOver == true) {
        reloadSetup()
    }
}

function setPets(id) {
    preEdit = id
}

function renameMe() {
    $.post('http://gum_pets/renamePet', JSON.stringify({id:preEdit}));
}

function transferMe() {
    $.post('http://gum_pets/transferPet', JSON.stringify({id:preEdit}));
}

function deleteMe() {
    $.post('http://gum_pets/deletePet', JSON.stringify({id:preEdit}));
}


function selectPet(id, name) {
    $.post('http://gum_pets/selectPet', JSON.stringify({id:id, name:name}));
}

function callPet() {
    if (called === true) {
        document.getElementById('callPet').innerHTML = ""+language[20]+""
    } else {
        document.getElementById('callPet').innerHTML = ""+language[19]+""
    }
    $.post('http://gum_pets/callPet');
}

function openSetup() {
    if (isOver == false) {
        if (document.getElementById("buttonConfig").style.height == "25px") {
            document.getElementById("buttonConfig").style.height = "270px"; 
            document.getElementById("buttonConfig").style.overflowY = "scroll"; 
            setTimeout(() => {openAll()},100);
        } else {
            document.getElementById("buttonConfig").style.height = "25px"; 
            document.getElementById("buttonConfig").style.overflowY = "hidden"; 
            const tableBodyAll = document.getElementById('buttonConfig');
            let dataHtmlAll = ''+language[22]+'';
            tableBodyAll.innerHTML = dataHtmlAll
        }
    }
}

function reloadSetup() {
    document.getElementById("buttonConfig").style.height = "270px"; 
    document.getElementById("buttonConfig").style.overflowY = "scroll"; 
    setTimeout(() => {openAll()},100);
}
var skillName = ""

function openAll() {
    const tableBodyAll = document.getElementById('buttonConfig');
    let dataHtmlAll = '';

    dataHtmlAll += '<div class="button4" onmouseout="isOutNow()" onmouseover="isOverNow()">'+language[34]+' ⇑<input type="range" id="range" min="0" max="4" value="'+callrange+'" class="slider"></div>'
    dataHtmlAll += '<div class="button4" onmouseout="isOutNow()" onmouseover="isOverNow()">'+language[63]+' ⇅<input type="range"  id="side" min="-10" max="10" value="'+yrange+'" class="slider"></div>'
    if (inHand) {
        dataHtmlAll += '<div class="buttonSkills" id="buttonSkills" onmouseout="isOutNow()" onmouseover="isOverNow()" onclick="takeToHand()">'+language[37]+'</div>'
    }
    if (onShoulder) {
        dataHtmlAll += '<div class="buttonSkills" id="buttonSkills" onmouseout="isOutNow()" onmouseover="isOverNow()" onclick="takeOnShoulder()">'+language[70]+'</div>'
    }
    for (var a in selectedSkills) {
        dataHtmlAll += '<div class="buttonSkills" id="buttonSkills" onmouseout="isOutNow()" onmouseover="isOverNow(\''+selectedSkills[a].skill+'\')" onclick="makeSkill(\''+selectedSkills[a].skill+'\',\''+selectedSkills[a].name+'\')"><b>'+selectedSkills[a].rank+'</b> | '+selectedSkills[a].name+'</div>'
    }
    tableBodyAll.innerHTML = dataHtmlAll
    document.getElementById("range").oninput = function() {sendChange(this.value, this.id)}
    document.getElementById("side").oninput = function() {sendChange(this.value, this.id)}
}
function isOutNow() {
    isOver = false
    skillName = ""
}

function isOverNow(name) {
    isOver = true
    if (name !== undefined) {
        skillName = name
    }
}

function takeToHand(){
    $.post('http://gum_pets/takeToHand');
}
function takeOnShoulder() {
    $.post('http://gum_pets/takeOnShoulder');
}
function makeSkill(skill, text) {
    $.post('http://gum_pets/makeSkill', JSON.stringify({model:myPetData[selectedDog].model, skill:skill, text:text}));
}

function sendChange(value, id) {
    $.post('http://gum_pets/range', JSON.stringify({value:value,id:id}));
}

function makeFavorite() {
    $.post('http://gum_pets/makeFavorite', JSON.stringify({skill:thisForClient}));
}

function loadStore() {
    const tableBody = document.getElementById('petData');
    let dataHtml = '';
    for (var a in petData) {
        dataHtml += '<div class="button" onclick="showPet(\''+a+'\',\''+petData[a].Model+'\',\''+petData[a].Dolar+'\',\''+petData[a].Gold+'\')">'+petData[a].Name+'</div>'
    }
    tableBody.innerHTML = dataHtml
}

function showPet(a, model,price,gold){
    skinValue = 1
    modelSkin = a
    document.getElementById('moneyText').innerHTML = price+"$"
    document.getElementById('goldText').innerHTML = gold+"G"
    $.post('http://gum_pets/switch', JSON.stringify({skin:skinValue,model:petData[modelSkin].Model}));
}

function switchSkin(){
    var maxValue = petData[modelSkin].Skin
    skinValue += 1
    if (skinValue > maxValue) {
        skinValue = 1
    }
    $.post('http://gum_pets/switch', JSON.stringify({skin:skinValue,model:petData[modelSkin].Model}));
}

function show_hud(show_hud) {
    if (show_hud) {
        $("#hunger_active").show();
        $("#thirst_active").show();
        $("#health_active").show();
    } else {
        $("#hunger_active").hide();
        $("#thirst_active").hide();
        $("#health_active").hide();
    }
}

function setpet_health(value) {
    var health = document.getElementsByClassName('health_perc')[0];
    health.innerHTML = value;
    healthpet_bar()
}

function setpet_hunger(value) {
    var hunger = document.getElementsByClassName('hunger_perc')[0];
    hunger.innerHTML = value;
    hungerpet_bar()
}

function setpet_thirst(value) {
    var thirst = document.getElementsByClassName('thirst_perc')[0];
    thirst.innerHTML = value;
    thirstpet_bar()
}
