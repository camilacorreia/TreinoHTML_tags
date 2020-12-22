<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormCadastro.aspx.cs" Inherits="Atividade0810_ApresentaçãoWEB.FormCadastro" %>

<!DOCTYPE html>

<html xmlns="https://localhost:44373/Cadastro.html">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Dados Informados</title>

     <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
        }

        /* Titulo */
        .header {
            background-color: aquamarine;
            padding: 20px;
            text-align: center;
        }

        /* parte de menu */
        .topnav {
            overflow: hidden;
            background-color: #333;
        }

            /* links do menu */
            .topnav a {
                float: left;
                display: block;
                color: aquamarine;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                /* barra de link  */
                .topnav a:hover {
                    background-color: #ddd;
                    color: black;
                }

        .column {
            float: left;
            width: 33.33%;
            padding: 8px;
        }

        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        @media screen and (max-width:600px) {
            .column {
                width: 100%;
            }
        }
        /*Para centralizar o texto*/
        .center {
            text-align: center;
            border: 3px solid green;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
        <h1>Camila da Silva Correia</h1>
    </div>

    <div class="topnav">

        <a href="https://localhost:44373/Apresenta%C3%A7%C3%A3o.html" target="_self">Apresentação</a>
        <a href="https://localhost:44373/Acad%C3%AAmico.html" target="_self">Acadêmico</a>
        <a href="https://localhost:44373/Cadastro.html" target="_self">Cadastro</a>

    </div>
        <div style="background-color: peachpuff;" class="row">
             <div class="center">
                     <h3>Dados enviados</h3>
                     <%
                         string fNome = Request.Form["txtNome"];
                         string fSobrenome = Request.Form["txtSobrenome"];
                         string fEmail = Request.Form["txtEmail"];
                         string fData = Request.Form["txtData"];
                         string fEndereco = Request.Form["txtEndereco"];
                         string fCEP = Request.Form["txtCEP"];
                         string fBairro = Request.Form["txtBairro"];
                         string fCidade = Request.Form["txtCidade"];
                         string fComentario = Request.Form["txtComentario"];

                         Response.Write("<h3Nome: "+fNome+"</h3> <br/>");
                         Response.Write("Sobrenome: "+fSobrenome+"<br/>");
                         Response.Write("E-mail: " +fEmail+"<br/>");
                         Response.Write("Data de Nascimento: "+fData+"<br/>");
                         Response.Write("Endereço: "+fEndereco+"<br/>");
                         Response.Write("CEP: "+fCEP+"<br/>");
                         Response.Write("Bairro: "+fBairro+"<br/>");
                         Response.Write("Cidade: "+fCidade+"<br/>");
                         Response.Write("Comentário: "+fComentario+"<br/>");
                     %>
            </div>
        </div>
    </form>
</body>
</html>
