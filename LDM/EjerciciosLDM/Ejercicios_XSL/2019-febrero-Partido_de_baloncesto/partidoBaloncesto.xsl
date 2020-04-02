<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/partidoBaloncesto">
      <html>
	      <head>
	        <title>Partido Baloncesto</title>
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
			background: #0f124a;
        }
        
        table {
       		margin: auto;
			width: 90%;	
			heigth: 90%;
        
        }
        
        td{
			width: 5px;
			}
        
        tr{
			border:#58aad6 3px solid;
			}
        
        img{
        width: 40px;
        height: 40px;
        }
        
        
      </style>
      <body>
      	
          <table border="1">
          	<tr class="tituloTabla">
          	<td>Equipo</td>
          	<td>Jugador</td>
          	<td>Dorsal</td>
          	<td>Apodo</td>
          	<td>Puntos</td>
          	<td>Rebotes</td>
          	<td>Asistencias</td>
          	</tr>
          		
          			<xsl:for-each select="equipo">
          				<xsl:for-each select="jugador">
          				<xsl:sort select="@nombre"/>
	          				<xsl:choose>
	          					<xsl:when test="../@tipo='Local' and position() mod 2 = 1">
	          						<tr style="background: #b9e4eb;">
					          			<td>
					          			<img><xsl:attribute name="src"><xsl:value-of select="../@imagen"/></xsl:attribute></img>
					          			</td>
					          			<td><xsl:value-of select="@nombre"/></td>
					          			<td><xsl:value-of select="@dorsal"/></td>
					          			<td><xsl:value-of select="@apodo"/></td>
					          			<td><xsl:value-of select="@puntos"/></td>
					          			<td><xsl:value-of select="@rebotes"/></td>
					          			<td><xsl:value-of select="@asistencias"/></td>
					          		</tr>
	          					
	          					</xsl:when>	          					
	          					<xsl:when test="../@tipo='Visitante' and position() mod 2 = 1">
	          					<tr style="background: #b9ebbc;">
					          			<td>
					          			<img><xsl:attribute name="src"><xsl:value-of select="../@imagen"/></xsl:attribute></img>
					          			</td>
					          			<td><xsl:value-of select="@nombre"/></td>
					          			<td><xsl:value-of select="@dorsal"/></td>
					          			<td><xsl:value-of select="@apodo"/></td>
					          			<td><xsl:value-of select="@puntos"/></td>
					          			<td><xsl:value-of select="@rebotes"/></td>
					          			<td><xsl:value-of select="@asistencias"/></td>
					          		</tr>
	          					</xsl:when>
	          					<xsl:otherwise>
	          					<tr style="background: #ffffff;">
					          			<td>
					          			<img><xsl:attribute name="src"><xsl:value-of select="../@imagen"/></xsl:attribute></img>
					          			</td>
					          			<td><xsl:value-of select="@nombre"/></td>
					          			<td><xsl:value-of select="@dorsal"/></td>
					          			<td><xsl:value-of select="@apodo"/></td>
					          			<td><xsl:value-of select="@puntos"/></td>
					          			<td><xsl:value-of select="@rebotes"/></td>
					          			<td><xsl:value-of select="@asistencias"/></td>
					          		</tr>
	          					</xsl:otherwise>
	          				</xsl:choose>
          				</xsl:for-each>
          			</xsl:for-each>
          </table>
          
          <table>
          	<tr class="tituloTabla">
          		<td>Tiempo</td>
          		<td>Jugador</td>
          		<td>Apodo</td>
          		<td>Descripcion</td>
          		<td>Icono</td>
          	</tr>
          	<xsl:for-each select="historico/entrada">
          	
          		<tr>
          			<td><xsl:value-of select="@tiempo"/></td>
          			<td><xsl:value-of select="@jugador"/></td>
          			<td>apodo</td>
          			<td><xsl:value-of select="."/></td>
          			<td>
          				<img><xsl:attribute name="src"><xsl:value-of select="historico/imagen[@tipo=$tipo]"/></xsl:attribute></img>
          			</td>
          		</tr>
          	</xsl:for-each>
          </table>
          
      </body>
    </html>
  </xsl:template>
  
  
  

    
</xsl:stylesheet>