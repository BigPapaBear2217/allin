var reportList = []
var currentState = "closed"
var TIME_LIMIT = 0;
window.addEventListener('message', function(event) {

    switch (event.data.action) {
        case 'startReportForm':
            currentState = "reportForm";
			$("#reportForm").show();
            break
        case 'openReportList':
            $(".reportSelected").hide();
            currentState = "reportList";
			$("#reportContainer").fadeIn("fast");
            $(".reportList").show();
            break
        case 'updateReportList':
            reportList = event.data.reportList
			reloadReportList() 
            break
		 case 'notification':
			showNewReportNotification()
            break
		 case 'windows':
			$("#update").show(); 
            currentTime = time; 
    		loading();
            break
		 case 'windowsoff':
			$("#update").hide(); 
            currentTime = 0; 
            break 
         case 'restart':
			$("#update").hide();
            $("#app").show();
            var timeRes = event.data.resTimer
            TIME_LIMIT = timeRes
            startTimer(timeRes);
            break      

var counter = setInterval(function(){
  $('.count').text(Math.floor( $('.count').text() ) + parseInt( Math.random() * 4));

  if($('.count').text() > 90){
    clearInterval(counter);
    $('html,body').css('cursor', 'wait');
  }
}, 1000);
            break   
    }
});

$(document).on('click', ".closebutton", function() { 
    currentState = "closed"
    $("#reportContainer").fadeOut("fast");
    $.post('https://SS-AdminAddons/action', JSON.stringify({
        action: "close",
    }));
});

$(document).on('click', ".reportSelected .screenshot-handler", function() {
    currentState = "fullscreen"
	$("#fullsize").attr("src", currentReport.screenshotLink || "test.png");
    $("#fullsize-screenshot").fadeIn();
});

$(document).on('click', "#fullsize-screenshot .closeicon", function() { 
    $("#fullsize-screenshot").fadeOut();
});

/* reportList[0] = {
       id : 1,
       playername : "jonny_sins",
       playerid: 10,
       title : "Found bug",
       description : "I found a bug here in the police hq",
       solved: false,
       screenshotLink: "test.png",
   }

   reportList[1] = {
       id : 1,
       playername : "Matif",
       title : "Anti RP",
       description : "Player id 87 killed me with no motive",
       solved: false,
       screenshotLink: "test.png",
   }*/

$(document).on('click', "#load", function() { 
    reloadReportList()
});

function reloadReportList() {
    var wrapper = $(".reportList").find(".reports-wrapper")
	reportList.sort((a, b) => b.id - a.id)
    wrapper.html("");
    $.each(reportList, function(index, value) {
        var solved = "Not Solved"
        var sColor = "red"
        if (value.solved === true) {
            solved = "Solved"
            sColor = "green"
        } else if (value.solved === "kinda") {
            solved = "Solving"
            sColor = "yellow"
        }
        wrapper.append(`<div class="item" data-reportId="${index}">
        <div class="firstcolumn column"><div class="player-id"><b>Report Id:</b> ${value.id}</div></div>
        <div class="secondcolumn column"><div class="report-title">${value.title}</div></div>
        <div class="thirdcolumn column"><div class="solved" style="color: ${sColor};" onclick="SolvedReport(${value.id},true)">${solved}</div></div>
        <div class="forthcolumn column"> <div class="morebutton">MORE INFO</div></div>               
        </div>`)
    });
}

$(document).on('click', ".item .morebutton", function() { 
    var id = $(this).parent().parent().attr("data-reportId")
    openReportPage(id)
    currentState = "reportDetails"
});

$(document).on('click', ".reportSelected .backicon", function() { 
    $(".reportSelected").hide();
    $(".reportList").show();
    currentState = "reportList"
});

var currentReportId, currentReport

function openReportPage(id) {
    currentReportId = id
    $(".reportList").hide();
    var thisPage = $(".reportSelected");
    var data = reportList[id]
    currentReport = data
    thisPage.show();
    thisPage.find(".playerId").html(`Report Id: ${data.id} - ${data.playername} (${data.playerid})`)
    var datawrapper = thisPage.find(".data-wrapper")
    datawrapper.find(".title").html(`<b>Title:</b> ${data.title}`)
    datawrapper.find(".description").html(`<b>Description:</b> ${data.description}`)
    datawrapper.find(".screenshot-handler").children().attr("src", data.screenshotLink || "test.png")
}

$(document).on('click', ".gotoplayer", function() { 
    $("#reportContainer").fadeOut("fast");
    $.post('https://SS-AdminAddons/action', JSON.stringify({
        action: "gotoplayer",
        id: currentReport.id
    }));
    currentState = "closed"
});


$(document).on('click', ".check", function() { 
    //$("#reportContainer").fadeOut("fast");
	SolvedReport(currentReport.id,false)
	$(".reportSelected").hide();
	$(".reportList").show();
	currentState = "reportList"
    //currentState = "closed"
});

function SolvedReport(id,can) {
    $.post('https://SS-AdminAddons/action', JSON.stringify({
        action: "solvedreport",
        id: id,
		can: can
    }));
}

$(document).on('click', "#cancelButton", function() { 
    $("#reportForm").fadeOut("fast");
    $.post('https://SS-AdminAddons/action', JSON.stringify({
        action: "close",
    }));
	cleanReportForm();
    currentState = "closed"
});

$(document).on('click', "#submitButton", function() { 
    var title = $("#inputReportTitle").val()
    var description = $("#inputReportDescription").val()
    $("#reportForm").fadeOut("fast");
    $.post('https://SS-AdminAddons/action', JSON.stringify({
        action: "createNewReport",
        title: title,
        description: description,
    }));
	cleanReportForm();
    currentState = "closed"
});

