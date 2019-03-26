package software.sigma.training.performance.transform;

import java.util.Map;

public interface Transformer<T> {

    T transform(Map<String, String> source, String propertyName) throws TransformerException;
    
}
