package servlets;


import Model.Contact;
import Model.Model;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("jsp/addContact.jsp");
        requestDispatcher.forward(req, resp);
        super.doGet(req, resp);
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("jsp/addContact.jsp");
        requestDispatcher.forward(req, resp);

        String name = req.getParameter("name");
        String surnname = req.getParameter("surname");
        String lastname = req.getParameter("lastname");
        String birthday = req.getParameter("birthday");
        String gender = req.getParameter("gender");
        String phone = req.getParameter("phone");
        String email = req.getParameter("email");
        String job = req.getParameter("job");
        String position = req.getParameter("position");
        Boolean is_favorite =  Boolean.valueOf(req.getParameter("is_favorite"));
        Model model = Model.getInstance();

        if (is_favorite!=true)
        {
            is_favorite=false;
        }
        Contact contact = new Contact(name, surnname, lastname, birthday, gender, phone, email, job, position,is_favorite);
        model.addContact(contact);
        super.doPost(req, resp);
    }
}
