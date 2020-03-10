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
			 <xsl:apply-templates select="jugadasGraficas"/> 				
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="jugadasGraficas">
		<table>
		</table>

	</xsl:template>
	
	<xsl:template name="buclePorFila">
		<xsl:param name="i"/>
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
			width: 50px;
			height: 50px
			}
	
			

			
		</style>
	</xsl:template>

</xsl:stylesheet>