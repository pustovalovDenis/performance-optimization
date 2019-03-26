package software.sigma.training.performance.dao;

import java.util.Collection;
import java.util.List;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import software.sigma.training.performance.domain.Respondent;

public interface RespondentDao {

    @Transactional(propagation = Propagation.REQUIRED)
    void save(Respondent respondent);
    
    @Transactional(propagation = Propagation.REQUIRED)
    void saveAll(Collection<Respondent> collection);
    
    @Transactional(propagation = Propagation.REQUIRED)
    List<Respondent> getAll();
    
}
