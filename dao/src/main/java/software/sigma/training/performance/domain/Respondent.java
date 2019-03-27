package software.sigma.training.performance.domain;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "respondent")
public class Respondent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String respondentName;

    @Column
    private String professional;

    @Column
    private String programHobby;

    @Column
    private String country;

    @Column
    private String gender;

    @Column
    private String race;

    @Column
    private String salary;

    @Column
    private String expectedSalary;

    @Column
    private String surveyLong;

    @Column
    private String questionsInteresting;

    @Column
    private String questionsConfusing;

    @Column
    private String interestedAnswers;

    @ManyToOne(cascade = {CascadeType.ALL})
    private Assess assesses;

    @ManyToOne(cascade = {CascadeType.ALL})
    private Education educationInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private Employment employmentInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private Equipment equipmentInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private ExCoder exCoderInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private HaveWorkedAndWant haveWorkedAndWantInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private ImportantHiring importantHiringInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private Influence influenceInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private JobInfo job;

    @ManyToOne(cascade = {CascadeType.ALL})
    private RespondentDetails respondentDetailsInfo;

    @ManyToOne(cascade = {CascadeType.ALL})
    private StackOverflowInfo stackOverflow;

    @ManyToOne(cascade = {CascadeType.ALL})
    private TechnicalDetails technicalDetailsInfo;

}
