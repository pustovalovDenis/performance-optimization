package software.sigma.training.performance.services;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class RespondentDTO {

    private Integer id;

    private String respondentName;

    private String professional;

    private String programHobby;

    private String country;

    private String gender;

    private String race;

    private String salary;

    private String expectedSalary;

    private String surveyLong;

    private String questionsInteresting;

    private String questionsConfusing;

    private String interestedAnswers;

}
