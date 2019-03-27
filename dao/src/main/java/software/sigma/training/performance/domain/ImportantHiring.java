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
@Table(name = "important_hiring")
public class ImportantHiring {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String learnedHiring;

    @Column
    private String importantHiringAlgorithms;

    @Column
    private String importantHiringTechExp;

    @Column
    private String importantHiringCommunication;

    @Column
    private String importantHiringOpenSource;

    @Column
    private String importantHiringPMExp;

    @Column
    private String importantHiringCompanies;

    @Column
    private String importantHiringTitles;

    @Column
    private String importantHiringEducation;

    @Column
    private String importantHiringRep;

    @Column
    private String importantHiringGettingThingsDone;

}
