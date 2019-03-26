package software.sigma.training.performance.transform;

import java.util.Collection;

public interface Configuration {

    ClassConfiguration getConfiguration(Class<?> clazz);
    
    Collection<Class> getConfiguredClasses();
    
}
