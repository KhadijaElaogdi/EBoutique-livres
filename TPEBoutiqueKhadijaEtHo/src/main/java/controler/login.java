/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(name = "LivreServlet", urlPatterns = {"/Login"})
public class login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        try{
        String uname = req.getParameter("uname");
        String psw = req.getParameter("psw");
            
        Class.forName("org.mariadb.jdbc.Driver");  //charger le diver MariaDB
        String urlServeur="jdbc:mariadb://localhost:3310/bdEBoutiqueLivres";
        //localhost est l'URL de connexion, ca pourrait aussi être une adresse ip
        //3310 est le port du serveur mariaDB
        //maBd le nom de la base de donnée que l'on veut accéder.
        String identifiant = "root";
        String motDePasse = "abc123...";
            Connection connection = DriverManager.getConnection(urlServeur, identifiant, motDePasse);
            
            //on a fait le code pre
            String query = "SELECT idClient FROM clients WHERE prenom = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, uname); // permet de remplacer le premier ?
            preparedStatement.setString(2, psw); // permet de remplacer le deuxième ?
            
            ResultSet result = preparedStatement.executeQuery();
            if(result.next()){
                session.setAttribute("uname",uname);
                resp.sendRedirect("productsConnect.jsp");
            }
            else{
                resp.sendRedirect("login.jsp");
            }
            connection.close();
        }
        catch(Exception e){
            System.out.print(e);
        }
    }
}
