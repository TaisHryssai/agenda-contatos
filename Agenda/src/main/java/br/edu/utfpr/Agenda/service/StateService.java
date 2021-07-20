package br.edu.utfpr.Agenda.service;

import br.edu.utfpr.Agenda.model.dao.StateDAO;
import br.edu.utfpr.Agenda.model.domain.State;

public class StateService extends AbstractService<Long, State>{
    public StateService(){
        dao = new StateDAO();
    }
}
