/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

public class Mostrar 
{
   public static LinkedList<Contacto> getContactos()
   {
      LinkedList<Contacto> listaContactos=new LinkedList<Contacto>();
      try
      {
         Class.forName("com.mysql.jdbc.Driver").newInstance();
         Connection conexion = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/gymnasio", "root", "wladimir");
         Statement st = conexion.createStatement();
         ResultSet rs = st.executeQuery("select * from deportista" );
         while (rs.next())
         {
            Contacto contacto = new Contacto();
            contacto.setId(rs.getInt("numeroDocumento"));
            contacto.setNombre(rs.getString("nombre"));
            contacto.setApellido(rs.getString("apellidos"));
            listaContactos.add(contacto);
         }
         rs.close();
         st.close();
         conexion.close();
      }
      catch (Exception e)
      {
         e.printStackTrace();
      }
      return listaContactos;
   }
} 