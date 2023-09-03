var inBuild = false
var propList = []
var owner = false
var activeAdd = false
var inClothe = false
var language = []

$(document).keydown(function(e){
	var close = 27;
	var close2 = 8;
    var a = 65;
    var d = 68;
	switch (e.keyCode) {
		case close:
            if (inClothe) {
                inClothe = false
                $.post('http://gum_camping/closeClothe')
                $("#clothManageContainer").hide();
            }
            if (inBuild == true) {
                inBuild = false
                $.post('http://gum_camping/cancelBuild')
            } else {
                $.post('http://gum_camping/close')
            }
        break;
        case close2:
            if (inClothe) {
                inClothe = false
                $.post('http://gum_camping/closeClothe')
                $("#clothManageContainer").hide();
            }
            if (inBuild == true) {
                inBuild = false
                $.post('http://gum_camping/cancelBuild')
            } else {
                if (activeAdd == true) {
                    activeAdd = false
                    $.post('http://gum_camping/reset')
                } else {
                    $.post('http://gum_camping/close')
                }
            }
        break;
        case a:
            if (inClothe) {
                $.post('http://gum_camping/leftHeading')
            }
        break;
        case d:
            if (inClothe) {
                $.post('http://gum_camping/rightHeading')
            }
        break;
	}
});

$(function () {
    function showCamp(bool) {
        if (bool) {
            $("#campManageContainer").show();
        } else {
            $("#campManageContainer").hide();
        }
    }
    function showCloth(bool) {
        if (bool) {
            $("#clothManageContainer").show();
        } else {
            $("#clothManageContainer").hide();
        }
    }
     $.post('http://gum_camping/screen', JSON.stringify({ x:window.screen.availWidth, y:window.screen.availHeight}))
     showCamp(false)
     showCloth(false)

      window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "openCamp") {
            activeAdd = false
            id = item.campId
            language = item.language
            document.getElementById("Header").innerHTML = ''+item.campId
            propList = item.campProp
            keyeList = item.keyeList
            state = item.damage
            owner = item.owner
            loadProps()
            showCamp(true)
            $("#propData").hide();
            $("#keyeData").hide();
        }
        if (item.type === "closeCamp"){
            showCamp(false)
        }
        if (item.type === "toBuild"){
            inBuild = true
        }
        if (item.type === "stopBuild"){
            inBuild = false
        }
        if (item.type === "openCloth"){
            inClothe = true
            showCloth(true)
            loadCloth(item.clothe)
        }
        if (item.type === "closeCloth"){
            inClothe = false
            showCloth(false)
        }
    })
    window.addEventListener('click', event => {
        $.post('http://gum_camping/simulateClick')
    });
})

function getLang(number) {
    return language[(number+1)].text
}

function giveKeyes() {
    $.post('http://gum_camping/giveKeyes')
}
$(window).bind('mousewheel DOMMouseScroll', function(event){
    if (event.originalEvent.wheelDelta > 0 || event.originalEvent.detail < 0) {
        $.post('http://gum_camping/upheading');
    }
    else {
        $.post('http://gum_camping/downheading');
    }
});

function getLanguage(num) {for (var i in language) {if (i == num) {return language[i][0]}}}

function loadProps() {
    const tableFurni = document.getElementById('campManageData');
    let dataHtml = '';
    dataHtml += '<div class="button2" id="propButton" onClick="loadDataPropsButton()"><div id="propData"></div><div id="textButtons">'+getLang(1)+'</div></div>'
    if (owner) {
        dataHtml += '<div class="button2" id="keyeButton" onClick="loadDataKeyesButton()"><div id="keyeData"></div><div id="textButtons">'+getLang(2)+'</div></div>'
    }
    dataHtml += '<div class="button2" id="damageButton" onClick="damageButton()"><div id="textButtons">'+getLang(3)+''+state+'%</div></div>'
    dataHtml += '<div class="button2" id="rangeButton" onClick="campRange()"><div id="textButtons">'+getLang(4)+'</div></div>'
    tableFurni.innerHTML = dataHtml
    document.getElementById("propButton").style.height = "25px"; 
    if (owner) {
        document.getElementById("keyeButton").style.height = "25px"; 
    }
}
function campRange() {
    $.post('http://gum_camping/range')
}

