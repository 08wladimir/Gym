
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                <div id="textoPr">
                    <article>
                        <hgroup>
                            <h1>
                                <a href="Nosotros.jsp" target="_blank" class="but">¡CONOZCA MÁS DE  NOSOTROS!</a>
                            </h1>
                        </hgroup>
                    </article>
                    <article>

                    </article>
                    <aside> 
                    </aside>
                </div>
                <div id="textoPr2">
                    <hgroup>
                        <h2>
                            <a href="Contactenos.jsp" target="_blank" class="but">¡NUESTRA UBICACIÓN Y HORARIOS!</a> 
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

                    <center>
                        <p>
                        <center>
                            "Trabajamos en pro de su bienestar físico y mental brindándole el mejor servicio con un ambiente familiar y acogedor, adecuando continuamente nuestras instalaciones y seleccionando al mejor personal capacitado para su comodidad y bienestar."
                        </center><br>
                        <center>
                            Copyright - All Rights Reserved - Engineer's Gym 2015.
                        </center>
                        </p>
                    </center>

                </article>
            </section>
            <br>
        </footer>
    </body>
</html>
