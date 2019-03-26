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
@Table(name = "education")
public class Education {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String university;

    @Column
    private String formalEducation;

    @Column
    private String majorUndergrad;

    @Column
    private String educationImportant;

    @Column
    private String educationTypes;

    @Column
    private String selfTaughtTypes;

    @Column
    private String timeAfterBootcamp;

    @Column
    private String cousinEducation;

    @Column
    private String highestEducationParents;

}
