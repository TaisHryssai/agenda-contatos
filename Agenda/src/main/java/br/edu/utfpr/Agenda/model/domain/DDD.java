package br.edu.utfpr.Agenda.model.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "ddds")
@Data
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)

public class DDD {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NonNull
    private String number;

    @ManyToOne
    @NonNull
    private State state;
}
