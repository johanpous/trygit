<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Deportes LV</h2>
    <table border="1">
      <tr bgcolor="blue">
        <th style="text-align:left">Titulo</th>
        <th style="text-align:left">Categoría</th>
        <th style="text-align:left">foto</th>
      </tr>
      <xsl:for-each select="rss/channel/item">
      <tr> 
        <td>
          <a>
              <xsl:attribute name="href">
                <xsl:value-of select="link" />
              </xsl:attribute>
              <h3><xsl:value-of select="title"/></h3>
           </a>
            <p><xsl:value-of select="pubDate"/> - <xsl:value-of select="description"/></p>
        </td>
        <td>
            <xsl:value-of select="category"/>
        </td>
        <td>
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="enclosure/@url" />
              </xsl:attribute>
            </img>        
        </td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

