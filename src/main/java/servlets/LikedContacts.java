package servlets;
import Model.Model;
import Model.Contact;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class LikedContacts extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("jsp/likedContacts.jsp");
        requestDispatcher.forward(req, resp);
        Model model = Model.getInstance();
        ArrayList<Contact> contacts = model.getContactArrayList();
        req.setAttribute("contacts", contacts);
        super.doGet(req, resp);
    }
}
