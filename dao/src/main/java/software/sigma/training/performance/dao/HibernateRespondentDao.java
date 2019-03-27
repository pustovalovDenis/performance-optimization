package software.sigma.training.performance.dao;

import java.util.Collection;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import lombok.RequiredArgsConstructor;
import software.sigma.training.performance.domain.Respondent;
import software.sigma.training.performance.domain.RespondentSimpleDto;

@Repository
@RequiredArgsConstructor
public class HibernateRespondentDao implements RespondentDao {

    private final SessionFactory sessionFactory;

    @Override
    public void save(Respondent respondent) {
        sessionFactory.getCurrentSession().save(respondent);
    }

    @Override
    @Transactional
    public void saveAll(Collection<Respondent> collection) {
        for (Respondent respondent : collection) {
            if (respondent != null) {
                sessionFactory.getCurrentSession().save(respondent);
            }
        }
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<RespondentSimpleDto> getRespondentSimpleDto() {
        return sessionFactory.getCurrentSession().createCriteria(Respondent.class)
                .setProjection(Projections.projectionList()
                        .add(Projections.property("id"), "id")
                        .add(Projections.property("country"), "country")
                        .add(Projections.property("expectedSalary"), "expectedSalary")
                        .add(Projections.property("gender"), "gender")
                        .add(Projections.property("interestedAnswers"), "interestedAnswers")
                        .add(Projections.property("professional"), "professional")
                ).setResultTransformer(Transformers.aliasToBean(RespondentSimpleDto.class))
                .list();
    }

}
