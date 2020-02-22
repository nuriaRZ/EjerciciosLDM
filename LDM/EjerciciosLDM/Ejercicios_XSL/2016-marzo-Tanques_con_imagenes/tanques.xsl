<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="iso-8859-1" />
	<xsl:template match="/juegoTanques">
		<html>
			<head>
				<title>Juego Tanques</title>
				<xsl:call-template name="css" />
			</head>
			<body>
			 <xsl:apply-templates select="jugadasDescritas"/> 				
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="jugadasDescritas">
		<table >
			<tr>
				<td class="tituloTabla">Jugada</td>
				<td colspan="2" class="tituloTabla">Tanque</td>
				<td class="tituloTabla">Jugada</td>
			</tr>
			<xsl:for-each select="jugada">
			<xsl:choose>
			<xsl:when test="(position() mod 2) = 1 and @jugador= 1">
			<tr style="background: #8dc5e3;">
				<td class="position"><xsl:value-of select="position()"/></td>
				<td align="center"><xsl:value-of select="@jugador"/></td>
				<td align="center"> <img src="http://www.webdidacticarafaelmunoz.appspot.com/lmsgi/image/tanque1.jpg"/></td>
				<td><xsl:value-of select="@desc"/></td>
			</tr>
			</xsl:when>
			<xsl:otherwise>
			<tr style="background: #ffffff;">
				<td class="position"><xsl:value-of select="position()"/></td>
				<td align="center"><xsl:value-of select="@jugador"/></td>
				<td align="center"> <img src="http://www.webdidacticarafaelmunoz.appspot.com/lmsgi/image/tanque2.jpg"/></td>
				<td><xsl:value-of select="@desc"/></td>
			</tr>
			</xsl:otherwise>
			</xsl:choose>
			</xsl:for-each>
		</table>
	</xsl:template>


	<xsl:template name="css">
		<style type="text/css">
			body {
			margin: 50px;
			padding: 0px;
			background: #ffffff;
			font-family: 'Open Sans', sans-serif;
			font-size: 11pt;
			color: #000000;
			text-align: center;
			}

			.tituloTabla {
			font-weight: bold;
			text-align: center;
			color: #ffffff;
			background: #0a85c7;
			}
			
			.position{
			font-weight: bold;
			}

			table{
			margin: auto;
			width: 60%;
			border-collapse: collapse;
			border: #58aad6 3px solid;
			}
			
			td{
			width: 5px;
			}
	
			tr{
			border:#58aad6 3px solid;
			}

			img{
						
			width: 50px;
			height: 50px;
			}

		</style>
	</xsl:template>

</xsl:stylesheet>