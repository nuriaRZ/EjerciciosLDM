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
			 <xsl:apply-templates match="jugadasDescritas">
				<xsl:for-each select="jugada">
					<table border="1">
						<tr>
							<td>Jugada</td>
							<td>Tanque</td>
							<td>Jugada</td>

						</tr>
						<tr>
							<td style="background: #00FF00;">
								<xsl:value-of select="position()" />
							</td>
							<td style="background: #00FF00;">
								<xsl:value-of select="@jugador" />
							</td>
							<td style="background: #00FF00;">
								<xsl:value-of select="@desc" />
							</td>
						</tr>

					</table>
					<br/>
						</xsl:for-each>
					</xsl:apply-templates> 				
			</body>
		</html>
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
			text-align:center;
			}

			.tituloTabla {
			font-weight: bold;
			text-align: center;
			}

			table{
			width: 95%;
			background: #379e9b;
			}

		</style>
	</xsl:template>

</xsl:stylesheet>