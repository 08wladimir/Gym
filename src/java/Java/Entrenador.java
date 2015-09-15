package Java;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public final class Entrenador extends Datos {

    Conexion con = new Conexion();
    Connection cn = con.conectar();
    String q;

    Statement instruccion = null;

    public String Entrenador() {
        String mensaje = "";

        try {
            instruccion = cn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE);

            String sql = "SELECT * FROM intructor";

            Statement statement = cn.createStatement();
            ResultSet result = statement.executeQuery(sql);

            int i = 1;
            while (result.next()) {
                int id = result.getInt("numeroDocumento");
                String usuario = result.getString("nombreusuario");
                if (id != this.getNumeroDocumento()) {
                    if (!usuario.equals(this.getNombreUsuario())) {
                        i = 1;
                    } else {
                        i = 0;
                        result.close();
                        mensaje = "el usu es repetido error";
                    }
                } else {
                    i = 0;
                    result.close();
                    mensaje = "el doc es repetido error";
                }
            }
            if (i == 1) {
                q = ("INSERT INTO intructor(numeroDocumento,nombre,apellidos,nombreusuario,"
                        + "contraseña,telefono,celular,email,direccion,barrio,genero,estado,"
                        + "fechaNacimiento,fechaIngreso,especialidad) VALUES"
                        + " (" + this.getNumeroDocumento() + ", '" + this.getNombre() + "', '" + this.getApellidos() + "', "
                        + "'" + this.getNombreUsuario() + "', '" + this.getContrasena() + "', " + this.getTelefono() + ", " + this.getCelular() + ", "
                        + "'" + this.getEmail() + "', '" + this.getDireccion() + "', '" + this.getBarrio() + "', '" + this.getGenero() + "',"
                        + "'" + this.getEstado() + "', '" + this.getFechaNacimiento() + "', '" + this.getFechaIngreso() + "', "
                        + "'" + this.getEspecialidad() + "' )");
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
