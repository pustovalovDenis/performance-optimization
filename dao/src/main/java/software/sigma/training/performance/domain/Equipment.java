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
@Table(name = "equipment")
public class Equipment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String equipmentSatisfiedMonitors;

    @Column
    private String equipmentSatisfiedCPU;

    @Column
    private String equipmentSatisfiedRAM;

    @Column
    private String equipmentSatisfiedStorage;

    @Column
    private String equipmentSatisfiedRW;

}