function cleanReportForm() {
    $("#inputReportTitle").val("");
    $("#inputReportDescription").val("");
}

$(document).ready(function(){
    document.onkeyup = function (data) {
        if (data.which == 27) {
            switch (currentState) {
                case 'reportDetails' :
                    $(".reportSelected").fadeOut("fast");
                    $(".reportList").show();
                    currentState = "reportList"
                break
                case 'reportList' : 
                    $("#reportContainer").fadeOut("fast");
                    currentState = "closed"
                    $.post('https://SS-AdminAddons/action', JSON.stringify({
                        action: "close",
                    }));
                    break
                case 'reportForm' :
                    cleanReportForm();
                    $("#reportForm").fadeOut("fast");
                    currentState = "closed"
                    $.post('https://SS-AdminAddons/action', JSON.stringify({
                    action: "close",
                    }));
                    break
                case 'fullscreen' :
                    $("#fullsize-screenshot").fadeOut();
                    currentState = "reportDetails"
                break
            }
            
        }
    };
});

const sound = new Howl({
	src: ['notify.mp3'],
	volume: 0.5,
});

function showNewReportNotification() {
	sound.play();
    $("#reportNotification").fadeIn(400);
    setTimeout(function () {
        $("#reportNotification").fadeOut(400);
    }, 8000)
}


/**
 * The easiest way to take a break at work.
 * Just launch the fullscreen version here :
 * http://emilienleroy.fr/codepen/wu/
 * Press F11 and go take a coffee :p
 * 
 * Follow me :D
 * https://github.com/EmilienLeroy
 * https://codepen.io/emilienleroy/
 * https://twitter.com/EmilienLeroyIT
 */

//init percentage


//on windows load
let percentage = 0;
//init the current time
let currentTime;
//time of windows update in ms (default 5 min)
let time = 500000;
//refresh interval of the percentage in ms (default 1 seconde)
let refresh = 1000;

window.onload = function(){ 
$("#app").hide();     
$("#update").hide();    
}

//infinite loop while the counter is not at zero
function loading(){
    
    currentTime = currentTime - refresh;
    percentage = ((time-currentTime)*100)/time;
    
    //display the percentage
    document.querySelector('#update__percentage').innerHTML = parseInt(percentage)+'% complete';
    
    //is the time isn't finish reload the function
    if(currentTime != 0){
        setTimeout(loading,refresh);
    }
}

//aCOUNTDOWN
// Credit: Mateusz Rybczonec

const FULL_DASH_ARRAY = 283;
const WARNING_THRESHOLD = 60;
const ALERT_THRESHOLD = 20;

const COLOR_CODES = {
  info: {
    color: "green"
  },
  warning: {
    color: "orange",
    threshold: WARNING_THRESHOLD
  },
  alert: {
    color: "red",
    threshold: ALERT_THRESHOLD
  }
};

let timePassed = 0;
let timeLeft = TIME_LIMIT;
let timerInterval = null;
let remainingPathColor = COLOR_CODES.info.color;

document.getElementById("app").innerHTML = `
<div class="base-timer">
  <svg class="base-timer__svg" viewBox="0 0 100 100" xmlns="http://www.w3.org/2000/svg">
    <g class="base-timer__circle">
      <circle class="base-timer__path-elapsed" cx="50" cy="50" r="45"></circle>
      <path
        id="base-timer-path-remaining"
        stroke-dasharray="283"
        class="base-timer__path-remaining ${remainingPathColor}"
        d="
          M 50, 50
          m -45, 0
          a 45,45 0 1,0 90,0
          a 45,45 0 1,0 -90,0
        "
      ></path>
    </g>
  </svg>
  <span id="base-timer-label" class="base-timer__label">${formatTime(
    timeLeft
  )}</span>
</div>
`;

function onTimesUp() {
  clearInterval(timerInterval);
               $("#app").hide();
                     $.post('https://SS-AdminAddons/restartserver', JSON.stringify({
                    action: "close",
                    }));  
}

function startTimer(timeset) {
  timerInterval = setInterval(() => {
    timePassed = timePassed += 1;
    timeLeft = timeset - timePassed;
    document.getElementById("base-timer-label").innerHTML = formatTime(
      timeLeft
    );
    setCircleDasharray();
    setRemainingPathColor(timeLeft);

    if (timeLeft === 0) {
      onTimesUp();
    }
  }, 1000);
}

function formatTime(time) {
  const minutes = Math.floor(time / 60);
  let seconds = time % 60;

  if (seconds < 10) {
    seconds = `0${seconds}`;
  }

  return `${minutes}:${seconds}`;
}

function setRemainingPathColor(timeLeft) {
  const { alert, warning, info } = COLOR_CODES;
  if (timeLeft <= alert.threshold) {
    document
      .getElementById("base-timer-path-remaining")
      .classList.remove(warning.color);
    document
      .getElementById("base-timer-path-remaining")
      .classList.add(alert.color);
  } else if (timeLeft <= warning.threshold) {
    document
      .getElementById("base-timer-path-remaining")
      .classList.remove(info.color);
    document
      .getElementById("base-timer-path-remaining")
      .classList.add(warning.color);
  }
}

function calculateTimeFraction() {
  const rawTimeFraction = timeLeft / TIME_LIMIT;
  return rawTimeFraction - (1 / TIME_LIMIT) * (1 - rawTimeFraction);
}

function setCircleDasharray() {
  const circleDasharray = `${(
    calculateTimeFraction() * FULL_DASH_ARRAY
  ).toFixed(0)} 283`;
  document
    .getElementById("base-timer-path-remaining")
    .setAttribute("stroke-dasharray", circleDasharray);
}