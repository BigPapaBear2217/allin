
var sp = null
var in_menu = 0
var protect = ""
var protectCart = ""
var gold_en = false
var language = {}
var callMeFrom = false
var callMeHorseStable = false
var callMeCartStable = false
var stablesInformation = {}
var spotsInformation = {}
var transferEnable = false
var isTrainer = false
var isBreeder = false
var fixBreed = false
var fixFemale = false
var isInAnimal = false
var animalId = 0
var inDeleteMenu = false
var company = false
$(document).keydown(function(e) {
    var close = 27;
    var close2 = 8;
    var ekey = 65;
    var qkey = 68;
    var wkey = 87;
    var skey = 83;
    switch (e.keyCode) {
        case close:
            if (isInAnimal) {
                $.post('http://gum_stables/cleanAnimals', JSON.stringify({id:animalId}));
                isInAnimal = false
            }
            $("#openAdmin").hide();
            $("#breederStore").hide();
            $("#spotManage").hide();
            if (in_menu == 0) {
                $.post('http://gum_stables/close_menu', JSON.stringify({}));
                $.post('http://gum_stables/clear_preview')
            } else {
                BackFunction()
            }
            
            $.post('http://gum_stables/clearTarget')

            protect = 0
            protectCart = 0
            $("#TransferApi").hide();
            $("#gridManageComp").hide();
            $("#gridManageBags").hide();
            $("#TransferToCity").hide();
            $("#horseManage").hide();
            locateSameId = 0;
        break;
        case close2:
            if (isInAnimal) {
                $.post('http://gum_stables/cleanAnimals', JSON.stringify({id:animalId}));
                isInAnimal = false
            }
            $("#openAdmin").hide();
            $("#breederStore").hide();
            $("#spotManage").hide();
            $.post('http://gum_stables/clearTarget')
            if (in_menu == 0) {
                $.post('http://gum_stables/close_menu', JSON.stringify({}));
                $.post('http://gum_stables/clear_preview')
            } else {
                BackFunction()
            }
            protect = 0;
            protectCart = 0;
            $("#TransferApi").hide();
            $("#gridManageComp").hide();
            $("#gridManageBags").hide();
            $("#horseManage").hide();
            $("#TransferToCity").hide();
            locateSameId = 0;
        break;
        case qkey:
            $.post('http://gum_stables/ekey');
        break;
        case ekey:
            $.post('http://gum_stables/qkey');
        break;
        case wkey:
            $.post('http://gum_stables/skey');
        break;
        case skey:
            $.post('http://gum_stables/wkey');
        break;
    }
});
$(document).mousedown(function(e){
    if(e.which === 3) {
        $.post('http://gum_stables/canRotate', JSON.stringify({rotate:true}));
    }
});
$(document).mouseup(function(e){
    if(e.which === 3) {
        $.post('http://gum_stables/canRotate', JSON.stringify({rotate:false}));
    }
});
var last_position = {};
$(document).on('mousemove', function (event) {
    if (typeof(last_position.x) != 'undefined') {
        var deltaX = last_position.x - event.offsetX,
            deltaY = last_position.y - event.offsetY;
        if (Math.abs(deltaX) > Math.abs(deltaY) && deltaX > 0) {
            $.post('http://gum_stables/rotate', JSON.stringify({direction:"left"}));
        } else if (Math.abs(deltaX) > Math.abs(deltaY) && deltaX < 0) {
            $.post('http://gum_stables/rotate', JSON.stringify({direction:"right"}));
        } else if (Math.abs(deltaY) > Math.abs(deltaX) && deltaY > 0) {
            $.post('http://gum_stables/rotate', JSON.stringify({direction:"up"}));
        } else if (Math.abs(deltaY) > Math.abs(deltaX) && deltaY < 0) {
            $.post('http://gum_stables/rotate', JSON.stringify({direction:"down"}));
        }
    }
    last_position = {
        x : event.offsetX,
        y : event.offsetY
    };
});
window.addEventListener('wheel', function(event)
{
 if (event.deltaY < 0)
 {
    $.post('http://gum_stables/rotate', JSON.stringify({direction:"zoom+"}));
}
 else if (event.deltaY > 0)
 {
    $.post('http://gum_stables/rotate', JSON.stringify({direction:"zoom-"}));
 }
});
$(function() {
    $("#spotManage").hide();
    $("#statusTable").hide();
    $("#statusTableWild").hide();
    function MenuApi(bool) {
        if (bool) {
            $("#addonManage").show();
            $("#horse_store").show();
        } else {
            $("#addonManage").hide();
            $("#horse_store").hide();
        }
    }
    function bagsApi(bool) {
        if (bool) {
            $("#horseManage").show();
            $("#gridManageComp").hide();
            $("#gridManageBags").hide();
        } else {
            $("#horseManage").hide();
            $("#gridManageComp").hide();
            $("#gridManageBags").hide();
        }
    }
    $("#TransferToCity").hide();
    $("#addonManage").hide();
    $("#openAdmin").hide();
    $("#breederStore").hide();
    bagsApi(false)
    MenuApi(false)
    $.post('http://gum_stables/screen', JSON.stringify({ x:window.screen.availWidth, y:window.screen.availHeight}))
    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "openBreederStore") {
            $("#breederStore").show();
            openBreederData(item.storeData, item.job, item.isYourStore)
        }
        if (item.type === "openAdmin") {
            adminApi(item.datas)
        }
        if (item.type === "clearComponents") {
            $('#horseManage').hide();
            $("#gridManageComp").hide();
        }
        if (item.type === "openSpot"){
            LoadSpotData(item.array)
        }
        if (item.type === "showStatusTable") {
            $("#statusTable").show();
            if (item.gender == 0.0) {
                document.getElementById("genderStatus").style.backgroundImage = "url('images/male.png')";
            } else {
                document.getElementById("genderStatus").style.backgroundImage = "url('images/female.png')";
            }
            document.getElementById("speedStatus").style.backgroundImage = "url('images/speed/"+item.spp+".png')";
            document.getElementById("accStatus").style.backgroundImage = "url('images/acc/"+item.acc+".png')";
            document.getElementById("turnStatus").style.backgroundImage = "url('images/turn/"+item.turn+".png')";
        }
        if (item.type === "showStatusWildTable") {
            $("#statusTableWild").show();
            document.getElementById("speedStatusWild").style.backgroundImage = "url('images/speed/"+item.spp+".png')";
            document.getElementById("accStatusWild").style.backgroundImage = "url('images/acc/"+item.acc+".png')";
            document.getElementById("turnStatusWild").style.backgroundImage = "url('images/turn/"+item.turn+".png')";
        }
        if (item.type === "hideStatusTableWild") {
            $("#statusTableWild").hide();
        }
        if (item.type === "hideStatusTable") {
            $("#statusTable").hide();
        }
        if (item.type === "open_shoes") {
            in_menu = 7
            $("#MenuApi").hide();
            $(".grid6").show();
            $(".turn").show();
            $(".acc").show();
            $(".speed").show();
        }
        if (item.type === "clear_stables"){
            in_menu = 0
            protect = 0
            $(".grid0").hide();
            $(".grid1").hide();
            $(".grid2").hide();
            $(".grid3").hide();
            $(".grid4").hide();
            $(".grid5").hide();
            $(".grid6").hide();
            $(".grid7").hide();

            $(".speed").hide();
            $(".state").hide();
            $(".turn").hide();
            $(".acc").hide();
            $("#Year").hide();
            $("#Exp").hide();
            $("#Gender").hide();
            $("#Breed").hide();

            $("#Money").hide();
            $("#Gold").hide();
            $("#Storage").hide();
            $("#MoneyIco").hide();
            $("#GoldIco").hide();
            $("#StorageIco").hide();
            $("#gridManageComp").hide();
            $("#gridManageBags").hide();
            $("#horseManage").hide();
            $("#TransferApi").hide();
            $("#TransferToCity").hide();
            ClearExtras()
            protectCart = 0
        }
        if (item.type === "languageLoad"){
            language = {}
            language = item.language
        }
        if (item.type === "clearManage"){
            $("#horseManage").hide();
            $("#addonManage").hide();
        }
        if (item.type === "open_stable") {
            if (item.status == true) {
                company = false
                company = item.company
                $("#breederStore").hide();
                callCart = item.callCart
                callHorse = item.callHorse
                callMeFrom = item.callMeFrom
                callMeHorseStable = item.callMeHorseStable
                callMeCartStable = item.callMeCartStable
                stablesInformation = item.stablesInfo
                spotsInformation = item.spotsInfo
                transferEnable = item.canTransfer
                isBreeder = item.isBreeder
                horses = {}
                horses = item.horses
                carts = {}
                carts = item.carts
                myhorses = {}
                myhorses = item.myhorses
                allmyhorses = {}
                allmyhorses = item.allYourHorses
                allmywagons = {}
                allmywagons = item.allYourCarts
                mywagons = {}
                mywagons = item.mywagon
                mybreeds = {}
                mybreeds = item.mybreed
                gold_en = item.gold_enable
                language = {}
                language = item.language
                isTrainer = item.isTrainer
                fixBreed = item.fixBreed
                fixFemale = item.fixFemale
                //LOAD LANG
                document.getElementById("title_stables").innerHTML = ""+language[50].text+""
                document.getElementById("Year").innerHTML = ""+language[300].text+""
                document.getElementById("Exp").innerHTML = ""+language[301].text+""
                document.getElementById("Gender").innerHTML = ""+language[302].text+""
                document.getElementById("Breed").innerHTML = ""+language[303].text+""
                document.getElementById("skills2").innerHTML = ""+language[304].text+"<input type='range' min='0' max='6' value='0' class='slider' id='skills'>"
                document.getElementById("buy_agility").innerHTML = ""+language[305].text+""
                document.getElementById("button1").innerHTML = "<center>"+language[306].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='saddlecloths'>"
                document.getElementById("button2").innerHTML = "<center>"+language[307].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='saddles'>"
                document.getElementById("button3").innerHTML = "<center>"+language[308].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='acshorn'>"
                document.getElementById("button4").innerHTML = "<center>"+language[309].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='stirrups'>"
                document.getElementById("button5").innerHTML = "<center>"+language[310].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='bags'>"
                document.getElementById("button6").innerHTML = "<center>"+language[311].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='acsluggage'>"
                document.getElementById("button7").innerHTML = "<center>"+language[312].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='lantern'>"
                document.getElementById("button8").innerHTML = "<center>"+language[313].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='Mask'>"
                document.getElementById("button9").innerHTML = "<center>"+language[314].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='tails'>"
                document.getElementById("button10").innerHTML = "<center>"+language[315].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='manes'>"
                document.getElementById("button11").innerHTML = "<center>"+language[316].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='mustache'>"
                document.getElementById("button12").innerHTML = "<center>"+language[317].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='holster'>"
                document.getElementById("button13").innerHTML = "<center>"+language[318].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='bridle'>"
                document.getElementById("button14").innerHTML = "<center>"+language[443].text+"</center><input type='range' min='0' max='1' value='0' class='slider' id='propsData'>"
                
                document.getElementById("buy_compos").innerHTML = "<center>"+language[319].text+"</center>"

                const table2Body = document.getElementById('MenuApi');
                let data2Html = '';   
                if (company !== true) {
                    data2Html += '<div class="horse_store_button" id="horse_store_button1" onclick="HorseStoreMenu()"></div>'
                    data2Html += '<div class="horse_store_button" id="horse_store_button2" onclick="CartStoreMenu()"></div>'
                }
                data2Html += '<div class="horse_store_button" id="horse_store_button3" onclick="MyHorseMenu()"></div>'
                if (company !== true) {
                    data2Html += '<div class="horse_store_button" id="horse_store_button4" onclick="MyCartMenu()"></div>'
                }
                data2Html += '<div class="horse_store_button" id="horse_store_button5" onclick="HorseComponents()"></div>'
                if (item.canColorHorse) {
                    data2Html += '<div class="horse_store_button" id="horse_store_button10" onclick="HorseColor()"></div>'
                }
                if (company !== true) {
                    data2Html += '<div class="horse_store_button" id="horse_store_button6" onclick="CartComponents()"></div>'
                }
                data2Html += '<div class="horse_store_button" id="horse_store_button7" onclick="HorseShoes()"></div>'
                if (company !== true) {
                    data2Html += '<div class="horse_store_button" id="horse_store_button8" onclick="Breeding()"></div>'
                }
                if (callMeFrom == true || callCart == true || callHorse == true) {
                    if (transferEnable == true) {
                        data2Html += '<div class="horse_store_button" id="horse_store_button9" onclick="HorseSpots()">Horse spot position</div>'
                    }
                }
                table2Body.innerHTML = data2Html
                if (company !== true) {
                    document.getElementById("horse_store_button1").innerHTML = ""+language[320].text+""
                    document.getElementById("horse_store_button2").innerHTML = ""+language[321].text+""
                }
                document.getElementById("horse_store_button3").innerHTML = ""+language[322].text+""
                if (company !== true) {
                    document.getElementById("horse_store_button4").innerHTML = ""+language[323].text+""
                }
                document.getElementById("horse_store_button5").innerHTML = ""+language[324].text+""
                if (company !== true) {
                    document.getElementById("horse_store_button6").innerHTML = ""+language[325].text+""
                }
                document.getElementById("horse_store_button7").innerHTML = ""+language[326].text+""
                if (company !== true) {
                    document.getElementById("horse_store_button8").innerHTML = ""+language[327].text+""
                }
                if (callMeFrom == true || callCart == true || callHorse == true) {
                    if (transferEnable == true) {
                        document.getElementById("horse_store_button9").innerHTML = ""+language[418].text+""
                    }
                }
                if (item.canColorHorse) {
                    document.getElementById("horse_store_button10").innerHTML = "Horse coloring"
                }
                //END LOAD
                LoadHorseData(horses)
                if (company !== true) {
                    LoadCartData(carts)
                    LoadMyCartData(mywagons)
                }
                LoadMyHorsesData(myhorses)
                LoadMyBreedData(mybreeds, myhorses)
                $(".grid0").hide();
                $(".grid1").hide();
                $(".grid2").hide();
                $(".grid3").hide();
                $(".grid4").hide();
                $(".grid5").hide();
                $(".grid6").hide();
                $(".grid7").hide();

                $("#Money").hide();
                $("#Gold").hide();
                $("#Storage").hide();

                $("#MoneyIco").hide();
                $("#GoldIco").hide();
                $("#StorageIco").hide();

                $(".speed").hide();
                $(".state").hide();
                $(".turn").hide();
                $(".acc").hide();
                $("#Year").hide();
                $("#Exp").hide();
                $("#Gender").hide();
                $("#Breed").hide();
                $("#MenuApi").show();
                MenuApi(true)
                setTimeout(() => {
                    document.getElementById("saddlecloths").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("saddles").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("acshorn").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("stirrups").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("bags").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("acsluggage").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("lantern").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("Mask").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("tails").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("manes").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("mustache").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("holster").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("bridle").oninput = function() {send_change(this.value, this.id)}
                    document.getElementById("skills").oninput = function() {send_skills(this.value, this.id)}
                    document.getElementById("propsData").oninput = function() {send_change(this.value, this.id)}
                    
                    $("#addonManage").hide();
                }, 50);
            } else {
                MenuApi(false)
            }
        }
        if (item.type === "openBagsManage") {
            language = item.language
            openBagsManage(item.size, item.id, item.cart, item.blanket, item.shared, item.byId, item.clothes)
        }
        if (item.type === "openComponents") {
            openComponentManage(item.components)
        }
        if (item.type === "comp_cart_load") {
            id = item.id
            lanterns = item.lantern
            liveries = item.livery
            extras = item.extras
            MakeExtras(extras, item.max_lantern, item.max_livery, item.max_tints, id, item.max_propset)
            in_menu = 6
            $("#MenuApi").hide();
            $(".grid5").show();
        }
        if (item.type === "change_horse") {
            switch_right(item.horse, item.category, item.name)
            document.getElementById("Money").innerHTML = ""+item.money+" $"
            document.getElementById("Gold").innerHTML = ""+item.gold+" G"
            document.getElementById("Storage").innerHTML = ""+item.storage+" S"
        }
        if (item.type === "change_cart") {
            switch_right(item.cart, item.category)

            document.getElementById("Money").innerHTML = ""+item.money+" $"
            document.getElementById("Gold").innerHTML = ""+item.gold+" G"
            document.getElementById("Storage").innerHTML = ""+item.storage+" S"
        }
        if (item.type === "deleteClick") {
            inDeleteMenu = item.status
        }
        if (item.type === "comp_preload") {
            document.getElementById("saddlecloths").max = item.blankets
            document.getElementById("saddles").max = item.saddles
            document.getElementById("acshorn").max = item.horns
            document.getElementById("stirrups").max = item.stirrups
            document.getElementById("bags").max = item.bags
            document.getElementById("acsluggage").max = item.bedrolls
            document.getElementById("lantern").max = item.lantern
            document.getElementById("Mask").max = item.accessories
            document.getElementById("tails").max = item.tails
            document.getElementById("manes").max = item.manes
            document.getElementById("mustache").max = item.mustaches
            document.getElementById("holster").max = item.holsters
            document.getElementById("bridle").max = item.bridles
            document.getElementById("propsData").max = item.propsData
        }
        if (item.type === "change_state") {
            update_images(item.sp, item.acc, item.agi, item.st,item.max)
        }
        if (item.type === "openAddon") {
            loadAddonInventory(item.items, item.cartItems, item.maxStorage, item.wagonId, item.model, item.typeItem)
        }
        if (item.type === "openAnimals") {
            loadAnimals(item.cartItems, item.maxStorage, item.wagonId)
        }
        if (item.type === "send_default_state") {
            sp = item.sp
            acc = item.acc
            agi = item.agi
            let highestValue = Math.max(item.sp, item.acc, item.agi);
            document.getElementById("skills").max = 10-highestValue
        }
        if (item.type == "horse_components"){
            $("#MenuApi").hide();
            $(".grid4").show();
            document.getElementById("saddlecloths").value = item.saddle_cloths
            document.getElementById("saddles").value = item.saddles
            document.getElementById("acshorn").value = item.acshorn
            document.getElementById("stirrups").value = item.stirrups
            document.getElementById("bags").value = item.bags
            document.getElementById("acsluggage").value = item.acsluggage
            document.getElementById("lantern").value = item.lantern
            document.getElementById("Mask").value = item.Mask
            document.getElementById("tails").value = item.tails
            document.getElementById("manes").value = item.manes
            document.getElementById("mustache").value = item.mustache
            document.getElementById("holster").value = item.holster
            document.getElementById("bridle").value = item.bridle
            document.getElementById("propsData").value = item.propsData
        }
        if (item.type == "horse_color") {
            $("#MenuApi").hide();
            $(".grid5").show();
            horseColorLoad();
        }
    })
    window.addEventListener('click', event => {
        if (inDeleteMenu) {
            $.post('http://gum_stables/simulateClick')
        }
    });
    $("#close").click(function() {
        $.post('http://gum_stables/exit', JSON.stringify({}));
        return
    })

})

