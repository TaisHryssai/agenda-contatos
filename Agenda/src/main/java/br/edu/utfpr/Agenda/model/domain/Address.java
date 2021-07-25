package br.edu.utfpr.Agenda.model.domain;
import lombok.*;
import javax.persistence.*;

@Entity
@Table(name = "address")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)

public class Address {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
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

    @ManyToOne(cascade = CascadeType.PERSIST)
    @JoinColumn(name = "contact_id")
    @NonNull
    private Contact contact;
}
