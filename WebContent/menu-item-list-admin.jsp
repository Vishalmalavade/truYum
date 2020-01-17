<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu-Item-List-Admin</title>
<link rel="Shortcut icon" href="images/truYum-logo-dark.png">
<link rel="stylesheet" type="text/css" href="styles\style.css">
</head>
<body>
    <header> <img src="images\truyum-logo-light.png" />
    <p class="truyum">truYum</p>
    <nav> <a class="menu" href="ShowMenuItemlistAdmin">Menu</a></nav> </header>
    <p class="items">Menu Items</p>
    <table>
        <tr>
            <th align="left"><b>Name</b></th>
            <th class="right"><b>Price</b></th>
            <th><b>Active</b></th>
            <th><b>Date of Launch</b></th>
            <th><b>Category</b></th>
            <th><b>Free Delivery</b></th>
            <th><b>Action</b></th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">

            <tr>
                <td>${menuItem.getName()}</td>
                <td align="left">Rs. ${menuItem.getPrice()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isActive()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>
                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyy" /></td>
                <td align="center">${menuItem.getCategory()}</td>

                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreedelivery()==true}">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose></td>

                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>
            </tr>
        </c:forEach>

    </table>

    <footer>
    <p class="copy">Copyright &copy;2019</p>
    </footer>
</body>
</html>
