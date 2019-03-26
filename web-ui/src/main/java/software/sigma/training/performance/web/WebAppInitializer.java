package software.sigma.training.performance.web;

import javax.faces.webapp.FacesServlet;
import javax.servlet.Filter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.multipart.support.MultipartFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import software.sigma.training.performance.dao.DaoConfig;
import software.sigma.training.performance.services.ServicesConfig;

public class WebAppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    private static final Log LOG = LogFactory.getLog(WebAppInitializer.class);

    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class<?>[]{DaoConfig.class, ServicesConfig.class};
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class<?>[]{WebMvcConfiguration.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[]{"/", "/perf/"};
    }

    @Override
    protected Filter[] getServletFilters() {
        return new Filter[]{new MultipartFilter()};
    }

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        LOG.debug("Starting web application");
        super.onStartup(servletContext);
//		ServletRegistration.Dynamic facesServlet = servletContext.addServlet("Faces Servlet", new FacesServlet());
//        facesServlet.setLoadOnStartup(1);
//        facesServlet.addMapping("/WEB-INF/faces/*");
//        facesServlet.addMapping("*.xhtml");
//        facesServlet.addMapping("*.faces");

    }

}
