/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package conexion1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.Duration;
import java.time.LocalDate;
import java.time.Period;

/**
 *
 * @author diego aravena
 */
public class conexion3 extends HttpServlet {
    
 String nombre="";
 int telefono=0;
 String direccion="";
 String fecha_inicio_reserva="";
 String fecha_termino_reserva="";
 String comentario="";




  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

        response.setContentType("text/html;charset=UTF-8");

        nombre = request.getParameter("nombre");
        telefono = Integer.parseInt(request.getParameter("telefono")) ;
        direccion = request.getParameter("direccion");
        fecha_inicio_reserva = request.getParameter("fecha_inicio_reserva");
        fecha_termino_reserva = request.getParameter("fecha_termino_reserva");
        comentario = request.getParameter("comentario");

       
        
            LocalDate fecha1 = LocalDate.parse(fecha_inicio_reserva);
             LocalDate fecha2 = LocalDate.parse(fecha_termino_reserva);
            
             
           Duration dd = Duration.between(fecha1.atStartOfDay(), fecha2.atStartOfDay());
           
           
           
           if(dd.toDays()>=2 && dd.toDays()<=5) {
                   
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/arriendo", "root", "");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("insert into peliculas (nombre, telefono, direccion, fecha_inicio_reserva, fecha_termino_reserva, comentario)values('"+nombre+"','"+telefono+"','"+direccion+"','"+fecha_inicio_reserva+"','"+fecha_termino_reserva+"','"+comentario+"');");
            out.println("Data is successfully inserted!");
        }catch(Exception e)
        {
            System.out.print(e);
            e.printStackTrace();
        }
                
        }else{
                 out.println("considere que las fecha de termino de la reserva tiene que ser mayor a 2 dias de la fecha de reserva de inicio y menor a 5 dias");
           }
 
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
