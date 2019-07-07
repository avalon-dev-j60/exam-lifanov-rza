
package bikeshop.servlets;

import bikeshop.beans.AuthService;
import bikeshop.models.Goods;
import bikeshop.services.GoodsService;
import bikeshop.services.GoodsServiceLocal;
import static bikeshop.util.RedirectHelper.*;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import javax.ejb.EJB;
import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet (urlPatterns = "/admin-panel")
public class AdminPanelServlet extends HttpServlet {
    
    private static final String JSP = "/WEB-INF/pages/admin-panel.jsp";

    @Inject AuthService authService;
    
    @EJB GoodsService goodsService;
    
    @Override
    protected void doGet(HttpServletRequest request, 
                         HttpServletResponse response) 
            throws ServletException, IOException {
        if (!authService.isAuth()) {
            String referer = request.getHeader("Referer");
            if (referer == null) {
                referer = request.getContextPath();
            }
            redirect(request, response, referer);
        } else {
            request.getRequestDispatcher(JSP).forward(request, response);
        }
    }

    private void validateParameters (String name, String type, Integer cost, Integer amount,
                                     String description, String imagePath) {
        
        if (name == null || name.trim().isEmpty()) {
            throw new IllegalStateException("error.name.required");
        }
        if (type == null || type.trim().isEmpty()) {
            throw new IllegalStateException("error.type.required");
        }
        if (cost == null) {
            throw new IllegalStateException("error.cost.notZero");
        }
        if (amount == null) {
            throw new IllegalStateException("error.amount.notZero");
        }
        if (description == null || description.trim().isEmpty()) {
            throw new IllegalStateException("error.description.required");
        }
        if (imagePath == null || imagePath.trim().isEmpty()) {
            throw new IllegalStateException("error.imagePath.required");
        }
        
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String costString = (costString = request.getParameter("cost")) != null ? costString : "0";
        Integer cost = Integer.parseInt(costString); 
        String amountString = (amountString = request.getParameter("cost")) != null ? amountString : "0";
        Integer amount = Integer.parseInt(amountString); 
        String description = request.getParameter("description");
        String imagePath = request.getParameter("imagePath");
        
        try {
            validateParameters(name, type, cost, amount, description, imagePath);
            Goods good = new Goods(type, name, cost, amount, description, imagePath);
            goodsService.create(good);
            redirect(request, response, request.getContextPath() + "/admin-panel");
        } catch (IllegalStateException e) {
            request.setAttribute("exception", e);
            doGet(request, response);
        }
        
    }

}
