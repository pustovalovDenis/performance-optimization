package software.sigma.training.performance.transform;

public interface TransformerFactory {

    <T> Transformer<T> getTransformer(Class<T> clazz);
    
}
