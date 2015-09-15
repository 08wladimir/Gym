
<%@page import="Java.Maquina"%>
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
                    Maquina dato = new Maquina();

                    dato.setNumMaquina(Integer.parseInt(request.getParameter("NumMaquina")));
                    dato.setNombreMaq(request.getParameter("NomMaquina"));
                    dato.setDescripcion(request.getParameter("Tipo"));
                    dato.setFechaCompra(request.getParameter("FIngreso"));

                    String mensaje = dato.Maquina();

                    out.println("<script>alert('" + mensaje + "');</script>");

                } catch (NumberFormatException T) {
                    out.println(T);
                }
//avisando que se hizo la instruccion
            }

        %>
        <div id="contenido">

            <img src="http://alfiedesigner.com/gym/images/logo2.png">
            <header>          
                <nav>
                    <ul>
                        <li><a href="AdministradorInicio.jsp" class="btn">Inicio</a></li>
                        <li><a href="AdministradorCrearEntrenador.jsp" class="btn">Crear Entrenador</a></li>
                        <li><a href="AdministradorCrearMaquina.jsp" class="btn">Crear Máquina</a></li>

                    </ul>
                </nav>

            </header>

            <section>
                <div id="cajas2">
                    <form action="AdministradorCrearMaquina.jsp" method="post">
                        <table width="400" border="0" align="center">
                            <tr>
                                <td>
                                    Numero de Maquina:
                                </td>
                                <td>
                                    <input type="number" maxlength="8" name ="NumMaquina" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nombre de Maquina:
                                </td>
                                <td>
                                    <input type="text" maxlength="20" name ="NomMaquina" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tipo de Maquina:
                                </td>
                                <td>
                                    <input type="text" maxlength="40" name="Tipo" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Fecha Ingreso:
                                </td>
                                <td>
                                    <input type="date" name ="FIngreso" min="1980-01-01" max="2015-12-12" required>
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
                    <li><a href="http://www.facebook.com/falconmasters" target="_blank" class="icon-facebook">Facebook</a></li>
                    <p></p>
                    <li><a href="http://www.googleplus.com/falconmasters" target="_blank" class="icon-googleplus">Google+</a></li>
                    <p></p>
                    <li><a href="http://www.pinterest.com/falconmasters" target="_blank" class="icon-pinterest">Pinterest</a></li>
                    <p></p>
                    <li><a href="mailto:contacto@falconmasters.com" class="icon-mail">Mail</a></li>
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