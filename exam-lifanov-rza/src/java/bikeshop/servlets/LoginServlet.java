
package bikeshop.servlets;

import bikeshop.beans.AuthService;
import bikeshop.exceptions.ValidationException;
import bikeshop.models.Credentials;
import bikeshop.models.User;
import bikeshop.services.UserServiceLocal;
import java.io.IOException;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static bikeshop.util.RedirectHelper.*;
import static bikeshop.util.ValidationHelper.*;
import javax.ejb.EJB;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet{
    
    public static final String JSP = "/WEB-INF/pages/login.jsp";
    
    @Inject AuthService authService;
    
    @EJB UserServiceLocal userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (authService.isAuth()) {
            redirectBack(request, response);
        } else {
        RequestDispatcher dispatcher = request.getRequestDispatcher(JSP);
        dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        try {
            requireNonEmpty(login, "error.login.required");
            requireNonEmpty(password, "error.password.required");
            User user = userService.find(login);
            requireNonNull(user, "error.login.unknown");
            Credentials credentials = new Credentials(login, password);
            requireEquals(credentials, user.getCredentials(), "error.password.incorrect");
            authService.setAuth(true);
            redirectLocaly(request, response, "/");
            
        } catch (ValidationException e) {
            request.setAttribute("exception", e);
            doGet(request, response);
        }
    }
    
    
    
}
