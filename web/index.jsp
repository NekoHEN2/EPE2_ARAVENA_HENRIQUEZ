<%-- 
    Document   : Home
    Created on : 08-nov-2022, 12:43:29
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
                <th>
                     <img src="Imagenes/ofertas1.jpg" alt=""/>
                </th>
                <th id="_ofertas_">
                    <div id="_ofertas_">
                        <h2>Ofertas</h2>
                        <p>Viernes lleva 1 a mitad de precio</p>
                        <p>Lunes y jueves lleva 3 y paga 2</p>
                    </div>
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
