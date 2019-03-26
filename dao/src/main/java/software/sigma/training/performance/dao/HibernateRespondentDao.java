package software.sigma.training.performance.dao;

import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import software.sigma.training.performance.domain.Respondent;

@Transactional()
@Repository
public class HibernateRespondentDao implements RespondentDao {

    @Autowired
    private SessionFactory sessionFactory;
    ;

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

    @Override
    public List<Respondent> getAllBaseData() {
        return sessionFactory.getCurrentSession().createCriteria(Respondent.class)
                .setProjection(Projections.projectionList()
                        .add(Projections.property("id"), "id")
                        .add(Projections.property("country"), "country")
                        .add(Projections.property("expectedSalary"), "expectedSalary")
                        .add(Projections.property("gender"), "gender")
                        .add(Projections.property("interestedAnswers"), "interestedAnswers")
                        .add(Projections.property("professional"), "professional")
                )
                .setResultTransformer(Transformers.aliasToBean(Respondent.class)).list();
    }

}
