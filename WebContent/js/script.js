function validateMenuItemForm() {
    var name = document.forms["menuItemForm"]["name"].value;
    var price = document.forms["menuItemForm"]["price"].value;
    var dateOfLaunch = document.forms["menuItemForm"]["dateOfLaunch"].value;
    var category = document.forms["menuItemForm"]["category"].value;

    var regex = (/^.*[0-9].*$/);

    if (name == "") {
        alert("Title is required");
        return false;
    }

    if (name.length < 2 || name.length > 65) {
        alert("Title should have 2 to 65 characters");
        return false;
    }

    if (price == "") {
        alert("Price is required");
        return false;
    }

    if (!price.match(regex)) {
        alert("Price has to be a number");
        return false;
    }

    if (dateOfLaunch == "") {
        alert("Date of Launch is required");
        return false;
    }

    if (category == "") {
        alert("Select one category");
        return false;
    }
}
