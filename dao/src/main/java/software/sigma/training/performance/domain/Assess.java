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
@Table(name = "assess")
public class Assess {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String assessJobIndustry;

    @Column
    private String assessJobRole;

    @Column
    private String assessJobExp;

    @Column
    private String assessJobDept;

    @Column
    private String assessJobTech;

    @Column
    private String assessJobProjects;

    @Column
    private String assessJobCompensation;

    @Column
    private String assessJobOffice;

    @Column
    private String assessJobCommute;

    @Column
    private String assessJobRemote;

    @Column
    private String assessJobLeaders;

    @Column
    private String assessJobProfDevel;

    @Column
    private String assessJobDiversity;

    @Column
    private String assessJobProduct;

    @Column
    private String assessJobFinances;

}
