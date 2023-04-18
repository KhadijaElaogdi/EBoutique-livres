<%-- 
    Document   : products
    Created on : Apr 14, 2023, 7:48:23 AM
    Author     : isi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
     if(session.getAttribute("uname") != null){%>
       <%@include file="headerConnect.jsp" %>
    <% }
     else{%>
       <%@include file="header.jsp" %>
     <%}
      %>
      
        <div class="container my-3">
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
				<tr>
					<td>NomLivre</td>
					<td>CategorieLivre</td>
					<td>45.00$</td>
					<td>
						<form action="" method="post" class="form-inline">
						<input type="hidden" name="id" value="1" class="form-input">
							<div class="form-group d-flex justify-content-between">
								<a class="btn bnt-sm btn-incre" href=""><i class="fas fa-plus-square"></i></a> 
								<input type="text" name="quantity" class="form-control"  value="1" readonly> 
								<a class="btn btn-sm btn-decre" href=""><i class="fas fa-minus-square"></i></a>
							</div>
						</form>
					</td>
					<td><a href="#" class="btn btn-sm btn-danger">Supprimer</a></td>
				</tr>

			</tbody>
		</table>
	</div>

        <%@include file="footer.jsp" %>
    </body>
</html>
