<%-- 
    Document   : listar_marca
    Created on : 29 de set. de 2022, 20:27:20
    Author     : 39127512021.1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.aquimotores.concessionaria.model.dao.MarcaDao"%>
<%@page import="br.com.aquimotores.concessionaria.model.entidades.Marca"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="apple-touch-icon" href="/docs/5.2/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
        <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
        <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
        <link rel="manifest" href="/docs/5.2/assets/img/favicons/manifest.json">
        <link rel="mask-icon" href="/docs/5.2/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
        <link rel="icon" href="/docs/5.2/assets/img/favicons/favicon.ico">
        <meta name="theme-color" content="#712cf9">
        
            <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

        <!-- Custom styles for this template -->

        <link href="sticky-footer-navbar.css" rel="stylesheet">

        <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <title>Lista</title>
    </head>
    <header>
  <!-- Navegador -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html">Carros</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item">
            <a class="nav-link active" href="incluir_marca.jsp"> Incluir Marca</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="listar_marca.jsp">Lista de itens</a>
          </li>
          
        </ul>
        
      </div>
    </div>
  </nav>
</header>
    
    <body>
        <br><!-- Tabela -->
        <br>
        <h1>Lista de Marcas</h1>
            
            <table class="table">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Marca</th>
      <th scope="col">Alterar</th>
      <th scope="col">Excluir</th>
    </tr>
  </thead>
  <tbody>
      <%
                  MarcaDao dao = new MarcaDao();
                  
                  for(Marca m : dao.listar("")){
                %>    
    <tr>
      <th scope="row"><%= m.getIdMarca() %></th>
      
      <td><%= m.getNome() %></td>
      <td><a href="ExibirMarca?id=<%=m.getIdMarca()%>">Alterar</a></td>
      <td><a href="ExcluirMarca?id=<%=  m.getIdMarca() %>">Excluir</a> </td>
    </tr>
          <% } %>
  
  </tbody>
</table>
            
                    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
     
    </body>
</html>
