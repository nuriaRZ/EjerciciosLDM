<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/biblioteca">
    <html>
      <head>
        <title>Biblioteca</title>
        <xsl:call-template name="css"/>
      </head>
      <body>
      	<xsl:for-each select="libro">
      		<table border="1">
      			<tr class="tituloTabla">
      				<td colspan="2"><xsl:value-of select="titulo"/></td>
      			</tr>
      			<tr>
      				<td>autor:</td>
      				<td> <xsl:value-of select="autor"/></td>
      			</tr>
      			<xsl:if test="autor/@fechaNacimiento">
	      			<tr>
	      				<td>Fecha Nacimiento de Autor</td>
	      				<td><xsl:value-of select="autor/@fechaNacimiento"/></td>
	      			</tr>
      			</xsl:if>
      			<tr>	
      				<td>fecha Puclicacion: </td>
      				<td><xsl:value-of select="fechaPublicacion/@año"/></td>
      			</tr>
      		</table>
      		<br/>
      	
      	</xsl:for-each>
      	
      </body>
    </html>
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
  		
  		.tituloTabla{
  		text-align: center;
  		font-weight: bold;
  		}
  		
  		table {
  		width: 50%
  		
  		
  		}
  		

  	</style>
  </xsl:template>
  
  


</xsl:stylesheet>
