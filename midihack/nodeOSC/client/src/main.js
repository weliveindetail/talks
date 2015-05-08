
const DOOR_SIZES = ["small", "medium", "large"];

function isDoorInState(index, state) {
    var doorDiv = $("#door" + (index + 1))
    return (doorDiv.hasClass("door-small-" + state) ||
            doorDiv.hasClass("door-medium-" + state) ||
            doorDiv.hasClass("door-large-" + state));
};

function setDoorState(index, state) {
    var doorDiv = $("#door" + (index + 1));
    DOOR_SIZES.forEach(function(size) {
        if (doorDiv.hasClass("door-" + size)) {
            doorDiv.addClass("door-" + size + "-" + state);
            if(state == "open") {
                doorDiv.removeClass("door-" + size + "-openable");
            }
        }
    });
};

function setIsOpenableDoor(index) {
    setDoorState(index, "openable");
    $("#door" + (index + 1)).on("click", function() {
        if (isDoorInState(index, "closed")) {
            openDoor(index);
        }
    });
};

function openDoor(index) {
    var doorDiv = $("#door" + (index + 1));
    $.ajax({ url: "./open/" + (index + 1), type: "GET" }).done(function() {});
    DOOR_SIZES.forEach(function(size) {
        if (doorDiv.hasClass("door-" + size + "-closed")) {
            doorDiv.addClass("door-" + size + "-open");
            doorDiv.removeClass("door-" + size + "-closed");
            doorDiv.removeClass("door-" + size + "-openable");
        }
    });
};

function setDoorContent(index, door) {
    var doorDiv = $("#door" + (index + 1));
    switch(door.type) {
        case "picture":
            var pic = $("<div>").addClass("picture").css("background-image", "url(\"" + door.url + "\")");
            $(".content", doorDiv).append(pic);
            break;
        case "text":
            var pic = $("<div>").addClass("picture");
            var contentDiv = $(".content", doorDiv);
            contentDiv.append(pic);
            contentDiv.click(onDisplayText.bind(this, index, door.text));
            break;
        case "youtube":
            var pic = $("<div>").addClass("picture").css("background-image", "url('res/pic_youtube.jpg')");
            var contentDiv = $(".content", doorDiv);
            contentDiv.append(pic);
            contentDiv.click(onDisplayYoutube.bind(this, index, door.url));
			break;
    }
};

function onDisplayText(index, text) {
    if (isDoorInState(index, "open")) {
        $( "#dialog-message" ).html(text);
        $( "#dialog-background" ).css("display", "block");
        $( "#dialog" ).attr("title", (index + 1) + ". Dezember");
		$( "#dialog" ).css("background-color", "#ffffff");
		$( "#dialog" ).css("width", "615");
		$( "#dialog" ).css("height", "370");
        $( "#dialog" ).css("display", "block");

        $( "#dialog-background" ).on("click", function() {
            $( "#dialog-background" ).css("display", "none");
            $( "#dialog" ).css("display", "none");
        });

        $( "#dialog" ).on("click", function() {
            $( "#dialog-background" ).css("display", "none");
            $( "#dialog" ).css("display", "none");
        });
    }
}

function onDisplayYoutube(index, url) {
    if (isDoorInState(index, "open")) {
        $( "#dialog-message" ).html("<iframe width='560' height='315' src='" + url + "' frameborder='0' allowfullscreen></iframe>");
        $( "#dialog-background" ).css("display", "block");
        $( "#dialog" ).attr("title", (index + 1) + ". Dezember");
		$( "#dialog" ).css("width", "615");
		$( "#dialog" ).css("height", "370");
		$( "#dialog" ).css("background-color", "transparent");
        $( "#dialog" ).css("display", "block");

        $( "#dialog-background" ).on("click", function() {
            $( "#dialog-background" ).css("display", "none");
            $( "#dialog" ).css("display", "none");
        });

        $( "#dialog" ).on("click", function() {
            $( "#dialog-background" ).css("display", "none");
            $( "#dialog" ).css("display", "none");
        });
    }
}

function loadDoors() {
    $.ajax({
        url: "./data.json",
        type: "GET"
    }).done(function(msg) {
        for(var i = 0; i < msg.doors.length; ++i) {
            var door = msg.doors[i];
            setIsOpenableDoor(i);
            setDoorState(i, door.open ? "open" : "closed");
            setDoorContent(i, door);
        }
    }).fail(function(jqXHR, textStatus) {
        alert("Request failed: " + textStatus);
    });
};

$(function() {
    loadDoors();
});
