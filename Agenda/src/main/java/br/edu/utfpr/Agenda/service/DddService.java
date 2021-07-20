package br.edu.utfpr.Agenda.service;

import br.edu.utfpr.Agenda.model.dao.DddDAO;
import br.edu.utfpr.Agenda.model.domain.DDD;

public class DddService extends  AbstractService<Long, DDD>{
    public DddService(){
        dao = new DddDAO();
    }
}
