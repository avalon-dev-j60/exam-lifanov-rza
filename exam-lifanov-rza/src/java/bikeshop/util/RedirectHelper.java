
package bikeshop.util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.HttpHeaders;

public final class RedirectHelper {
    
    private RedirectHelper() {}
    
    public static void redirect(
                        HttpServletRequest request,
                        HttpServletResponse response,
                        String location)
        throws ServletException, IOException {
        response.setHeader(HttpHeaders.LOCATION, location);     // "Location"
        response.setStatus(HttpServletResponse.SC_FOUND);       // code 302
    }
     
    public static void redirectLocaly(
                        HttpServletRequest request,
                        HttpServletResponse response,
                        String location)
        throws ServletException, IOException {
            location = request.getContextPath() + location;
            redirect(request, response, location);
    }
        
    public static void redirectBack(
                        HttpServletRequest request,
                        HttpServletResponse response)
        throws ServletException, IOException {
            String referer = request.getHeader("Referer");
            String location = request.getRequestURL().toString();
            if(referer == null || referer.equals(location)) {
                redirectLocaly(request, response, location);
            } else {
                redirect(request, response, location);
            }
    }
}
