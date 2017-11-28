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

import com.daniel.dao.UserDao5;
import com.daniel.model.User5;

public class UserController5 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String ASIGPRO = "/gasto.jsp";

    
    
    private UserDao5 dao;

    public UserController5() {
        super();
        dao = new UserDao5();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            dao.deleteUser(userId);
            forward = ASIGPRO;
            request.setAttribute("users", dao.getAllUsers());
            
        } else if (action.equalsIgnoreCase("listUser")){
            forward = ASIGPRO;
            request.setAttribute("users", dao.getAllUsers());
        } else {
            forward = ASIGPRO;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User5 user = new User5();
        user.setMotivo(request.getParameter("motivo"));
        user.setImporte(request.getParameter("importe"));
        try {
            Date fecha = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("fecha"));
            user.setFecha(fecha);
            
        } catch (ParseException e) {
            e.printStackTrace();
        }
        String userid = request.getParameter("idgasto");
        if(userid == null || userid.isEmpty())
        {
        	dao.InsertarUser(user);
            request.setAttribute("users", dao.getAllUsers());
       }else {
    	   dao.InsertarUser(user);
           request.setAttribute("users", dao.getAllUsers());

       }
        
        
        RequestDispatcher view = request.getRequestDispatcher(ASIGPRO);
        request.setAttribute("users", dao.getAllUsers());
        view.forward(request, response);
    }	
}