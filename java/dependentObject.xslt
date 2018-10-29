<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>
    <xsl:variable name="className" select="/dependentObject/@class"/>
    <!--
    ********************************************************************
    ** Generate the class skeleton. Other templates will generate
    ** portions of the class.
    *****************************************************************-->
    <xsl:template match="/dependentObject">public class <xsl:value-of
             select="$className"/>
       <xsl:text> implements java.io.Serializable {
</xsl:text>
    <xsl:apply-templates select="property" mode="generateField"/>
    <xsl:text>

    /**
     * Construct a new dependent object instance.
     */
    public </xsl:text>
            <xsl:value-of select="$className"/>(<xsl:apply-templates 
                 select="property" mode="generateConstructorParam"/>
            <xsl:text>) {
</xsl:text>
            <xsl:apply-templates select="property" 
                 mode="generateInitializers"/>
    }

    <xsl:apply-templates select="property" mode="generateGetter"/>
}
    </xsl:template>

    <!--
    *****************************************************************
    ** Generate a private field declaration.
    **************************************************************-->
    <xsl:template match="property" mode="generateField">
    private <xsl:value-of select="@type"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="@name"/>;</xsl:template>
    
    <!--
    *****************************************************************
    ** Generate a "get" method for a property.
    **************************************************************-->
    <xsl:template match="property" mode="generateGetter">
    public <xsl:value-of select="@type"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="@getter"/>() {
        return this.<xsl:value-of select="@name"/>;
    }
    </xsl:template>
    
    <!--
    *****************************************************************
    ** Generate one of the constructor parameters.
    **************************************************************-->
    <xsl:template match="property" mode="generateConstructorParam">
        <xsl:text xml:space="preserve"/>
        <xsl:value-of select="@type"/>
        <xsl:text> </xsl:text>
        <xsl:value-of select="@name"/>
        <xsl:if test="position() != last( )">, </xsl:if>
    </xsl:template>
    
    <!--
    *****************************************************************
    ** Generate the initialization code inside of the constructor.
    **************************************************************-->
    <xsl:template match="property" mode="generateInitializers">
        <xsl:text xml:space="preserve">        this.</xsl:text>
        <xsl:value-of select="@name"/>
        <xsl:text> = </xsl:text>
        <xsl:value-of select="@name"/>;
    </xsl:template>
</xsl:stylesheet>
