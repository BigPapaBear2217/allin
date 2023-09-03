let RowsData = [];
let Rows = [];
let savedHeader = "";

const OpenKeyboard = (data) => {
    $(".main-wrapper").fadeIn(0)
    $(".background").fadeIn(0)
    SetHeader(data.header ? data.header : "")
    AddRow(data.rows)
}

const SetHeader = (header) => {
    let element = $('<h1>' + header + '<h1>');
    $('.header').append(element);
    savedHeader = element
}

const CloseKeyboard = () => {
    $(".main-wrapper").fadeOut(0);
    $(".background").fadeOut(0);
    $(".background").fadeOut(0);
    $(savedHeader).remove();
    RowsData = [];
    Rows = [];
    savedHeader = "";
};

const AddRow = (data) => {
    RowsData = data
    for (let i = 0; i < RowsData.length; i++) {
        let element = $('<label for="usr">' + RowsData[i] + '</label> <input type="text" class="form-control" id="' + i + '" />');
        $('.body').append(element);
        Rows[i] = element
    }
    document.getElementById(0).focus();
};

$(document).on('click', "#submit", function() {
    const returnData = [];
    for (let i = 0; i < RowsData.length; i++) {
        let data = document.getElementById(i)
        if (data.value) {
            returnData.push({
                input: data.value,
            });
        } else {
            returnData.push({
                input: null,
            });
        }
        $(Rows[i]).remove();
    }
    $.post("https://SS-MyPet/dataPost", JSON.stringify({data: returnData}))
});

const SubmitData = () => {
    const returnData = [];
    for (let i = 0; i < RowsData.length; i++) {
        let data = document.getElementById(i)
        if (data.value) {
            returnData.push({
                input: data.value,
            });
        } else {
            returnData.push({
                input: null,
            });
        }
        $(Rows[i]).remove();
    }
    $.post("https://SS-MyPet/dataPost", JSON.stringify({data: returnData}))
}


const PostData = (data) => {
    return $.post("https://SS-MyPet/dataPost", JSON.stringify(data))
}

const CancelKeyboard = () => {
    for (let i = 0; i < RowsData.length; i++) {
        $(Rows[i]).remove();
    }
    $.post("https://SS-MyPet/cancell")
}

window.addEventListener("message", (evt) => {
    const data = evt.data
    const info = data.data
    const action = data.action
    switch (action) {
        case "OPEN":
            return OpenKeyboard(info);
        case "CLOSE":
            return CloseKeyboard();
        case "CANCEL":
            return CancelKeyboard();
        default:
            return;
    }
})

$(document).click(function (event) {
    let $target = $(event.target);
    if (!$target.closest('.main-wrapper').length &&
        $('.main-wrapper').is(":visible")) {
        CancelKeyboard();
        $.post("https://SS-MyPet/cancel")
    }
});