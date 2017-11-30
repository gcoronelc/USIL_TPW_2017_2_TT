package com.daniel.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.daniel.dao.UserDao2;
import com.daniel.model.User2;

public class UserController2 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String INSERT_OR_EDIT = "/user2.jsp";
    private static String LIST_USER = "/listUser2.jsp";
    private static String ASIGPRO = "/asigpro.jsp";
    private UserDao2 dao;
    public UserController2() {
        super();
        dao = new UserDao2();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        String action = request.getParameter("action");

        if (action.equalsIgnoreCase("delete")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            dao.deleteUser(userId);
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsersONE()); 
            
        }else if (action.equalsIgnoreCase("des")){
                int userId = Integer.parseInt(request.getParameter("userId"));
                dao.desUser(userId);
                forward = ASIGPRO;
                request.setAttribute("users", dao.getAllUsersONE());
                request.setAttribute("users2", dao.getAllUsersTWO());
                request.setAttribute("users3", dao.getAllUsersCERO());
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int userId = Integer.parseInt(request.getParameter("userId"));
            User2 user = dao.getUserById(userId);
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("listUser")){
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsersONE());
        } else if (action.equalsIgnoreCase("asigpros")){
            forward = ASIGPRO;
            request.setAttribute("users2", dao.getAllUsersTWO());
            request.setAttribute("users3", dao.getAllUsersCERO());
        
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User2 user = new User2();
        user.setPiso(request.getParameter("piso"));
        user.setDescripcion(request.getParameter("descripcion"));
        user.setIdpersona(request.getParameter("idpersona"));
        user.setIdtinmueble(request.getParameter("idtinmueble"));
        user.setIdtorre(request.getParameter("idtorre"));
	    user.setActivo(request.getParameter("activo"));
        String userid = request.getParameter("idinmueble");
        if(userid == null || userid.isEmpty())
        {
            dao.addUser(user);
        }
        else
        {
            user.setIdinmueble(Integer.parseInt(userid));
            dao.updateUser(user);
        }
        RequestDispatcher view = request.getRequestDispatcher(LIST_USER);
        request.setAttribute("users", dao.getAllUsersONE());
        view.forward(request, response);
    }
}