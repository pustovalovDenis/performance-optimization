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
@Table(name = "influence")
public class Influence {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String influenceInternet;

    @Column
    private String influenceWorkstation;

    @Column
    private String influenceHardware;

    @Column
    private String influenceServers;

    @Column
    private String influenceTechStack;

    @Column
    private String influenceDeptTech;

    @Column
    private String influenceVizTools;

    @Column
    private String influenceDatabase;

    @Column
    private String influenceCloud;

    @Column
    private String influenceConsultants;

    @Column
    private String influenceRecruitment;

    @Column
    private String influenceCommunication;

}
