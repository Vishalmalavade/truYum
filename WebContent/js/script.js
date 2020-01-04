function valid() {
    var title = document.forms["user"]["title"].value;
    var price = document.forms["user"]["price"].value;
    var date = document.forms["user"]["dateoflaunch"].value;
    var category = document.forms["user"]["category"].value;
    var regex = (/^.*[0-9].*$/);

    if (title == "") {
        alert("Title is required");
        return false;
    }

    if (title.length < 2 || title.length > 65) {
        alert("Title should have 2 to 65 characters.");
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

    if (date == "") {
        alert("Date of Launch is required");
        return false;
    }

    if (category == "") {
        alert("Select one category");
        return false;
    }
}
