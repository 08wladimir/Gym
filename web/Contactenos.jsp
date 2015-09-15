<%@page import="java.sql.Connection"%>
<%@page import="Java.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Contactenos | Engineer's Gym</title>
        <meta charset = "utf-8">
        <link rel="stylesheet" href="CSS/Styles.css">
    </head>
    <body>
            <%

            if (request.getParameter("login") != null) {
                Conexion con = new Conexion();
                Connection cn = con.conectar();

                String usuario = (request.getParameter("usua"));
                String contraseña = (request.getParameter("contra"));

                int a = con.verad(usuario, contraseña);

                if (a == 1) {
                    response.sendRedirect("AdministradorInicio.jsp");
                } else if (a == 2) {
                    response.sendRedirect("EntrenadorInicio.jsp");
                } else {
                    out.println("<script>alert('incorrecto');</script>");
                }

                cn.close();

            };

        %>
        
        <%  
            Conexion con = new Conexion();
            Connection cn = con.conectar();

            String dato = request.getParameter("usua");
            String datofinal = con.entrada(dato);

            session.setAttribute("usua", datofinal);


        %>
        <div id="contenido">

            <img src= "http://alfiedesigner.com/gym/images/logo2.png">

            <header>   		
                <nav>
                    <ul>
                        <li><a href="Index.jsp" class="btn">Inicio</a></li>
                        <li><a href="Clases.jsp" class="btn">Clases</a></li>
                        <li><a href="Nosotros.jsp" class="btn">Nosotros</a></li>
                        <li><a href="Contactenos.jsp" class="btn">Contáctenos</a></li>
                    </ul>
                </nav>
                <div class="slider">
                    <ul>
                        <li><img src="https://www.lifefitness.es/static-assets/image/products/commercial/hammerstrength/hd_elite/rotators/HD_Rotator_1.jpg"></li>
                        <li><img src="https://www.lifefitness.es/static-assets/image/products/commercial/hammerstrength/hd_elite/rotators/HD_Rotator_2.jpg"></li>
                        <li><img src="https://www.lifefitness.co.uk/static-assets/image/USC-006-14-HDE-Web-Banner-Images-VF-2.png"></li>
                        <li><img src="http://www.lifefitness.co.uk/static-assets/image/E-ShopBanner940x400.jpg"></li>
                        <li><img src="img/5.jpg"></li>
                    </ul>
            </header>
            <article>
                <h3>

                    <p> 
                        Ubicación:
                    </p>
                    <p>
                        Carrera 84 número 32b-05   Medellin – Colombia<br>
                        Teléfonos: 3427274 / 2534562 / 3154988028/ 3164317457<br>  
                        Dirección de correo electrónico: gymunac@gmail.com
                    </p>




                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.2227841407093!2d-75.6076058!3d6.234336800000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e44299192f5fb01%3A0x1029b676621cb98a!2sCra.+84+%2332-5%2C+Medell%C3%ADn%2C+Antioquia%2C+Colombia!5e0!3m2!1ses!2sit!4v1441856972609" 
                            width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

                    <p>
                        Horarios de atención:
                        <br>
                        Lunes - Viernes: 06:00am - 10:00pm.<br>
                        Sábados y Domingos: 07:00am - 02:00pm.<br>
                        Festivos: 06:00am - 12:00pm.
                    </p>
                </h3>
            </article>
            <section>
                <div id="textoPr-1">
                    <article>
                        <hgroup>
                            <h1>
                                <a href="Nosotros.jsp" class="but">¡CONOZCA MÁS DE  NOSOTROS!</a>
                            </h1>
                        </hgroup>
                    </article>
                    <article>

                    </article>

                </div>
                <div id="textoPr2-1">
                    <hgroup>
                        <h2>
                            <a href="Contactenos.jsp" class="but">¡NUESTRA UBICACIÓN Y HORARIOS!</a> 
                        </h2>
                    </hgroup>

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
                    <li><a href="mailto:gymunac@gmail.com.com" class="icon-mail">Mail</a></li>
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


            </br>
            <form action="Index.jsp" method="post">
                <div id="cajas">User: <input type="text" name="usua" Usuario ="Usuario">
                    <p></p>
                    <p></p>
                    Pass: <input type="password" name="contra" Password ="Contraseña">
                </div>
                <div id="button">
                    <input type="submit" name="login" target="_blank" class="btn"/>
                </div>  
            </form>


        </footer>


    </body>
</html>
