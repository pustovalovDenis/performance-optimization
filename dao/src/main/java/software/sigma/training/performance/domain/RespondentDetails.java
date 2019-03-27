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
@Table(name = "respondent_details")
public class RespondentDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String pronounceGIF;

    @Column
    private String problemSolving;

    @Column
    private String buildingThings;

    @Column
    private String learningNewTech;

    @Column
    private String boringDetails;

    @Column
    private String jobSecurity;

    @Column
    private String diversityImportant;

    @Column
    private String annoyingUI;

    @Column
    private String friendsDevelopers;

    @Column
    private String rightWrongWay;

    @Column
    private String understandComputers;

    @Column
    private String seriousWork;

    @Column
    private String investTimeTools;

    @Column
    private String workPayCare;

    @Column
    private String kinshipDevelopers;

    @Column
    private String challengeMyself;

    @Column
    private String competePeers;

    @Column
    private String changeWorld;

}
