<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="js/script.js"></script>
<title>Edit</title>
<link rel="shortcut icon" href="images\truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header> <img src="images\truyum-logo-light.png" />
    <p class="truyum">truYum</p>
    <nav> <a class="menu" href="ShowMenuItemlistAdmin">Menu</a> </nav> </header>
    <p class="items">Edit Menu Item</p>

    <form action="EditMenuItem" method="post" name="menuItemForm"
        onsubmit="return validateMenuItemForm()">

        <table cellspacing=8>
            <tr>
                <input type="hidden" name="id" value="${menuItem.getId()}">
            </tr>
            <tr>
                <td><label for="name"><b>Name<b></label></td>
            </tr>
            <tr>
                <td colspan="8"><input id="name" type="text" name="name"
                    value="${menuItem.getName()}" autofocus size=142 autocomplete="off"
                    placeholder="Sandwich" spellcheck="false"></td>
            </tr>

            <tr>
                <td><label for="price"><b>Price(Rs.)<b></label></td>
                <td><label> <b>Active</b></label></td>
                <td><label> <b>Date of Launch</b></label></td>
                <td><label> <b>Category</b></label></td>
            </tr>

            <tr>
                <td><input id="price" type="text" name="price" value="${menuItem.getPrice()}"
                    autofocus autocomplete="off" spellcheck="false" placeholder="97"></td>


                <td><c:choose>
                        <c:when test="${menuItem.isActive()==true }">
                            <input type="radio" value="Yes" name="active" checked="checked" />Yes
                <input type="radio" value="No" name="active" />No
                </c:when>
                        <c:otherwise>
                            <input type="radio" value="Yes" name="active" />Yes
                <input type="radio" value="No" name="active" checked="checked" />No</c:otherwise>
                    </c:choose></td>


                <f:formatDate value="${menuItem.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" />
                <td><input id="date" type="text" name="dateOfLaunch" value="${dateOfLaunch }"
                    autofocus size=20 autocomplete="off" placeholder="27/04/2022" spellcheck="false"></td>

                <td><select name="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}
                        </option>

                        <option>Starters</option>
                        <option>Main Course</option>
                        <option>Desserts</option>
                        <option>Drinks</option>
                </select></td>
            </tr>

            <tr>
                <td><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true }">

                            <input type="checkbox" name="freedelivery" value="Yes" checked="checked" />
                            <b>Free Delivery</b>
                        </c:when>
                        <c:otherwise>
                            <input type="checkbox" name="freedelivery" value="No">
                            <b>Free Delivery</b>
                        </c:otherwise>
                    </c:choose></td>

            </tr>

            <tr>
                <td><input type="submit" value="Save" name="submit" class="submit" /></td>
            </tr>
        </table>

    </form>
    <footer>
    <p class="copy">&nbsp;Copyrights &copy; 2019</p>
    </footer>
</body>
</html>