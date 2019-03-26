package software.sigma.training.performance.web.beans;

import java.util.Collection;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

import software.sigma.training.performance.services.RespondentDTO;
import software.sigma.training.performance.services.RespondentsService;

@ManagedBean(name = "uploadedDataView")
public class UploadedDataView {
    
    @ManagedProperty("#{respondentsService}")
    private RespondentsService respondentsService;
    
    public void setRespondentsService(RespondentsService respondentsService) {
        this.respondentsService = respondentsService;
    }

    public Collection<RespondentDTO> getRespondents() {
        
        return respondentsService.getAll();
    }
    
}
