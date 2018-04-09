package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

//         sets the checks for register form / add more features
        HttpSession session = request.getSession();
//                      not perfected but still functional
        if(username.isEmpty() || email.isEmpty() || password.isEmpty()) {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.setAttribute("form_error", "<p style=\"color:red\">Sorry \"register form\" error! all form entries must be completed</p>");
            response.sendRedirect("/register");
        } else if (password == null || password.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.setAttribute("password_error", "<p style=\"color:red\">Sorry \"password\" error! password  was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else if (!password.equals(passwordConfirmation)) {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.setAttribute("password_mismatch", "<p style=\"color:red\">Sorry \"passwords\" do not match!</p>");
            response.sendRedirect("/register");
        } else if (email == null || email.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.setAttribute("email_error", "<p style=\"color:red\">Sorry \"email\" error! :email was left empty or has invalid input </p>");
            response.sendRedirect("/register");
        } else if (username == null || username.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.setAttribute("username_error", "<p style=\"color:red\"> \"username\" error! : username was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else {
            session.removeAttribute("password_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("form_error");
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("email", email);

            // validate input
            boolean inputHasErrors = username.isEmpty()
                    || email.isEmpty()
                    || password.isEmpty()
                    || (!password.equals(passwordConfirmation));

            if (inputHasErrors) {
                response.sendRedirect("/register");
                return;
            }

            // create and save a new user
            User user = new User(username, email, password);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }
    }
}
