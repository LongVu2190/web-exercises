package murach.survey;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.business.User;

public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String contactVia = request.getParameter("contactVia");

        if (wantsUpdates == null) {
            wantsUpdates = "No";
        } else {
            wantsUpdates = "Yes";
        }

        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setHeardFrom(heardFrom);
        user.setWantsUpdates(wantsUpdates);
        user.setContactVia(contactVia);

        request.setAttribute("user", user);

        String url = "/thanks.jsp";

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
