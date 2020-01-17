package com.cognizant.truyum.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.truyum.dao.MenuItemDao;
import com.cognizant.truyum.dao.MenuItemDaoCollectionImpl;
import com.cognizant.truyum.model.MenuItem;
import com.cognizant.truyum.util.DateUtil;

@WebServlet("/EditMenuItem")
public class EditMenuItemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        float price = Float.parseFloat(request.getParameter("price"));
        String isactive = request.getParameter("active");
        String dateOfLaunch = request.getParameter("dateOfLaunch");
        String category = request.getParameter("category");
        String isFreedelivery = request.getParameter("freedelivery");
        boolean active = false;
        boolean freedelivery = false;
        if (isactive.equals("No")) {
            active = false;
        } else {
            active = true;

        }
        if (isFreedelivery == null) {
            freedelivery = false;
        } else {
            freedelivery = true;
        }

        MenuItem menuItem = new MenuItem(id, name, price, active,
                DateUtil.convertToDate(dateOfLaunch), category, freedelivery);
        MenuItemDao menuItemDao = new MenuItemDaoCollectionImpl();
        menuItemDao.modifyMenuItem(menuItem);
        request.getRequestDispatcher("edit-menu-item-status.jsp").forward(request, response);
    }

}
