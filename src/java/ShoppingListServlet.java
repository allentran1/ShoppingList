/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author allen
 */
public class ShoppingListServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String action = (String)request.getParameter("action");
        
        if(action !=null && action.equals("logout")) {
            
            session.invalidate();
            
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
        
        if(session.getAttribute("username") !=null) {
            
            getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
        }
        
        else {
            
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        String action = (String)request.getParameter("action");
        
        if(action.equals("register")) {
            
            String username = request.getParameter("username");
            
            if(username.equals("") || username == null) {
                
                getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            }
            
            else {
                session.setAttribute("username", username);
                
                session.setAttribute("itemList", new ArrayList<String>());
                
            }
        
        } 
        
        else if(action.equals("add")) {
            
            ArrayList<String> newList = (ArrayList<String>)session.getAttribute("itemList");
            
            String itemAdd = (String)request.getParameter("itemAdd");
            
            if(itemAdd !=null && !itemAdd.equals("")) {
                newList.add(itemAdd);
            }
            
            session.setAttribute("itemList", newList);
            
            
        }
        else if(action.equals("delete")) {
            
            ArrayList<String> newList = (ArrayList<String>)session.getAttribute("itemList");
            
            String itemDelete = (String)request.getParameter("itemDelete");
            
            newList.remove(itemDelete);
        }
        
        getServletContext().getRequestDispatcher("/WEB-INF/shoppingList.jsp").forward(request, response);
    }



}
