package br.edu.utfpr.Agenda.model.dto;
import lombok.Data;
import lombok.NonNull;

@Data
public class ContactDTO {
    @NonNull
    private String name;
    @NonNull
    private String phone;
    @NonNull
    private String email;
}
