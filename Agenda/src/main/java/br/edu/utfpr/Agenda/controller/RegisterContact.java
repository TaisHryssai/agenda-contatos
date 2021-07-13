package br.edu.utfpr.Agenda.controller;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.*;
import java.io.IOException;

@WebServlet(name = "RegisterContactServlet", value = "/register-contact")
public class RegisterContact extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nome");
        String year = request.getParameter("ano");

        if(name == null || year == null){
            request.getRequestDispatcher("/WEB-INF/view/register.jsp").forward(request, response);
        }


    }

    public void destroy() {
    }
}
