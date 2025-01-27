.class public Lorg/jpos/iso/packager/GenericPackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "GenericPackager.java"

# interfaces
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/iso/packager/GenericPackagerParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;,
        Lorg/jpos/iso/packager/GenericPackager$GenericEntityResolver;
    }
.end annotation


# instance fields
.field private bitmapField:I

.field private emitBitmap:Z

.field private filename:Ljava/lang/String;

.field private firstField:Ljava/lang/String;

.field private maxValidField:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 97
    const/16 v0, 0x80

    iput v0, p0, Lorg/jpos/iso/packager/GenericPackager;->maxValidField:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericPackager;->emitBitmap:Z

    .line 99
    iput v0, p0, Lorg/jpos/iso/packager/GenericPackager;->bitmapField:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->firstField:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 97
    const/16 v0, 0x80

    iput v0, p0, Lorg/jpos/iso/packager/GenericPackager;->maxValidField:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericPackager;->emitBitmap:Z

    .line 99
    iput v0, p0, Lorg/jpos/iso/packager/GenericPackager;->bitmapField:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->firstField:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->readFile(Ljava/io/InputStream;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    .line 97
    const/16 v0, 0x80

    iput v0, p0, Lorg/jpos/iso/packager/GenericPackager;->maxValidField:I

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericPackager;->emitBitmap:Z

    .line 99
    iput v0, p0, Lorg/jpos/iso/packager/GenericPackager;->bitmapField:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->firstField:Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lorg/jpos/iso/packager/GenericPackager;->filename:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->readFile(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/iso/packager/GenericPackager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/iso/packager/GenericPackager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/packager/GenericPackager;->instantiate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 244
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    goto :goto_0

    .line 245
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Lorg/xml/sax/SAXException;
    nop

    .line 247
    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.apache.crimson.parser.XMLReaderImpl"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v1

    move-object v0, v1

    .line 253
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    :goto_0
    const/4 v1, 0x1

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {v0, v2, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 254
    new-instance v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;

    invoke-direct {v1, p0}, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;-><init>(Lorg/jpos/iso/packager/GenericPackager;)V

    .line 255
    .local v1, "handler":Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 256
    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 257
    new-instance v2, Lorg/jpos/iso/packager/GenericPackager$GenericEntityResolver;

    invoke-direct {v2}, Lorg/jpos/iso/packager/GenericPackager$GenericEntityResolver;-><init>()V

    invoke-interface {v0, v2}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 258
    return-object v0
.end method

.method private instantiate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "clazz"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 573
    if-eqz p2, :cond_0

    .line 574
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "obj":Ljava/lang/Object;
    goto :goto_0

    .line 576
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 578
    .restart local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lorg/jpos/iso/packager/GenericPackager;->emitBitmap:Z

    return v0
.end method

.method protected getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    iget v1, p0, Lorg/jpos/iso/packager/GenericPackager;->bitmapField:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lorg/jpos/iso/ISOBasePackager;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager;->filename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 265
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getFirstField()I
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->firstField:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 554
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 555
    :cond_0
    invoke-super {p0}, Lorg/jpos/iso/ISOBasePackager;->getFirstField()I

    move-result v0

    return v0
.end method

.method protected getMaxValidField()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/jpos/iso/packager/GenericPackager;->maxValidField:I

    return v0
.end method

.method public readFile(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 195
    :try_start_0
    const-string v0, "jar:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 196
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 197
    .local v0, "cl":Ljava/lang/ClassLoader;
    nop

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v1}, Lorg/jpos/iso/packager/GenericPackager;->readFile(Ljava/io/InputStream;)V

    .line 200
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    nop

    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 144
    const-string v0, "packager-config"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->filename:Ljava/lang/String;

    .line 145
    if-eqz v0, :cond_1

    .line 150
    :try_start_0
    const-string v0, "packager-logger"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "loggerName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 152
    invoke-static {v0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v1

    const-string v2, "packager-realm"

    .line 153
    invoke-interface {p1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {p0, v1, v2}, Lorg/jpos/iso/packager/GenericPackager;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 156
    :cond_0
    const-string v1, "packager-log-fieldname"

    iget-boolean v2, p0, Lorg/jpos/iso/packager/GenericPackager;->logFieldName:Z

    invoke-interface {p1, v1, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jpos/iso/packager/GenericPackager;->logFieldName:Z

    .line 158
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager;->filename:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/jpos/iso/packager/GenericPackager;->readFile(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "loggerName":Ljava/lang/String;
    nop

    .line 163
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 146
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    :cond_1
    new-instance v0, Lorg/jpos/core/ConfigurationException;

    const-string v1, "packager-config property cannot be null"

    invoke-direct {v0, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 8
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 274
    const-string v0, "maxValidField"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "maxField":Ljava/lang/String;
    const-string v1, "emitBitmap"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "emitBmap":Ljava/lang/String;
    const-string v2, "bitmapField"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "bmapfield":Ljava/lang/String;
    const-string v3, "thirdBitmapField"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 278
    .local v3, "thirdbmf":Ljava/lang/String;
    const-string v4, "firstField"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/iso/packager/GenericPackager;->firstField:Ljava/lang/String;

    .line 279
    const-string v4, "headerLength"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "headerLenStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 282
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/jpos/iso/packager/GenericPackager;->maxValidField:I

    .line 284
    :cond_0
    if-eqz v1, :cond_1

    .line 285
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/jpos/iso/packager/GenericPackager;->emitBitmap:Z

    .line 287
    :cond_1
    if-eqz v2, :cond_2

    .line 288
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/jpos/iso/packager/GenericPackager;->bitmapField:I

    .line 291
    :cond_2
    if-eqz v3, :cond_3

    .line 292
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/jpos/iso/packager/GenericPackager;->setThirdBitmapField(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 293
    :catch_0
    move-exception v5

    .line 296
    .local v5, "e":Lorg/jpos/iso/ISOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    .end local v5    # "e":Lorg/jpos/iso/ISOException;
    :cond_3
    :goto_0
    iget-object v5, p0, Lorg/jpos/iso/packager/GenericPackager;->firstField:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 300
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 303
    :cond_4
    if-eqz v4, :cond_5

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lorg/jpos/iso/packager/GenericPackager;->setHeaderLength(I)V

    .line 305
    :cond_5
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 5
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 229
    invoke-super {p0, p1, p2}, Lorg/jpos/iso/ISOBasePackager;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    if-eqz v0, :cond_1

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v1, v1, v0

    instance-of v1, v1, Lorg/jpos/iso/ISOMsgFieldPackager;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v1, v1, v0

    check-cast v1, Lorg/jpos/iso/ISOMsgFieldPackager;

    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsgFieldPackager;->getISOMsgPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v1

    .line 234
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lorg/jpos/util/LogSource;

    if-eqz v2, :cond_0

    .line 235
    move-object v2, v1

    check-cast v2, Lorg/jpos/util/LogSource;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-fld-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/jpos/util/LogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 231
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
