.class public Lorg/jdom2/input/SAXBuilder;
.super Ljava/lang/Object;
.source "SAXBuilder.java"

# interfaces
.implements Lorg/jdom2/input/sax/SAXEngine;


# static fields
.field private static final DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

.field private static final DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;


# instance fields
.field private engine:Lorg/jdom2/input/sax/SAXEngine;

.field private expand:Z

.field private final features:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

.field private ignoringBoundaryWhite:Z

.field private ignoringWhite:Z

.field private jdomfac:Lorg/jdom2/JDOMFactory;

.field private final properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

.field private reuseParser:Z

.field private saxDTDHandler:Lorg/xml/sax/DTDHandler;

.field private saxEntityResolver:Lorg/xml/sax/EntityResolver;

.field private saxErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private saxXMLFilter:Lorg/xml/sax/XMLFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;

    invoke-direct {v0}, Lorg/jdom2/input/sax/DefaultSAXHandlerFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 150
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    sput-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "saxDriverClass"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "saxDriverClass"    # Ljava/lang/String;
    .param p2, "validate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    new-instance v0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;

    invoke-direct {v0, p2, p1}, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;-><init>(ZLjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V
    .locals 1
    .param p1, "readersouce"    # Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 310
    return-void
.end method

.method public constructor <init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V
    .locals 3
    .param p1, "xmlreaderfactory"    # Lorg/jdom2/input/sax/XMLReaderJDOMFactory;
    .param p2, "handlerfactory"    # Lorg/jdom2/input/sax/SAXHandlerFactory;
    .param p3, "jdomfactory"    # Lorg/jdom2/JDOMFactory;

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 164
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 169
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    .line 181
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    .line 184
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 187
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 190
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 193
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 196
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    .line 199
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    .line 202
    iput-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 205
    iput-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    .line 208
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 338
    if-nez p1, :cond_0

    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 341
    if-nez p2, :cond_1

    sget-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 344
    if-nez p3, :cond_2

    sget-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTJDOMFAC:Lorg/jdom2/JDOMFactory;

    goto :goto_2

    :cond_2
    move-object v0, p3

    :goto_2
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 347
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "validate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/jdom2/input/SAXBuilder;-><init>(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;Lorg/jdom2/input/sax/SAXHandlerFactory;Lorg/jdom2/JDOMFactory;)V

    .line 248
    return-void
.end method

.method private getEngine()Lorg/jdom2/input/sax/SAXEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 900
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    if-eqz v0, :cond_0

    .line 901
    return-object v0

    .line 904
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->buildEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 905
    return-object v0
.end method

.method private internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "value"    # Z
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 1020
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1027
    nop

    .line 1028
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " feature not recognized for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1021
    .end local v0    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v0

    .line 1022
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " feature not supported for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 1039
    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    nop

    .line 1047
    return-void

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Lorg/xml/sax/SAXNotRecognizedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property not recognized for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1040
    .end local v0    # "e":Lorg/xml/sax/SAXNotRecognizedException;
    :catch_1
    move-exception v0

    .line 1041
    .local v0, "e":Lorg/xml/sax/SAXNotSupportedException;
    new-instance v1, Lorg/jdom2/JDOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property not supported for SAX driver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public build(Ljava/io/File;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/File;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1119
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1118
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1119
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public build(Ljava/io/InputStream;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1091
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/InputStream;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1094
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1093
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1094
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1168
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1171
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1170
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1171
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public build(Ljava/io/Reader;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1196
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1199
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1198
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1199
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "characterStream"    # Ljava/io/Reader;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1227
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1230
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1229
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1230
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public build(Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 6
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1261
    if-eqz p1, :cond_4

    .line 1266
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/lang/String;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1300
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1299
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1267
    :catch_0
    move-exception v1

    .line 1280
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1281
    .local v2, "len":I
    const/4 v3, 0x0

    .line 1282
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1283
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1285
    :cond_1
    if-ge v3, v2, :cond_2

    const/16 v4, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1287
    new-instance v4, Ljava/net/MalformedURLException;

    const-string v5, "SAXBuilder.build(String) expects the String to be a systemID, but in this instance it appears to be actual XML data."

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v4, "mx":Ljava/net/MalformedURLException;
    invoke-virtual {v4, v1}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1294
    nop

    .end local p1    # "systemId":Ljava/lang/String;
    throw v4

    .line 1297
    .end local v4    # "mx":Ljava/net/MalformedURLException;
    .restart local p1    # "systemId":Ljava/lang/String;
    :cond_2
    nop

    .end local p1    # "systemId":Ljava/lang/String;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "len":I
    .end local v3    # "i":I
    .restart local p1    # "systemId":Ljava/lang/String;
    :goto_1
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_3

    .line 1300
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_3
    throw v1

    .line 1262
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Unable to build a URI from a null systemID."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build(Ljava/net/URL;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1141
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Ljava/net/URL;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1144
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1143
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1144
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "in"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/jdom2/input/SAXBuilder;->getEngine()Lorg/jdom2/input/sax/SAXEngine;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/jdom2/input/sax/SAXEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1067
    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_0

    .line 1068
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_0
    return-object v1

    .line 1067
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    if-nez v2, :cond_1

    .line 1068
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    :cond_1
    throw v1
.end method

.method public buildEngine()Lorg/jdom2/input/sax/SAXEngine;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    invoke-interface {v0, v1}, Lorg/jdom2/input/sax/SAXHandlerFactory;->createSAXHandler(Lorg/jdom2/JDOMFactory;)Lorg/jdom2/input/sax/SAXHandler;

    move-result-object v0

    .line 850
    .local v0, "contentHandler":Lorg/jdom2/input/sax/SAXHandler;
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    invoke-virtual {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->setExpandEntities(Z)V

    .line 851
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    invoke-virtual {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->setIgnoringElementContentWhitespace(Z)V

    .line 852
    iget-boolean v1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    invoke-virtual {v0, v1}, Lorg/jdom2/input/sax/SAXHandler;->setIgnoringBoundaryWhitespace(Z)V

    .line 854
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 856
    .local v1, "parser":Lorg/xml/sax/XMLReader;
    invoke-virtual {p0, v1, v0}, Lorg/jdom2/input/SAXBuilder;->configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;)V

    .line 857
    iget-object v2, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v2}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->isValidating()Z

    move-result v2

    .line 859
    .local v2, "valid":Z
    new-instance v3, Lorg/jdom2/input/sax/SAXBuilderEngine;

    invoke-direct {v3, v1, v0, v2}, Lorg/jdom2/input/sax/SAXBuilderEngine;-><init>(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;Z)V

    return-object v3
.end method

.method protected configureParser(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;)V
    .locals 7
    .param p1, "parser"    # Lorg/xml/sax/XMLReader;
    .param p2, "contentHandler"    # Lorg/jdom2/input/sax/SAXHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 931
    const-string v0, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 933
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v1, :cond_0

    .line 934
    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 937
    :cond_0
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v1, :cond_1

    .line 938
    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 943
    :goto_0
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v1, :cond_2

    .line 944
    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_1

    .line 946
    :cond_2
    new-instance v1, Lorg/jdom2/input/sax/BuilderErrorHandler;

    invoke-direct {v1}, Lorg/jdom2/input/sax/BuilderErrorHandler;-><init>()V

    invoke-interface {p1, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 949
    :goto_1
    const/4 v1, 0x0

    .line 952
    .local v1, "success":Z
    :try_start_0
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v2, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    const/4 v1, 0x1

    .line 959
    :goto_2
    goto :goto_3

    .line 957
    :catch_0
    move-exception v2

    goto :goto_3

    .line 955
    :catch_1
    move-exception v2

    goto :goto_2

    .line 962
    :goto_3
    if-nez v1, :cond_3

    .line 964
    :try_start_1
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-interface {p1, v2, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 966
    const/4 v1, 0x1

    .line 971
    :goto_4
    goto :goto_5

    .line 969
    :catch_2
    move-exception v2

    goto :goto_5

    .line 967
    :catch_3
    move-exception v2

    goto :goto_4

    .line 975
    :cond_3
    :goto_5
    iget-object v2, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 976
    .local v3, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5, v6}, Lorg/jdom2/input/SAXBuilder;->internalSetFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;ZLjava/lang/String;)V

    .line 977
    .end local v3    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_6

    .line 980
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 981
    .local v3, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p1, v4, v5, v6}, Lorg/jdom2/input/SAXBuilder;->internalSetProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    .end local v3    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_7

    .line 992
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_2
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iget-boolean v3, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    if-eq v2, v3, :cond_6

    .line 993
    invoke-interface {p1, v0, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_4

    .line 996
    :cond_6
    goto :goto_8

    .line 995
    :catch_4
    move-exception v0

    .line 999
    :goto_8
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    if-nez v0, :cond_7

    .line 1001
    :try_start_3
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, v0, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1003
    const/4 v1, 0x1

    .line 1008
    :goto_9
    goto :goto_a

    .line 1006
    :catch_5
    move-exception v0

    goto :goto_a

    .line 1004
    :catch_6
    move-exception v0

    goto :goto_9

    .line 1011
    :cond_7
    :goto_a
    return-void
.end method

.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v0}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 874
    .local v0, "parser":Lorg/xml/sax/XMLReader;
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 877
    .local v1, "root":Lorg/xml/sax/XMLFilter;
    :goto_0
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    instance-of v2, v2, Lorg/xml/sax/XMLFilter;

    if-eqz v2, :cond_0

    .line 878
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/xml/sax/XMLFilter;

    goto :goto_0

    .line 880
    :cond_0
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 883
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 886
    .end local v1    # "root":Lorg/xml/sax/XMLFilter;
    :cond_1
    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getDriverClass()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    instance-of v1, v0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/XMLReaderSAX2Factory;->getDriverClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 364
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 533
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    return v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->getJDOMFactory()Lorg/jdom2/JDOMFactory;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .line 631
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    return v0
.end method

.method public getJDOMFactory()Lorg/jdom2/JDOMFactory;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public getReuseParser()Z
    .locals 1

    .line 732
    iget-boolean v0, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    return v0
.end method

.method public getSAXHandlerFactory()Lorg/jdom2/input/sax/SAXHandlerFactory;
    .locals 1

    .line 442
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    return-object v0
.end method

.method public getValidation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 465
    invoke-virtual {p0}, Lorg/jdom2/input/SAXBuilder;->isValidating()Z

    move-result v0

    return v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public getXMLReaderFactory()Lorg/jdom2/input/sax/XMLReaderJDOMFactory;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    return-object v0
.end method

.method public isValidating()Z
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    invoke-interface {v0}, Lorg/jdom2/input/sax/XMLReaderJDOMFactory;->isValidating()Z

    move-result v0

    return v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 1
    .param p1, "dtdHandler"    # Lorg/xml/sax/DTDHandler;

    .line 589
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 591
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1
    .param p1, "entityResolver"    # Lorg/xml/sax/EntityResolver;

    .line 565
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 566
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 567
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1
    .param p1, "errorHandler"    # Lorg/xml/sax/ErrorHandler;

    .line 544
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 545
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 546
    return-void
.end method

.method public setExpandEntities(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .line 720
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->expand:Z

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 722
    return-void
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 398
    invoke-virtual {p0, p1}, Lorg/jdom2/input/SAXBuilder;->setJDOMFactory(Lorg/jdom2/JDOMFactory;)V

    .line 399
    return-void
.end method

.method public setFastReconfigure(Z)V
    .locals 0
    .param p1, "fastReconfigure"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 774
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 799
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->features:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 801
    return-void
.end method

.method public setIgnoringBoundaryWhitespace(Z)V
    .locals 1
    .param p1, "ignoringBoundaryWhite"    # Z

    .line 681
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringBoundaryWhite:Z

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 683
    return-void
.end method

.method public setIgnoringElementContentWhitespace(Z)V
    .locals 1
    .param p1, "ignoringWhite"    # Z

    .line 646
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->ignoringWhite:Z

    .line 647
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 648
    return-void
.end method

.method public setJDOMFactory(Lorg/jdom2/JDOMFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .line 409
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->jdomfac:Lorg/jdom2/JDOMFactory;

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 411
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 826
    iget-object v0, p0, Lorg/jdom2/input/SAXBuilder;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 828
    return-void
.end method

.method public setReuseParser(Z)V
    .locals 1
    .param p1, "reuseParser"    # Z

    .line 749
    iput-boolean p1, p0, Lorg/jdom2/input/SAXBuilder;->reuseParser:Z

    .line 750
    if-nez p1, :cond_0

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 753
    :cond_0
    return-void
.end method

.method public setSAXHandlerFactory(Lorg/jdom2/input/sax/SAXHandlerFactory;)V
    .locals 1
    .param p1, "factory"    # Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 453
    if-nez p1, :cond_0

    sget-object v0, Lorg/jdom2/input/SAXBuilder;->DEFAULTSAXHANDLERFAC:Lorg/jdom2/input/sax/SAXHandlerFactory;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->handlerfac:Lorg/jdom2/input/sax/SAXHandlerFactory;

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 455
    return-void
.end method

.method public setValidation(Z)V
    .locals 1
    .param p1, "validate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 515
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->DTDVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    :goto_0
    invoke-virtual {p0, v0}, Lorg/jdom2/input/SAXBuilder;->setXMLReaderFactory(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V

    .line 518
    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 1
    .param p1, "xmlFilter"    # Lorg/xml/sax/XMLFilter;

    .line 618
    iput-object p1, p0, Lorg/jdom2/input/SAXBuilder;->saxXMLFilter:Lorg/xml/sax/XMLFilter;

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 620
    return-void
.end method

.method public setXMLReaderFactory(Lorg/jdom2/input/sax/XMLReaderJDOMFactory;)V
    .locals 1
    .param p1, "rfac"    # Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 430
    if-nez p1, :cond_0

    sget-object v0, Lorg/jdom2/input/sax/XMLReaders;->NONVALIDATING:Lorg/jdom2/input/sax/XMLReaders;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->readerfac:Lorg/jdom2/input/sax/XMLReaderJDOMFactory;

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jdom2/input/SAXBuilder;->engine:Lorg/jdom2/input/sax/SAXEngine;

    .line 434
    return-void
.end method
