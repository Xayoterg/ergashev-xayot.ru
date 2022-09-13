package controllers;

import db.DBManager;
import entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "DisciplineController", urlPatterns = "/discipline")
public class DisciplineController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ArrayList<Student> students = DBManager.getAllActiveStudent();
        req.setAttribute("students",students);

        req.getRequestDispatcher("WEB-INF/jsp/discipline-progress.jsp").forward(req,resp);
}
}
