<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="ite[@nombre]"/></title>
                <link rel="stylesheet" href="edix1.css" />
            </head>

            <header>
            <h1>EDIX</h1>
            <h2>Ciclos superiores a distancia</h2>
            </header>

            <body>
                <h2>El futuro en 2 años</h2>
                <br></br>
                <section>
                    <p>
                        Cada año que pasa es más importante contar con una formación sólida en las nuevas tecnologías.
                        Ante la creciente demanda de profesionales formados en este sector, cursar uno de los siguientes
                        ciclos formativos será un acierto seguro. 
                    </p>
                    <br></br>
                    <p>A continuación se expone un resumen visual de nuestra oferta formativa</p>
                </section>
                <br></br>

                <section>
                    <article>
                        <table border="1">
                            <caption>Ciclos superiores ofertados</caption>
                            <thead>
                                <tr>
                                    <th>Siglas</th>
                                    <th>Nombre completo</th>
                                    <th>Tipo de ciclo</th>
                                    <th>Oficial desde</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="ite/ciclos/ciclo">
                                    <tr>
                                        <td><xsl:value-of select="@id"/></td>
                                        <td><xsl:value-of select="nombre"/></td>
                                        <td><xsl:value-of select="grado"/></td>
                                        <td><xsl:value-of select="decretoTitulo"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                    </table>
                    </article>
                    <br></br>

                    <article>
                        <p>
                            La calidad de un curso no reside exclusivamente en su contenido, 
                            sino también en el compromiso del profesorado que te acompaña.
                        </p>
                        <br></br>
                        <table border="1">
                            <caption>Claustro de profesores</caption>
                            <thead>
                                <tr>
                                    <th>Número</th>
                                    <th>Nombre</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="ite/profesores/profesor">
                                    <tr>
                                        <td><xsl:value-of select="id"/></td>
                                        <td><xsl:value-of select="nombre"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </article>
                </section>
                <br></br>

                <section>
                    <p>Además, siempre contarás con el apoyo de dirección y jefatura de estudios</p>
                    <article>
                        <h3>Dirección</h3>
                        <ol>
                            <li><xsl:value-of select="ite/director/nombre"/></li>
                            <li><xsl:value-of select="ite/director/despacho"/></li>
                        </ol>
                    </article>
                    <br></br>

                    <article>
                        <h3>Jefatura de estudios</h3>
                        <ol>
                            <li><xsl:value-of select="ite/jefe_estudios/nombre"/></li>
                            <li><xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                        </ol>
                    </article>
                </section>

                <!-- .......................................................................................................
                ............................................................................................................
                ............................................................................................................
                ............................................................................................................ -->

                <section>
                    <p>Si deseas recibir más información, ponte en contacto con nosotros:</p>
                    <h1>Formulario</h1>
                    <form action="procesarPeticion.jsp" method="post">
                        <fieldset>
                            <legend>Datos personales</legend>
                            <label for="nombre">Nombre: </label>
                            <input id="nombre" type="text" name="nombre"/>
                            <br/>
                            <label for="apellidos">Apellidos: </label>
                            <input id="apellidos" type="text" name="apellidos"/>
                            <br/>
                            <label for="edad">Edad: </label>
                            <input id="edad" type="number" name="edad" />
                            <br/>
                            <label for="email">Correo electrónico: </label>
                            <input id="email" type="text" name="email"/>
                            <br/>
                            <label for="telf">Teléfono: </label>
                            <input id="telf" type="tel" name="telf"/>
                            <br/>
                            <label for="municipio">Municipio: </label>
                            <input id="municipio" type="text" name="municipio" />
                            <br/>
                            <label for="pais">País: </label>
                            <input id="pais" type="text" name="pais" />
                            <br/>
                            <br></br>

                            <label for="estudios">Últimos estudios finalizados: </label>
                            <select name="estudios">
                                <option value="eso">Educación Secundaria Obligatoria</option>
                                <option value="medio" >Ciclo Formativo de Grado Medio</option>
                                <option value="bachillerato">Bachillerato</option>
                                <option value="cisup">Ciclo Formativo de Grado Superior</option>
                                <option value="superior">Educación superior</option>
                            </select>
                            <br/>

                            <label for="interes">Ciclo formativo de interés: </label>
                            <select name="interes">
                                <option value="daw">DAW</option>
                                <option value="dam" >DAM</option>
                                <option value="asir">ASIR</option>
                            </select>
                
                            <br/>
                            <label for="comentarios">Comentarios: </label>
                            <br />
                            <textarea style="resize: none;" rows="7" cols="80" name="comentarios"></textarea>

                            <br/>
                            <br/>	
                            He leido y acepto los terminos de uso <input type="checkbox" name="terminos" value="Y" />
                            <br/>	
                            <br/>	
                            <input type="submit" value="Enviar" />
                            <input type="reset" value="Borrar formulario" />
                        </fieldset>
                    </form>
                </section>
            </body>

            <footer>
                <section>
                    <h3>Información general de contacto</h3>
                    <p><xsl:value-of select="ite/empresa"/></p>
                    <p><xsl:value-of select="ite/telefono"/></p>
                    <a href="https://institutotecnologico.edix.com"/>
                </section>
                <br></br>

                <section>
                    <h4>Grupo Proeduca</h4>
                    <a href="https://www.grupoproeduca.com/"/>
                </section>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>