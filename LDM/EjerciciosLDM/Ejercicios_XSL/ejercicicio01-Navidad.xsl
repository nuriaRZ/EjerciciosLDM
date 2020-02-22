<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/navidad">
    <html>
      <head>
        <title>Almuerzo Navidad</title>
      </head>
      <style type="text/css">
        body {
          margin: 50px;
          padding: 0px;
          background: #f5f3da;
          font-family: 'Open Sans', sans-serif;
          font-size: 11pt;
         
          text-align:center;
        }
        

      </style>
      <body>
        <xsl:apply-templates match="almuerzo"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="almuerzo">
   	<h1>Primer Plato</h1>
   	<h2><xsl:value-of select="primerPlato"/></h2><br/>
   	<h1>Segundo Plato</h1>
   	<h2><xsl:value-of select="segundoPlato"/></h2><br/>
   	<h1>Postre</h1>
   	<h2><xsl:value-of select="postre"/></h2><br/>
   	<h1>Bebida</h1>
   	<h2><xsl:value-of select="bebida"/></h2><br/>
   	<h2>Primera Copa</h2>
  	<h3><xsl:value-of select="sobremesa/primeraCopa"/></h3><br/>
  	<h2>Segunda Copa</h2>
  	<h3><xsl:value-of select="sobremesa/segundaCopa"/></h3><br/>
  	<h2>Tercera Copa</h2>  	
   	<h3><xsl:value-of select="sobremesa/terceraCopa"/></h3>

  </xsl:template>
  
   
   	

  




</xsl:stylesheet>