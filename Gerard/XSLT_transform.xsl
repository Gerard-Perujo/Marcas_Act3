<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="https://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" enconding="UTF-8"/>
    <xsl:templete  match="/">
        <Escuela>
            <xsl:for-each select="ite"/>
            <nombre><xsl:value-of select="@nombre"/></nombre>
            <web><xsl:value-of select="@web"/></web>
            <empresa><xsl:value-of select="ite/empresa"/>
                <xsl:attribute name="tel">
                    <xsl:value-of select="ite/telefono"/>
                </xsl:attribute>
            </empresa>
            <profesorado>
                <xsl:for-each select="ite/profesores/profesor"/>
                    <profesor>
                        <xsl:attribute name="id">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                    </profesor>
            </profesorado>
            <equipoDirectivo>
                <director>
                    <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                    <oficina><xsl:value-of select="ite/director/despacho"/></oficina>
                </director>
                <jefeEstudios>
                    <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                    <oficina><xsl:value-of select="ite/jefe_estudios/despacho"/></oficina>
                </jefeEstudios>
            </equipoDirectivo>
            <gradosFormativos>
                <xsl:for-each select="ite/ciclos/ciclo"/>
                    <grado>
                        <xsl:attribute name="nivel">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                        <nombre><xsl:value-of select="nombre"/>
                            <xsl:attribute name="id">
                                <xsl:value-of select="ite/ciclos/ciclo[@id]"/>
                            </xsl:attribute>
                            <xsl:attibute name="año">
                                <xsl:value-of select="decretoTitulo"/>
                            </xsl:attibute>
                        </nombre>
                    </grado>
            </gradosFormativos>
        </Escuela>
    </xsl:templete>
</xsl:stylesheet>


    