function openBreederData(store, job, isYour) {
    const tableBody = document.getElementById('breederStore');
    let dataHtml = '';   
    if (isYour) {
        dataHtml += '<div class="horse_store_button" onclick="addHorseToStore(\''+job+'\')">'+language[499].text+'</div>'
    }
    for (var a in store) {
        if (store[a].isBuyed == 0) {
            var numberString = store[a].age;
            var number = parseFloat(numberString);
            var roundedAge = number.toFixed(2);
            if (isYour) {
                dataHtml += '<div class="horseBreederstore" onclick="showBreederHorse(\''+store[a].id+'\',\''+store[a].age+'\',\''+store[a].model+'\',\''+store[a].sex+'\',\''+job+'\')"><div id="horseInformationBreed">'+language[500].text+''+store[a].name+'<br>'+language[501].text+''+store[a].exp+' <br>'+language[502].text+''+roundedAge+'<br>'+language[503].text+''+store[a].sex+'<br>'+language[504].text+''+store[a].price+'$<br><div id="buyBreedHorse" onclick="takeBreedHorse(\''+store[a].id+'\',\''+store[a].age+'\',\''+store[a].model+'\',\''+store[a].sex+'\',\''+job+'\',\''+store[a].price+'\')">'+language[530].text+'</div></div><div id="descriptionHorse">'+store[a].descriptions+'</div></div>'
            } else {
                dataHtml += '<div class="horseBreederstore" onclick="showBreederHorse(\''+store[a].id+'\',\''+store[a].age+'\',\''+store[a].model+'\',\''+store[a].sex+'\',\''+job+'\')"><div id="horseInformationBreed">'+language[500].text+''+store[a].name+'<br>'+language[501].text+''+store[a].exp+' <br>'+language[502].text+''+roundedAge+'<br>'+language[503].text+''+store[a].sex+'<br>'+language[504].text+''+store[a].price+'$<br><div id="buyBreedHorse" onclick="buyBreedHorse(\''+store[a].id+'\',\''+store[a].age+'\',\''+store[a].model+'\',\''+store[a].sex+'\',\''+job+'\',\''+store[a].price+'\')">'+language[505].text+'</div></div><div id="descriptionHorse">'+store[a].descriptions+'</div></div>'
            }
        } else {
            var numberString = store[a].age;
            var number = parseFloat(numberString);
            var roundedAge = number.toFixed(2);
            if (store[a].isBuyed == 1 && isYour) {
                dataHtml += '<div class="horseBreederstore" onclick="showBreederHorse(\''+store[a].id+'\',\''+store[a].age+'\',\''+store[a].model+'\',\''+store[a].sex+'\',\''+job+'\')"><div id="horseInformationBreed">'+language[500].text+''+store[a].name+'<br>'+language[501].text+''+store[a].exp+' <br>'+language[502].text+''+roundedAge+'<br>'+language[503].text+''+store[a].sex+'<br>'+language[504].text+''+store[a].price+'$<br><div id="buyBreedHorse" onclick="takeBreederMoney(\''+store[a].id+'\',\''+store[a].price+'\',\''+job+'\')">'+language[506].text+'</div></div><div id="descriptionHorse">'+store[a].descriptions+'</div></div>'
            }
        }
    }
    tableBody.innerHTML = dataHtml;
}

