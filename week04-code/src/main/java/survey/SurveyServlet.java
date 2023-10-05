package survey;

import java.io.IOException;
import java.net.URLDecoder;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import business.User;

public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String heardFrom = request.getParameter("heardFrom");
        String likeThat = request.getParameter("likeThat");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String contactVia = request.getParameter("contactVia");
        
        if (likeThat == null) {
            likeThat = "No";
        }
        else {
            likeThat = "Yes";
        }

        if (wantsUpdates == null) {
            wantsUpdates = "No";
        }
        else {
            wantsUpdates = "Yes";
        }
        
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);        
        user.setHeardFrom(heardFrom);   
        user.setLikeThat(likeThat); 
        user.setWantsUpdates(wantsUpdates);
        user.setContactVia(contactVia);

        request.setAttribute("user", user);

        String url = "/thanks.jsp";

        URLDecoder.decode(url, "UTF-8");
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
