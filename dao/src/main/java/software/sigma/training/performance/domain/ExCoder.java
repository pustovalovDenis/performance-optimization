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
@Table(name = "ex_coder")
public class ExCoder {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Integer id;

    @Column
    public String exCoderReturn;

    @Column
    public String exCoderNotForMe;

    @Column
    public String exCoderBalance;

    @Column
    public String exCoder10Years;

    @Column
    public String exCoderBelonged;

    @Column
    public String exCoderSkills;

    @Column
    public String exCoderWillNotCode;

    @Column
    public String exCoderActive;

}
