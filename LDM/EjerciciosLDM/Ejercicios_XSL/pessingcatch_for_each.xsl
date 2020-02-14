<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/wwe">
      <html>
	      <head>
	        <title>Pressing catch</title>
	      </head>
	      <style type="text/css">
	        body {
	          margin: 50px;
	          padding: 0px;
	          background: #2372DE;
	          font-family: 'Open Sans', sans-serif;
	          font-size: 11pt;
	          color: #FFFFFF;
	          text-align:center;
	        }

	      </style>
      <body>
       <xsl:apply-templates select="europa"/>
      </body>
    </html>
 
  </xsl:template>
  
   <xsl:template match="europa">
	<ul>
		<li><xsl:value-of select="personaje"/></li>
			<ul>
			<li>nombre: <xsl:value-of select="nombre"/> </li>
			<li>edad: <xsl:value-of select="edad"/> </li>
			</ul>
	</ul>
	<ul>
		<li><xsl:value-of select="personaje"/></li>
			<ul>
			<li>nombre: <xsl:value-of select="nombre"/> </li>
			<li>edad: <xsl:value-of select="edad"/> </li>
			</ul>
	</ul>
    <br/>
  </xsl:template>
  
     <xsl:template match="eeuu">
	<ul>
		<li><xsl:value-of select="personaje"/></li>
			<ul>
			<li>nombre: <xsl:value-of select="nombre"/> </li>
			<li>edad: <xsl:value-of select="edad"/> </li>
			</ul>
	</ul>
		<ul>
		<li><xsl:value-of select="personaje"/></li>
			<ul>
			<li>nombre: <xsl:value-of select="nombre"/> </li>
			<li>edad: <xsl:value-of select="edad"/> </li>
			</ul>
	</ul>
    <br/>
  </xsl:template>
  
  


</xsl:stylesheet>
