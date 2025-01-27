.class public Lcom/bea/xml/stream/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"


# instance fields
.field protected currentChar:C

.field protected currentLine:I

.field private readEndDocument:Z

.field protected reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    .line 46
    iput-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    .line 46
    iput-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/EventScanner;->setReader(Ljava/io/Reader;)V

    .line 52
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/bea/xml/stream/EventScanner;

    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    .line 384
    .local v0, "reader":Lcom/bea/xml/stream/EventScanner;
    :goto_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->readElement()Lcom/bea/xml/stream/EventState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method


# virtual methods
.method public endDocumentIsPresent()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    return v0
.end method

.method protected getChar()C
    .locals 1

    .line 82
    iget-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    return v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 248
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 249
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 250
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 243
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 244
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 245
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/bea/xml/stream/EventScanner;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected read()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/bea/xml/stream/EventScanner;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    .line 94
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    .line 95
    :cond_0
    return v0
.end method

.method protected read(C)C
    .locals 3
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    move-result v0

    return v0

    .line 102
    :cond_0
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unexpected character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-char v2, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' , expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\' at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bea/xml/stream/EventScanner;->currentLine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected read(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public readAttribute()Ljavax/xml/stream/events/Attribute;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 293
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 294
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "type":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 296
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readName()Ljavax/xml/namespace/QName;

    move-result-object v2

    .line 297
    .local v2, "n":Ljavax/xml/namespace/QName;
    const-string v3, "=["

    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/EventScanner;->read(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 300
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 301
    const-string v0, "ATTRIBUTE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Lcom/bea/xml/stream/AttributeBase;

    invoke-direct {v0, v2, v3}, Lcom/bea/xml/stream/AttributeBase;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    return-object v0

    .line 303
    :cond_0
    const-string v0, "DEFAULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    new-instance v0, Lcom/bea/xml/stream/NamespaceBase;

    invoke-direct {v0, v3}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 305
    :cond_1
    const-string v0, "NAMESPACE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 306
    new-instance v0, Lcom/bea/xml/stream/NamespaceBase;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/bea/xml/stream/NamespaceBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 308
    :cond_2
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v4, "Parser Error expected (ATTRIBUTE||DEFAULT|NAMESPACE"

    invoke-direct {v0, v4}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readAttributes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "attributes":Ljava/util/List;
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readAttribute()Ljavax/xml/stream/events/Attribute;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    goto :goto_0

    .line 286
    :cond_0
    return-object v0
.end method

.method public readCDATA()Lcom/bea/xml/stream/EventState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 185
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 186
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    .line 187
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 188
    return-object v0
.end method

.method public readCharacterData()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 175
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 176
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 178
    return-object v0
.end method

.method public readComment()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 237
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 238
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 240
    return-object v0
.end method

.method public readDTD()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 219
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 220
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "dtd":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 222
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 223
    return-object v0
.end method

.method public readElement()Lcom/bea/xml/stream/EventState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readType()I

    move-result v0

    .line 339
    .local v0, "type":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 364
    .local v1, "state":Lcom/bea/xml/stream/EventState;
    :pswitch_0
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Attempt to read unknown element ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 362
    :pswitch_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readCDATA()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 360
    :pswitch_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readDTD()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 356
    :pswitch_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readEntityReference()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 353
    :pswitch_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bea/xml/stream/EventScanner;->readEndDocument:Z

    .line 354
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readEndDocument()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 351
    :pswitch_5
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readStartDocument()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 358
    :pswitch_6
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readSpace()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 349
    :pswitch_7
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readComment()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 347
    :pswitch_8
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readCharacterData()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 345
    :pswitch_9
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readProcessingInstruction()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 343
    :pswitch_a
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readEndElement()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    goto :goto_0

    .line 341
    .end local v1    # "state":Lcom/bea/xml/stream/EventState;
    :pswitch_b
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readStartElement()Lcom/bea/xml/stream/EventState;

    move-result-object v1

    .line 366
    .restart local v1    # "state":Lcom/bea/xml/stream/EventState;
    :goto_0
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 367
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->skipSpace()V

    .line 368
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public readEndDocument()Lcom/bea/xml/stream/EventState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 228
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 230
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    return-object v0
.end method

.method public readEndElement()Lcom/bea/xml/stream/EventState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 146
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 147
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/EventState;->setName(Ljavax/xml/namespace/QName;)V

    .line 148
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 149
    return-object v0
.end method

.method public readEntityReference()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 317
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 318
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 320
    return-object v0
.end method

.method public readName()Ljavax/xml/namespace/QName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 256
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readName(C)Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 257
    .local v1, "n":Ljavax/xml/namespace/QName;
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 258
    return-object v1
.end method

.method public readName(C)Ljavax/xml/namespace/QName;
    .locals 5
    .param p1, "delim"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, ""

    .line 265
    .local v0, "uri":Ljava/lang/String;
    const-string v1, ""

    .line 266
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    .line 267
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 268
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-virtual {p0, v3}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 270
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    if-nez v1, :cond_1

    const-string v1, ""

    .line 275
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "localName":Ljava/lang/String;
    new-instance v4, Ljavax/xml/namespace/QName;

    invoke-direct {v4, v0, v3, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public readProcessingInstruction()Lcom/bea/xml/stream/EventState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 157
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 158
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 160
    const/4 v3, 0x0

    .line 161
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_0

    .line 162
    const-string v4, ",["

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/EventScanner;->read(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 166
    :cond_0
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/EventState;->setExtraData(Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method public readSpace()Lcom/bea/xml/stream/EventState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 325
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 327
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 328
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "content":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 330
    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 331
    return-object v0
.end method

.method public readStartDocument()Lcom/bea/xml/stream/EventState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 197
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_0

    .line 198
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 199
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 200
    const/16 v2, 0x5d

    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 202
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 203
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 204
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "encoding":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 206
    invoke-virtual {p0, v2}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 207
    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/EventState;->setData(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/EventState;->setExtraData(Ljava/lang/String;)V

    .line 210
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public readStartElement()Lcom/bea/xml/stream/EventState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lcom/bea/xml/stream/EventState;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventState;-><init>(I)V

    .line 124
    .local v0, "state":Lcom/bea/xml/stream/EventState;
    const/16 v1, 0x5b

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 125
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bea/xml/stream/EventState;->setName(Ljavax/xml/namespace/QName;)V

    .line 126
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v2

    if-ne v2, v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->readAttributes()Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "atts":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 131
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljavax/xml/stream/events/Namespace;

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/EventState;->addNamespace(Ljava/lang/Object;)V

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/EventState;->addAttribute(Ljava/lang/Object;)V

    .line 135
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 138
    .end local v1    # "atts":Ljava/util/List;
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 139
    return-object v0
.end method

.method protected readString(C)Ljava/lang/String;
    .locals 3
    .param p1, "delim"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v0, "buf":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    if-eq v1, p1, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v2

    if-eq v2, v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {p0, v1}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->getChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected readType()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 115
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->readString(C)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "typeName":Ljava/lang/String;
    invoke-static {v1}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventType(Ljava/lang/String;)I

    move-result v2

    .line 117
    .local v2, "type":I
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/EventScanner;->read(C)C

    .line 118
    return v2
.end method

.method public setReader(Ljava/io/Reader;)V
    .locals 0
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/bea/xml/stream/EventScanner;->reader:Ljava/io/Reader;

    .line 57
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    .line 58
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->skipSpace()V

    .line 59
    return-void
.end method

.method protected skipSpace()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    :goto_0
    iget-char v0, p0, Lcom/bea/xml/stream/EventScanner;->currentChar:C

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    const/16 v4, 0x9

    if-ne v0, v4, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    move v4, v3

    :goto_3
    or-int/2addr v1, v4

    const/16 v4, 0xd

    if-ne v0, v4, :cond_3

    goto :goto_4

    :cond_3
    move v2, v3

    :goto_4
    or-int v0, v1, v2

    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/bea/xml/stream/EventScanner;->read()C

    goto :goto_0

    .line 89
    :cond_4
    return-void
.end method
