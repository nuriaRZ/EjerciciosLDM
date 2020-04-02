<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/cine">
      <html>
	      <head>
	        <title>ArteOcho Lucena</title>
	      </head>
      <style type="text/css">
        body {
          margin: 50px;
          padding: 0px;
          
          font-family: 'Open Sans', sans-serif;
          font-size: 11pt;
          text-align:center;
        }
        
        .tituloTabla {
          font-weight: bold;
			text-align: center;
			color: #ffffff;
			background: #0a85c7;
        }
        
        table {
       		margin: auto;
			width: 90%;
			border-collapse: collapse;
			border: #000000 1px solid;
			heigth: 90%;
        
        }
        

        
        
      </style>
      <body>
          <h1><xsl:value-of select="@nombre"/></h1>
          <h2><xsl:value-of select="titulo/@nombre"/></h2>
          <h3>Estreno:<xsl:value-of select="titulo/@estreno"/></h3>
          <img>
          <xsl:attribute name="src"><xsl:value-of select="titulo/imagen"/></xsl:attribute>
          </img>
          <br/>	
          <br/>		  	
		  <table border="1">
		  	<xsl:apply-templates select="sesiones"/>
		  </table>
		  
		  <xsl:call-template name="tablaPeliculas"/>
		  	
		 
      </body>
    </html>  	
  </xsl:template>
  
  <xsl:template match="sesiones">
  	
  	<xsl:for-each select="sesion">
  	<xsl:choose>
  	<xsl:when test="position() mod 2 = 1">
  	<tr style="background:#d3dee8">
  		<td align="center">Sesion <xsl:value-of select="position()"/> : <xsl:value-of select="@hora"/>
  		<table border="1">
	  		<xsl:call-template name="bucleForFila">
	  		<xsl:with-param name="i">1</xsl:with-param>
	  		</xsl:call-template>
  		</table>
  		</td>
  		
  	</tr>
  	</xsl:when>
  	<xsl:otherwise>
  	<tr style="background:#ffffff">
  		<td align="center">Sesion <xsl:value-of select="position()"/> : <xsl:value-of select="@hora"/>
  		<table border="1">
	  		<xsl:call-template name="bucleForFila">
	  		<xsl:with-param name="i">1</xsl:with-param>
	  		</xsl:call-template>
  		</table>
  		</td>
	  		
  	</tr>
  	</xsl:otherwise>
  	</xsl:choose>
  
  	</xsl:for-each>
  </xsl:template>
  
  <xsl:template name="bucleForFila">
    <xsl:param name="i"/>
    <xsl:if test="$i &lt;= 4">
      <tr>
        <xsl:call-template name="bucleForColumna">
          <xsl:with-param name="i">
            <xsl:value-of select="$i"/>
          </xsl:with-param>
          <xsl:with-param name="j">1</xsl:with-param>
        </xsl:call-template>
      </tr>
      <xsl:call-template name="bucleForFila">
        <xsl:with-param name="i">
          <xsl:value-of select="$i + 1"/>
        </xsl:with-param>
      </xsl:call-template>
     </xsl:if> 
  </xsl:template>
  
  <xsl:template name="bucleForColumna">
    <xsl:param name="i"/>
    <xsl:param name="j"/>
    <xsl:if test="$j &lt;= 4">
      <xsl:call-template name="celda">
        <xsl:with-param name="x">
          <xsl:value-of select="$j"/>
        </xsl:with-param>
        <xsl:with-param name="y">
          <xsl:value-of select="$i"/>
        </xsl:with-param>
      </xsl:call-template>
      <xsl:call-template name="bucleForColumna">
        <xsl:with-param name="i">
          <xsl:value-of select="$i"/>
        </xsl:with-param>
        <xsl:with-param name="j">
          <xsl:value-of select="$j + 1"/>
        </xsl:with-param>
      </xsl:call-template>
    </xsl:if>
  </xsl:template>
  
  <xsl:template name="celda">
    <xsl:param name="x"/>
    <xsl:param name="y"/>
    <td>
    <xsl:choose>
	   <xsl:when test="ocupado[@fila=$y and @asiento=$x]">
	   
	   	<img>
	   		<xsl:attribute name="src"><xsl:value-of select="/cine/imagenes/imagen[@id='ocupado']"/></xsl:attribute>
	   	</img>
	   	
	   </xsl:when>
	   <xsl:otherwise>
	  	<img>
	   		<xsl:attribute name="src"><xsl:value-of select="/cine/imagenes/imagen[@id='libre']"/></xsl:attribute>
	   	</img>
	   	</xsl:otherwise>
	 </xsl:choose>  	
    </td>
  </xsl:template>
  
  <xsl:template name="tablaPeliculas">
  	
  	<h2>Otras Peliculas</h2>
  	<table border = "1" width="20%">
  		<xsl:for-each select="cartelera/pelicula"> 
  			<xsl:variable name="idPelicula"><xsl:value-of select="@id"/></xsl:variable>	
  		<tr>
  			<td>
  				<img>
  					<xsl:attribute name="src"><xsl:value-of select="/cine/imagenes/imagen[@id=$idPelicula]"/></xsl:attribute>
  				</img>
  			</td>
  			<td>
  				<xsl:value-of select="@nombre"/>
  			</td>
  		</tr>
  		</xsl:for-each>
  	</table>
  </xsl:template>
  
  

  
  
</xsl:stylesheet>