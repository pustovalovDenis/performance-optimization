package software.sigma.training.performance.services;

public interface StatusTracker {

    long getTotalCount();
    
    long getCurrent();
    
    int getPercentage();
    
}
