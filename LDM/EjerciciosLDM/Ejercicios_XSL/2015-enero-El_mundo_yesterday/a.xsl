<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>
  <xsl:template match="/">
      <html>
	      <head>
	        <title>El mundo Yesterday</title>
	      </head>
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
      <body>
       <xsl:template select="periodico">
      		<div style="width: 1000px; margin: 0 auto;">
      			<div style="width: 1000px;">
      			<img><xsl:attribute name="src"><xsl:value-of select="periodico/@logo"/></xsl:attribute></img>
	          		<div id="menu" style="width: 1000px; margin: 0px; padding: 0px;">
	          			<ul>
							<xsl:param name="enlace" />
								<xsl:for-each select="periodico/menu/enlace">
									<xsl:choose>
										<xsl:when test="position() mod 2 = 1">
											<li style="background: #F27E2B;">
												<xsl:with-param name="enlace"/><xsl:attribute name="href"><xsl:value-of select="enlace/@href"/></xsl:attribute>
											</li>
										</xsl:when>
										<xsl:otherwise>
											<li style="background: #DDE640;">
												<xsl:attribute name="href"><xsl:value-of select="enlace/@href"/></xsl:attribute>
											</li>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
								<xsl:for-each select="periodico/noticias/noticia">
									<xsl:call-template name="porNoticia">
										<div style="width: 700px; float: left;">
											<div class="noticiaDobleAncho">
												<h2>
													<xsl:with-param name="titular"><xsl:value-of select="titular" /></xsl:with-param>
												</h2>
												<h4>
													<xsl:with-param name="subtitular"><xsl:value-of select="subtitular" /></xsl:with-param>
												</h4>
												<img>
													<xsl:attribute name="@imagen" />
												</img>
											</div>
										</div>
									</xsl:call-template>
								</xsl:for-each>
	          			</ul>
	          		</div>
      			</div>
 			</div>
        </xsl:template>
        </body>
        </html>         
        
         
         
      
      
         
	

</xsl:template>		  


        <xsl:template name="porNoticia">
	        <xsl:param name="titular"/>
	        <xsl:param name="subtitular"/>
        </xsl:template> 
         

</xsl:stylesheet>