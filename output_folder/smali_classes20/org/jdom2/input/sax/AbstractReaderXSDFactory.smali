.class public Lorg/jdom2/input/sax/AbstractReaderXSDFactory;
.super Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;
.source "AbstractReaderXSDFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    }
.end annotation


# static fields
.field private static final schemafactl:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/xml/validation/SchemaFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->schemafactl:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)V
    .locals 1
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "systemid"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 315
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromFile(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 316
    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "systemid"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 275
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromString(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 276
    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)V
    .locals 1
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "systemid"    # [Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 295
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromURL(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 296
    return-void
.end method

.method public varargs constructor <init>(Ljavax/xml/parsers/SAXParserFactory;Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)V
    .locals 1
    .param p1, "fac"    # Ljavax/xml/parsers/SAXParserFactory;
    .param p2, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p3, "sources"    # [Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 335
    invoke-static {p2, p3}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/sax/AbstractReaderSchemaFactory;-><init>(Ljavax/xml/parsers/SAXParserFactory;Ljavax/xml/validation/Schema;)V

    .line 336
    return-void
.end method

.method private static final varargs getSchemaFromFile(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/io/File;)Ljavax/xml/validation/Schema;
    .locals 4
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "systemID"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 156
    if-eqz p1, :cond_3

    .line 159
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 163
    array-length v0, p1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    .line 164
    .local v0, "sources":[Ljavax/xml/transform/Source;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 165
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 168
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    aput-object v2, v0, v1

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot specify a null SystemID"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v1

    return-object v1

    .line 160
    .end local v0    # "sources":[Ljavax/xml/transform/Source;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot specify a null input array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final varargs getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 5
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "sources"    # [Ljavax/xml/transform/Source;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 234
    if-eqz p1, :cond_3

    .line 237
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 242
    :try_start_0
    sget-object v0, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->schemafactl:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/validation/SchemaFactory;

    .line 243
    .local v1, "sfac":Ljavax/xml/validation/SchemaFactory;
    if-nez v1, :cond_0

    .line 244
    invoke-interface {p0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;->getSchemaFactory()Ljavax/xml/validation/SchemaFactory;

    move-result-object v2

    move-object v1, v2

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 247
    :cond_0
    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1, p1}, Ljavax/xml/validation/SchemaFactory;->newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v0

    return-object v0

    .line 248
    :cond_1
    new-instance v0, Lorg/jdom2/JDOMException;

    const-string v2, "Unable to create XSDSchema validator."

    invoke-direct {v0, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "sfp":Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .end local p1    # "sources":[Ljavax/xml/transform/Source;
    throw v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "sfac":Ljavax/xml/validation/SchemaFactory;
    .restart local p0    # "sfp":Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .restart local p1    # "sources":[Ljavax/xml/transform/Source;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lorg/jdom2/JDOMException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create a Schema for Sources "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 238
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v1    # "msg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You need at least one XSD Source for an XML Schema validator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot specify a null input array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final varargs getSchemaFromString(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/lang/String;)Ljavax/xml/validation/Schema;
    .locals 4
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "systemID"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 127
    if-eqz p1, :cond_3

    .line 130
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 134
    array-length v0, p1

    new-array v0, v0, [Ljavax/xml/transform/Source;

    .line 135
    .local v0, "urls":[Ljavax/xml/transform/Source;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 136
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 139
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    aget-object v3, p1, v1

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Cannot specify a null SystemID"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v0}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v1

    return-object v1

    .line 131
    .end local v0    # "urls":[Ljavax/xml/transform/Source;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot specify a null input array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final varargs getSchemaFromURL(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljava/net/URL;)Ljavax/xml/validation/Schema;
    .locals 8
    .param p0, "sfp"    # Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .param p1, "systemID"    # [Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 185
    if-eqz p1, :cond_7

    .line 188
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 192
    array-length v0, p1

    new-array v0, v0, [Ljava/io/InputStream;

    .line 194
    .local v0, "streams":[Ljava/io/InputStream;
    :try_start_0
    array-length v1, p1

    new-array v1, v1, [Ljavax/xml/transform/Source;

    .line 195
    .local v1, "sources":[Ljavax/xml/transform/Source;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 196
    aget-object v3, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 199
    const/4 v3, 0x0

    .line 201
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    .line 205
    nop

    .line 206
    :try_start_2
    aput-object v3, v0, v2

    .line 207
    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    aput-object v4, v1, v2

    .line 195
    .end local v3    # "is":Ljava/io/InputStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lorg/jdom2/JDOMException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to read Schema URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "streams":[Ljava/io/InputStream;
    .end local p0    # "sfp":Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .end local p1    # "systemID":[Ljava/net/URL;
    throw v5

    .line 197
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "streams":[Ljava/io/InputStream;
    .restart local p0    # "sfp":Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .restart local p1    # "systemID":[Ljava/net/URL;
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Cannot specify a null SystemID"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "streams":[Ljava/io/InputStream;
    .end local p0    # "sfp":Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .end local p1    # "systemID":[Ljava/net/URL;
    throw v3

    .line 209
    .end local v2    # "i":I
    .restart local v0    # "streams":[Ljava/io/InputStream;
    .restart local p0    # "sfp":Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;
    .restart local p1    # "systemID":[Ljava/net/URL;
    :cond_1
    invoke-static {p0, v1}, Lorg/jdom2/input/sax/AbstractReaderXSDFactory;->getSchemaFromSource(Lorg/jdom2/input/sax/AbstractReaderXSDFactory$SchemaFactoryProvider;[Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    move-object v3, v0

    .local v3, "arr$":[Ljava/io/InputStream;
    array-length v4, v3

    .local v4, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 212
    .local v6, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 214
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 217
    goto :goto_2

    .line 215
    :catch_1
    move-exception v7

    .line 211
    .end local v6    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "arr$":[Ljava/io/InputStream;
    .end local v4    # "len$":I
    .end local v5    # "i$":I
    :cond_3
    return-object v2

    .end local v1    # "sources":[Ljavax/xml/transform/Source;
    :catchall_0
    move-exception v1

    move-object v2, v0

    .local v2, "arr$":[Ljava/io/InputStream;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_3
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 212
    .local v5, "is":Ljava/io/InputStream;
    if-eqz v5, :cond_4

    .line 214
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 217
    goto :goto_4

    .line 215
    :catch_2
    move-exception v6

    .line 211
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v2    # "arr$":[Ljava/io/InputStream;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_5
    throw v1

    .line 189
    .end local v0    # "streams":[Ljava/io/InputStream;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You need at least one XSD source for an XML Schema validator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot specify a null input array"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