function loadCloth(clothe) {
    const outfitsTable = document.getElementById('clothData');
    let dataHtml = '';
    for (var i in clothe) {
        dataHtml += '<div class="button" id="keyeButton" onClick="useOutfit(\''+ clothe[i].id +'\')" onMouseOver="showOutfit(\''+ clothe[i].id +'\')"><div id="textButtons">'+clothe[i].title+'</div></div>'
    }
    outfitsTable.innerHTML = dataHtml
}

function showOutfit(id) {
    $.post('http://gum_camping/showOutfit', JSON.stringify({ id:id}))
}
function useOutfit(id) {
    $.post('http://gum_camping/useClothe', JSON.stringify({ id:id}))
}
function loadDataKeyesButton() {
    if (document.getElementById("keyeButton").style.height == "25px") {
        if (owner) {
            document.getElementById("propButton").style.overflowY = "hidden";
            document.getElementById("propButton").style.height = "25px"; 
            $("#propData").hide();
        }
        
        document.getElementById("keyeButton").style.height = "250px";
        document.getElementById("keyeButton").style.overflowY = "auto";

        setTimeout(() => {loadDataKeyes()},100);
    } else {
        document.getElementById("keyeButton").style.overflowY = "hidden";
        document.getElementById("keyeButton").style.height = "25px"; 
        $("#keyeData").hide();
    }
}

function loadDataPropsButton() {
    if (document.getElementById("propButton").style.height == "25px") {
        if (owner) {
            document.getElementById("keyeButton").style.overflowY = "hidden";
            document.getElementById("keyeButton").style.height = "25px"; 
            $("#keyeData").hide();
        }

        document.getElementById("propButton").style.height = "250px";
        document.getElementById("propButton").style.overflowY = "auto";

        setTimeout(() => {loadDataProps()},100);
    } else {
        document.getElementById("propButton").style.overflowY = "hidden";
        document.getElementById("propButton").style.height = "25px"; 
        $("#propData").hide();
    }
}

function loadDataKeyes() {
    const tableFurni = document.getElementById('keyeData');
    let dataHtml = '';
    dataHtml += '<div class="button2" onClick="giveKeyes()"><div id="textButtons">'+getLang(5)+'</div></div>'
    for (var i in keyeList) {
        dataHtml += '<div class="button2" onClick="deleteKeye(\''+ keyeList[i].charid +'\',\''+ keyeList[i].steamid +'\')"><div id="textButtons">'+keyeList[i].firstname+' '+keyeList[i].lastname+'</div></div>'
    }
    tableFurni.innerHTML = dataHtml
    $("#keyeData").show();
}

function deleteKeye(charid, steam) {
    $.post('http://gum_camping/delKey', JSON.stringify({ charid:charid, steam:steam}))
}

function loadDataProps() {
    const tableProps = document.getElementById('propData');
    let dataHtml = '';
    for (var i in propList) {
        dataHtml += '<div class="button2" onMouseOut="delShow()" onMouseOver="showProp(\''+ propList[i].entity +'\')" onClick="deleteFurni(\''+ propList[i].entity +'\',\''+ propList[i].object +'\')"><div id="textButtons">'+propList[i].name+'</div></div>'
    }
    tableProps.innerHTML = dataHtml
    $("#propData").show();
}

function delShow() {
    $.post('http://gum_camping/delShow') 
}
function showProp(entity) {
    $.post('http://gum_camping/showEntity', JSON.stringify({ entity:entity})) 
}
function deleteFurni(entity, obj) {
    $.post('http://gum_camping/delObj', JSON.stringify({ entity:entity, object:obj}))
}
function damageButton() {
    $.post('http://gum_camping/fixCamp') 
}