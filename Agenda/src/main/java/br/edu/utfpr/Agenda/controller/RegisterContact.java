package br.edu.utfpr.Agenda.controller;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.*;
import java.io.IOException;

@WebServlet(name = "RegisterContactServlet", value = "/register-contact")
public class RegisterContact extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        if(name == null || phone == null || email == null){
            request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
    }

    public void destroy() {
    }
}
