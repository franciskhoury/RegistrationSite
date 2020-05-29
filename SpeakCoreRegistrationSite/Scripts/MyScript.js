function ValidateEmail(controlID) {
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if ($(#"controlID").val().match(mailformat)) {
        
        return true;
    }
    else {
        alert("You have entered an invalid email address.");
        $(#"controlID").addClass("invalid");
        $(#"controlID").focus();
        return false;
    }
}

