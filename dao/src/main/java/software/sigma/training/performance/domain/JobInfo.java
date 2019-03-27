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
@Table(name = "job_info")
public class JobInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String jobSeekingStatus;

    @Column
    private String hoursPerWeek;

    @Column
    private String workStart;

    @Column
    private String lastNewJob;

    @Column
    private String importantBenefits;

    @Column
    private String clickyKeys;

    @Column
    private String jobProfile;

    @Column
    private String resumePrompted;

    @Column
    private String currency;

    @Column
    private String overpaid;

}
