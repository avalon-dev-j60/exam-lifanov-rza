
package bikeshop.servlets;

import bikeshop.beans.AuthService;
import bikeshop.models.Credentials;
import bikeshop.models.User;
import bikeshop.services.UserServiceLocal;
import java.io.IOException;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.core.HttpHeaders;
import static bikeshop.util.RedirectHelper.*;

@WebServlet(urlPatterns = "/registration")
public class RegistrationServlet  extends HttpServlet{

    static final String JSP = "/WEB-INF/pages/registration.jsp";
    
    @Inject AuthService authService;
    
    @EJB UserServiceLocal userService;
    
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
            throws ServletException, IOException {
        if (authService.isAuth()) {
            String referer = request.getHeader("Referer");
            if(referer == null) {
                referer = request.getContextPath();
            }
            redirect(request, response, referer);
        } else {
            request.getRequestDispatcher(JSP).forward(request, response);
        }
    }
    
    private void validateParameters(String login,
                                    String password,
                                    String confirmation) {
        if (login == null || login.trim().isEmpty()) {
            throw new IllegalStateException("error.login.required");
        }
        if (password == null || password.trim().isEmpty()) {
            throw new IllegalStateException("error.password.required");
        }
        if (confirmation == null || confirmation.trim().isEmpty()) {
            throw new IllegalStateException("error.password.confirmation.required");
        }
        if (!password.equals(confirmation)) {
            throw new IllegalStateException("error.password.confirmation.incorrect");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String confirmation = request.getParameter("confirmation");
        
        try {
            validateParameters(login, password, confirmation);
            Credentials credentials = new Credentials(login, password);
            User user = new User(login, credentials);
            userService.create(user);
            redirect(request, response, request.getContextPath() + "/login");
        } catch (IllegalStateException e) {
            request.setAttribute("exception", e);
            doGet(request, response);
        }
        
    }
    
    
}
