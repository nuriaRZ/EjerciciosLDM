<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/navidad">
    <html>
      <head>
        <title>cena de navidad</title>
      </head>
      <body>
      	<xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

	<xsl:template match="almuerzo">
	<h1>Primer plato:</h1> <h3><xsl:value-of select="primerPlato"/></h3><br/>
	Segundo Plato: <xsl:value-of select="segundoPlato"/><br/>
	<h1>postre:</h1> <h3><xsl:value-of select="postre"/></h3><br/>
	
	
	</xsl:template>

</xsl:stylesheet>
