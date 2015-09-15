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
public class Maquina extends Datos {

    Conexion con = new Conexion();
    Connection cn = con.conectar();
    String q;

    Statement instruccion = null;

    public String Maquina() {

        String mensaje = "";

        try {
            instruccion = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            String sql = "SELECT * FROM maquina";

            Statement statement = cn.createStatement();
            ResultSet result = statement.executeQuery(sql);

            int i = 0;
            while (result.next()) {
                int id = result.getInt("maquinaId");
                if (id != this.getNumMaquina()) {
                    i = 1;
                } else {
                    i = 0;
                    mensaje = "Error!!  El Numero de la maquina es repetido";
                    result.close();
                }
            }

            if (i == 1) {
                q = ("INSERT INTO maquina(maquinaId,nombre,descripcion,fechaCompra) VALUES "
                        + "(" + this.getNumMaquina() + ",'" + this.getNombreMaq() + "',"
                        + "'" + this.getDescripcion() + "','" + this.getFechaCompra() + "')");

                mensaje = "Los datos se han guardado correctamente";
                int n = instruccion.executeUpdate(q);

            }

        } catch (SQLException ex) {
            System.out.println(ex.getSQLState());
        }
        try {
            instruccion.close();
            cn.close();
        } catch (SQLException e) {
        }
        return mensaje;

    }

}
