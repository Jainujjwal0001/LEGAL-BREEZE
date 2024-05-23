package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

import models.LawyerType;

@WebServlet("/lawyer_types.do")
public class ShowLawyerTypesServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        HttpSession session = request.getSession();
        String nextURL="lawyer_types.jsp";
        ArrayList<LawyerType> lawyerTypes = LawyerType.collectAllLawyerTypes();
        
        session.setAttribute("lawyerTypes", lawyerTypes);
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}