package br.edu.utfpr.Agenda.controller;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.servlet.ServletException;
import java.io.IOException;

@WebServlet(name = "ListContactController", value = "/lista-contatos")
public class ListContactController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/WEB-INF/view/list-contacts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    public void destroy() {
    }
}
