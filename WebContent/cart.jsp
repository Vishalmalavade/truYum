<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images\truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header> <img src="images\truyum-logo-light.png" />
    <p class="truyum">truYum</p>
    <nav> <a class="menu" href="ShowMenuItemListCustomer">Menu</a> <a class="cart"
        href="ShowCart">Cart</a> </nav> </header>
    <p class="items">Cart</p>
    <c:if test="${removeCartItemStatus==true}">
        <h5 class="removed">Item Removed From Cart Successfully</h5>
    </c:if>
    <c:set var="cart" value="${cart}">
    </c:set>
    <table style="width: 50%" cellspacing="10" cellpadding="2" class="menu-item">

        <tr>
            <th align="left"><b>Name</b></th>
            <th align="center"><b>Free Delivery<b></th>
            <th align="left"><b>Price</b></th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">
            <tr>
                <td>${ menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreedelivery()== 'true'}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>


                <td>${ menuItem.getPrice()}</td>



                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>

            </tr>
        </c:forEach>
        <td></td>
        <tr>
            <td align="center"><b>Total</b></td>
            <td><b>${cart.getTotal()}</b></td>
        </tr>
        <td></td>
    </table>
    <footer>
    <p class="copy">&nbsp;Copyright &copy; 2019</p>


    </footer>
</body>
</html>