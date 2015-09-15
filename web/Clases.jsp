<%@page import="Java.Conexion"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Clases | Engineer's Gym</title>
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
                        SPINNING: Asiste a nuestras clases de Spinning<br>  
                        contamos con los mejores profesionales en el área.<br>  
                        ¡Tenemos distintas modalidades! ¡Mejora tu estado físico!<br>
                        ¡Baja de Peso en menos de lo que piensas!<br>
                        ¡ANÍMATE!<br>
                        Horarios: Miércoles de 08:00am a 12:00pm<br> 
                    </p>
                    <center><img src="http://www.hotel-sport.cz/en/galerie/ins_foto_obsah/foto_indoor-cycling34.jpg"></center>
                    
                    <p> 
                        GIMNASIA ARTISTICA: Asiste a nuestras clases de gimnasia<br>  
                        artística, contamos con los mejores profesionales en el área.<br>  
                        ¡Tenemos distintas modalidades!<br>  
                        Horarios: Lunes - Jueves de 08:00am a 10:00am<br> 
                        ¡Barras asimétricas, barra de equilibrios, caballo de saltos, suelo, entre otros!<br>  
                        
                    </p>
                    <center><img src="http://2.bp.blogspot.com/--IerK0uWgyg/UkMT3v9H4sI/AAAAAAAAAa0/2dlvL1anIj8/s1600/gimnasta.png"></center>
                    <p> 
                        GIMNASIA ORTOPEDICA: Asiste a nuestras clases de gimnasia<br>  
                        ortpédica, contamos con los mejores profesionales en el área.<br>  
                        ¡Recupera al 100% tu movilidad junto con nosotros!<br>
                        Horarios: Martes - Viernes de 08:00am a 10:00am.<br> 
                    </p> 
                    <center><img src="http://media.parabebes.com/servicios/9/7/4/l.fisioterapia-infantil_1388773479.jpg"></center>
                    <p> 
                        BAILE: ¡Nada como pasar una mañana entrenando para esos<br>
                        fines de semana movidos! Pregunta por nuestras clases <br>
                        y distintas modalidades de bail y anímate.<>
                        ¡Te estamos esperando!
                    </p>
                     <center><img src="http://www.clubdeportivopuertorey.es/new/wp-content/uploads/2013/08/ID-10033465.jpg"></center>
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