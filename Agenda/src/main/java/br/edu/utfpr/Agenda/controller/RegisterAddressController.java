package br.edu.utfpr.Agenda.controller;

import br.edu.utfpr.Agenda.model.domain.Address;
import br.edu.utfpr.Agenda.model.domain.Contact;
import br.edu.utfpr.Agenda.model.dto.AddressDTO;
import br.edu.utfpr.Agenda.model.mapper.AddressMapper;
import br.edu.utfpr.Agenda.service.AddressService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "RegisterAddressController", value = "/cadastrar-endereco")
public class RegisterAddressController extends HttpServlet {

    AddressService addressService = new AddressService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cep = request.getParameter("CEP");
        String road = request.getParameter("rua");
        String number = request.getParameter("numero");
        String neighborhood = request.getParameter("bairro");
        String city = request.getParameter("cidade");
        String state = request.getParameter("estado");

        if (cep == null | road == null || number == null || neighborhood == null || city== null || state == null){
            request.getRequestDispatcher("/WEB-INF/view/register-address.jsp").forward(request, response);
        } else {
            String idContact = request.getParameter("id_contact");
            String nameContact = request.getParameter("name_contact");
            String phoneContact = request.getParameter("phone_contact");
            String emailContact = request.getParameter("email_contact");

            Contact contact = new Contact(nameContact, phoneContact, emailContact);

            Address address = new Address(cep, road, number, neighborhood, city, state,contact);
            addressService.save(address);
            request.setAttribute("adds", address);
            request.getRequestDispatcher("/WEB-INF/view/list-contacts.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cep = request.getParameter("CEP");
        String road = request.getParameter("road");
        String number = request.getParameter("number");
        String neighborhood = request.getParameter("neighborhood");
        String city = request.getParameter("city");
        String state = request.getParameter("state");

        String idContact = request.getParameter("id_contact");
        String nameContact = request.getParameter("name_contact");
        String phoneContact = request.getParameter("phone_contact");
        String emailContact = request.getParameter("email_contact");

        Contact contact = new Contact(nameContact, phoneContact, emailContact);

        List <Address> addressesApp = (List<Address>)  getServletContext().getAttribute("adds");
        if (addressesApp == null) {
            addressesApp = new ArrayList<>();
            getServletContext().setAttribute("adds", addressesApp);
        }

        Address address = new Address(cep, road, number, neighborhood, city, state, contact);
        addressService.save(address);
        AddressDTO addressDTO = AddressMapper.toDTO(address);

        addressesApp.add(address);
        getServletContext().setAttribute("adds", addressesApp);

        request.getSession(true).setAttribute("address", address);

        Cookie c = new Cookie("cep", cep);
        c.setMaxAge(60 * 60 * 24);

        request.setAttribute("flash.adds", address);
        response.addCookie(c);
        response.sendRedirect("lista-contatos");
    }
}
