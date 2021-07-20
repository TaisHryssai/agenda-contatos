package br.edu.utfpr.Agenda.model.domain;
import lombok.*;
import javax.persistence.*;

@Entity
@Table(name = "contacts")
@Data(staticConstructor = "of")
@NoArgsConstructor
@RequiredArgsConstructor(access = AccessLevel.PUBLIC)

public class Contact {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NonNull
    private String name;
    @NonNull
    private String phone;
    @NonNull
    private String email;

    @ManyToOne
    private DDD ddd;
}
