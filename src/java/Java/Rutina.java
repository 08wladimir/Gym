/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.sql.Connection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author GOMEZ
 */
public class Rutina extends Datos {

    Conexion con = new Conexion();
    Connection cn = con.conectar();
    String q;

    public void Rutina() {

        Statement instruccion = null;

        try {
            instruccion = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            q = ("INSERT INTO rutina(rutina,tipoRutina,descripcion) VALUES"
                    + "('" + this.getRutina() + "','" + this.getTipoRutina() + "',"
                    + "'" + this.getDescripcion() + "')");
            int n = instruccion.executeUpdate(q);

        } catch (SQLException ex) {
            System.out.println(ex.getSQLState());
        }
        try {
            instruccion.close();
            cn.close();
        } catch (SQLException e) {
        }

    }

}
