package br.edu.utfpr.Agenda.model.mapper;

import br.edu.utfpr.Agenda.model.domain.Address;
import br.edu.utfpr.Agenda.model.domain.Contact;
import br.edu.utfpr.Agenda.model.dto.AddressDTO;
import br.edu.utfpr.Agenda.model.dto.ContactDTO;

public class AddressMapper {
    public AddressMapper getInstance(){
        return new AddressMapper();
    }

    public static Address toEntity(AddressDTO dto){
        Contact contact = ContactMapper.toEntity(dto.getContact());
        Address entity = new Address(dto.getCep(), dto.getRoad(), dto.getNumber(), dto.getNeighborhood(), dto.getCity(), dto.getState(), contact);

        return entity;
    }

    public static AddressDTO toDTO(Address entity){
        ContactDTO contactDTO = ContactMapper.toDTO(entity.getContact());
        AddressDTO dto = new AddressDTO(entity.getCep(), entity.getRoad(), entity.getNumber(), entity.getNeighborhood(), entity.getCity(), entity.getState(), contactDTO);

        return dto;
    }
}
