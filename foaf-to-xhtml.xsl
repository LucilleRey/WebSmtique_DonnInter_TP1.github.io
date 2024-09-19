<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
                xmlns:foaf="http://xmlns.com/foaf/0.1/"
                xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
    
    <!-- Template de base -->
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Fiche FOAF de <xsl:value-of select="//foaf:name"/></title>
            </head>
            <body>
                <h1>Informations sur <xsl:value-of select="//foaf:name"/></h1>
                <p><strong>Nom complet :</strong> <xsl:value-of select="//foaf:name"/></p>
                <p><strong>Titre :</strong> <xsl:value-of select="//foaf:title"/></p>
                <p><strong>Prénom :</strong> <xsl:value-of select="//foaf:givenName"/></p>
                <p><strong>Nom de famille :</strong> <xsl:value-of select="//foaf:familyName"/></p>
                <p><strong>Email :</strong> <xsl:value-of select="//foaf:mbox/@rdf:resource"/></p>
                <p><strong>Page d'accueil :</strong> <a href="{//foaf:homepage/@rdf:resource}"><xsl:value-of select="//foaf:homepage/@rdf:resource"/></a></p>
                <p><strong>Nom d'utilisateur :</strong> <xsl:value-of select="//foaf:nick"/></p>
                <p><strong>Image :</strong> <img src="{//foaf:img/@rdf:resource}" alt="Image de profil"/></p>
                <p><strong>Description :</strong> <xsl:value-of select="//foaf:title"/></p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
