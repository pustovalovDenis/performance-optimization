package software.sigma.training.performance.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RespondentSimpleDto {

    private Long id;

    private String professional;

    private String country;

    private String gender;

    private String expectedSalary;

    private String interestedAnswers;

}
