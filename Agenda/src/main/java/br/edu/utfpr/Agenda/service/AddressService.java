package br.edu.utfpr.Agenda.service;

import br.edu.utfpr.Agenda.model.dao.AddressDAO;
import br.edu.utfpr.Agenda.model.domain.Address;

public class AddressService extends AbstractService<Long, Address>{
    public AddressService(){ dao = new AddressDAO();
    }
}
