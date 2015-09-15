<%@page import="Java.Entrenador"%>
<%@page import="Java.Conexion"%>
<%@page import="Java.Datos"%>
<%@page import="java.util.regex.Matcher"%>
<%@page import="java.util.regex.Pattern"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.net.*,java.sql.*,java.sql.SQLException;" %>



<!DOCTYPE html>

<html lang="es">
    <head>

        <title>Engineer's Gym</title>
        <meta charset = "utf-8">
        <link rel="stylesheet" href="CSS/Styles.css">
    </head>
    <body>

        <div id="prinsipal">  
            <a> Se registro el Ingreso de <%=session.getAttribute("usua")%></a>  <a href="Index.jsp">(Salir) </a>       
        </div>

        <%
            if (request.getParameter("guardar") != null) {

                try {
                    Entrenador dato = new Entrenador();

                    dato.setNumeroDocumento(Integer.parseInt(request.getParameter("NDocumento")));
                    dato.setNombre(request.getParameter("Nombre"));
                    dato.setApellidos(request.getParameter("Apellidos"));
                    dato.setNombreUsuario(request.getParameter("Usuario"));
                    dato.setContrasena(request.getParameter("Contrasena"));
                    dato.setTelefono(Integer.parseInt(request.getParameter("Telefono")));
                    dato.setCelular(Double.parseDouble(request.getParameter("Celular")));
                    dato.setEmail(request.getParameter("Email"));
                    dato.setDireccion(request.getParameter("Direccion"));
                    dato.setBarrio(request.getParameter("Barrio"));
                    dato.setGenero(request.getParameter("Genero"));
                    dato.setEstado(request.getParameter("Estado"));
                    dato.setFechaNacimiento(request.getParameter("FNacimiento"));
                    dato.setFechaIngreso(request.getParameter("FNacimiento"));
                    dato.setEspecialidad(request.getParameter("Especialidad"));

                    String mensaje = dato.Entrenador();

                    out.println("<script>alert('" + mensaje + "');</script>");

                } catch (NumberFormatException T) {
                    out.println(T);
                }
                //avisando que se hizo la instruccion
            } else {
                out.println("NO");
            }

        %>


        <div id="contenido">

            <img src="http://alfiedesigner.com/gym/images/logo2.png">
            <header>          
                <nav>
                    <ul>

                        <li><a href="AdministradorInicio.jsp" class="btn">Inicio</a></li>
                        <li><a href="AdministradorCrearEntrenador.jsp" class="btn">Crear Entrenador</a></li>
                        <li><a href="AdministradorCrearMaquina.jsp" class="btn">Crear Maquina</a></li>

                    </ul>
                </nav>

            </header>

            <section>
                <div id="cajas2">
                    <form action="AdministradorCrearEntrenador.jsp" method="post">
                        <table width="400" border="0" align="center">
                            <tr>
                                <td>
                                    Número de Documento:
                                </td>
                                <td>
                                    <input type="number" maxlength="20" name ="NDocumento" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nombres:
                                </td>
                                <td>
                                    <input type="text" maxlength="20" name="Nombre" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Apellidos:
                                </td>
                                <td>
                                    <input type="text" maxlength="20" name ="Apellidos" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Usuario:
                                </td>
                                <td>
                                    <input type="text" maxlength="10" name ="Usuario" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Contraseña:
                                </td>
                                <td>
                                    <input type="text" maxlength="15" name ="Contrasena" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Teléfono:
                                </td>
                                <td>
                                    <input type="number" maxlength="8" name ="Telefono" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Celular:
                                </td>
                                <td>
                                    <input type="number" maxlength="12" name ="Celular" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    E-mail:
                                </td>
                                <td>
                                    <input type="text" maxlength="30" name ="Email" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Dirección:
                                </td>
                                <td>
                                    <input type="text" maxlength="30" name ="Direccion" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Barrio:
                                </td>
                                <td>
                                    <input type="text" maxlength="15" name ="Barrio" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Género:
                                </td>
                                <td>
                                    <input type="text" maxlength="10" name ="Genero" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Estado:
                                </td>
                                <td>
                                    <input type="text" maxlength="10" name ="Estado" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha de Nacimiento:
                                </td>
                                <td>
                                    <input type="date" name ="FNacimiento" min="1980-01-01" max="2015-12-31" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha de Ingreso:
                                </td>
                                <td>
                                    <input type="date" name ="FIngreso" min="1990-01-01" max="2015-12-31" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Especialidad:
                                </td>
                                <td>
                                    <input type="text" maxlength="20" name ="Especialidad" required>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <div>
                                        <center><input type="submit" name="guardar" value="Registrar" class="btn"/></center>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </form>

                </div>

            </section>
        </div>
        <section>

        </section>

        <aside>


            <div class="social">
                <ul>
                    <li><a href="https://www.facebook.com/profile.php?id=100009867019062" target="_blank" class="icon-facebook">Facebook</a></li>
                    <p></p>
                    <li><a href="https://plus.google.com/u/0/?hl=es-419" target="_blank" class="icon-googleplus">Google+</a></li>
                    <p></p> 
                    <li><a href="mailto:gymunac@gmail.com" class="icon-mail">Mail</a></li>
                </ul>
            </div>
        </aside>
        <footer>
            <section>
                <article>

                    <center><p>
                            "Trabajamos en pro de su bienestar físico y mental brindándole el mejor servicio con un ambiente familiar y acogedor, adecuando continuamente nuestras instalaciones y seleccionando al mejor personal capacitado para su comodidad y bienestar."<br>
                        <center>Copyright - All Rights Reserved - Engineer's Gym 2015.</center>
                        </p></center>

                </article>
            </section>
            <br>
        </footer>

    </body>
</html>
