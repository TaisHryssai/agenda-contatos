package br.edu.utfpr.Agenda.model.mapper;

import br.edu.utfpr.Agenda.model.domain.DDD;
import br.edu.utfpr.Agenda.model.domain.State;
import br.edu.utfpr.Agenda.model.dto.DddDTO;
import br.edu.utfpr.Agenda.model.dto.StateDTO;

public class DddMapper {
    public DddMapper getInstance(){
        return new DddMapper();
    }

    public DDD toEntity(DddDTO dto){
        State state = StateMapper.toEntity(dto.getState());
        DDD entity = new DDD(dto.getNumber(), state);
        return entity;
    }

    public DddDTO toDTO(DDD entity){
        StateDTO stateDTO = StateMapper.toDTO(entity.getState());
        DddDTO dto = new DddDTO(entity.getNumber(), stateDTO);
        return dto;
    }
}
