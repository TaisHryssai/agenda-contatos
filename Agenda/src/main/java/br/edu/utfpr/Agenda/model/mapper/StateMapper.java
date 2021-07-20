package br.edu.utfpr.Agenda.model.mapper;

import br.edu.utfpr.Agenda.model.domain.State;
import br.edu.utfpr.Agenda.model.dto.StateDTO;

public class StateMapper {
    public StateMapper getInstance(){
        return new StateMapper();
    }

    public static State toEntity(StateDTO dto) {
        State entity = new State(dto.getName());
        return entity;
    }

    public static  StateDTO toDTO(State entity){
        StateDTO dto = new StateDTO(entity.getName());
        return dto;
    }
}
