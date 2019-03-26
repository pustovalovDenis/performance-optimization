package software.sigma.training.performance.dao;

import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import software.sigma.training.performance.domain.Respondent;

@Transactional()
@Repository
public class HibernateRespondentDao implements RespondentDao {

    @Autowired
    private SessionFactory sessionFactory;;

    @Override
    public void save(Respondent respondent) {
        sessionFactory.getCurrentSession().save(respondent);
    }
    
    @Override
    public void saveAll(Collection<Respondent> collection) {
        Session session = sessionFactory.getCurrentSession(); 
        for (Respondent respondent : collection) {
            session.save(respondent);
        }
        
    }
    
    @Override
    public List<Respondent> getAll() {
        return sessionFactory.getCurrentSession().createCriteria(Respondent.class).list();
    }
    
}
