package br.edu.utfpr.Agenda.controller;

import br.edu.utfpr.Agenda.model.domain.Contact;
import br.edu.utfpr.Agenda.model.dto.ContactDTO;
import br.edu.utfpr.Agenda.model.mapper.ContactMapper;
import br.edu.utfpr.Agenda.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RegisterContactServlet", value = "/cadastrar-contato")
public class RegisterContactServlet extends HttpServlet {
    ContactService contactService = new ContactService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("nome");
        String phone = request.getParameter("telefone");
        String email = request.getParameter("email");

        if (name == null | phone == null || email == null){
            request.getRequestDispatcher("/WEB-INF/view/register-contact.jsp").forward(request, response);
        } else {
            request.setAttribute("name", name);
            request.getRequestDispatcher("/WEB-INF/view/list-contacts.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");

        List<Contact> contactsApp = (List<Contact>) getServletContext().getAttribute("contacts");
        if (contactsApp == null){
            contactsApp = new ArrayList<>();
            getServletContext().setAttribute("contacts", contactsApp);
        }

        Contact contact = new Contact(name, phone, email);
        contactService.save(contact);
        ContactDTO contactDTO = ContactMapper.toDTO(contact);

        contactsApp.add(contact);
        getServletContext().setAttribute("contacts", contactsApp);

        request.setAttribute("flash.contact", contact);
        response.sendRedirect("lista-contatos");
    }
}
