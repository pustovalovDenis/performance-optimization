package software.sigma.training.performance.services;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Map;
import java.util.stream.Collectors;

import javax.annotation.PostConstruct;

import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import software.sigma.training.performance.dao.RespondentDao;
import software.sigma.training.performance.domain.Assess;
import software.sigma.training.performance.domain.CompanySize;
import software.sigma.training.performance.domain.Country;
import software.sigma.training.performance.domain.Education;
import software.sigma.training.performance.domain.Employment;
import software.sigma.training.performance.domain.Equipment;
import software.sigma.training.performance.domain.ExCoder;
import software.sigma.training.performance.domain.ExperienceLevel;
import software.sigma.training.performance.domain.HaveWorkedAndWant;
import software.sigma.training.performance.domain.ImportantHiring;
import software.sigma.training.performance.domain.Influence;
import software.sigma.training.performance.domain.JobInfo;
import software.sigma.training.performance.domain.Respondent;
import software.sigma.training.performance.domain.RespondentDetails;
import software.sigma.training.performance.domain.StackOverflowInfo;
import software.sigma.training.performance.domain.TechnicalDetails;
import software.sigma.training.performance.transform.ConfigurationBuilder;
import software.sigma.training.performance.transform.ConfigurationBuilder.KeysCapitalization;
import software.sigma.training.performance.transform.Transformer;
import software.sigma.training.performance.transform.TransformerException;
import software.sigma.training.performance.transform.TransformerFactory;
import software.sigma.training.performance.transform.TransformerFactoryImpl;

@Service
public class CSVProcessorServiceImpl implements CSVProcessorService {

    private static final Log LOG = LogFactory.getLog(CSVProcessorServiceImpl.class);

    private TransformerFactory transformerFactory;

    @Autowired
    private RespondentDao respondentDao;

    @PostConstruct
    public void init() {
        LOG.debug("Initializing CSV parser configuration");
        ConfigurationBuilder configurationBuilder = new ConfigurationBuilder()
                .ignoreAllProperties("id")
                .setKeysCapitalization(KeysCapitalization.CAPITAL)
                .addType(Respondent.class)
                .mapProperty("respondentName", "Respondent")
                .addType(Assess.class)
                .addType(CompanySize.class)
                .addType(Country.class)
                .addType(Education.class)
                .addType(Employment.class)
                .addType(Equipment.class)
                .addType(ExCoder.class)
                .addType(ExperienceLevel.class)
                .addType(HaveWorkedAndWant.class)
                .addType(ImportantHiring.class)
                .addType(Influence.class)
                .addType(JobInfo.class)
                .addType(RespondentDetails.class)
                .addType(StackOverflowInfo.class)
                .addType(TechnicalDetails.class);
        transformerFactory = new TransformerFactoryImpl(configurationBuilder.build());
    }

    @Override
    public void process(InputStream is) throws IOException {
        LOG.debug("Starting CSV processing");
        CSVParser parser = new CSVParser(new InputStreamReader(is), CSVFormat.DEFAULT.withFirstRecordAsHeader());
        LOG.debug("Header map: " + parser.getHeaderMap());
        Transformer<Respondent> transformer = transformerFactory.getTransformer(Respondent.class);

        respondentDao.saveAll(parser.getRecords().stream().map(record -> {
            Map<String, String> map = record.toMap();
            try {
                return transformer.transform(map, null);
            } catch (TransformerException e) {
                LOG.error("Error during transforming data", e);
            }
            return null;
        }).collect(Collectors.toList()));

        parser.close();
        LOG.debug("CSV processed succefully");
    }

}
