<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <edix>
            <informacion>
                <grupo><xsl:value-of select="ite/empresa"/></grupo>
                <denominacion><xsl:value-of select="ite[@nombre]"/></denominacion>
                <www><xsl:value-of select="ite[@web]"/></www>
                <llama><xsl:value-of select="ite/telefono"/></llama>
            </informacion>

            <xsl:for-each select="ite/profesores">
                <claustro>
                    <maestro>
                        <xsl:attribute name="id">
                            <xsl:value-of select="ite/profesores/profesor/id"/>
                        </xsl:attribute>
                    
                        <xsl:attribute name="nombre">
                            <xsl:value-of select="ite/profesores/profesor/nombre"/>
                        </xsl:attribute>
                    </maestro>
                </claustro>
            </xsl:for-each>

            <gestiones>
                <responsable>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/director/nombre"/>
                    </xsl:attribute>
                    <localizacion><xsl:value-of select="ite/director/despacho"/></localizacion>
                </responsable>

                <responsable>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/jefe_estudios/nombre"/>
                    </xsl:attribute>
                    <localizacion><xsl:value-of select="ite/jefe_estudios/despacho"/></localizacion>
                </responsable>
            </gestiones>

            <xsl:for-each select="ite/ciclos">
                <estudios>
                    <curso>
                        <xsl:attribute name="nivel">
                            <xsl:value-of select="ite/ciclos/ciclo/grado"/>
                        </xsl:attribute>
                        <siglas><xsl:value-of select="ite/ciclos/ciclo[@id]"/></siglas>
                        <nombre_completo><xsl:value-of select="ite/ciclos/ciclo/nombre"/></nombre_completo>
                        <año_aprobacion><xsl:value-of select="ite/ciclos/ciclo/decretoTitulo[año]"/></año_aprobacion>
                    </curso>
                </estudios>
            </xsl:for-each>
        </edix>
    </xsl:template>
</xsl:stylesheet>

<!-- Estructura planteada
<edix>
	<informacion>
		<grupo>Proeduca</grupo>
		<denominacion>Instituto Tecnológico Edix</denominacion>
		<www>https://institutotecnologico.edix.com</www>
		<llama>+34 91 787 39 91</llama>
	</informacion>
	
	<claustro>
		<maestro id="1" nombre="Félix"/>
		<maestro id="2" nombre="Raúl"/>
		<maestro id="3" nombre="Raquel"/>
		<maestro id="4" nombre="Tomás"/>
	</claustro>

	<gestiones>
		<responsable nombre="Chon">
			<localizacion>Numero 31, 3ª Planta, Edificio A</localizacion>
		</responsable>
	
		<responsable nombre="Dani">
			<localizacion>Numero 27, 2ª Planta, Edificio B</localizacion>
		</responsable>
	</gestiones>

	<estudios>
		<curso nivel="superior">
			<siglas>ASIR</siglas>
			<nombre_completo>Administración de Sistemas Informáticos en Red</nombre_completo>
			<año_aprobacion>2009</año_aprobacion>
		</curso>
		
		<curso nivel="superior">
			<siglas>DAW</siglas>
			<nombre_completo>Desarrollo de Aplicaciones Web</nombre_completo>
			<año_aprobacion>2010</año_aprobacion>
		</curso>
		
		<curso nivel="superior">
			<siglas>DAM</siglas>
			<nombre_completo>Desarrollo de Aplicaciones Multiplataforma</nombre_completo>
			<año_aprobacion>2019</año_aprobacion>
		</curso>
	</estudios>
</edix>
-->