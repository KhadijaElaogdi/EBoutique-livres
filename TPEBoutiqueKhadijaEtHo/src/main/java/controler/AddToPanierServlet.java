/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import Model.Entity.Panier;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author isi
 */
@WebServlet(name = "AddToPanierServlet", urlPatterns = {"/AddToPanierServlet"})
public class AddToPanierServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();
        ArrayList<Panier> panierList = new ArrayList<>();
            String id = req.getParameter("id");
            Panier panier = new Panier();
            panier.setIdLivre(id);
            panier.setQuantite(1);
            
            HttpSession session = req.getSession();
            ArrayList<Panier> panier_list = (ArrayList<Panier>) session.getAttribute("panier-list");
            if (panier_list == null) {
                panierList.add(panier);
                session.setAttribute("panier-list", panierList);
                out.println("Ajout et Session bien créer");
            }
            else{
                out.println("exist déjà");
               
            }
    }

  

}
