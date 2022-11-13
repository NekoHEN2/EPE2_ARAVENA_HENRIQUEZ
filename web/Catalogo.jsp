<%-- 
    Document   : Catálogo
    Created on : 08-nov-2022, 12:53:23
    Author     : diego aravena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Estilo_css.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
    <div id="fondo">
       
        <center>
            <img id="bane" src="Imagenes/baner2.jpg" />
        </center>
        
        
        <center id="centercolor">
            <button><a href="index.jsp">HOME</a></button>

            <button><a href="Catalogo.jsp">CATÁLOGO </a> </button>

            <button><a href="Formulario.jsp">RESERVA</a></button>
        </center>
 
        <hr>
        <br>
        <table>
            <tr>
                <th id="pelis">
                    <img src="Imagenes/peli.jpg" alt=""/>
                    <button><a href="Formulario.jsp">RESERVA</a></button>
                </th>
                <th id="pelis">
                    <img src="Imagenes/peli2.jpg" alt=""/>
                    <button><a href="Formulario.jsp">RESERVA</a></button>
                </th>
                <th id="pelis">
                    <img src="Imagenes/peli3.jpg" alt=""/>
                    <button><a href="Formulario.jsp">RESERVA</a></button>
                </th>
            <tr/>
        </table>
        
        <hr>
        <br>
        <table>
            <tr>
                <th id="con">
                    <h3>Contáctanos</h3>
                    
                    <p>Domicilio</p>
                    <p>Teléfono</p>
                    <p>Correo</p>
                </th>
                <th id="con">
                    <h3>Redes sociales</h3>
                
                    <p>Facebook</p>
                    <p>Instagram</p>
                    <p>Twitter</p>
                </th>
                <th id="con">
                    <h3>Acerca de</h3>
                   
                    <p>Nosotros</p>
                    <br>
                    <br>
                    <br>

                </th>
            <tr/>
        </table>

    </div>
    </body>
</html>
