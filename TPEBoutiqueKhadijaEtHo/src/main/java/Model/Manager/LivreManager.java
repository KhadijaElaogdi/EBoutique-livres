/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Manager;

import Model.Entity.Livre;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author isi
 */
public class LivreManager {

    public ArrayList<Livre> getAllLives() {
        System.out.println("[LivreManager] dans getAllLives: ");
        ArrayList<Livre> lives = null;
        String query = "select * from livres";
        PreparedStatement preparedStatement = ConnectionManager.getPs(query);
        try {
            ResultSet resultSet = preparedStatement.executeQuery();
            //permet de savoir s il y a des données dans le resultset
            if (resultSet.isBeforeFirst()) {
                lives = new ArrayList<>();
                while (resultSet.next()) {
                     lives.add(new Livre(resultSet));
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(LivreManager.class.getName()).log(Level.SEVERE, null, ex);
        } 
        ConnectionManager.close();
        return lives;
    }

}
