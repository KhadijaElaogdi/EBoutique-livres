/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;

/**
 *
 * @author isi
 */
public class Commande {
    int idCommande;
    String dateCommmande;
    int idClient;

    public Commande() {
    }

    public Commande(String dateCommmande) {
        this.dateCommmande = dateCommmande;
    }

    public int getIdCommande() {
        return idCommande;
    }

    public void setIdCommande(int idCommande) {
        this.idCommande = idCommande;
    }

    public String getDateCommmande() {
        return dateCommmande;
    }

    public void setDateCommmande(String dateCommmande) {
        this.dateCommmande = dateCommmande;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }
}
