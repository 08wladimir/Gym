
<%@page import="Java.Rutina"%>
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

                    Rutina dato = new Rutina();

                    dato.setRutina(request.getParameter("Rutina"));
                    dato.setTipoRutina(request.getParameter("TRutina"));
                    dato.setDescripcion(request.getParameter("ERutina"));

                    dato.Rutina();

                    out.println("<script>alert('Los datos se han guardado correctamente');</script>");

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
                        <li><a href="EntrenadorInicio.jsp" class="btn">Inicio</a></li>
                        <li><a href="EntrenadorCrearDeportista.jsp" class="btn">Crear Deportista</a></li>
                        <li><a href="EntrenadorCrearRutina.jsp" class="btn">Crear Rutina</a></li>
                        <li><a href="EntrenadorDeportistas.jsp" class="btn">Deportistas</a></li>
                    </ul>
                </nav>

            </header>

            <section>
                <div id="cajas2">
                    <form action="EntrenadorCrearRutina.jsp" method="post">
                        <table width="400" border="0" align="center">
                            <tr>
                                <td>
                                    Rutina:
                                </td>
                                <td>
                                    <input type="text" maxlength="20" name ="Rutina" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tipo de Rutina:
                                </td>
                                <td>
                                    <input type="text" maxlength="20" name="TRutina" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Especificacion de la Rutina:
                                </td>
                                <td>
                                    <input type="text" maxlength="40" name ="ERutina" required>
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