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
@Table(name = "stack_overflow_info")
public class StackOverflowInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private String stackOverflowDescribes;

    @Column
    private String stackOverflowSatisfaction;

    @Column
    private String stackOverflowDevices;

    @Column
    private String stackOverflowFoundAnswer;

    @Column
    private String stackOverflowCopiedCode;

    @Column
    private String stackOverflowJobListing;

    @Column
    private String stackOverflowCompanyPage;

    @Column
    private String stackOverflowJobSearch;

    @Column
    private String stackOverflowNewQuestion;

    @Column
    private String stackOverflowAnswer;

    @Column
    private String stackOverflowMetaChat;

    @Column
    private String stackOverflowAdsRelevant;

    @Column
    private String stackOverflowAdsDistracting;

    @Column
    private String stackOverflowModeration;

    @Column
    private String stackOverflowCommunity;

    @Column
    private String stackOverflowHelpful;

    @Column
    private String stackOverflowBetter;

    @Column
    private String stackOverflowWhatDo;

    @Column
    private String stackOverflowMakeMoney;

}
