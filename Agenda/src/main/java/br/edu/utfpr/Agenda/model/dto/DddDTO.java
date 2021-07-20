package br.edu.utfpr.Agenda.model.dto;

import br.edu.utfpr.Agenda.model.domain.State;
import lombok.Data;
import lombok.NonNull;

@Data
public class DddDTO {
    @NonNull
    private String number;
    @NonNull
    private  StateDTO state;
}
