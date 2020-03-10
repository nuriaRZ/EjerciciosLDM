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
			border: #58aad6 3px solid;
			heigth: 90%;
        
        }
        
        td{
			width: 5px;
			}
        
        tr{
			border:#58aad6 3px solid;
			}
        
        img{
        width: 60px;
        height: 60px;
        }
        
        
      </style>
      <body>
          <xsl:template match="gormitis">
		  	<table >
		  		<thead>
		  			
		  			<td class="tituloTabla" colspan="2">Gormiti</td>
		  			<td class="tituloTabla">tribu</td>
		  		</thead>
		  		<tbody>
		  			<xsl:for-each select="gormiti">
		  				<xsl:choose>
			  				<xsl:when test="position() mod 2 = 1">
			  					<xsl:call-template name="pintafila">
			  						<xsl:with-param name="color">#c7d4f0</xsl:with-param>
			  					</xsl:call-template>
			  				</xsl:when>
			  				<xsl:otherwise>
			  					<xsl:call-template name="pintafila">
			  						<xsl:with-param name="color">#ffffff</xsl:with-param>
			  					</xsl:call-template>
			  				</xsl:otherwise>
		  				</xsl:choose>
		  			</xsl:for-each>
		  			
		  		</tbody>
		  	</table>
		  </xsl:template>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template name="pintafila">
  	<xsl:param name="color"/>
  	
  	
  	<tr style="background: {$color}">
  		<td>  		
        <xsl:value-of select="position()"/>
      </td>
      
      <td>
      	<img src="{.}"/>
      </td>
      <td>
        <xsl:value-of select="@tribu"/>
      </td>
      
  	</tr>
  </xsl:template>  
</xsl:stylesheet>