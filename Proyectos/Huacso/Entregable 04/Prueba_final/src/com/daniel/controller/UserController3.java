package com.daniel.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.daniel.dao.UserDao2;
import com.daniel.dao.UserDao3;
import com.daniel.model.User2;
import com.daniel.model.User3;

public class UserController3 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String ROADPRO = "/propiedad.jsp";
    private static String REGISPRO = "/asigpro.jsp";
    
    
    private UserDao3 dao;
    private UserDao2 daot;
    public UserController3() {
        super();
        dao = new UserDao3();
        daot = new UserDao2();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");
     
        
        if (action.equalsIgnoreCase("asigper")){
    	   forward = ROADPRO;
           int userId = Integer.parseInt(request.getParameter("userId"));
           User2 user = daot.getUserById(userId);
           request.setAttribute("users", dao.getAllUsers());
           request.setAttribute("user", user); 
        } else {
            forward = ROADPRO;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User3 user = new User3();
    
        user.setIdpersona(request.getParameter("idpersona"));
        String userid = request.getParameter("idinmueble");
        if(userid == null )
        {
        	user.setIdinmueble(Integer.parseInt(userid));
            dao.updateUser(user);
       }else 
          {
    	   user.setIdinmueble(Integer.parseInt(userid));
           dao.updateUser(user);
       }
        RequestDispatcher view = request.getRequestDispatcher(REGISPRO);
        request.setAttribute("users", dao.getAllUsers());
        request.setAttribute("users2", daot.getAllUsersTWO());
        request.setAttribute("users3", daot.getAllUsersCERO());
        view.forward(request, response);
    }
}