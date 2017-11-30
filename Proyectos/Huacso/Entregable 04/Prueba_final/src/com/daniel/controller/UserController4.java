package com.daniel.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daniel.dao.UserDao4;
import com.daniel.model.User4;

public class UserController4 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String ASIGPRO = "/auditorio.jsp";
    private static String AUDITORIO = "/auditoriore.jsp";

    
    
    private UserDao4 dao;

    public UserController4() {
        super();
        dao = new UserDao4();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            dao.deleteUser(userId);
            forward = ASIGPRO;
            request.setAttribute("users", dao.getAllUsers());
            request.setAttribute("users2", dao.getAllUsersTwo());
        } else if (action.equalsIgnoreCase("edit")){
        	  forward = AUDITORIO;
              int userId = Integer.parseInt(request.getParameter("userId"));
              User4 user = dao.getUserById(userId);
              request.setAttribute("user", user);
              request.setAttribute("users", dao.getAllUsers());
              request.setAttribute("users2", dao.getAllUsersTwo());
        } else if (action.equalsIgnoreCase("listUser")){
            forward = ASIGPRO;
            request.setAttribute("users", dao.getAllUsers());
            request.setAttribute("users2", dao.getAllUsersTwo());

        } else {
            forward = ASIGPRO;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User4 user = new User4();
        user.setPersona(request.getParameter("persona"));
        user.setPagoa(request.getParameter("pagoa"));
        user.setPagol(request.getParameter("pagol"));
        try {
            Date fecha = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("fecha"));
            user.setFecha(fecha);
            
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String userid = request.getParameter("idauditorio");
        if(userid == null || userid.isEmpty())
        {
        	dao.updateUser(user);
            request.setAttribute("users2", dao.getAllUsersTwo());
            
       }else {
    	   
           user.setIdauditorio(Integer.parseInt(userid));
    	   dao.ActualizarUser(user);
           request.setAttribute("users2", dao.getAllUsersTwo());

       }
       
        RequestDispatcher view = request.getRequestDispatcher(ASIGPRO);
        request.setAttribute("users", dao.getAllUsers());
        view.forward(request, response);
    }	
}