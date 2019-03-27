package software.sigma.training.performance.web.beans;

import java.io.IOException;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.context.FacesContext;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.primefaces.event.FileUploadEvent;

import software.sigma.training.performance.services.CSVProcessorService;

@ManagedBean(name = "fileUploadView")
public class FileUploadView {

    private static final Log LOG = LogFactory.getLog(FileUploadView.class);

    @ManagedProperty("#{csvProcessorService}")
    private CSVProcessorService csvProcessorService;

    public void setCsvProcessorService(CSVProcessorService csvProcessorService) {
        this.csvProcessorService = csvProcessorService;
    }
    
    public void handleFileUpload(FileUploadEvent event) {
        long startTime = System.currentTimeMillis();
        try {
            csvProcessorService.process(event.getFile().getInputstream());
            long endTime = System.currentTimeMillis();
            FacesMessage message = new FacesMessage("Successfully ", event.getFile().getFileName()
                    + " is uploaded. Processing time: " + (endTime - startTime) + " ms");
            FacesContext.getCurrentInstance().addMessage(null, message);
            LOG.debug(message.getDetail());
        } catch (IOException e) {
            LOG.error("Error during file upload", e);
            FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_ERROR, "Error", e.getMessage());
            FacesContext.getCurrentInstance().addMessage(null, message);
        }
    }

}
