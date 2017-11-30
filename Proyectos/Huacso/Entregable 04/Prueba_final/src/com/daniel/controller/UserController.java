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


import com.daniel.dao.UserDao;
import com.daniel.model.User;

public class UserController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/user.jsp";
    private static String LIST_USER = "/listUser.jsp";
    private static String MAIN = "/main.jsp";
    private static String INDEX = "/index.jsp";
    private static String INDEX2 = "/index2.jsp";
    private static String ASIGNARIN = "/asigpro.jsp";

    private UserDao dao;

    public UserController() {
        super();
        dao = new UserDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            dao.deleteUser(userId);
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());    
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int userId = Integer.parseInt(request.getParameter("userId"));
            User user = dao.getUserById(userId);
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("asigpros")){
            forward = ASIGNARIN;
            int userId = Integer.parseInt(request.getParameter("userId"));
            User user = dao.getUserById(userId);
            request.setAttribute("users", dao.getAllUsers());
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("listUser")){
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());
        } else if (action.equalsIgnoreCase("main")){
            forward = MAIN;
        } else if (action.equalsIgnoreCase("index")){
            forward = INDEX;
        } else if (action.equalsIgnoreCase("index2")){
            forward = INDEX2;
        } else if (action.equalsIgnoreCase("asigpro")){
            forward = ASIGNARIN;
            request.setAttribute("users", dao.getAllUsers());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        User user = new User();
        user.setIdtpersona(request.getParameter("idtpersona"));
        user.setNombre(request.getParameter("nombre"));
        user.setApellido(request.getParameter("apellido"));
        int n2 = Integer.parseInt(request.getParameter("dni"));
        user.setDni(n2);
        int n3 = Integer.parseInt(request.getParameter("telefono"));
        user.setTelefono(n3);
        user.setDireccion(request.getParameter("direccion"));
        user.setEmail(request.getParameter("email"));
    
        String userid = request.getParameter("idpersona");
        if(userid == null || userid.isEmpty())
        {
            dao.addUser(user);
        } else {
            user.setIdpersona(Integer.parseInt(userid));
            dao.updateUser(user);
        }
    
        	

        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
        request.setAttribute("users", dao.getAllUsers());
        view.forward(request, response);

    }
}