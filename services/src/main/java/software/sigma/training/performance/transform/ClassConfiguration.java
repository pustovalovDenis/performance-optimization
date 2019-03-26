package software.sigma.training.performance.transform;

import java.util.Collection;

public interface ClassConfiguration {

    Collection<String> getBoundPropertyNames();
    
    <T> Class<T> getBoundPropertyClass(String propertyName);
    
    String getKeyName(String propertyName);
    
}