function adminApi(tablePeoples) {
    $("#openAdmin").show();
    const tableBody = document.getElementById('openAdmin');
    let dataHtml = '';   
    dataHtml += '<div class="horse_store_button" id="horse_store_button1" onclick="addUserToAdmin()">'+language[507].text+'</div>'
    for (var a in tablePeoples) {
        dataHtml += '<div class="horse_store_button" id="horse_store_button1" onclick="removeUserFromAdmin(\''+tablePeoples[a].steam+'\', \''+tablePeoples[a].charidentifier+'\', \''+tablePeoples[a].job+'\')">'+tablePeoples[a].name+'</div>'
    }
    tableBody.innerHTML = dataHtml;
}
function addHorseToStore(job) {
    $('#breederStore').hide();
    $.post('http://gum_stables/addHorseToStore', JSON.stringify({job:job}));
    return
}

function takeBreederMoney(id, price, job) {
    $('#breederStore').hide();
    $.post('http://gum_stables/takeBreederMoney', JSON.stringify({id:id, price:price, job:job}));
    return
}
var locateSameId = 0;
function showBreederHorse(id, age, model, sex, job, comp) {
    if (locateSameId !== id) {
        locateSameId = id;
        $.post('http://gum_stables/showBreederHorse', JSON.stringify({id:id, age:age, model:model, sex:sex, job:job, comp:comp}));
    }
    return
}
function buyBreedHorse(id, age, model, sex, job, price) {
    $('#breederStore').hide();
    $.post('http://gum_stables/buyBreedHorse', JSON.stringify({id:id, age:age, model:model, sex:sex, job:job, price:price}));
    return
}
function takeBreedHorse(id, age, model, sex, job, price) {
    $('#breederStore').hide();
    $.post('http://gum_stables/takeBreedHorse', JSON.stringify({id:id, age:age, model:model, sex:sex, job:job, price:price}));
    return
}
function addUserToAdmin() {
    $.post('http://gum_stables/addUserToAdmin', JSON.stringify({}));
    return
}

function removeUserFromAdmin(steam, charidentifier, job) {
    $.post('http://gum_stables/removeUserFromAdmin', JSON.stringify({steam:steam, charid:charidentifier, job:job}));
    return
}

function update_images(spe, acce, agie, state, max) {
        document.getElementById("speed").style.backgroundImage = "url('images/speed/"+spe+".png')";
        document.getElementById("acc").style.backgroundImage = "url('images/acc/"+acce+".png')";
        document.getElementById("turn").style.backgroundImage = "url('images/turn/"+agie+".png')";
        if (state !== "undefined") {
            document.getElementById("state").style.backgroundImage = "url('images/state/"+state+".png')";
        }
        if (max !== "undefined" || sp !== null) {
            document.getElementById("skills").value = (spe-sp)
        }
}

