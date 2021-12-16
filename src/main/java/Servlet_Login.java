import models.AttributeModel;
import models.UserModel;
import services.MySQLdb;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Servlet_Login", value = "/Servlet_Login")
public class Servlet_Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("xts");

        String first = "Steven";
        String last = "Xie";
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        MySQLdb db = MySQLdb.getInstance();
        UserModel userModel = null;

        try {
            userModel = db.doLogin(email, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        if (userModel != null) {
            request.setAttribute("user", userModel);
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
            requestDispatcher.forward(request, response);
        }else{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            request.setAttribute("error", "Incorrect email or password !!!");
            requestDispatcher.forward(request, response);
        }
    }

    protected void doPost_attr(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        MySQLdb db = MySQLdb.getInstance();
        if (session != null) {

                try {
                    List<AttributeModel> attributeModelList = db.FetchAttribute();
                    request.setAttribute("attr", attributeModelList);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("home.jsp");
                    requestDispatcher.forward(request, response);
                } catch (SQLException e) {
                    e.printStackTrace();
                }
        }else{
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            request.setAttribute("error", "Please login to continue..!!!");
            requestDispatcher.forward(request, response);
        }
    }
}
