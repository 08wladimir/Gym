<%@page import="java.sql.Connection"%>
<%@page import="Java.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Nosotros | Engineer's Gym</title>
        <meta charset = "utf-8">
        <link rel="stylesheet" href="CSS/Styles.css">
    </head>
    <body>
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
                        MISIÓN: 
                        Sembrar una motivación en nuestros afiliados, para que a través<br> 
                        del poder de la actividad física, logren cambiar sus cuerpos y sus vidas.
                    </p>

                    <p>
                        VISIÓN:
                        El Club Deportivo Total Fitness, mantendrá una estrategia objetiva<br> 
                        y razonable de crecimiento constante, para así, en el año 2018,<br> 
                        ser líderes reconocidos en el ámbito del fitness, la salud y el deporte<br> 
                        como uno de los mejores clubes deportivos de la ciudad, a través de <br>
                        servicios prestados con alta calificación humana y tecnológica. 
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
                    <aside>	

                    </aside>
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