function send_change(value,id) {
    $.post('http://gum_stables/selectcomponent', JSON.stringify({comp:id, value:value}));
}

function send_skills(value, id) {
    if ((Number(sp)+Number(value)) <= 10 & (Number(acc)+Number(value)) <= 10 & (Number(agi)+Number(value)) <= 10) {
        update_images((Number(sp)+Number(value)),(Number(acc)+Number(value)),(Number(agi)+Number(value)))
    }
}

function send_change_comp(value,id, cid) {
    $.post('http://gum_stables/selectcartcomponent', JSON.stringify({comp:id, value:value, id:cid}));
}

function CartComponents() {
    in_menu = 6
    $.post('http://gum_stables/cartcomponents', JSON.stringify({}));
}

function BuyAgility(){
    $.post('http://gum_stables/agilityupdate', JSON.stringify({agility_new:document.getElementById("skills").value, sp:Number(sp), agi:Number(sp),acc:Number(sp)}));
}

function BackFunction() {
    if (in_menu == 1 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid0").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
        $("#Money").hide();
        $("#Gold").hide();
        $("#Storage").hide();
        $("#MoneyIco").hide();
        $("#GoldIco").hide();
        $("#StorageIco").hide();
    } else if (in_menu == 2 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid1").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
        $("#Money").hide();
        $("#Gold").hide();
        $("#Storage").hide();

        $("#MoneyIco").hide();
        $("#GoldIco").hide();
        $("#StorageIco").hide();
    } else if (in_menu == 3 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid2").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();

        $("#Year").hide();
        $("#Exp").hide();
        $("#Gender").hide();
        $("#Breed").hide();
    } else if (in_menu == 4 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid3").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
    } else if (in_menu == 5 || in_menu == 10) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid4").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
    } else if (in_menu == 6 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid5").hide();
        ClearExtras()
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
    } else if (in_menu == 7 ) {
        in_menu = 0
        $("#MenuApi").show();
        $(".grid6").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
        document.getElementById("speed").style.backgroundImage = "url('images/speed/0.png')";
        document.getElementById("acc").style.backgroundImage = "url('images/acc/0.png')";
        document.getElementById("turn").style.backgroundImage = "url('images/turn/0.png')";
        document.getElementById("state").style.backgroundImage = "url('images/state/0.png')";
    } else if (in_menu == 8 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $(".grid7").hide();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
        $.post('http://gum_stables/clear_breed', JSON.stringify({}));
    } else if (in_menu == 9 ) {
        $.post('http://gum_stables/resetcam');
        in_menu = 0
        $("#MenuApi").show();
        $.post('http://gum_stables/clear_preview', JSON.stringify({}));
    } else if (in_menu == 0) {
        $.post('http://gum_stables/exit', JSON.stringify({}));
        $(".speed").hide();
        $(".state").hide();
        $(".turn").hide();
        $(".acc").hide();
    }
}

function HorseStoreMenu() {
    in_menu = 1
    $("#MenuApi").hide();
    $(".grid0").show();
    $(".speed").show();
    $(".state").show();
    $(".turn").show();
    $(".acc").show();
    $("#Money").show();
    $("#Storage").show();
    $("#MoneyIco").show();
    if (gold_en == true) {
        $("#GoldIco").show();
        $("#Gold").show();
    }
    $("#StorageIco").show();
    document.getElementById("Money").innerHTML = ""
    document.getElementById("Gold").innerHTML = ""
    document.getElementById("Storage").innerHTML = ""
}

function CartStoreMenu() {
    in_menu = 2
    $("#MenuApi").hide();
    $(".grid1").show();

    $("#Money").show();
    $("#Storage").show();

    $("#MoneyIco").show();
    if (gold_en == true) {
        $("#GoldIco").show();
        $("#Gold").show();
    }
    $("#StorageIco").show();

    document.getElementById("Money").innerHTML = ""
    document.getElementById("Gold").innerHTML = ""
    document.getElementById("Storage").innerHTML = ""
}

function MyHorseMenu() {
    in_menu = 3
    $("#MenuApi").hide();
    $(".grid2").show();
    $(".speed").show();
    $(".turn").show();
    $(".acc").show();

    $("#Year").show();
    $("#Exp").show();
    $("#Gender").show();
    $("#Breed").show();
}


function MyCartMenu() {
    in_menu = 4
    $("#MenuApi").hide();
    $(".grid3").show();
}
function HorseComponents() {
    in_menu = 5
    $.post('http://gum_stables/horsecomponent', JSON.stringify({}));
}
function HorseColor() {
    in_menu = 10
    $.post('http://gum_stables/horseColor', JSON.stringify({}));
}
function HorseShoes() {
    $.post('http://gum_stables/horseOpenShoes', JSON.stringify({}));
}

function Breeding() {
    in_menu = 8
    $("#MenuApi").hide();
    $(".grid7").show();
    $.post('http://gum_stables/cambreed');
}
function horseColorLoad() {
    const table5Body = document.getElementById('MyCartComp');
    in_menu = 6
    data5Html = ""
    data5Html += '<div class="horse_store_button2" id="horse_store_button"><b>'+language[527].text+'</b></div>'
    data5Html += '<div class="button"><center>'+language[521].text+'</center><input type="range" min="0" max="21" value="0" class="slider" id="sliderCat"></div>'
    data5Html += '<div class="button"><center>'+language[522].text+'</center><input type="range" min="0" max="254" value="0" class="slider" id="slider1"></div>'
    data5Html += '<div class="button"><center>'+language[523].text+'</center><input type="range" min="0" max="254" value="0" class="slider" id="slider2"></div>'
    data5Html += '<div class="button"><center>'+language[524].text+'</center><input type="range" min="0" max="254" value="0" class="slider" id="slider3"></div>'
    data5Html += '<br>'
    data5Html += '<div class="horse_store_button2" id="horse_store_button"><b>'+language[528].text+'</b></div>'
    data5Html += '<div class="button"><center>'+language[521].text+'</center><input type="range" min="0" max="21" value="0" class="slider" id="sliderCatTail"></div>'
    data5Html += '<div class="button"><center>'+language[522].text+'</center><input type="range" min="0" max="254" value="0" class="slider" id="slider1Tail"></div>'
    data5Html += '<div class="button"><center>'+language[523].text+'</center><input type="range" min="0" max="254" value="0" class="slider" id="slider2Tail"></div>'
    data5Html += '<div class="button"><center>'+language[524].text+'</center><input type="range" min="0" max="254" value="0" class="slider" id="slider3Tail"></div>'
    data5Html += '<br>'
    data5Html += '<div class="horse_store_button2" id="horse_store_button" onclick="saveColor()">'+language[525].text+'</div>'
    // data5Html +='</br></br><div class="button" onclick="BuyCartComponents('+id+')"><center>'+language[328].text+'</center></div>'
    table5Body.innerHTML = table5Body.innerHTML+data5Html
    setTimeout(() => {
        document.getElementById("sliderCat").oninput = function() {sendColorChange(this.value, this.id, "horse")}
        document.getElementById("slider1").oninput = function() {sendColorChange(this.value, this.id, "horse")}
        document.getElementById("slider2").oninput = function() {sendColorChange(this.value, this.id, "horse")}
        document.getElementById("slider3").oninput = function() {sendColorChange(this.value, this.id, "horse")}
        document.getElementById("sliderCatTail").oninput = function() {sendColorChange(this.value, this.id, "tail")}
        document.getElementById("slider1Tail").oninput = function() {sendColorChange(this.value, this.id, "tail")}
        document.getElementById("slider2Tail").oninput = function() {sendColorChange(this.value, this.id, "tail")}
        document.getElementById("slider3Tail").oninput = function() {sendColorChange(this.value, this.id, "tail")}
    }, 50);
}

