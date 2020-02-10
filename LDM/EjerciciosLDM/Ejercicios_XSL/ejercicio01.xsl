<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/placasbase">
    <html>
      <head>
        <title>Piezas de Ordenador</title>
      </head>
      <body>
      	<h1><xsl:value-of select="microprocesador"/></h1>
      	<h1><xsl:value-of select="memoria"/></h1>
      	<h1><xsl:value-of select="modelo"/></h1>
      	<h1><xsl:value-of select="fabricante"/></h1>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
