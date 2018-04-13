//
//package controllers;
//
//import com.codeup.adlister.dao.DaoFactory;
//import com.codeup.adlister.models.Ad;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//
//@WebServlet(name = "AdsDetailServlet", urlPatterns = "/ad")
//public class AdsDetailServlet extends HttpServlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        long id = Long.parseLong(request.getParameter("id"));
//        Ad ad = DaoFactory.getAdsDao().findOne(id);
//        DaoFactory.getAdsDao().deleteAd(ad);
//
//        response.sendRedirect("/profile");
//
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        long id = Long.parseLong(request.getParameter("id"));
//
//        Ad viewAdInfo = DaoFactory.getAdsDao().findOne(id);
//        request.setAttribute("viewAdInfo", viewAdInfo);
//
//
//        request.getRequestDispatcher("/WEB-INF/ads-detail.jsp").forward(request, response);
//    }
//}