<%-- 
    Document   : products
    Created on : Apr 14, 2023, 7:48:23 AM
    Author     : isi
--%>

<%@page import="java.util.HashMap"%>
<%@page import="Model.Manager.ConnectionManager"%>
<%@page import="Model.Manager.LivreManager"%>
<%@page import="java.util.List"%>
<%@page import="Model.Entity.Panier"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
//data
  ArrayList<Livre> listLivres = (ArrayList<Livre>) request.getAttribute("listLivres");
    HashMap<String, Integer> panier = (HashMap<String, Integer>) session.getAttribute("panier");
%>

<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            .table tbody td{
                vertical-align: middle;
            }
            .btn-incre, .btn-decre{
                box-shadow: none;
                font-size: 25px;
            }
        </style>
        <%@include file="head.jsp" %>
    </head>
    <body>
        <%
            if (session.getAttribute("uname") != null) {%>
        <%@include file="headerConnect.jsp" %>
        <% } else {%>
        <%@include file="header.jsp" %>
        <%}
        %>

        <div class="container my-3">
<<<<<<< HEAD
            <div class="d-flex py-3"><h3>Total Price: 00.00$ </h3> <a class="mx-3 btn btn-primary" href="">Check Out</a></div>
            <table class="table table-light">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Categorie</th>
                        <th scope="col">Price</th>
                        <th scope="col">Buy Now</th>
                        <th scope="col">Cancel</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Livre unLivre : listLivres) {%>
                    <tr>
                        <td><%=unLivre.getTitleProd() %> </td>
                        <td><%=unLivre.getIdCatg() %> </td>
                        <td><%=unLivre.getPrix() %></td>
                        <td>
                            <form action="" method="post" class="form-inline">
                                <input type="hidden" name="idLivre" value="<%= unLivre.getIdLivre()%>" class="form-input">
                                <div class="form-group d-flex justify-content-between">
                                    <input class="btn bnt-sm btn-incre fas fa-plus-square" type="submit" value="+" name="action" />  
                                    <span><%=(panier != null && panier.containsKey(unLivre.getIdLivre())? ""+panier.get(unLivre.getIdLivre()):"0")%></span>
                                    <input class="btn btn-sm btn-decre fas fa-minus-square" type="submit" value="-" name="action"/>
                                  
                                </div>
                            </form>
                        </td>
                        <td><a href="#" class="btn btn-sm btn-danger">Supprimer</a></td>
                    </tr>
                   <%}%>
                </tbody>
            </table>
        </div>
=======
		<div class="d-flex py-3"><h3>Total Price: 00.00$ </h3> <a class="mx-3 btn btn-primary" href="">Check Out</a></div>
		<table class="table table-light">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col">Category</th>
					<th scope="col">Price</th>
					<th scope="col">Buy Now</th>
					<th scope="col">Cancel</th>
				</tr>
			</thead>
			<tbody>
                            <%
                                        if (panier_list != null) {
					for (Panier pan : panier_list) {
				%>
				<tr>
					<td><%=pan.getTitleProd()%></td>
					<td><%=pan.getIdCatg()%></td>
					<td><%=pan.getPrix()%>$</td>
					<td>
						<form action="" method="post" class="form-inline">
						<input type="hidden" name="idLivre" value="<%= pan.getIdLivre()%>" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href=""><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="1" readonly> 
								<a class="btn btn-sm btn-decre" href=""><i class="fas fa-minus-square"></i></a>
							</div>
						</form>
					</td>
					<td><a href="SupprimerDansPanier?id=<%=pan.getIdLivre() %>" class="btn btn-sm btn-danger">Supprimer</a></td>
				</tr>
                           <%}}%>
			</tbody>
		</table>
	</div>
>>>>>>> 56b9bcc8a07213b8a0cc4c6498da8fec00856996

        <%@include file="footer.jsp" %>
    </body>
</html>
