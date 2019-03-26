package software.sigma.training.performance.services;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages = {"software.sigma.training.performance.services"})
public class ServicesConfig {
    
    @Bean
    public CSVProcessorService csvProcessorService() {
        return new CSVProcessorServiceImpl();
    }
    
}