function saveColor() {
    $.post('http://gum_stables/saveColor', JSON.stringify({}));
}
function sendColorChange(value, id, type) {
    if (type == "horse") {
        $.post('http://gum_stables/colorChange', JSON.stringify({
            value: value,
            id: id,
            type: type
        }));
    } else if (type == "tail") {
        $.post('http://gum_stables/colorChange', JSON.stringify({
            value: value,
            id: id,
            type: type
        }));
    }
}
function LoadSpotData(tableData) {
    const tableBody = document.getElementById('gridData');
    let dataHtml = '';
    for (var a in tableData) {
        if (tableData[a].isHorse == true) {
            dataHtml += '<div class="horse_store_button" id="horse_store_button" onclick="loadDescription(\''+tableData[a].desc+'\')"><div class="buttonIsHorse" id="buttonIsHorse"></div><div class="buttonCallSpot" id="buttonCallSpot" onclick="callFromSpot(\''+tableData[a].id+'\', \''+tableData[a].isHorse+'\')"></div>'+tableData[a].label+'</div>'
        } else {
            dataHtml += '<div class="horse_store_button" id="horse_store_button" onclick="loadDescription(\''+tableData[a].label+'\')"><div class="buttonIsCart" id="buttonIsCart"></div><div class="buttonCallSpot" id="buttonCallSpot" onclick="callFromSpot(\''+tableData[a].id+'\', \''+tableData[a].isHorse+'\')"></div>'+tableData[a].label+'</div>'
        }
    }
    tableBody.innerHTML = dataHtml
    $("#spotManage").show();
}
function callFromSpot(id, isHorse) {
    $.post('http://gum_stables/callFromSpot', JSON.stringify({id: id, isHorse: isHorse}));
    $("#spotManage").hide();
}
function loadDescription(data) {
    document.getElementById("description").innerHTML = data;
}

function HorseSpots() {
    $.post('http://gum_stables/transferNotify', JSON.stringify({}));
    in_menu = 9
    $("#MenuApi").hide();
    $("#TransferApi").show();
    $("#TransferToCity").show();
    
    const tableBody = document.getElementById('TransferApi');
    let dataHtml = '';
    if (callMeHorseStable == true || callMeFrom) {
        for (var a in allmyhorses) {
            if (stablesInformation[(allmyhorses[a].cityPosition-1)] === undefined) {
                if (allmyhorses[a].cityPosition !== 0) {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisHorseTransfer(\''+allmyhorses[a].id+'\', \''+stablesInformation[(allmyhorses[a].cityPosition-1)]+'\')">'+allmyhorses[a].name+'</div>'
                } else {
                    if (stablesInformation[(allmyhorses[a].cityPosition-1)] === undefined && spotsInformation[(allmyhorses[a].spotPosition-1)] === undefined) {
                        dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisHorseTransfer(\''+allmyhorses[a].id+'\', \''+spotsInformation[(allmyhorses[a].spotPosition-1)]+'\')"> </br> '+allmyhorses[a].name+'</div>'
                    } else {
                        dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisHorseTransfer(\''+allmyhorses[a].id+'\', \''+spotsInformation[(allmyhorses[a].spotPosition-1)]+'\')">'+spotsInformation[(allmyhorses[a].spotPosition-1)]+' </br> '+allmyhorses[a].name+'</div>'
                    }
                }
            } else {
                if (allmyhorses[a].cityPosition !== 0) {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisHorseTransfer(\''+allmyhorses[a].id+'\', \''+stablesInformation[(allmyhorses[a].cityPosition-1)]+'\')">'+stablesInformation[(allmyhorses[a].cityPosition-1)]+' </br> '+allmyhorses[a].name+'</div>'
                } else {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisHorseTransfer(\''+allmyhorses[a].id+'\', \''+spotsInformation[(allmyhorses[a].spotPosition-1)]+'\')">'+spotsInformation[(allmyhorses[a].spotPosition-1)]+' </br> '+allmyhorses[a].name+'</div>'
                }
            }
        }
    }
    if (callMeCartStable == true) {
        for (var a in allmywagons) {
            if (stablesInformation[(allmywagons[a].cityPosition-1)] === undefined) {
                if (allmywagons[a].cityPosition !== 0) {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisCartTransfer(\''+allmywagons[a].id+'\', \''+stablesInformation[(allmywagons[a].cityPosition-1)]+'\')">'+allmywagons[a].name+'</div>'
                } else {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisCartTransfer(\''+allmywagons[a].id+'\', \''+spotsInformation[(allmywagons[a].spotPosition-1)]+'\')">'+allmywagons[a].name+'</div>'
                }
            } else {
                if (allmywagons[a].cityPosition !== 0) {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisCartTransfer(\''+allmywagons[a].id+'\', \''+stablesInformation[(allmywagons[a].cityPosition-1)]+'\')">'+stablesInformation[(allmywagons[a].cityPosition-1)]+' </br> '+allmywagons[a].name+'</div>'
                } else {
                    dataHtml += '<div class="horse_store_button2" id="horse_store_button" onclick="thisCartTransfer(\''+allmywagons[a].id+'\', \''+spotsInformation[(allmywagons[a].spotPosition-1)]+'\')">'+spotsInformation[(allmywagons[a].spotPosition-1)]+' </br> '+allmywagons[a].name+'</div>'
                }
            }
        }
    }
    tableBody.innerHTML = dataHtml

    const table2Body = document.getElementById('TransferToCity');
    let data2Html = '';
    if (callMeHorseStable || callMeCartStable) {
        for (var a in stablesInformation) {
            data2Html += '<div class="horse_store_button" id="horse_store_button" onclick="thisCityTransfer(\''+(Number(a)+1)+'\', \''+stablesInformation[a]+'\')">'+stablesInformation[a]+'</div>'
        }
    }
    if (callMeFrom == true) {
        for (var a in spotsInformation) {
            data2Html += '<div class="horse_store_button" id="horse_store_button" onclick="thisSpotTransfer(\''+(Number(a)+1)+'\', \''+spotsInformation[a]+'\')">'+spotsInformation[a]+'</div>'
        }
    }
    table2Body.innerHTML = data2Html
}

function thisHorseTransfer(id, name) {
    $.post('http://gum_stables/thisHorseTransfer', JSON.stringify({
        id: id,
        name: name
    }));
}

function thisCartTransfer(id, name) {
    $.post('http://gum_stables/thisCartTransfer', JSON.stringify({
        id: id,
        name: name
    }));
}

function thisCityTransfer(pos, name) {
    $.post('http://gum_stables/thisCityTransfer', JSON.stringify({
        pos: pos,
        name: name
    }));
}

function thisSpotTransfer(pos, name) {
    $.post('http://gum_stables/thisSpotTransfer', JSON.stringify({
        pos: pos,
        name: name
    }));
}

function LoadCartData(table_inv) {
    const table2Body = document.getElementById('cartData');
    let data2Html = '';
    latest = {};
    for (var a in table_inv) {
        if (latest[table_inv[a].category] === undefined) {
            latest[table_inv[a].category] = 1
            data2Html += '<div class="button_category"><div class="l_arrow_button" onclick="left_cart(\''+table_inv[a].category+'\')"></div><div class="r_arrow_button" onclick="right_cart(\''+table_inv[a].category+'\')"></div><div id="buy_horse" onclick="buycart(\''+table_inv[a].category+'\')"></div><u>'+table_inv[a].category+'</u><div id="'+table_inv[a].category+'" class="button_horse">'+table_inv[a].name+'</div></div>'
        }
    }
    table2Body.innerHTML = data2Html
}
function ClearExtras() {
    const list = document.getElementById("MyCartComp");
    while (list.hasChildNodes()) {
        list.removeChild(list.firstChild);
    }
}
function loadAddonInventory(items, cartItems, max, wagonId, model, typeItem){
    const tableManageAddon = document.getElementById('gridAddonInventory');
    dataBagsHtml = ""
    var count = 0
    for (var a in items) {
        if (items[a] !== null) {
            if (cartItems[items[a][1]] == undefined) {
                dataBagsHtml += '<div class="button2" onclick="maniAddon(\''+items[a][1]+'\', \''+items[a][0]+'\', \''+max+'\', \''+wagonId+'\', \''+model+'\', \''+typeItem+'\')"><center>0x '+items[a][0]+'</center></div>'
            } else {
                var count2 = cartItems[items[a][1]]*items[a][2]
                count += count2

                dataBagsHtml += '<div class="button2" onclick="maniAddon(\''+items[a][1]+'\', \''+items[a][0]+'\', \''+max+'\', \''+wagonId+'\', \''+model+'\', \''+typeItem+'\')"><center>'+cartItems[items[a][1]]+'x '+items[a][0]+' | '+count2.toFixed(2)+' kg</center></div>'
            }
        }
    }
    tableManageAddon.innerHTML = dataBagsHtml
    $("#addonManage").show();
    document.getElementById("title").innerHTML = ""+language[415].text+" : "+count+"/"+max
}

function loadAnimals(items, max, wagonId){
    animalId = wagonId
    isInAnimal = true
    const tableManageAddon = document.getElementById('gridAddonInventory');
    dataBagsHtml = ""
    var count = 0
    for (var a in items) {
        count += 1
        if (items[a].type == "animal") {
            dataBagsHtml += '<div class="button2" onclick="maniAnimal(\''+items[a].name+'\', \''+items[a].model+'\', \''+items[a].loot+'\', \''+items[a].quality+'\', \''+a+'\', \''+wagonId+'\')"><center>'+items[a].textQuality+' '+items[a].name+'</center></div>'
        } else {
            if (items[a].textQuality === undefined) {
                dataBagsHtml += '<div class="button2" onclick="maniPelt(\''+items[a].model+'\', \''+items[a].provisionHash+'\', \''+a+'\', \''+wagonId+'\')"><center>'+items[a].name+'</center></div>'
            } else {
                dataBagsHtml += '<div class="button2" onclick="maniPelt(\''+items[a].model+'\', \''+items[a].provisionHash+'\', \''+a+'\', \''+wagonId+'\')"><center>'+items[a].textQuality+' '+items[a].name+'</center></div>'
            }
        }
    }
    tableManageAddon.innerHTML = dataBagsHtml
    $("#addonManage").show();
    document.getElementById("title").innerHTML = ""+language[415].text+" : "+count+"/"+max
}

function maniAnimal(name, model, loot, quality, a, id) {
    $.post('http://gum_stables/maniAnimal', JSON.stringify({
        name: name,
        model: model,
        loot: loot,
        quality: quality,
        a: a,
        id: id
    }));
    isInAnimal = false
    $.post('http://gum_stables/cleanAnimals', JSON.stringify({id:animalId}));
}

function maniPelt(model, provisionHash, a, id) {
    $.post('http://gum_stables/maniPelt', JSON.stringify({
        model: model,
        provisionHash: provisionHash,
        a: a,
        id: id
    }));
    isInAnimal = false
    $.post('http://gum_stables/cleanAnimals', JSON.stringify({id:animalId}));
}

function maniAddon(itemId, name, max, id, model, typeItem) {
    $.post('http://gum_stables/maniAddon', JSON.stringify({
        itemId: itemId,
        name: name,
        max: max,
        id: id,
        model: model,
        typeItem: typeItem
    }));
}

function openComponentManage(components) {
    $('#gridManageBags').hide();
    const tableManageBags = document.getElementById('gridManageComp');
    dataCompsHtml = ""
    dataCompsHtml += '<div class="button2" onclick="putDownSaddle()"><center>'+language[481].text+'</center></div>'
    for (var a in components) {
        if (a == "Mask") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[18].text+'</center></div>'
        } else if (a == "saddles") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[19].text+'</center></div>'
        } else if (a == "acshorn") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[20].text+'</center></div>'
        } else if (a == "stirrups") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[21].text+'</center></div>'
        } else if (a == "bags") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[22].text+'</center></div>'
        } else if (a == "saddlecloths") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[23].text+'</center></div>'
        } else if (a == "lantern") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[24].text+'</center></div>'
        } else if (a == "acsluggage") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[25].text+'</center></div>'
        } else if (a == "bridle") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[26].text+'</center></div>'
        } else if (a == "holster") {
            dataCompsHtml += '<div class="button2" onclick="maniComponents(\''+a+'\',\''+components[a]+'\')"><center>'+language[27].text+'</center></div>'
        }
    }

    tableManageBags.innerHTML = dataCompsHtml
    $("#horseManage").show();
    $("#gridManageComp").show();
}
function putDownSaddle(){
    $.post('http://gum_stables/putDownSaddle', JSON.stringify({}));
}
function maniComponents(a, compHash) {
    $.post('http://gum_stables/manicomponents', JSON.stringify({
        comp: a,
        hash: compHash
    }));
}

