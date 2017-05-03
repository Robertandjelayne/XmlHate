<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>
  <xsl:template match="bookstore">
ISBN|Title|AuthorFirstName|AuthorLastName|Price
<xsl:apply-templates select="book"/>
  </xsl:template>
  <xsl:template match="book">
<xsl:value-of select="@ISBN"/>|<xsl:value-of select="title"/><xsl:value-of select="author/first-name"/>|<xsl:value-of select="author/last-name"/>|<xsl:value-of select="price"/>
  </xsl:template>
</xsl:stylesheet>
