.class public Lorg/jpos/iso/packager/XMLPackager;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;
.implements Lorg/jpos/util/LogSource;


# static fields
.field public static final ASCII_ENCODING:Ljava/lang/String; = "ascii"

.field public static final CURRENCY_ATTR:Ljava/lang/String; = "currency"

.field public static final ENCODING_ATTR:Ljava/lang/String; = "encoding"

.field public static final HEADER_TAG:Ljava/lang/String; = "header"

.field public static final ID_ATTR:Ljava/lang/String; = "id"

.field public static final ISOFIELD_TAG:Ljava/lang/String; = "field"

.field public static final ISOMSG_TAG:Ljava/lang/String; = "isomsg"

.field public static final TYPE_AMOUNT:Ljava/lang/String; = "amount"

.field public static final TYPE_ATTR:Ljava/lang/String; = "type"

.field public static final TYPE_BINARY:Ljava/lang/String; = "binary"

.field public static final TYPE_BITMAP:Ljava/lang/String; = "bitmap"

.field public static final VALUE_ATTR:Ljava/lang/String; = "value"


# instance fields
.field private binaryFields:[I

.field protected logger:Lorg/jpos/util/Logger;

.field private out:Ljava/io/ByteArrayOutputStream;

.field private p:Ljava/io/PrintStream;

.field private reader:Lorg/xml/sax/XMLReader;

.field protected realm:Ljava/lang/String;

.field private stk:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->logger:Lorg/jpos/util/Logger;

    .line 49
    iput-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->realm:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->binaryFields:[I

    .line 73
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->out:Ljava/io/ByteArrayOutputStream;

    .line 75
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->out:Ljava/io/ByteArrayOutputStream;

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v0, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->p:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 79
    :goto_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    .line 81
    :try_start_1
    invoke-virtual {p0}, Lorg/jpos/iso/packager/XMLPackager;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->reader:Lorg/xml/sax/XMLReader;

    .line 84
    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/packager/XMLPackager;->setXMLParserFeature(Ljava/lang/String;Z)V

    .line 85
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/jpos/iso/packager/XMLPackager;->setXMLParserFeature(Ljava/lang/String;Z)V

    .line 86
    const-string v1, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/packager/XMLPackager;->setXMLParserFeature(Ljava/lang/String;Z)V

    .line 87
    const-string v1, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {p0, v1, v0}, Lorg/jpos/iso/packager/XMLPackager;->setXMLParserFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 263
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 264
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/jpos/iso/ISOField;

    if-eqz v1, :cond_0

    .line 265
    move-object v1, v0

    check-cast v1, Lorg/jpos/iso/ISOField;

    .line 266
    .local v1, "f":Lorg/jpos/iso/ISOField;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 268
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOField;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    goto :goto_0

    .line 269
    :catch_0
    move-exception v3

    .line 271
    .local v3, "e":Lorg/jpos/iso/ISOException;
    :try_start_1
    invoke-virtual {v3}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jpos/iso/ISOField;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    goto :goto_0

    .line 272
    :catch_1
    move-exception v4

    .line 276
    .end local v1    # "f":Lorg/jpos/iso/ISOField;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "e":Lorg/jpos/iso/ISOException;
    :goto_0
    goto :goto_1

    .line 277
    :cond_0
    instance-of v1, v0, Lorg/jpos/iso/header/BaseHeader;

    if-eqz v1, :cond_2

    .line 278
    move-object v1, v0

    check-cast v1, Lorg/jpos/iso/header/BaseHeader;

    .line 279
    .local v1, "bh":Lorg/jpos/iso/header/BaseHeader;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 280
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/jpos/iso/header/BaseHeader;->isAsciiEncoding()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jpos/iso/header/BaseHeader;->unpack([B)I

    goto :goto_1

    .line 283
    :cond_1
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jpos/iso/header/BaseHeader;->unpack([B)I

    .line 286
    .end local v1    # "bh":Lorg/jpos/iso/header/BaseHeader;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 330
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    return-object v0
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 339
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    goto :goto_0

    .line 340
    .end local v0    # "reader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Lorg/xml/sax/SAXException;
    nop

    .line 342
    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.apache.crimson.parser.XMLReaderImpl"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v1

    move-object v0, v1

    .line 349
    .local v0, "reader":Lorg/xml/sax/XMLReader;
    :goto_0
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 350
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 351
    return-object v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 290
    const-string v0, "isomsg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 292
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "field"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 296
    :cond_2
    const-string v0, "header"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/header/BaseHeader;

    .line 298
    .local v0, "h":Lorg/jpos/iso/header/BaseHeader;
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 299
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v1, v0}, Lorg/jpos/iso/ISOMsg;->setHeader(Lorg/jpos/iso/ISOHeader;)V

    .line 301
    .end local v0    # "h":Lorg/jpos/iso/header/BaseHeader;
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_3
    :goto_0
    return-void
.end method

.method protected fixupBinary(Lorg/jpos/iso/ISOMsg;[I)V
    .locals 5
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p2, "bfields"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 305
    if-eqz p2, :cond_1

    .line 306
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 307
    .local v2, "f":I
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    .line 309
    .local v3, "c":Lorg/jpos/iso/ISOComponent;
    instance-of v4, v3, Lorg/jpos/iso/ISOField;

    if-eqz v4, :cond_0

    .line 310
    move-object v4, v3

    check-cast v4, Lorg/jpos/iso/ISOField;

    invoke-virtual {v4}, Lorg/jpos/iso/ISOField;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jpos/iso/ISOMsg;->set(I[B)V

    .line 306
    .end local v2    # "f":I
    .end local v3    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_1
    return-void
.end method

.method public varargs forceBinary([I)V
    .locals 0
    .param p1, "bfields"    # [I

    .line 94
    iput-object p1, p0, Lorg/jpos/iso/packager/XMLPackager;->binaryFields:[I

    .line 95
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "fldNumber"    # I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 327
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 100
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 104
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    monitor-enter p0
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->setDirection(I)V

    .line 106
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->p:Ljava/io/PrintStream;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/jpos/iso/ISOMsg;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 108
    .local v2, "b":[B
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 109
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :try_start_2
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    :cond_0
    nop

    .line 117
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 112
    return-object v2

    .line 109
    .end local v2    # "b":[B
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :try_start_4
    throw v2

    .line 101
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot pack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :try_start_5
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 115
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 117
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_0
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 118
    throw v1
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 320
    iput-object p1, p0, Lorg/jpos/iso/packager/XMLPackager;->logger:Lorg/jpos/util/Logger;

    .line 321
    iput-object p2, p0, Lorg/jpos/iso/packager/XMLPackager;->realm:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setXMLParserFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "fname"    # Ljava/lang/String;
    .param p2, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lorg/jpos/iso/packager/XMLPackager;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .param p1, "ns"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 202
    const/4 v0, -0x1

    .line 204
    .local v0, "fieldNumber":I
    :try_start_0
    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 207
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fieldNumber":I
    .end local p1    # "ns":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "qName":Ljava/lang/String;
    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    throw v3

    .line 212
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v0    # "fieldNumber":I
    .restart local p1    # "ns":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "qName":Ljava/lang/String;
    .restart local p4    # "atts":Lorg/xml/sax/Attributes;
    :cond_0
    :goto_0
    const-string v2, "isomsg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 213
    if-ltz v0, :cond_2

    .line 214
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 217
    new-instance v2, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v2, v0}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    .line 218
    .local v2, "inner":Lorg/jpos/iso/ISOMsg;
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v3, v2}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 219
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    nop

    .end local v2    # "inner":Lorg/jpos/iso/ISOMsg;
    goto/16 :goto_3

    .line 215
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "inner without outer"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fieldNumber":I
    .end local p1    # "ns":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "qName":Ljava/lang/String;
    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    throw v2

    .line 221
    .restart local v0    # "fieldNumber":I
    .restart local p1    # "ns":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "qName":Ljava/lang/String;
    .restart local p4    # "atts":Lorg/xml/sax/Attributes;
    :cond_2
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    new-instance v4, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v4, v3}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 223
    :cond_3
    const-string v2, "field"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 224
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 225
    .local v2, "m":Lorg/jpos/iso/ISOMsg;
    const-string v4, "value"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "value":Ljava/lang/String;
    const-string v5, "type"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "type":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 229
    if-nez v4, :cond_4

    const-string v6, ""

    goto :goto_1

    :cond_4
    move-object v6, v4

    :goto_1
    move-object v4, v6

    .line 232
    const-string v6, "binary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 233
    new-instance v6, Lorg/jpos/iso/ISOBinaryField;

    .line 236
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 235
    invoke-static {v7, v3, v8}, Lorg/jpos/iso/ISOUtil;->hex2byte([BII)[B

    move-result-object v3

    invoke-direct {v6, v0, v3}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    move-object v3, v6

    .local v3, "ic":Lorg/jpos/iso/ISOComponent;
    goto :goto_2

    .line 240
    .end local v3    # "ic":Lorg/jpos/iso/ISOComponent;
    :cond_5
    const-string v3, "amount"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    new-instance v3, Lorg/jpos/iso/ISOAmount;

    const-string v6, "currency"

    .line 243
    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/math/BigDecimal;

    invoke-direct {v7, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0, v6, v7}, Lorg/jpos/iso/ISOAmount;-><init>(IILjava/math/BigDecimal;)V

    .restart local v3    # "ic":Lorg/jpos/iso/ISOComponent;
    goto :goto_2

    .line 248
    .end local v3    # "ic":Lorg/jpos/iso/ISOComponent;
    :cond_6
    new-instance v3, Lorg/jpos/iso/ISOField;

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->stripUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v6}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .line 250
    .restart local v3    # "ic":Lorg/jpos/iso/ISOComponent;
    :goto_2
    invoke-virtual {v2, v3}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 251
    iget-object v6, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v6, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    nop

    .end local v2    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v3    # "ic":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    goto :goto_3

    .line 228
    .restart local v2    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_7
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v6, "invalid field"

    invoke-direct {v3, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fieldNumber":I
    .end local p1    # "ns":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "qName":Ljava/lang/String;
    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    throw v3

    .line 252
    .end local v2    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .restart local v0    # "fieldNumber":I
    .restart local p1    # "ns":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "qName":Ljava/lang/String;
    .restart local p4    # "atts":Lorg/xml/sax/Attributes;
    :cond_8
    const-string v2, "header"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 253
    new-instance v2, Lorg/jpos/iso/header/BaseHeader;

    invoke-direct {v2}, Lorg/jpos/iso/header/BaseHeader;-><init>()V

    .line 254
    .local v2, "bh":Lorg/jpos/iso/header/BaseHeader;
    const-string v3, "ascii"

    const-string v4, "encoding"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/jpos/iso/header/BaseHeader;->setAsciiEncoding(Z)V

    .line 255
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "bh":Lorg/jpos/iso/header/BaseHeader;
    :cond_9
    :goto_3
    nop

    .line 261
    return-void

    .line 257
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Lorg/jpos/iso/ISOException;
    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISOException unpacking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    monitor-enter p0

    .line 124
    :try_start_0
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 126
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_1
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_3

    .line 130
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 131
    :try_start_2
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    goto/16 :goto_4

    .line 154
    :catch_0
    move-exception v1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    goto :goto_2

    .line 148
    :catch_2
    move-exception v1

    goto :goto_3

    .line 133
    :cond_0
    :try_start_3
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 134
    .local v1, "src":Lorg/xml/sax/InputSource;
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 135
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    move-object v2, p1

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 139
    .local v2, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOMsg;

    .line 140
    .local v3, "m1":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v2, v3}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 141
    invoke-virtual {v3}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 143
    iget-object v4, p0, Lorg/jpos/iso/packager/XMLPackager;->binaryFields:[I

    invoke-virtual {p0, v2, v4}, Lorg/jpos/iso/packager/XMLPackager;->fixupBinary(Lorg/jpos/iso/ISOMsg;[I)V

    .line 145
    iget-object v4, p0, Lorg/jpos/iso/packager/XMLPackager;->logger:Lorg/jpos/util/Logger;
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    .line 146
    :try_start_4
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :cond_1
    :try_start_5
    array-length v4, p2
    :try_end_5
    .catch Lorg/jpos/iso/ISOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 158
    :try_start_6
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 147
    monitor-exit p0

    return v4

    .line 136
    .end local v2    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v3    # "m1":Lorg/jpos/iso/ISOMsg;
    .end local p0    # "this":Lorg/jpos/iso/packager/XMLPackager;
    :cond_2
    :try_start_7
    new-instance v2, Lorg/jpos/iso/ISOException;

    const-string v3, "error parsing"

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v2

    .line 127
    .end local v1    # "src":Lorg/xml/sax/InputSource;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :cond_3
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_7
    .catch Lorg/jpos/iso/ISOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 158
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 154
    :catch_3
    move-exception v1

    .line 155
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_8
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 156
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v2

    .line 151
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catch_4
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 153
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v2

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catch_5
    move-exception v1

    .line 149
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :goto_3
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 150
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 158
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_4
    :try_start_9
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 159
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 123
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 165
    :try_start_0
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 167
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_1
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_3

    .line 171
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 172
    :try_start_2
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 190
    :catch_0
    move-exception v1

    goto :goto_1

    .line 187
    :catch_1
    move-exception v1

    goto :goto_2

    .line 174
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->reader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 175
    iget-object v1, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 179
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/iso/packager/XMLPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 180
    .local v2, "m1":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 181
    invoke-virtual {v2}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 183
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->binaryFields:[I

    invoke-virtual {p0, v1, v3}, Lorg/jpos/iso/packager/XMLPackager;->fixupBinary(Lorg/jpos/iso/ISOMsg;[I)V

    .line 185
    iget-object v3, p0, Lorg/jpos/iso/packager/XMLPackager;->logger:Lorg/jpos/util/Logger;
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 186
    :try_start_4
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "m1":Lorg/jpos/iso/ISOMsg;
    :cond_1
    :try_start_5
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 195
    nop

    .line 196
    monitor-exit p0

    return-void

    .line 176
    .end local p0    # "this":Lorg/jpos/iso/packager/XMLPackager;
    :cond_2
    :try_start_6
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "error parsing"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1

    .line 168
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_3
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_6
    .catch Lorg/jpos/iso/ISOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 194
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 190
    :catch_2
    move-exception v1

    .line 191
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_7
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 192
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v2

    .line 187
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 188
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :goto_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 189
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 194
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_8
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 195
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 164
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
