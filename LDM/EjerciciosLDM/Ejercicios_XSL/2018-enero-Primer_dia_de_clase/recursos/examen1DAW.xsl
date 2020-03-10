<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="iso-8859-1"/>

	<xsl:template match="/primerDia1DAW">
		<html>
		   <head>
		      <title><xsl:value-of select="@nombre"/></title>
		      <xsl:call-template name="css"/>
		   </head>
		   <body>
		      <div style="width: 1000px; margin: 0 auto;">
		         <xsl:apply-templates select="horario"/>
				 <xsl:call-template name="aula"/>
		      </div>
		   </body>
		</html>
	</xsl:template>
	
	
	
	
	<xsl:template name="aula">
		<table border="1">
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">1</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">2</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">3</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">4</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">5</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">6</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">7</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">8</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">9</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">10</xsl:with-param>
               </xsl:call-template>
           </tr>
            <tr>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">1</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">2</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">3</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">4</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">5</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">6</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">7</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
               <xsl:call-template name="celda">
                   <xsl:with-param name="x">8</xsl:with-param>
                   <xsl:with-param name="y">11</xsl:with-param>
               </xsl:call-template>
           </tr>
		</table>
	
	
	</xsl:template>
	
	



	<xsl:template name="celda">
        <xsl:param name="x"/>
        <xsl:param name="y"/>
		<td>
            <xsl:for-each select="estructuraAula/bloque">
                <xsl:if test="($x = @x) and ($y = @y)">
					<xsl:choose>
						<xsl:when test="@tipo = 'puerta'">
							<xsl:attribute name="style">background:#<xsl:value-of select="../color[@tipo='puerta']"/>;</xsl:attribute>
						</xsl:when>
						<xsl:when test="@tipo = 'pared'">
							<xsl:attribute name="style">background:#<xsl:value-of select="../color[@tipo='pared']"/>;</xsl:attribute>
						</xsl:when>
						<xsl:when test="@tipo = 'ventana'">
							<xsl:attribute name="style">background:#<xsl:value-of select="../color[@tipo='ventana']"/>;</xsl:attribute>
						</xsl:when>
					</xsl:choose>
					<xsl:value-of select="@tipo"/>
                </xsl:if>
            </xsl:for-each>
            
            <xsl:for-each select="alumnado/alumno">
                <xsl:if test="($x = @x) and ($y = @y)">
					<xsl:choose>
						<xsl:when test="@sexo = 'H'">
							<xsl:attribute name="style">background:#baffc5;</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="style">background:#fffbd3;</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				
					<img width="30px">
						<xsl:choose>
							<xsl:when test="@sexo = 'H'">
								<xsl:attribute name="src"><xsl:value-of select="../imagen[@sexo='H']"/></xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="src"><xsl:value-of select="../imagen[@sexo='M']"/></xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</img>


					<xsl:value-of select="."/>
                </xsl:if>
            </xsl:for-each>
        </td>
    </xsl:template>

	
	
	
	
	<xsl:template match="horario">
		<table border="1">
			<tr>
				<td></td>
				<td>8:30-9:30</td>
				<td>9:30-10:30</td>
				<td>10:30-11:30</td>
				<td>12:00-13:00</td>
				<td>13:00-14:00</td>
				<td>14:00-15:00</td>
			</tr>
			<xsl:for-each select="dia">
				<tr>
					<td><xsl:value-of select="@desc"/></td>
					<xsl:for-each select="hora">
						<xsl:sort select="@orden" order="ascending"/>
						<xsl:choose>
							<xsl:when test="position() mod 2 = 1">
								<xsl:call-template name="hora">
									<xsl:with-param name="color">b2cfff</xsl:with-param>
								</xsl:call-template>
							</xsl:when>
							<xsl:otherwise>
								<xsl:call-template name="hora">
									<xsl:with-param name="color">FFFFFF</xsl:with-param>
								</xsl:call-template>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
	
	
	
	
	
	
	

	<xsl:template name="hora">
		<xsl:param name="color"/>
		<td style="background:#{$color};"><xsl:value-of select="."/></td>
	</xsl:template>
	
	
	<xsl:template name="css">
      <style type="text/css">
                    body {
                    font-family: Arial;
                    font-size: 12px;
                    }
                    
                    ol, ul
                    {
                    margin-top: 10px;
                    margin-left: 0px;
                    }
                    
                    #menu li
                    {
                    margin-left: 0px;
                    display: inline;
                    list-style-type: none;
                    padding: 10px 50px;
                    }
                    
                    .noticia {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: left; 
                    width: 338px;
                    }
                    
                    .noticia img {
                    width: 338px;
                    }
                    
                    .noticiaDobleAncho {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: left; 
                    width: 690px;
                    }
                    
                    .noticiaDobleAncho img {
                    width: 690px;
                    }
                    
                    .fechaNoticia {
                    color: #A3A34B;
                    }
                    
                    .comentariosNoticia {
                    color: #A3A34B;
                    padding-left: 20px;
                    }
                    
                    .divPublicidad {
                    /* border: #000 solid 1px; */
                    padding: 10px 5px;
                    float: right; 
                    width: 280px;                    }
                    }
                    
                    .divPublicidad img {
                    width: 200px;
                    }
   		</style>
	</xsl:template>
	
</xsl:stylesheet>