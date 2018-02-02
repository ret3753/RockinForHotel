package common;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class MyContextListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent event) {
		ServletContext sContext = event.getServletContext();
		String mainPath = sContext.getContextPath();
		
		sContext.setAttribute("mainPath", mainPath);
		sContext.setAttribute("jsPath", mainPath + "/Controller/js");
		sContext.setAttribute("imagePath", mainPath + "/Data/img");
		sContext.setAttribute("cssPath", mainPath + "/View/css");
		sContext.setAttribute("pagePath", mainPath + "/View/page");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		ServletContext sContext = event.getServletContext();
		sContext.removeAttribute("mainPath");
		sContext.removeAttribute("jsPath");
		sContext.removeAttribute("imagePath");
		sContext.removeAttribute("cssPath");
		sContext.removeAttribute("pagePath");
	}


}
