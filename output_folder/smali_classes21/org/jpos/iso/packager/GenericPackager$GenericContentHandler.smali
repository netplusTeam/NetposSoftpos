.class public Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GenericPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/packager/GenericPackager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericContentHandler"
.end annotation


# instance fields
.field private fieldStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jpos/iso/packager/GenericPackager;


# direct methods
.method public constructor <init>(Lorg/jpos/iso/packager/GenericPackager;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/packager/GenericPackager;

    .line 376
    iput-object p1, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method private makeFieldArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/jpos/iso/ISOFieldPackager;",
            ">;)[",
            "Lorg/jpos/iso/ISOFieldPackager;"
        }
    .end annotation

    .line 485
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    const/4 v0, 0x0

    .line 488
    .local v0, "maxField":I
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 489
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 490
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 489
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    :cond_0
    goto :goto_0

    .line 493
    :cond_1
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/jpos/iso/ISOFieldPackager;

    .line 496
    .local v1, "fld":[Lorg/jpos/iso/ISOFieldPackager;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 497
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOFieldPackager;

    aput-object v5, v1, v4

    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    goto :goto_1

    .line 498
    :cond_2
    return-object v1
.end method


# virtual methods
.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    return-void

    .line 391
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Format error in XML Field Description File"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 505
    const-string v0, "isopackager"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 509
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-direct {p0, v0}, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->makeFieldArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/packager/GenericPackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 512
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    :cond_0
    const-string v0, "isofieldpackager"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 517
    .restart local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOBasePackager;

    .line 518
    .local v1, "msgPackager":Lorg/jpos/iso/ISOBasePackager;
    invoke-direct {p0, v0}, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->makeFieldArray(Ljava/util/Map;)[Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOBasePackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 520
    iget-object v2, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/ISOFieldPackager;

    .line 522
    .local v2, "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    iget-object v3, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 524
    .local v3, "fno":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-virtual {v4}, Lorg/jpos/iso/packager/GenericPackager;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-virtual {v6}, Lorg/jpos/iso/packager/GenericPackager;->getRealm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-fld-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/jpos/iso/ISOBasePackager;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 527
    new-instance v4, Lorg/jpos/iso/ISOMsgFieldPackager;

    invoke-direct {v4, v2, v1}, Lorg/jpos/iso/ISOMsgFieldPackager;-><init>(Lorg/jpos/iso/ISOFieldPackager;Lorg/jpos/iso/ISOPackager;)V

    .line 533
    .local v4, "mfp":Lorg/jpos/iso/ISOMsgFieldPackager;
    iget-object v5, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    .line 534
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v0    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOFieldPackager;>;"
    .end local v1    # "msgPackager":Lorg/jpos/iso/ISOBasePackager;
    .end local v2    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .end local v3    # "fno":Ljava/lang/Integer;
    .end local v4    # "mfp":Lorg/jpos/iso/ISOMsgFieldPackager;
    :cond_1
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 542
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 0
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 548
    throw p1
.end method

.method public startDocument()V
    .locals 1

    .line 383
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    .line 384
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 16
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 401
    :try_start_0
    const-string v0, "id"

    invoke-interface {v3, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "id":Ljava/lang/String;
    const-string v4, "class"

    invoke-interface {v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "type":Ljava/lang/String;
    const-string v5, "name"

    invoke-interface {v3, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "name":Ljava/lang/String;
    const-string v6, "length"

    invoke-interface {v3, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, "size":Ljava/lang/String;
    const-string v7, "pad"

    invoke-interface {v3, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, "pad":Ljava/lang/String;
    const-string v8, "token"

    invoke-interface {v3, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "token":Ljava/lang/String;
    const-string v9, "trim"

    invoke-interface {v3, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "trim":Ljava/lang/String;
    const-string v10, "params"

    invoke-interface {v3, v10}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 411
    .local v10, "params":Ljava/lang/String;
    const-string v11, "isopackager"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 414
    iget-object v11, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v11, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v11, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-virtual {v11, v3}, Lorg/jpos/iso/packager/GenericPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 419
    :cond_0
    const-string v11, "isofieldpackager"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 429
    const-string v11, "packager"

    invoke-interface {v3, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 431
    .local v11, "packager":Ljava/lang/String;
    iget-object v12, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jpos/iso/ISOFieldPackager;

    .line 435
    .local v12, "f":Lorg/jpos/iso/ISOFieldPackager;
    invoke-virtual {v12, v5}, Lorg/jpos/iso/ISOFieldPackager;->setDescription(Ljava/lang/String;)V

    .line 436
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/jpos/iso/ISOFieldPackager;->setLength(I)V

    .line 437
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/jpos/iso/ISOFieldPackager;->setPad(Z)V

    .line 438
    instance-of v13, v12, Lorg/jpos/iso/packager/GenericPackagerParams;

    if-eqz v13, :cond_1

    .line 439
    move-object v13, v12

    check-cast v13, Lorg/jpos/iso/packager/GenericPackagerParams;

    invoke-interface {v13, v3}, Lorg/jpos/iso/packager/GenericPackagerParams;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 442
    :cond_1
    instance-of v13, v12, Lorg/jpos/iso/TaggedFieldPackager;

    if-eqz v13, :cond_2

    .line 443
    move-object v13, v12

    check-cast v13, Lorg/jpos/iso/TaggedFieldPackager;

    invoke-interface {v13, v8}, Lorg/jpos/iso/TaggedFieldPackager;->setToken(Ljava/lang/String;)V

    .line 445
    :cond_2
    iget-object v13, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v13, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v13, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-static {v13, v11, v10}, Lorg/jpos/iso/packager/GenericPackager;->access$000(Lorg/jpos/iso/packager/GenericPackager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jpos/iso/ISOBasePackager;

    .line 448
    .local v13, "p":Lorg/jpos/iso/ISOBasePackager;
    instance-of v14, v13, Lorg/jpos/iso/packager/GenericPackagerParams;

    if-eqz v14, :cond_3

    .line 449
    move-object v14, v13

    check-cast v14, Lorg/jpos/iso/packager/GenericPackagerParams;

    invoke-interface {v14, v3}, Lorg/jpos/iso/packager/GenericPackagerParams;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 450
    :cond_3
    iget-object v14, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v14, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v14, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    new-instance v15, Ljava/util/TreeMap;

    invoke-direct {v15}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    nop

    .end local v11    # "packager":Ljava/lang/String;
    .end local v12    # "f":Lorg/jpos/iso/ISOFieldPackager;
    .end local v13    # "p":Lorg/jpos/iso/ISOBasePackager;
    goto :goto_0

    .line 454
    :cond_4
    const-string v11, "isofield"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 456
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 458
    .local v11, "c":Ljava/lang/Class;
    iget-object v12, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->this$0:Lorg/jpos/iso/packager/GenericPackager;

    invoke-static {v12, v4, v10}, Lorg/jpos/iso/packager/GenericPackager;->access$000(Lorg/jpos/iso/packager/GenericPackager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jpos/iso/ISOFieldPackager;

    .line 459
    .restart local v12    # "f":Lorg/jpos/iso/ISOFieldPackager;
    invoke-virtual {v12, v5}, Lorg/jpos/iso/ISOFieldPackager;->setDescription(Ljava/lang/String;)V

    .line 460
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lorg/jpos/iso/ISOFieldPackager;->setLength(I)V

    .line 461
    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/jpos/iso/ISOFieldPackager;->setPad(Z)V

    .line 462
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-virtual {v12, v13}, Lorg/jpos/iso/ISOFieldPackager;->setTrim(Z)V

    .line 464
    instance-of v13, v12, Lorg/jpos/iso/TaggedFieldPackager;

    if-eqz v13, :cond_5

    .line 465
    move-object v13, v12

    check-cast v13, Lorg/jpos/iso/TaggedFieldPackager;

    invoke-interface {v13, v8}, Lorg/jpos/iso/TaggedFieldPackager;->setToken(Ljava/lang/String;)V

    .line 469
    :cond_5
    iget-object v13, v1, Lorg/jpos/iso/packager/GenericPackager$GenericContentHandler;->fieldStack:Ljava/util/Stack;

    invoke-virtual {v13}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 470
    .local v13, "m":Ljava/util/Map;
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    .end local v0    # "id":Ljava/lang/String;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "size":Ljava/lang/String;
    .end local v7    # "pad":Ljava/lang/String;
    .end local v8    # "token":Ljava/lang/String;
    .end local v9    # "trim":Ljava/lang/String;
    .end local v10    # "params":Ljava/lang/String;
    .end local v11    # "c":Ljava/lang/Class;
    .end local v12    # "f":Lorg/jpos/iso/ISOFieldPackager;
    .end local v13    # "m":Ljava/util/Map;
    :cond_6
    :goto_0
    nop

    .line 477
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 475
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-direct {v4, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method
