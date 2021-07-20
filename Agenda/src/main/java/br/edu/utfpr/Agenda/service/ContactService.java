package br.edu.utfpr.Agenda.service;

import br.edu.utfpr.Agenda.model.dao.ContactDAO;
import br.edu.utfpr.Agenda.model.domain.Contact;

public class ContactService extends  AbstractService<Long, Contact> {
    public ContactService() {
        dao = new ContactDAO();
    }
}
