<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/rss">
	<html>
	<head>
		<style type="text/css">
			body {
				font-size:0.83em;
			}
			dd {
	color:#FF0000;
	font-family:Tahoma, "Lucida Sans Unicode", Verdana, sans-serif;
	font-size:70%;
	letter-spacing:0.1em;
	margin:2º;
	padding:0.3em 1em;
	font-weight:bold;
}
		</style>
	</head>
<body>
	<div>
					<xsl:for-each select="channel/item">
					<dd class="titol">
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="link"/>
							</xsl:attribute>
							<xsl:value-of select="title"/>
						</xsl:element>
					 </dd>	
					</xsl:for-each>
		
		</div>
	</body>
	</html>
</xsl:template>
</xsl:stylesheet>