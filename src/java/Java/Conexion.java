package Java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author GOMEZ
 */
public class Conexion {

    Connection con = null;

    public Connection conectar() {

        String servidor = "jdbc:mysql://localhost:3306/gymnasio";
        String usuario = "root";
        String contrasenia = "wladimir";

        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        try {
            con = DriverManager.getConnection(servidor, usuario, contrasenia);
            if (con != null) {
                System.out.println("Connected");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }

        return con;

    }

    public int verad(String Nom, String pas) {

        int n = 0;
        try {
            Statement st = con.createStatement();
            ResultSet resultado = st.executeQuery("select * from administrador where nombreUsuario ='" + Nom + "'and contraseña = '" + pas + "' ");
            if (resultado.next()) {
                n = 1;
            }
            ResultSet resultado2 = st.executeQuery("select * from intructor where nombreusuario = '" + Nom + "'and contraseña ='" + pas + "' ");
            if (resultado2.next()) {
                n = 2;
            }

        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }

        return n;
    }

    public String entrada(String NomUsu) {

        String Nom = null;

        Statement st;
        try {
            st = con.createStatement();
            ResultSet resulta = st.executeQuery("select * from intructor where nombreusuario ='" + NomUsu + "' ");

            if (resulta.next()) {
                Nom = resulta.getString("nombre");
            }
            st = con.createStatement();
            ResultSet resulta2 = st.executeQuery("select * from administrador where nombreUsuario ='" + NomUsu + "' ");

            if (resulta2.next()) {
                Nom = resulta2.getString("nombre");
            }

        } catch (SQLException ex) {
            Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
        }

        return Nom;
    }
}
