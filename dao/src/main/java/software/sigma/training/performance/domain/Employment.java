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
@Table(name = "employment")
public class Employment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String employmentStatus;

    @Column
    private String homeRemote;

    @Column
    private String companySize;

    @Column
    private String companyType;

    @Column
    private String yearsProgram;

    @Column
    private String yearsCodedJob;

    @Column
    private String yearsCodedJobPast;

    @Column
    private String developerType;

    @Column
    private String webDeveloperType;

    @Column
    private String mobileDeveloperType;

    @Column
    private String nonDeveloperType;

    @Column
    private String careerSatisfaction;

    @Column
    private String jobSatisfaction;

}
