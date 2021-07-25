package br.edu.utfpr.Agenda.model.dto;
import lombok.Data;
import lombok.NonNull;

@Data
public class AddressDTO {
    @NonNull
    private String cep;
    @NonNull
    private String road;
    @NonNull
    private String number;
    @NonNull
    private String neighborhood;
    @NonNull
    private String city;
    @NonNull
    private String state;

    @NonNull
    private  ContactDTO contact;
}
