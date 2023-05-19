<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="ite[@nombre]"/></title>
                <link rel="stylesheet" href="edix1.css" />
            </head>
            
            <header><h1>Ciclos superiores a distancia</h1></header>

            <body>

            
            
            
            </body>

            <footer>
                <h3>Información general de contacto</h3>
                <p><xsl:value-of select="ite/empresa"/></p>
                <p><xsl:value-of select="ite/telefono"/></p>
                <a href="https://institutotecnologico.edix.com"/>
                <br></br>
                <h4>Grupo Poreduca</h4>
                <a href="https://www.grupoproeduca.com/"/>
            </footer>
        
        
        
        
        </html>
    </xsl:template>
</xsl:stylesheet>