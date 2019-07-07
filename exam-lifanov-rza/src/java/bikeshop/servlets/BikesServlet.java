
package bikeshop.servlets;

import bikeshop.services.GoodsService;
import bikeshop.services.GoodsServiceLocal;
import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/bikes")
public class BikesServlet extends HttpServlet {

    private static final String JSP = "/WEB-INF/pages/bikes.jsp";
    
    @EJB GoodsService goodsService;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.setAttribute("goods", goodsService.list());
        request.getRequestDispatcher(JSP).forward(request, response);
    }
}
    
