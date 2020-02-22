<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Almuerzo Navidad</title>
        <xsl:call-template name="css"/>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="alumno">
  	<table border="1">
  		<tr>
  			<td colspan="2" class="tituloTabla"><h2><xsl:value-of select="nombre"/></h2></td>
  		</tr>
  		<tr>
  			<td class="textoSubrayado">DNI:</td>
  			<td><xsl:value-of select="@dni"/></td>
  		</tr>
  		<tr>
  			<td colspan="2" class="tituloTabla">Direccion</td>
   		</tr>
   		<tr>
  			<td class="textoSubrayado">Calle:</td>
  			<td><xsl:value-of select="direccion/calle"/></td>
  		</tr>
  		<tr>
  			<td class="textoSubrayado">Ciudad:</td>
  			<td><xsl:value-of select="direccion/ciudad"/></td>
  		</tr>
  		<tr>
  			<td class="textoSubrayado">Provincia:</td>
  			<td><xsl:value-of select="direccion/provincia"/></td>
  		</tr>
  		 <tr>
  			<td class="textoSubrayado">Telefono:</td>
  			<td><xsl:value-of select="telefono"/></td>
  		</tr>	
  	
  	</table>
 

  </xsl:template>
  
  <xsl:template name="css">
        <style type="text/css">
        body {
          margin: 50px;
          padding: 0px;
          background: #f5f3da;
          font-family: 'Open Sans', sans-serif;
          font-size: 11pt;
         
          text-align:center;
        }
	    .tituloTabla {
	      font-weight: bold;   
	      text-align: center;
	    }
	    
	    .textoSubrayado {
	    	text-decoration: underline;
	    }
	    
	    table {
	    width: 50%;
	    text-align: center;
	    }
        

      </style>
  </xsl:template>

</xsl:stylesheet>