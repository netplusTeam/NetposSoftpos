.class public Lorg/jdom2/input/sax/XMLReaderSchemaFactory;
.super Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;
.source "XMLReaderSchemaFactory.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljavax/xml/validation/Schema;)V
    .locals 1
    .param p1, "factoryClassName"    # Ljava/lang/String;
    .param p2, "classloader"    # Ljava/lang/ClassLoader;
    .param p3, "schema"    # Ljavax/xml/validation/Schema;

    .line 102
    invoke-static {p1, p2}, Ljavax/xml/parsers/SAXParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljavax/xml/validation/Schema;)V
    .locals 1
    .param p1, "schema"    # Ljavax/xml/validation/Schema;

    .line 87
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 88
    return-void
.end method
