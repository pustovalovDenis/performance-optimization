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
@Table(name = "technical_details")
public class TechnicalDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String ide;

    @Column
    private String auditoryEnvironment;

    @Column
    private String methodology;

    @Column
    private String versionControl;

    @Column
    private String checkInCode;

    @Column
    private String shipIt;

    @Column
    private String otherPeoplesCode;

    @Column
    private String projectManagement;

    @Column
    private String enjoyDebugging;

    @Column
    private String inTheZone;

    @Column
    private String difficultCommunication;

    @Column
    private String collaborateRemote;

    @Column
    private String metricAssess;

    @Column
    private String tabsSpaces;

}
