package murach.email;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.*;
import javax.servlet.http.*;

import murach.business.User;
import murach.data.UserIO;

public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        GregorianCalendar Date = new GregorianCalendar();
        int currentYear = Date.get(Calendar.YEAR);
        request.setAttribute("currentYear", currentYear);

        String url = "/index.jsp";

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        String action = request.getParameter("action");
        String message;

        if (action == null) {
            action = "join";
        }

        if (action.equals("join")) {
            url = "/thanks.jsp";
        } else if (action.equals("none")) {
            url = "/index.jsp";
            action = "null";
        } else if (action.equals("add")) {
            if (firstName == "" || lastName == "" || email == "") {
                message = "Please fill out all everything!";
                url = "/index.jsp";

                request.setAttribute("message", message);

            } else {
                User user = new User(firstName, lastName, email);
                request.setAttribute("user", user);
                
                Date currentDate = new Date();
                request.setAttribute("currentDate", currentDate);
                url = "/thanks.jsp";
            }
        }

        // create users list and store it in the session
        String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers(path);
        HttpSession session = request.getSession();
        session.setAttribute("users", users);
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
