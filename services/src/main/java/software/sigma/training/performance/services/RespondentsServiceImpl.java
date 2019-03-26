package software.sigma.training.performance.services;

import java.util.Collection;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import software.sigma.training.performance.dao.RespondentDao;

@Service("respondentsService")
@RequiredArgsConstructor
public class RespondentsServiceImpl implements RespondentsService {

    private final RespondentDao respondentDao;

    @Override
    public Collection<RespondentDTO> getAll() {
        return respondentDao.getAll().stream().map(respondent ->
                RespondentDTO
                        .builder()
                        .id(respondent.getId())
                        .country(respondent.getCountry())
                        .expectedSalary(respondent.getExpectedSalary())
                        .gender(respondent.getGender())
                        .interestedAnswers(respondent.getInterestedAnswers())
                        .professional(respondent.getProfessional())
                        .build()
        ).collect(Collectors.toList());
    }

}