function openBagsManage(size, id, cart,blanket, shared, byId, clothes) {
    const tableBodyBags = document.getElementById('gridManageBags');
    dataBagsHtml = ""
    dataBagsHtml += '<div class="button" onclick="openStorage(\''+id+'\',\''+size+'\',\''+cart+'\')"><center>'+language[415].text+'</center></div>'
    if (byId == true && shared == true) {
        dataBagsHtml += '<div class="button" onclick="manageAccess(\''+id+'\',\''+size+'\',\''+cart+'\')"><center>'+language[273].text+'</center></div>'
    }
    if (blanket === true && clothes === true) {
        dataBagsHtml += '<div class="button" onclick="manageClothe(\''+id+'\',\''+size+'\',\''+cart+'\')"><center>'+language[416].text+'</center></div>'
    }

    tableBodyBags.innerHTML = dataBagsHtml
    $("#horseManage").show();
    $("#gridManageBags").show();
}

function openStorage(id, size, cart){
    $.post('http://gum_stables/openStorage', JSON.stringify({id:id, size:size, cart:cart}));
}

function manageAccess(id, size, cart) {
    $.post('http://gum_stables/manageAccess', JSON.stringify({id:id, size:size, cart:cart}));
}

function manageClothe(id, size, cart) {
    $.post('http://gum_stables/manageClothe', JSON.stringify({id:id, size:size, cart:cart}));
}

function MakeExtras(table_inv, lantern, livery, tints, id, propset) {
    const table5Body = document.getElementById('MyCartComp');
    in_menu = 6
    data5Html = ""
    data5Html += '<div class="button"><center>'+language[329].text+'</center><input type="range" min="0" max="'+lantern+'" value="0" class="slider" id="lanternss"></div>'
    data5Html += '<div class="button"><center>'+language[330].text+'</center><input type="range" min="-1" max="'+tints+'" value="-1" class="slider" id="tint"></div>'
    data5Html += '<div class="button"><center>'+language[331].text+'</center><input type="range" min="0" max="'+livery+'" value="0" class="slider" id="livery"></div>'
    data5Html += '<div class="button"><center>'+language[442].text+'</center><input type="range" min="0" max="'+propset+'" value="0" class="slider" id="propset"></div>'
    data5Html += '<div class="button"><center>'+language[454].text+'</center><input type="range" min="0" max="200" value="0" class="slider" id="horseCars"></div>'
    for (var a in table_inv) {
        data5Html += '<div class="button"><center>'+language[332].text+' '+a+'</center><input type="range" min="0" max="1" value="0" class="slider" id="Extras_'+a+'"></div>'
    }
    data5Html +='</br></br><div class="button" onclick="BuyCartComponents('+id+')"><center>'+language[328].text+'</center></div>'
    table5Body.innerHTML = table5Body.innerHTML+data5Html
    setTimeout(() => {
        for (var a in table_inv) {
            document.getElementById("Extras_"+a).oninput = function() {send_change_comp(this.value, this.id)}
        }   
        document.getElementById("lanternss").oninput = function() {send_change_comp(this.value, this.id)}
        document.getElementById("livery").oninput = function() {send_change_comp(this.value, this.id)}
        document.getElementById("tint").oninput = function() {send_change_comp(this.value, this.id)}
        document.getElementById("propset").oninput = function() {send_change_comp(this.value, this.id)}
        document.getElementById("horseCars").oninput = function() {send_change_comp(this.value, this.id)}

        const range = document.getElementById('horseCars');

        range.addEventListener('mousemove', (event) => {
            event.preventDefault();
        });
    }, 50);
}

function BuyCartComponents(id) {
    $.post('http://gum_stables/buycartcomponents', JSON.stringify({id:id}));
}

function BuyComponents() {
    saddlecloths = document.getElementById("saddlecloths").value
    saddles = document.getElementById("saddles").value
    acshorn = document.getElementById("acshorn").value
    stirrups = document.getElementById("stirrups").value
    bags = document.getElementById("bags").value
    acsluggage = document.getElementById("acsluggage").value
    lantern = document.getElementById("lantern").value
    Mask = document.getElementById("Mask").value
    tails = document.getElementById("tails").value
    manes = document.getElementById("manes").value
    mustache = document.getElementById("mustache").value
    holster = document.getElementById("holster").value
    bridle = document.getElementById("bridle").value
    propsData = document.getElementById("propsData").value
    $.post('http://gum_stables/BuyComponents', JSON.stringify({
        saddlecloths:saddlecloths,
        saddles:saddles,
        acshorn:acshorn,
        stirrups:stirrups,
        bags:bags,
        acsluggage:acsluggage,
        lantern:lantern,
        Mask:Mask,
        tails:tails,
        manes:manes,
        mustache:mustache,
        holster:holster,
        bridle:bridle,
        propsData:propsData
    }));
}

