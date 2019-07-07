
package bikeshop.servlets;

import bikeshop.beans.AuthService;
import bikeshop.util.RedirectHelper;
import static bikeshop.util.RedirectHelper.*;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/logout")
public class LogoutServlet extends HttpServlet{
    
    @Inject AuthService authService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        if (authService.isAuth()) {
            authService.setAuth(false);
            redirectBack(request, response);
        } else {
            redirectLocaly(request, response, "/login");
        }
    }
    
    
}
