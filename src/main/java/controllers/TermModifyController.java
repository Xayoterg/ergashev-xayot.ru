package controllers;

import db.DBManager;
import entity.Discipline;
import entity.Term;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name ="TermModifyController",urlPatterns = "/term-modifying")
public class TermModifyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id =req.getParameter("idTermToDelete");
        Term term= DBManager.getTermById(id);
        ArrayList<Discipline>disciplines=DBManager.getAllActiveDisciplines();
        req.setAttribute("term",term);
        req.setAttribute("disciplines",disciplines);
        req.getRequestDispatcher("WEB-INF/jsp/term-modifying.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idTerm=req.getParameter("idTerm");
        String duration=req.getParameter("duration");
        String[]idsDisc=req.getParameterValues("idsDisc");

        if (duration == null||duration.equals("")){
            req.setAttribute("error","1");

            Term term=DBManager.getTermById(idTerm);
            req.setAttribute("term",term);
            ArrayList<Discipline>disciplines= DBManager.getAllActiveDisciplines();

            req.setAttribute("disciplines",disciplines);
            req.getRequestDispatcher("WEB-INF/jsp/term-modify.jsp").forward(req, resp);
            return;
        }

        if (idsDisc==null){
            DBManager.ModifyTerm(idTerm,duration);
        }else {
            DBManager.ModifyTerm(idTerm,duration,idsDisc);
        }


        resp.sendRedirect("/terms");
    }
}