var isOver = false
function LoadHorseData(table_inv) {
    const tableBody = document.getElementById('horseData');
    let dataHtml = '';
    let latest = '';
    const sortedTableInv = Object.values(table_inv).sort((a, b) => {
        return a.category.localeCompare(b.category);
    });

    for (var a in sortedTableInv) {
        if (latest !== sortedTableInv[a].category) {
            latest = sortedTableInv[a].category
            document.getElementById("Money").innerHTML = ""
            document.getElementById("Gold").innerHTML = ""
            document.getElementById("Storage").innerHTML = ""
            dataHtml += '<div class="button_category" onClick="showHorseSS(\''+sortedTableInv[a].category+'\')"><div class="l_arrow_button" onmouseover="overMouse()" onmouseout="outMouse()" onclick="left_horse(\''+sortedTableInv[a].category+'\')"></div><div class="r_arrow_button" onmouseover="overMouse()" onmouseout="outMouse()" onclick="right_horse(\''+sortedTableInv[a].category+'\')"></div><div id="buy_horse" onclick="buyhorse(\''+sortedTableInv[a].category+'\')"></div><u>'+sortedTableInv[a].category+'</u><div id="'+sortedTableInv[a].category+'" class="button_horse">'+sortedTableInv[a].colorName+'</div></div>'
        }
    }
    tableBody.innerHTML = dataHtml
    latest = '';
}
function overMouse() {
    isOver = true   
}
function outMouse() {
    isOver = false
}
function showHorseSS(category) {
    if (isOver === false) {
        $.post('http://gum_stables/showHorseSS', JSON.stringify({ horse:document.getElementById(category).innerHTML, category:category}));
    }
}
function callCarts(id) {
    $.post('http://gum_stables/callCarts', JSON.stringify({id:id}));
}

function callHorses(id) {
    $.post('http://gum_stables/callHorses', JSON.stringify({id:id}));
}

function LoadMyHorsesData(table_inv) {
    const tableBody = document.getElementById('MyHorseData');
    let data3Html = '';
    for (var a in table_inv) {
        if (callHorse || company) {
            if (table_inv[a].breeding == language[216].text) {
                if (table_inv[a].isdead == 0) {
                    if (table_inv[a].sex == language[344].text) {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_breeding"><span class="tooltiptext">'+language[366].text+'</span></div><div id="button_select" onclick="callHorses('+table_inv[a].id+')"><span class="tooltiptext">'+language[377].text+'</span></div>'+table_inv[a].name+'</div>'
                    } else {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_breeding"><span class="tooltiptext">'+language[366].text+'</span></div>'+table_inv[a].name+'</div>'
                    }
                }
            } else {
                if (table_inv[a].isdead == 1) {
                    if (table_inv[a].selected == 1) {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div class="button_health" id="button_health" onclick="HealthHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[368].text+'</span></div>'+table_inv[a].name+'</div>'
                    } else {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="callHorses('+table_inv[a].id+')"><span class="tooltiptext">'+language[377].text+'</span></div><div class="button_health" id="button_health" onclick="HealthHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[368].text+'</span></div>'+table_inv[a].name+'</div>'
                    }
                } else if (table_inv[a].isdead == 0) {
                    if (table_inv[a].selected == 1) {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div>'+table_inv[a].name+'</div>'
                    } else {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="callHorses('+table_inv[a].id+')"><span class="tooltiptext">'+language[377].text+'</span></div>'+table_inv[a].name+'</div>'
                    }
                } else {
                    data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="callHorses('+table_inv[a].id+')"><span class="tooltiptext">'+language[377].text+'</span></div><div id="dead_horse"><span class="tooltiptext">'+language[369].text+'</span></div>'+table_inv[a].name+'</div>'
                }
            }
        } else {
            if (table_inv[a].horseCompany == 0) {
                if (table_inv[a].breeding == language[216].text) {
                    if (table_inv[a].isdead == 0) {
                        if (table_inv[a].sex == language[344].text) {
                            data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_breeding"><span class="tooltiptext">'+language[366].text+'</span></div><div id="button_select" onclick="SelectHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[370].text+'</span></div>'+table_inv[a].name+'</div>'
                        } else {
                            data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_breeding"><span class="tooltiptext">'+language[366].text+'</span></div>'+table_inv[a].name+'</div>'
                        }
                    }
                } else {
                    if (table_inv[a].isdead == 1) {
                        if (table_inv[a].selected == 1) {
                            data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div class="button_health" id="button_health" onclick="HealthHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[368].text+'</span></div>'+table_inv[a].name+'</div>'
                        } else {
                            data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="SelectHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[370].text+'</span></div><div class="button_health" id="button_health" onclick="HealthHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[368].text+'</span></div>'+table_inv[a].name+'</div>'
                        }
                    } else if (table_inv[a].isdead == 0) {
                        if (table_inv[a].selected == 1) {
                            data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div>'+table_inv[a].name+'</div>'
                        } else {
                            data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="SelectHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[370].text+'</span></div>'+table_inv[a].name+'</div>'
                        }
                    } else {
                        data3Html += '<div class="button_my_horses" onclick="Show_Horse(\''+table_inv[a].id+'\',\''+a+'\')"><div id="button_sell" onclick="SellHorse(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\', \''+a+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="SelectHorse('+table_inv[a].id+')"><span class="tooltiptext">'+language[370].text+'</span></div><div id="dead_horse"><span class="tooltiptext">'+language[369].text+'</span></div>'+table_inv[a].name+'</div>'
                    }
                }
            }
        }

    }
    tableBody.innerHTML = data3Html
}

  
// function sendValueToLua(cat, value1, value2, value3) {
//     $.post('http://gum_stables/colorChange', JSON.stringify({
//         catValue: cat,
//         value1: value1,
//         value2: value2,
//         value3: value3,
//     }));
// }
function LoadMyBreedData(table_inv, table_inv2) {
    const table7Body = document.getElementById('MyBreedComp');
    let data7Html = '';
    data7Html += '<div class="buttons_breed_title">'+language[333].text+'</div>'
    if ((isTrainer == true || isBreeder == true) && fixBreed == true) {
        for (var a in table_inv2) {
            if (table_inv2[a].sex == language[67].text && table_inv2[a].age >= 5 && table_inv2[a].breeding !== language[216].text) {
                data7Html += '<div class="button_my_horses" onclick="ShowHorsePrepareBreed('+table_inv2[a].id+')"><div id="button_ad_breed" onclick="AddBreed(\''+table_inv2[a].id+'\',\''+table_inv2[a].model+'\', \''+a+'\', \''+table_inv2[a].breeding+'\')"></div><div id="gender_male"></div>'+table_inv2[a].name+'</div>'
            }
            if (fixFemale) {
                if (table_inv2[a].breeding == language[1640].text && table_inv2[a].sex == language[68].text && table_inv2[a].age >= 5) {
                    data7Html += '<div class="button_my_horses" onclick="ShowHorsePrepareBreed('+table_inv2[a].id+')"><div id="button_ad_breed" onclick="AddBreed(\''+table_inv2[a].id+'\',\''+table_inv2[a].model+'\', \''+a+'\', \''+table_inv2[a].breeding+'\')"></div><div id="gender_female"></div>'+table_inv2[a].name+'</div>'
                }
            }
        }
        for (var a in table_inv2) {
            if (table_inv2[a].breeding == language[164].text && table_inv2[a].sex == language[68].text && table_inv2[a].age >= 5) {
                data7Html += '<div class="button_my_horses" onclick="ShowHorsePrepareBreed('+table_inv2[a].id+')"><div id="button_ad_breed" onclick="AddBreed(\''+table_inv2[a].id+'\',\''+table_inv2[a].model+'\', \''+a+'\', \''+table_inv2[a].breeding+'\')"></div><div id="gender_female"></div>'+table_inv2[a].name+'</div>'
            }
        }
    } else {
        for (var a in table_inv2) {
            if (table_inv2[a].breeding == language[164].text && table_inv2[a].sex == language[67].text && table_inv2[a].age >= 5) {
                data7Html += '<div class="button_my_horses" onclick="ShowHorsePrepareBreed('+table_inv2[a].id+')"><div id="button_ad_breed" onclick="AddBreed(\''+table_inv2[a].id+'\',\''+table_inv2[a].model+'\', \''+a+'\')"></div><div id="gender_male"></div>'+table_inv2[a].name+'</div>'
            }
        }
        for (var a in table_inv2) {
            if (table_inv2[a].breeding == language[164].text && table_inv2[a].sex == language[68].text && table_inv2[a].age >= 5) {
                data7Html += '<div class="button_my_horses" onclick="ShowHorsePrepareBreed('+table_inv2[a].id+')"><div id="button_ad_breed" onclick="AddBreed(\''+table_inv2[a].id+'\',\''+table_inv2[a].model+'\', \''+a+'\')"></div><div id="gender_female"></div>'+table_inv2[a].name+'</div>'
            }
        }
    }
    data7Html += '</br></br></br></br></br>'
    data7Html += '<div class="buttons_breed_title">'+language[333].text+'</div>'
    for (var a in table_inv) {
        if (isNaN(table_inv[a].breeding_time)) {
            data7Html += '<div class="button_my_breed" onclick="Show_Breed_Horses(\''+table_inv[a].breeding_id_horse_1+'\',\''+table_inv[a].breeding_id_horse_2+'\',\''+table_inv[a].breeding_model_horse_1+'\',\''+table_inv[a].breeding_name_horse_1+'\',\''+table_inv[a].breeding_model_horse_2+'\',\''+table_inv[a].breeding_name_horse_2+'\',\''+table_inv[a].reward_model+'\')"><div class="left_breed">'+table_inv[a].breeding_name_horse_1+'</div> <div class="right_breed">'+table_inv[a].breeding_name_horse_2+'</div><div class="center2_breed" onclick="Save_breed_horse(\''+table_inv[a].reward_sex+'\',\''+table_inv[a].reward_model+'\',\''+table_inv[a].breeding_id_horse_1+'\',\''+table_inv[a].breeding_id_horse_2+'\',\''+table_inv[a].breeding_time+'\',\''+table_inv[a].exp+'\')"></div></div>'
        } else {
            data7Html += '<div class="button_my_breed" onclick="Show_Breed_Horses(\''+table_inv[a].breeding_id_horse_1+'\',\''+table_inv[a].breeding_id_horse_2+'\',\''+table_inv[a].breeding_model_horse_1+'\',\''+table_inv[a].breeding_name_horse_1+'\',\''+table_inv[a].breeding_model_horse_2+'\',\''+table_inv[a].breeding_name_horse_2+'\',\''+table_inv[a].reward_model+'\')"><div class="left_breed">'+table_inv[a].breeding_name_horse_1+'</div> <div class="right_breed">'+table_inv[a].breeding_name_horse_2+'</div> <div class="center_breed">'+table_inv[a].breeding_time+' time</div></div>' 
        }
    }
    table7Body.innerHTML = data7Html
}

