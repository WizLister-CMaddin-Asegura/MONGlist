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
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");
        String zipcode = request.getParameter("zipcode");
        String mobile_number = request.getParameter("mobile_number");


//         sets the checks for register form / add more features
        HttpSession session = request.getSession();
//                      not perfected but still functional
//        if(username.isEmpty() || email.isEmpty() || password.isEmpty() || first_name.isEmpty() || last_name.isEmpty() || zipcode.isEmpty() || mobile_number.isEmpty() || language_id.isEmpty()) {
//            session.removeAttribute("password_error");
//            session.removeAttribute("email_error");
//            session.removeAttribute("username_error");
//            session.removeAttribute("password_mismatch");
//            session.removeAttribute("form_error");
//            session.setAttribute("form_error", "<p style=\"color:red\">Sorry \"register form\" error! all form entries must be completed</p>");
//            response.sendRedirect("/register");
//        } else
        if (password == null || password.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("password_error", "<p style=\"color:red\">Sorry \"password\" error! password  was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else if (!password.equals(passwordConfirmation)) {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("password_mismatch", "<p style=\"color:red\">Sorry \"passwords\" do not match!</p>");
            response.sendRedirect("/register");
        } else if (email == null || email.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("email_error", "<p style=\"color:red\">Sorry \"email\" error! :email was left empty or has invalid input </p>");
            response.sendRedirect("/register");
        } else if (username == null || username.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("username_error", "<p style=\"color:red\"> \"username\" error! : username was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else if (first_name == null || first_name.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("first_name_error", "<p style=\"color:red\"> \"first_name\" error! : first name was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else if (last_name == null || last_name.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("last_name_error", "<p style=\"color:red\"> \"last_name\" error! : last_name was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else if (zipcode == null || zipcode.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("zipcode_error", "<p style=\"color:red\"> \"zipcode\" error! : zipcode was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else if (mobile_number == null || mobile_number.trim() == "") {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");

            session.setAttribute("mobile_number_error", "<p style=\"color:red\"> \"mobile_number\" error! : mobile number was left empty or has invalid input</p>");
            response.sendRedirect("/register");
        } else {
            session.removeAttribute("password_error");
            session.removeAttribute("email_error");
            session.removeAttribute("username_error");
            session.removeAttribute("password_mismatch");
            session.removeAttribute("form_error");
            session.removeAttribute("first_name_error");
            session.removeAttribute("last_name_error");
            session.removeAttribute("zipcode_error");
            session.removeAttribute("mobile_number_error");



            session.setAttribute("username", username);
            session.setAttribute("password", password);
            session.setAttribute("email", email);
            session.setAttribute("first_name", first_name);
            session.setAttribute("last_name", last_name);
            session.setAttribute("zipcode", zipcode);
            session.setAttribute("mobile_number", mobile_number);


            // validate input
            boolean inputHasErrors = username.isEmpty()
                    || email.isEmpty()
                    || password.isEmpty()
                    || (!password.equals(passwordConfirmation))
                    || first_name.isEmpty()
                    || last_name.isEmpty()
                    ||  zipcode.isEmpty()
                    || mobile_number.isEmpty();

            if (inputHasErrors) {
                response.sendRedirect("/register");
                return;
            }

            // create and save a new user
            User user = new User(username, email, password, first_name, last_name, zipcode, mobile_number);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }
    }
}
