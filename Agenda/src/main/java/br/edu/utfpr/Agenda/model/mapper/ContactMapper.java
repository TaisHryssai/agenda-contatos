package br.edu.utfpr.Agenda.model.mapper;

import br.edu.utfpr.Agenda.model.domain.Contact;
import br.edu.utfpr.Agenda.model.dto.ContactDTO;

public class ContactMapper {

    public static Contact toEntity(ContactDTO dto){
        Contact entity = new Contact(dto.getName(), dto.getPhone(), dto.getEmail());
        return entity;
    }

    public static ContactDTO toDTO(Contact entity){
        ContactDTO dto = new ContactDTO(entity.getName(), entity.getPhone(), entity.getEmail());
        return dto;
    }
}
