<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/gormitis">
      <html>
	      <head>
	        <title>Gormitis</title>
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
			background: url('<xsl:value-of select="tablero/@url"/>') no-repeat;
        
        }
        
      
        
        img{
        width: 60px;
        height: 60px;
        }
        
        
      </style>
      <body>
          
          
		  	<table border="1" >
		  		<xsl:call-template name="bucleForFila">
              <xsl:with-param name="i">1</xsl:with-param>
            </xsl:call-template>
		  	</table>
		 
      </body>
    </html>
  </xsl:template>
  
  <xsl:template name="bucleForFila">
    <xsl:param name="i"/>
    <xsl:if test="$i &lt;= 3">
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
    <xsl:if test="$j &lt;= 3">
      <xsl:call-template name="celda">
        <xsl:with-param name="x">
          <xsl:value-of select="$j"/>
        </xsl:with-param>
        <xsl:with-param name="y">
          <xsl:value-of select="$i"/>
        </xsl:with-param>
        <xsl:with-param name="posicion"><xsl:value-of select="position()"/></xsl:with-param>
        
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
    <xsl:param name="posicion"></xsl:param>
   
    <td>
      <xsl:for-each select="tablero/gormitiEnMapa">
      	<xsl:if test="@x = $x and @y = $y">
      		<xsl:call-template name="imagen">
      			<xsl:with-param name="tribu"><xsl:value-of select="@tribu"/></xsl:with-param>
      		</xsl:call-template>
      	</xsl:if>
        
      </xsl:for-each>
    </td>
  </xsl:template>
  
  <xsl:template name="imagen">
  	<xsl:param name="tribu"/>
  		<img src="{/gormitis/gormiti[@tribu = $tribu]}"/>
  </xsl:template>
      
  	
    
</xsl:stylesheet>