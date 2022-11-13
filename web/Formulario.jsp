<%-- 
    Document   : Formulario
    Created on : 08-nov-2022, 12:55:42
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
         <center>
           
        <form action="conexion3" method="POST">
            <font color="white">
         
            <label>Nombre:</label>
            <br>
            <input type="text" name="nombre" minlength="10"  required="required"> <br>
            <label>Teléfono:</label>
             <br>
            <input type="number" name="telefono"  required="required"> <br>
            <label>Dirección:</label>
             <br>
            <input type="text" name="direccion"  required="required"> <br>
            <label>Fecha inicio reserva:</label>
             <br>
            <input type="Date" name="fecha_inicio_reserva"  required="required"> <br>
            <label>Fecha término reserva:</label>
             <br>
            <input type="Date" name="fecha_termino_reserva" required="required"> <br>
            <label>Comentario:</label>
             <br>
            <input type="text" name="comentario"  required="required"> <br>
            <input type="submit" value ="Enviar">
        </form>
             
 
         </center>
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
