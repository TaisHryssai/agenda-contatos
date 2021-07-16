package br.edu.utfpr.Agenda.controller;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet(name = "ListContactServlet", value = "/list-contact")
public class ListContact  extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/WEB-INF/view/contacts.jsp").forward(request, response);

    }

    public void destroy() {
    }
}
