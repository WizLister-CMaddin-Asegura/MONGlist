package com.codeup.adlister.controllers;


import com.codeup.adlister.models.User;

import com.codeup.adlister.dao.DaoFactory;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }


        User user = (User) request.getSession().getAttribute("user");
        Long userId = user.getId();

//        List<Ad> ads = DaoFactory.getAdsDao().getAdsByUser(userId);
//        request.setAttribute("ads", ads);
//



        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

    }

}
