<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <head>
  <script>
  var cl="";  
</script>

<style>
table {
   width: 600px;
   border: 2px solid #00f;
   align: right;
   left-margin: 10px;
}
td.petit, th.petit
{
width: 40px;
}
td.normal {
width : 150px;
}


caption {
   padding: 0.3em;
   color: #fff;
    background: #f00;
    font-size : 18px;
}
th {
   background: #cccccc;
}

</style>
  </head>
  <body>
    
<table class="calendari_partits_acb" border="1" width="400">
<caption> Calendari de partits Jornada 7</caption>
<tbody>
<th class="petit">Equipo Local</th>
<th class="petit">Equipo Visitant</th>
<th class="petit" >Punts Local</th>
<th class="petit" >Punts Visitant</th>
</tbody>


    <xsl:for-each select='taller_xml/calendari_partits_acb[jornada=7]' >   <!-- Filtre els jugadors en la psoción de Base -->
    <xsl:sort select="jornada" />      <!-- ordena per edat -->                                 
<xsl:if test="position() &lt;= 8">   <!-- Noms mostra si la posici en el node s mes petita o igual 5  -->
<tr onmouseover="cl=this.style.background;  this.style.background='pink';" onmouseout="this.style.background=cl;" >    <!-- Efecte resaltador al pasar ratoli -->
<xsl:if test="nacionalitat ='ESP'"><xsl:attribute name="bgcolor">yellow</xsl:attribute></xsl:if>  <!-- Si s de nacionalitat ESP posa color groc de fons -->

<td><xsl:value-of select="equip_local" /></td>
<td><xsl:value-of select="equip_visitant" /></td>
<td><xsl:value-of select="punts_local" /></td>
<td><xsl:value-of select="punts_visitant" /></td>
</tr>
</xsl:if>    
   </xsl:for-each>

</table>  
  </body>
  </html>
</xsl:template>
</xsl:stylesheet> 