function ShowHorsePrepareBreed(id) {
    $.post('http://gum_stables/shwo_prepare_breed', JSON.stringify({id:id}))
}
function AddBreed(id, model, a, breeding) {
    $.post('http://gum_stables/add_to_breed', JSON.stringify({id:id, breeding:breeding}))
}
function Save_breed_horse(sex, model, id1, id2, time, exp) {
    $.post('http://gum_stables/save_breed', JSON.stringify({sex:sex, model:model, id1:id1, id2:id2, time:time, exp:exp}))
}
function LoadMyCartData(table_inv) {
    const tableBody = document.getElementById('MyCartData');
    let data4Html = '';
    for (var a in table_inv) {
        if (callCart) {
            if (table_inv[a].selected == 1) {
                data4Html += '<div class="button_my_horses" onclick="Show_Cart('+table_inv[a].id+')"><div id="button_sell" onclick="SellCart(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\')"><span class="tooltiptext">'+language[367].text+'</span></div>'+table_inv[a].name+'</div>'
            } else {
                data4Html += '<div class="button_my_horses" onclick="Show_Cart('+table_inv[a].id+')"><div id="button_sell" onclick="SellCart(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select"  onmouseover="overMouse()" onmouseout="outMouse()"  onclick="callCarts('+table_inv[a].id+')"><span class="tooltiptext">'+language[378].text+'</span></div>'+table_inv[a].name+'</div>'
            }
        } else {
            if (table_inv[a].selected == 1) {
                data4Html += '<div class="button_my_horses" onclick="Show_Cart('+table_inv[a].id+')"><div id="button_sell" onclick="SellCart(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\')"><span class="tooltiptext">'+language[367].text+'</span></div>'+table_inv[a].name+'</div>'
            } else {
                data4Html += '<div class="button_my_horses" onclick="Show_Cart('+table_inv[a].id+')"><div id="button_sell" onclick="SellCart(\''+table_inv[a].id+'\',\''+table_inv[a].model+'\')"><span class="tooltiptext">'+language[367].text+'</span></div><div id="button_select" onclick="SelectCart('+table_inv[a].id+')"><span class="tooltiptext">'+language[370].text+'</span></div>'+table_inv[a].name+'</div>'
            }
        }
    }
    tableBody.innerHTML = data4Html
}

function Show_Breed_Horses(horseId1, horseId2, id1, name1, id2, name2, reward) {
    $.post('http://gum_stables/show_breed_horse', JSON.stringify({model1:id1, name1:name1, model2:id2, name2:name2, reward:reward,id1:horseId1, id2:horseId2}))
}

function buyhorse(category) {
    $.post('http://gum_stables/buy_horse', JSON.stringify({category:category, horse:document.getElementById(category).innerHTML}));
}

function buycart(category) {
    $.post('http://gum_stables/buy_cart', JSON.stringify({category:category, type:document.getElementById(category).innerHTML}));
}

function Show_Cart(id) {
    if (protectCart !== id) {
        protectCart = id
        if (isOver === false) {
            $.post('http://gum_stables/show_cart', JSON.stringify({id:id}));
        }
    }
}
function SellHorse(id,model) {
    $.post('http://gum_stables/sell_horse', JSON.stringify({id:id, model:model}));
}
function SellCart(id,model) {
    $.post('http://gum_stables/sellcart', JSON.stringify({id:id, model:model}));
}
function SelectCart(id) {
    $.post('http://gum_stables/selectcart', JSON.stringify({id:id}));
}
function Show_Horse(id, num) {
    if (id !== protect) {
        protect = id
        $.post('http://gum_stables/show_horse', JSON.stringify({id:id}));
        if (Number(myhorses[num].age)) {
            document.getElementById("Year").innerHTML = ""+language[300].text+""+(Math.round(myhorses[num].age*100)/100).toFixed(2)+" Year"
        } else {
            document.getElementById("Year").innerHTML = ""+language[300].text+""+myhorses[num].age
        }
        document.getElementById("Exp").innerHTML = ""+language[301].text+""+myhorses[num].exp
        document.getElementById("Gender").innerHTML = ""+language[302].text+""+myhorses[num].sex
        document.getElementById("Breed").innerHTML = ""+language[303].text+""+myhorses[num].breeding
    }
}

function SelectHorse(id) {
    $.post('http://gum_stables/select_horse', JSON.stringify({id:id}));
}

function HealthHorse(id) {
    $.post('http://gum_stables/health_horse', JSON.stringify({id:id}));
}

function right_horse(category, money, gold, storage) {
    $.post('http://gum_stables/right_horse', JSON.stringify({ horse:document.getElementById(category).innerHTML, category:category}));
}
function left_horse(category, money, gold, storage) {
    $.post('http://gum_stables/left_horse', JSON.stringify({ horse:document.getElementById(category).innerHTML, category:category}));
}

function right_cart(category) {
    $.post('http://gum_stables/right_cart', JSON.stringify({ cart:document.getElementById(category).innerHTML, category:category}));
}
function left_cart(category) {
    $.post('http://gum_stables/left_cart', JSON.stringify({ cart:document.getElementById(category).innerHTML, category:category}));
}

function switch_right(object, category, name) {
    document.getElementById(category).innerHTML = object
}


function removeAllChildNodes(parent) {
    while (parent.firstChild) {
        parent.removeChild(parent.firstChild);
    }
}

