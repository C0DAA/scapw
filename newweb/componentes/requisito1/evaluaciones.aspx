﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="evaluaciones.aspx.cs" Inherits="newweb.componentes.requisito1.evaluaciones" %>
<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/flatly/bootstrap.min.css" rel="stylesheet" integrity="sha384-T5jhQKMh96HMkXwqVMSjF3CmLcL1nT9//tCqu9By5XSdj7CwR0r+F3LTzUdfkkQf" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous"/>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mx-auto mb-2">
            <span class="d-block p-2 bg-primary text-white mb-3">Evaluaciones disponibles:</span>           
                <table class="table table-dark">
                <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Asignatura</th>
                <th scope="col">Archivo</th>
                </tr>
                </thead>
                <tbody>
                <% foreach (List<string> subList in myList) { %> <!-- loop through the list -->
                <tr>
                <th scope="row"><%= subList[0] %></th>
                <td><%= subList[1] %></td>
                <td><%= subList[2] %></td>
                <td><a type="button" href="<%= subList[3] %>" target="_blank" class="btn btn-link">Link</a></td>
                </tr>
                <% } %> <!--End the for loop -->                    
                </tbody>
                </table>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                ControlToValidate="TextBox1" runat="server"
                ErrorMessage="Solo Numeros."
                ValidationExpression="\d+">
                </asp:RegularExpressionValidator>
                <div class="input-group mb-3">
                    <asp:Label ID="Label1" runat="server" CssClass="input-group-text" Text="ID"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Responder Evaluacion" OnClick="Button1_Click" />
        </div>
    </form>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>
