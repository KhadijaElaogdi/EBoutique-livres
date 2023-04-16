/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Entity;


/**
 *
 * @author isi
 */
public class Livre {
    String idLivre;
    String titleProd;
    String discriptionProd;
    String marque;
    double prix;
    String date;
    String imageLivre;
    String idCatg;

    public Livre() {
    }

    public Livre(String idLivre, String titleProd, String discriptionProd, String marque, double prix, String date, String imageLivre, String idCatg) {
        this.idLivre = idLivre;
        this.titleProd = titleProd;
        this.discriptionProd = discriptionProd;
        this.marque = marque;
        this.prix = prix;
        this.date = date;
        this.imageLivre = imageLivre;
        this.idCatg = idCatg;
    }

    public String getIdLivre() {
        return idLivre;
    }

    public void setIdLivre(String idLivre) {
        this.idLivre = idLivre;
    }

    public String getTitleProd() {
        return titleProd;
    }

    public void setTitleProd(String titleProd) {
        this.titleProd = titleProd;
    }

    public String getDiscriptionProd() {
        return discriptionProd;
    }

    public void setDiscriptionProd(String discriptionProd) {
        this.discriptionProd = discriptionProd;
    }

    public String getMarque() {
        return marque;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }

    public double getPrix() {
        return prix;
    }

    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getImageLivre() {
        return imageLivre;
    }

    public void setImageLivre(String imageLivre) {
        this.imageLivre = imageLivre;
    }

    public String getIdCatg() {
        return idCatg;
    }

    public void setIdCatg(String idCatg) {
        this.idCatg = idCatg;
    }
  
}
