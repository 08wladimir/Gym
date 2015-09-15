/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Java;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author GOMEZ
 */
public class Deportista extends Datos {

    Conexion con = new Conexion();
    Connection cn = con.conectar();
    String q;

    Statement instruccion = null;

    public String Deportista() {
        String mensaje = "";

        try {
            instruccion = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            String sql = "SELECT * FROM deportista";

            Statement statement = cn.createStatement();
            ResultSet result = statement.executeQuery(sql);

            int i = 1;
            while (result.next()) {
                int id = result.getInt("numeroDocumento");
                if (id != this.getNumeroDocumento()) {
                    i = 1;
                } else {
                    i = 0;
                    result.close();
                    mensaje = "Error!!   El Numero de documento esta repetido";
                }
            }

            if (i == 1) {
                q = ("INSERT INTO deportista(numeroDocumento,nombre,apellidos,"
                        + "telefono,celular,email,direccion,barrio,genero,estado,"
                        + "fechaNacimiento,fechaIngreso) VALUES"
                        + "(" + this.getNumeroDocumento() + ",'" + this.getNombre() + "',"
                        + "'" + this.getApellidos() + "'," + this.getTelefono() + ","
                        + "" + this.getCelular() + "," + "'" + this.getEmail() + "',"
                        + "'" + this.getDireccion() + "','" + this.getBarrio() + "',"
                        + "'" + this.getGenero() + "','" + this.getEstado() + "',"
                        + "'" + this.getFechaNacimiento() + "','" + this.getFechaIngreso() + "')");
                int n = instruccion.executeUpdate(q);
                mensaje = "Los datos se han guardado correctamente";
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
