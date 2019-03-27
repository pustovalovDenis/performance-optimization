package software.sigma.training.performance.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "have_worked_and_want")
public class HaveWorkedAndWant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String haveWorkedLanguage;

    @Column
    private String wantWorkLanguage;

    @Column
    private String haveWorkedFramework;

    @Column
    private String wantWorkFramework;

    @Column
    private String haveWorkedDatabase;

    @Column
    private String wantWorkDatabase;

    @Column
    private String haveWorkedPlatform;

    @Column
    private String wantWorkPlatform;

}
