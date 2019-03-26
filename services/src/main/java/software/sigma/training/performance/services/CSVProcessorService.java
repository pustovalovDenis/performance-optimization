package software.sigma.training.performance.services;

import java.io.IOException;
import java.io.InputStream;

public interface CSVProcessorService {

    void process(InputStream is) throws IOException;
    
}
