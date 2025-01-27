.class public Lorg/jpos/iso/packager/LogPackager;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LogPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;
.implements Lorg/jpos/util/LogSource;


# static fields
.field public static final ID_ATTR:Ljava/lang/String; = "id"

.field public static final ISOFIELD_TAG:Ljava/lang/String; = "field"

.field public static final ISOMSG_TAG:Ljava/lang/String; = "isomsg"

.field public static final LOG_TAG:Ljava/lang/String; = "log"

.field public static final TYPE_ATTR:Ljava/lang/String; = "type"

.field public static final TYPE_BINARY:Ljava/lang/String; = "binary"

.field public static final TYPE_BITMAP:Ljava/lang/String; = "bitmap"

.field public static final VALUE_ATTR:Ljava/lang/String; = "value"


# instance fields
.field protected logger:Lorg/jpos/util/Logger;

.field private out:Ljava/io/ByteArrayOutputStream;

.field private p:Ljava/io/PrintStream;

.field private reader:Lorg/xml/sax/XMLReader;

.field protected realm:Ljava/lang/String;

.field private stk:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->logger:Lorg/jpos/util/Logger;

    .line 47
    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->realm:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->reader:Lorg/xml/sax/XMLReader;

    .line 64
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->out:Ljava/io/ByteArrayOutputStream;

    .line 65
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->out:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->p:Ljava/io/PrintStream;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    .line 68
    :try_start_0
    const-string v0, "sax.parser"

    const-string v1, "org.apache.crimson.parser.XMLReaderImpl"

    .line 69
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->reader:Lorg/xml/sax/XMLReader;

    .line 72
    const-string v1, "http://xml.org/sax/features/validation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 73
    iget-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 74
    iget-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    nop

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 247
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0}, Lorg/jpos/iso/ISOMsg;-><init>()V

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

    .line 223
    const-string v0, "isomsg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 225
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "fldNumber"    # I

    .line 231
    const-string v0, "<notavailable/>"

    return-object v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/jpos/iso/packager/LogPackager;->realm:Ljava/lang/String;

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

    .line 80
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 82
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 86
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    monitor-enter p0
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    :try_start_1
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->p:Ljava/io/PrintStream;

    const-string v3, "<log>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->p:Ljava/io/PrintStream;

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Lorg/jpos/iso/ISOComponent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->p:Ljava/io/PrintStream;

    const-string v3, "</log>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 91
    .local v2, "b":[B
    iget-object v3, p0, Lorg/jpos/iso/packager/LogPackager;->out:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 92
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v3, p0, Lorg/jpos/iso/packager/LogPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    :cond_0
    nop

    .line 100
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 95
    return-object v2

    .line 92
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

    .line 83
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

    .line 100
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :try_start_5
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 98
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 100
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :goto_0
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 101
    throw v1
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 237
    iput-object p1, p0, Lorg/jpos/iso/packager/LogPackager;->logger:Lorg/jpos/util/Logger;

    .line 238
    iput-object p2, p0, Lorg/jpos/iso/packager/LogPackager;->realm:Ljava/lang/String;

    .line 239
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

    .line 176
    const/4 v0, -0x1

    .line 178
    .local v0, "fieldNumber":I
    :try_start_0
    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 182
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    .line 184
    :cond_0
    :goto_1
    :try_start_2
    const-string v2, "isomsg"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 185
    if-ltz v0, :cond_2

    .line 186
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    new-instance v2, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v2, v0}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    .line 190
    .local v2, "inner":Lorg/jpos/iso/ISOMsg;
    iget-object v3, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v3, v2}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 191
    iget-object v3, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    nop

    .end local v2    # "inner":Lorg/jpos/iso/ISOMsg;
    goto :goto_2

    .line 187
    :cond_1
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "inner without outter"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fieldNumber":I
    .end local p1    # "ns":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "qName":Ljava/lang/String;
    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    throw v2

    .line 193
    .restart local v0    # "fieldNumber":I
    .restart local p1    # "ns":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "qName":Ljava/lang/String;
    .restart local p4    # "atts":Lorg/xml/sax/Attributes;
    :cond_2
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    new-instance v4, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v4, v3}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 195
    :cond_3
    const-string v2, "field"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 197
    .local v2, "m":Lorg/jpos/iso/ISOMsg;
    const-string v4, "value"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 198
    .local v4, "value":Ljava/lang/String;
    const-string v5, "type"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "type":Ljava/lang/String;
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 201
    const-string v6, "binary"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 202
    new-instance v6, Lorg/jpos/iso/ISOBinaryField;

    .line 205
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    .line 204
    invoke-static {v7, v3, v8}, Lorg/jpos/iso/ISOUtil;->hex2byte([BII)[B

    move-result-object v3

    invoke-direct {v6, v0, v3}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    .line 202
    invoke-virtual {v2, v6}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_2

    .line 211
    :cond_4
    new-instance v3, Lorg/jpos/iso/ISOField;

    invoke-direct {v3, v0, v4}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_2

    .line 200
    :cond_5
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string v6, "invalid field"

    invoke-direct {v3, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fieldNumber":I
    .end local p1    # "ns":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "qName":Ljava/lang/String;
    .end local p4    # "atts":Lorg/xml/sax/Attributes;
    throw v3
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    .restart local v0    # "fieldNumber":I
    .restart local p1    # "ns":Ljava/lang/String;
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "qName":Ljava/lang/String;
    .restart local p4    # "atts":Lorg/xml/sax/Attributes;
    :cond_6
    :goto_2
    nop

    .line 218
    return-void

    .line 214
    :catch_1
    move-exception v1

    .line 215
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
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 109
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_1
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_2

    .line 113
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 114
    :try_start_2
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 130
    :catch_0
    move-exception v1

    goto :goto_1

    .line 127
    :catch_1
    move-exception v1

    goto :goto_2

    .line 124
    :catch_2
    move-exception v1

    goto :goto_3

    .line 116
    :cond_0
    :try_start_3
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 117
    .local v1, "src":Lorg/xml/sax/InputSource;
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->reader:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 118
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v2, :cond_1

    .line 119
    :try_start_4
    move-object v2, p1

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    .line 120
    .local v2, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v3, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v2, v3}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 121
    iget-object v3, p0, Lorg/jpos/iso/packager/LogPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v3, :cond_1

    .line 122
    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    .end local v1    # "src":Lorg/xml/sax/InputSource;
    .end local v2    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_1
    :try_start_5
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 135
    goto :goto_5

    .line 110
    .end local p0    # "this":Lorg/jpos/iso/packager/LogPackager;
    :cond_2
    :try_start_6
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_6
    .catch Lorg/jpos/iso/ISOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 134
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 130
    :catch_3
    move-exception v1

    .line 131
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_7
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 134
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :try_start_8
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 127
    :catch_4
    move-exception v1

    .line 128
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_9
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 124
    :catch_5
    move-exception v1

    .line 125
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :goto_3
    :try_start_b
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 134
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    :try_start_c
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 135
    :goto_4
    nop

    .line 136
    :goto_5
    array-length v1, p2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    monitor-exit p0

    return v1

    .line 134
    :goto_6
    :try_start_d
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 135
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 106
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_0
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 144
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_1
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_2

    .line 148
    :goto_0
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_0

    .line 149
    :try_start_2
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 164
    :catch_0
    move-exception v1

    goto :goto_1

    .line 161
    :catch_1
    move-exception v1

    goto :goto_2

    .line 158
    :catch_2
    move-exception v1

    goto :goto_3

    .line 151
    :cond_0
    :try_start_3
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->reader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 152
    iget-object v1, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_1

    .line 153
    :try_start_4
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 154
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->stk:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 155
    iget-object v2, p0, Lorg/jpos/iso/packager/LogPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 168
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_1
    :try_start_5
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 169
    goto :goto_5

    .line 145
    .end local p0    # "this":Lorg/jpos/iso/packager/LogPackager;
    :cond_2
    :try_start_6
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_6
    .catch Lorg/jpos/iso/ISOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 168
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v1

    goto :goto_6

    .line 164
    :catch_3
    move-exception v1

    .line 165
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_1
    :try_start_7
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 168
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :try_start_8
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 161
    :catch_4
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_9
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 168
    .end local v1    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_4

    .line 158
    :catch_5
    move-exception v1

    .line 159
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :goto_3
    :try_start_b
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 168
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    :try_start_c
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 169
    :goto_4
    nop

    .line 170
    :goto_5
    monitor-exit p0

    return-void

    .line 168
    :goto_6
    :try_start_d
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 169
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 141
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
