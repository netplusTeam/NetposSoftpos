.class public abstract Lorg/jpos/iso/ISOBasePackager;
.super Ljava/lang/Object;
.source "ISOBasePackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;
.implements Lorg/jpos/util/LogSource;


# instance fields
.field protected fld:[Lorg/jpos/iso/ISOFieldPackager;

.field protected headerLength:I

.field protected logFieldName:Z

.field protected logger:Lorg/jpos/util/Logger;

.field protected realm:Ljava/lang/String;

.field protected thirdBitmapField:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, -0x3e7

    iput v0, p0, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->logger:Lorg/jpos/util/Logger;

    .line 43
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jpos/iso/ISOBasePackager;->logFieldName:Z

    .line 44
    iput-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->realm:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    return-void
.end method

.method private static fieldUnpackLogger(Lorg/jpos/util/LogEvent;ILorg/jpos/iso/ISOComponent;Lorg/jpos/iso/ISOFieldPackager;Z)V
    .locals 3
    .param p0, "evt"    # Lorg/jpos/util/LogEvent;
    .param p1, "fldno"    # I
    .param p2, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p3, "fld"    # Lorg/jpos/iso/ISOFieldPackager;
    .param p4, "logFieldName"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unpack fld=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" packager=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 458
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 460
    if-eqz p4, :cond_0

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  <!-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jpos/iso/ISOFieldPackager;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 463
    :cond_0
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    const-string v1, "</value>"

    if-eqz v0, :cond_2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  <value type=\'binary\'>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 467
    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  <value>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 473
    :goto_0
    const-string v0, "</unpack>"

    invoke-virtual {p0, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 474
    return-void
.end method


# virtual methods
.method public createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 502
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    return-object v0
.end method

.method protected emitBitMap()Z
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/jpos/iso/ISOBitMapPackager;

    return v0
.end method

.method protected getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 2

    .line 514
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 535
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

    .line 483
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lorg/jpos/iso/ISOFieldPackager;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPackager(I)Lorg/jpos/iso/ISOFieldPackager;
    .locals 2
    .param p1, "fldNumber"    # I

    .line 490
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getFirstField()I
    .locals 4

    .line 71
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    instance-of v2, v2, Lorg/jpos/iso/ISOMsgFieldPackager;

    if-nez v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 72
    aget-object v0, v0, v3

    instance-of v0, v0, Lorg/jpos/iso/ISOBitMapPackager;

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    :cond_0
    return v3

    .line 73
    :cond_1
    return v1
.end method

.method public getHeaderLength()I
    .locals 1

    .line 528
    iget v0, p0, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    return v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method protected getMaxValidField()I
    .locals 1

    .line 508
    const/16 v0, 0x80

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdBitmapField()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 19
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 88
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 89
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    iget-object v3, v1, Lorg/jpos/iso/ISOBasePackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v3, :cond_0

    .line 90
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "pack"

    invoke-direct {v3, v1, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 89
    :cond_0
    move-object v3, v0

    .line 93
    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    if-ne v0, v2, :cond_12

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0x80

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 98
    .local v5, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "hdr":[B
    const/4 v6, 0x0

    .line 101
    .local v6, "len":I
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v7

    .line 102
    .local v7, "fields":Ljava/util/Map;
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jpos/iso/ISOComponent;

    .line 103
    .local v9, "c":Lorg/jpos/iso/ISOComponent;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;->getFirstField()I

    move-result v10

    .line 107
    .local v10, "first":I
    instance-of v11, v2, Lorg/jpos/iso/ISOMsg;

    if-eqz v11, :cond_2

    iget v11, v1, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    if-lez v11, :cond_2

    .line 109
    move-object v11, v2

    check-cast v11, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v11}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v11

    move-object v0, v11

    .line 110
    if-eqz v0, :cond_1

    .line 111
    array-length v11, v0

    add-int/2addr v6, v11

    move/from16 v18, v6

    move-object v6, v0

    move/from16 v0, v18

    goto :goto_1

    .line 110
    :cond_1
    move/from16 v18, v6

    move-object v6, v0

    move/from16 v0, v18

    goto :goto_1

    .line 114
    :cond_2
    move/from16 v18, v6

    move-object v6, v0

    move/from16 v0, v18

    .local v0, "len":I
    .local v6, "hdr":[B
    :goto_1
    if-lez v10, :cond_3

    if-eqz v9, :cond_3

    .line 115
    iget-object v11, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v11, v11, v8

    invoke-virtual {v11, v9}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v11

    .line 116
    .local v11, "b":[B
    array-length v12, v11

    add-int/2addr v0, v12

    .line 117
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v11    # "b":[B
    :cond_3
    const/4 v11, 0x0

    .line 121
    .local v11, "bmap12":Ljava/util/BitSet;
    const/4 v12, 0x0

    .line 122
    .local v12, "bmap3":Ljava/util/BitSet;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;->emitBitMap()Z

    move-result v13

    const/16 v14, 0x81

    if-eqz v13, :cond_7

    .line 126
    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jpos/iso/ISOComponent;

    move-object v9, v13

    .line 127
    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    move-object v11, v13

    .line 129
    iget v13, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    if-ltz v13, :cond_6

    iget-object v15, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v13, v15, v13

    instance-of v13, v13, Lorg/jpos/iso/ISOBitMapPackager;

    if-eqz v13, :cond_6

    .line 132
    invoke-virtual {v11}, Ljava/util/BitSet;->length()I

    move-result v13

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    if-le v13, v4, :cond_5

    .line 134
    const/16 v13, 0xc1

    invoke-virtual {v11, v4, v13}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object v16

    move-object/from16 v12, v16

    .line 135
    invoke-virtual {v12, v8}, Ljava/util/BitSet;->clear(I)V

    .line 136
    iget v4, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->set(I)V

    .line 137
    invoke-virtual {v11, v14, v13}, Ljava/util/BitSet;->clear(II)V

    .line 140
    new-instance v4, Lorg/jpos/iso/ISOBitMap;

    iget v13, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-direct {v4, v13}, Lorg/jpos/iso/ISOBitMap;-><init>(I)V

    .line 141
    .local v4, "bmField":Lorg/jpos/iso/ISOBitMap;
    invoke-virtual {v4, v12}, Lorg/jpos/iso/ISOBitMap;->setValue(Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v2, v4}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 143
    iget v13, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v7, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const/16 v13, 0x41

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_4

    move v15, v8

    goto :goto_2

    :cond_4
    const/4 v15, 0x1

    :goto_2
    invoke-virtual {v11, v13, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 147
    .end local v4    # "bmField":Lorg/jpos/iso/ISOBitMap;
    goto :goto_3

    .line 152
    :cond_5
    iget v4, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-virtual {v2, v4}, Lorg/jpos/iso/ISOComponent;->unset(I)V

    .line 153
    iget v4, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-virtual {v11, v4}, Ljava/util/BitSet;->clear(I)V

    .line 154
    iget v4, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v4

    .line 160
    .local v4, "b":[B
    array-length v13, v4

    add-int/2addr v0, v13

    .line 161
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v4    # "b":[B
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v4

    if-nez v12, :cond_9

    iget-object v13, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v13, v13

    if-le v13, v14, :cond_8

    goto :goto_4

    :cond_8
    const/16 v13, 0x80

    goto :goto_5

    :cond_9
    :goto_4
    const/16 v13, 0xc0

    :goto_5
    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 169
    .local v4, "tmpMaxField":I
    move v13, v10

    move-object/from16 v18, v9

    move v9, v0

    move-object/from16 v0, v18

    .local v0, "c":Lorg/jpos/iso/ISOComponent;
    .local v9, "len":I
    .local v13, "i":I
    :goto_6
    if-gt v13, v4, :cond_d

    .line 170
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jpos/iso/ISOComponent;
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v14

    .end local v0    # "c":Lorg/jpos/iso/ISOComponent;
    .local v15, "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v14, :cond_c

    .line 173
    :try_start_1
    iget-object v0, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v0, v0, v13

    .line 174
    .local v0, "fp":Lorg/jpos/iso/ISOFieldPackager;
    if-eqz v0, :cond_a

    .line 176
    invoke-virtual {v0, v15}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v14

    .line 177
    .local v14, "b":[B
    array-length v8, v14

    add-int/2addr v9, v8

    .line 178
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v0    # "fp":Lorg/jpos/iso/ISOFieldPackager;
    goto :goto_7

    .line 175
    .end local v14    # "b":[B
    .restart local v0    # "fp":Lorg/jpos/iso/ISOFieldPackager;
    :cond_a
    new-instance v8, Lorg/jpos/iso/ISOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "fp":Lorg/jpos/iso/ISOFieldPackager;
    .local v17, "fp":Lorg/jpos/iso/ISOFieldPackager;
    const-string v0, "null field "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " packager"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "tmpMaxField":I
    .end local v5    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v6    # "hdr":[B
    .end local v7    # "fields":Ljava/util/Map;
    .end local v9    # "len":I
    .end local v10    # "first":I
    .end local v11    # "bmap12":Ljava/util/BitSet;
    .end local v12    # "bmap3":Ljava/util/BitSet;
    .end local v13    # "i":I
    .end local v15    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v8
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .end local v17    # "fp":Lorg/jpos/iso/ISOFieldPackager;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "tmpMaxField":I
    .restart local v5    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v6    # "hdr":[B
    .restart local v7    # "fields":Ljava/util/Map;
    .restart local v9    # "len":I
    .restart local v10    # "first":I
    .restart local v11    # "bmap12":Ljava/util/BitSet;
    .restart local v12    # "bmap3":Ljava/util/BitSet;
    .restart local v13    # "i":I
    .restart local v15    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Lorg/jpos/iso/ISOException;
    const-string v8, "error packing field "

    if-eqz v3, :cond_b

    .line 181
    :try_start_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v3, v15}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 185
    :cond_b
    new-instance v14, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v14

    .line 169
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_c
    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v0, v15

    goto :goto_6

    .line 211
    .end local v13    # "i":I
    .end local v15    # "c":Lorg/jpos/iso/ISOComponent;
    .local v0, "c":Lorg/jpos/iso/ISOComponent;
    :cond_d
    const/4 v1, 0x0

    .line 212
    .local v1, "k":I
    new-array v8, v9, [B

    .line 215
    .local v8, "d":[B
    if-eqz v6, :cond_e

    .line 216
    array-length v13, v6

    const/4 v14, 0x0

    invoke-static {v6, v14, v8, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    array-length v13, v6

    add-int/2addr v1, v13

    .line 220
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 221
    .local v14, "bb":[B
    array-length v15, v14

    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "c":Lorg/jpos/iso/ISOComponent;
    .local v17, "c":Lorg/jpos/iso/ISOComponent;
    invoke-static {v14, v0, v8, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    array-length v15, v14

    add-int/2addr v1, v15

    .line 223
    .end local v14    # "bb":[B
    move-object/from16 v0, v17

    goto :goto_8

    .line 224
    .end local v17    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local v0    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_f
    move-object/from16 v17, v0

    .end local v0    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local v17    # "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v3, :cond_10

    .line 225
    invoke-static {v8}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    :cond_10
    nop

    .line 233
    if-eqz v3, :cond_11

    .line 234
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 227
    :cond_11
    return-object v8

    .line 94
    .end local v1    # "k":I
    .end local v4    # "tmpMaxField":I
    .end local v5    # "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v6    # "hdr":[B
    .end local v7    # "fields":Ljava/util/Map;
    .end local v8    # "d":[B
    .end local v9    # "len":I
    .end local v10    # "first":I
    .end local v11    # "bmap12":Ljava/util/BitSet;
    .end local v12    # "bmap3":Ljava/util/BitSet;
    .end local v17    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_12
    :try_start_3
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Can\'t call packager on non Composite"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v0
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 228
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Lorg/jpos/iso/ISOException;
    if-eqz v3, :cond_13

    .line 230
    :try_start_4
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 231
    :cond_13
    nop

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 233
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_9
    if-eqz v3, :cond_14

    .line 234
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 235
    :cond_14
    throw v0
.end method

.method public setFieldPackager(ILorg/jpos/iso/ISOFieldPackager;)V
    .locals 1
    .param p1, "fldNumber"    # I
    .param p2, "fieldPackager"    # Lorg/jpos/iso/ISOFieldPackager;

    .line 499
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aput-object p2, v0, p1

    .line 500
    return-void
.end method

.method public setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V
    .locals 0
    .param p1, "fld"    # [Lorg/jpos/iso/ISOFieldPackager;

    .line 48
    iput-object p1, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    .line 49
    return-void
.end method

.method public setHeaderLength(I)V
    .locals 0
    .param p1, "len"    # I

    .line 532
    iput p1, p0, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    .line 533
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 517
    iput-object p1, p0, Lorg/jpos/iso/ISOBasePackager;->logger:Lorg/jpos/util/Logger;

    .line 518
    iput-object p2, p0, Lorg/jpos/iso/ISOBasePackager;->realm:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setThirdBitmapField(I)V
    .locals 2
    .param p1, "f"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 53
    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-gt p1, v0, :cond_0

    .line 55
    iput p1, p0, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "thirdBitmapField should be >= 0 and <= 128"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 20
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 246
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, " consumed="

    iget-object v0, v1, Lorg/jpos/iso/ISOBasePackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v5, "unpack"

    invoke-direct {v0, v1, v5}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 247
    .local v5, "evt":Lorg/jpos/util/LogEvent;
    const/4 v6, 0x0

    .line 250
    .local v6, "consumed":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    if-ne v0, v2, :cond_11

    .line 252
    if-eqz v5, :cond_1

    .line 253
    invoke-static/range {p2 .. p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 257
    :cond_1
    instance-of v0, v2, Lorg/jpos/iso/ISOMsg;

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget v0, v1, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    if-lez v0, :cond_2

    .line 259
    new-array v8, v0, [B

    .line 260
    .local v8, "h":[B
    invoke-static {v3, v7, v8, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    move-object v0, v2

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v0, v8}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 262
    iget v0, v1, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    add-int/2addr v6, v0

    .line 265
    .end local v8    # "h":[B
    :cond_2
    iget-object v0, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v0, v0, v7

    if-eqz v0, :cond_3

    instance-of v8, v0, Lorg/jpos/iso/ISOBitMapPackager;

    if-nez v8, :cond_3

    .line 267
    invoke-virtual {v0, v7}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    .line 268
    .local v0, "mti":Lorg/jpos/iso/ISOComponent;
    iget-object v8, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v8, v8, v7

    invoke-virtual {v8, v0, v3, v6}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v8

    add-int/2addr v6, v8

    .line 269
    invoke-virtual {v2, v0}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 272
    .end local v0    # "mti":Lorg/jpos/iso/ISOComponent;
    :cond_3
    const/4 v0, 0x0

    .line 273
    .local v0, "bmap":Ljava/util/BitSet;
    const/4 v8, 0x0

    .line 274
    .local v8, "bmapBytes":I
    iget-object v9, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    .line 276
    .local v9, "maxField":I
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;->emitBitMap()Z

    move-result v11

    const/4 v12, 0x3

    if-eqz v11, :cond_5

    .line 277
    new-instance v11, Lorg/jpos/iso/ISOBitMap;

    const/4 v13, -0x1

    invoke-direct {v11, v13}, Lorg/jpos/iso/ISOBitMap;-><init>(I)V

    .line 278
    .local v11, "bitmap":Lorg/jpos/iso/ISOBitMap;
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v13

    invoke-virtual {v13, v11, v3, v6}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v13

    add-int/2addr v6, v13

    .line 279
    invoke-virtual {v11}, Lorg/jpos/iso/ISOBitMap;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/BitSet;

    move-object v0, v13

    .line 280
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v13

    sub-int/2addr v13, v10

    add-int/lit8 v13, v13, 0x3f

    shr-int/lit8 v13, v13, 0x6

    shl-int/lit8 v8, v13, 0x3

    .line 281
    if-eqz v5, :cond_4

    .line 282
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "<bitmap>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "</bitmap>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 283
    :cond_4
    invoke-virtual {v2, v11}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 285
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move v9, v13

    move/from16 v19, v6

    move-object v6, v0

    move v0, v9

    move v9, v8

    move/from16 v8, v19

    goto :goto_1

    .line 276
    .end local v11    # "bitmap":Lorg/jpos/iso/ISOBitMap;
    :cond_5
    move/from16 v19, v6

    move-object v6, v0

    move v0, v9

    move v9, v8

    move/from16 v8, v19

    .line 288
    .local v0, "maxField":I
    .local v6, "bmap":Ljava/util/BitSet;
    .local v8, "consumed":I
    .local v9, "bmapBytes":I
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/jpos/iso/ISOBasePackager;->getFirstField()I

    move-result v11
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v13, v11

    move v11, v8

    move v8, v0

    .end local v0    # "maxField":I
    .local v8, "maxField":I
    .local v11, "consumed":I
    .local v13, "i":I
    :goto_2
    if-gt v13, v8, :cond_e

    .line 290
    if-nez v6, :cond_6

    :try_start_2
    iget-object v0, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v0, v0, v13

    if-nez v0, :cond_6

    .line 291
    goto/16 :goto_4

    .line 328
    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 298
    :cond_6
    const/16 v0, 0x80

    if-le v8, v0, :cond_7

    const/16 v14, 0x41

    if-ne v13, v14, :cond_7

    .line 299
    goto :goto_4

    .line 301
    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v6, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 302
    :cond_8
    iget-object v14, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v14, v14, v13

    if-eqz v14, :cond_b

    .line 305
    invoke-virtual {v14, v13}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v14

    .line 306
    .local v14, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v15, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v15, v15, v13

    invoke-virtual {v15, v14, v3, v11}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v15

    add-int/2addr v11, v15

    .line 307
    if-eqz v5, :cond_9

    .line 308
    iget-object v15, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v15, v15, v13

    iget-boolean v7, v1, Lorg/jpos/iso/ISOBasePackager;->logFieldName:Z

    invoke-static {v5, v13, v14, v15, v7}, Lorg/jpos/iso/ISOBasePackager;->fieldUnpackLogger(Lorg/jpos/util/LogEvent;ILorg/jpos/iso/ISOComponent;Lorg/jpos/iso/ISOFieldPackager;Z)V

    .line 309
    :cond_9
    invoke-virtual {v2, v14}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 311
    iget v7, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    if-ne v13, v7, :cond_a

    iget-object v15, v1, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v12, v15

    const/16 v0, 0x81

    if-le v12, v0, :cond_a

    const/16 v0, 0x10

    if-ne v9, v0, :cond_a

    aget-object v0, v15, v7

    instance-of v0, v0, Lorg/jpos/iso/ISOBitMapPackager;

    if-eqz v0, :cond_a

    .line 322
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v0

    iget v7, v1, Lorg/jpos/iso/ISOBasePackager;->thirdBitmapField:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    .line 323
    .local v0, "bs3rd":Ljava/util/BitSet;
    invoke-virtual {v0}, Ljava/util/BitSet;->length()I

    move-result v7

    sub-int/2addr v7, v10

    const/16 v12, 0x80

    add-int/lit16 v8, v7, 0x80

    .line 324
    const/4 v7, 0x1

    .local v7, "bit":I
    :goto_3
    const/16 v12, 0x40

    if-gt v7, v12, :cond_a

    .line 325
    add-int/lit16 v12, v7, 0x80

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    invoke-virtual {v6, v12, v15}, Ljava/util/BitSet;->set(IZ)V

    .line 324
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 346
    .end local v0    # "bs3rd":Ljava/util/BitSet;
    .end local v7    # "bit":I
    .end local v14    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_a
    nop

    .line 288
    :goto_4
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x3

    goto/16 :goto_2

    .line 303
    :cond_b
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "field packager \'"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\' is null"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "evt":Lorg/jpos/util/LogEvent;
    .end local v6    # "bmap":Ljava/util/BitSet;
    .end local v8    # "maxField":I
    .end local v9    # "bmapBytes":I
    .end local v11    # "consumed":I
    .end local v13    # "i":I
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v0
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    .local v0, "e":Lorg/jpos/iso/ISOException;
    .restart local v5    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v6    # "bmap":Ljava/util/BitSet;
    .restart local v8    # "maxField":I
    .restart local v9    # "bmapBytes":I
    .restart local v11    # "consumed":I
    .restart local v13    # "i":I
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_5
    if-eqz v5, :cond_c

    .line 330
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error unpacking field "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 331
    invoke-virtual {v5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 334
    :cond_c
    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getNested()Ljava/lang/Throwable;

    move-result-object v7

    const/4 v12, 0x2

    if-nez v7, :cond_d

    .line 335
    new-instance v7, Lorg/jpos/iso/ISOException;

    const-string v14, "%s unpacking field=%d, consumed=%d"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 337
    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v15, v16

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v12

    .line 336
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_6

    .line 340
    :cond_d
    new-instance v7, Lorg/jpos/iso/ISOException;

    const-string v14, "%s (%s) unpacking field=%d, consumed=%d"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    .line 342
    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v15, v16

    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getNested()Ljava/lang/Throwable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x3

    aput-object v10, v15, v12

    .line 341
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 345
    :goto_6
    nop

    .end local v5    # "evt":Lorg/jpos/util/LogEvent;
    .end local v11    # "consumed":I
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v0

    .line 349
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .end local v13    # "i":I
    .restart local v5    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v11    # "consumed":I
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :cond_e
    if-eqz v5, :cond_f

    array-length v0, v3

    if-eq v0, v11, :cond_f

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WARNING: unpack len="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v7, v3

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    .line 363
    .end local v6    # "bmap":Ljava/util/BitSet;
    .end local v8    # "maxField":I
    .end local v9    # "bmapBytes":I
    :catchall_0
    move-exception v0

    move v6, v11

    goto :goto_a

    .line 358
    :catch_1
    move-exception v0

    move v6, v11

    goto :goto_8

    .line 354
    :catch_2
    move-exception v0

    move v6, v11

    goto :goto_9

    .line 353
    .restart local v6    # "bmap":Ljava/util/BitSet;
    .restart local v8    # "maxField":I
    .restart local v9    # "bmapBytes":I
    :cond_f
    :goto_7
    nop

    .line 363
    if-eqz v5, :cond_10

    .line 364
    invoke-static {v5}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 353
    :cond_10
    return v11

    .line 363
    .end local v6    # "bmap":Ljava/util/BitSet;
    .end local v9    # "bmapBytes":I
    .end local v11    # "consumed":I
    .local v8, "consumed":I
    :catchall_1
    move-exception v0

    move v6, v8

    goto :goto_a

    .line 358
    :catch_3
    move-exception v0

    move v6, v8

    goto :goto_8

    .line 354
    :catch_4
    move-exception v0

    move v6, v8

    goto :goto_9

    .line 251
    .end local v8    # "consumed":I
    .local v6, "consumed":I
    :cond_11
    :try_start_4
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v7, "Can\'t call packager on non Composite"

    invoke-direct {v0, v7}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "evt":Lorg/jpos/util/LogEvent;
    .end local v6    # "consumed":I
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v0
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 363
    .restart local v5    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v6    # "consumed":I
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_2
    move-exception v0

    goto :goto_a

    .line 358
    :catch_5
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    if-eqz v5, :cond_12

    .line 360
    :try_start_5
    invoke-virtual {v5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 361
    :cond_12
    new-instance v7, Lorg/jpos/iso/ISOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v5    # "evt":Lorg/jpos/util/LogEvent;
    .end local v6    # "consumed":I
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v7

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v6    # "consumed":I
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catch_6
    move-exception v0

    .line 355
    .local v0, "e":Lorg/jpos/iso/ISOException;
    :goto_9
    if-eqz v5, :cond_13

    .line 356
    invoke-virtual {v5, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 357
    :cond_13
    nop

    .end local v5    # "evt":Lorg/jpos/util/LogEvent;
    .end local v6    # "consumed":I
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 363
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .restart local v5    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v6    # "consumed":I
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_a
    if-eqz v5, :cond_14

    .line 364
    invoke-static {v5}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 365
    :cond_14
    throw v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/jpos/iso/ISOBasePackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 373
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    if-ne v1, p1, :cond_10

    .line 377
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->getHeader()[B

    move-result-object v1

    if-nez v1, :cond_1

    iget v1, p0, Lorg/jpos/iso/ISOBasePackager;->headerLength:I

    if-lez v1, :cond_1

    .line 379
    new-array v3, v1, [B

    .line 380
    .local v3, "h":[B
    invoke-virtual {p2, v3, v2, v1}, Ljava/io/InputStream;->read([BII)I

    .line 381
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOMsg;->setHeader([B)V

    .line 385
    .end local v3    # "h":[B
    :cond_1
    iget-object v1, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v1, v1, v2

    instance-of v3, v1, Lorg/jpos/iso/ISOMsgFieldPackager;

    if-nez v3, :cond_2

    instance-of v3, v1, Lorg/jpos/iso/ISOBitMapPackager;

    if-nez v3, :cond_2

    .line 388
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    .line 389
    .local v1, "mti":Lorg/jpos/iso/ISOComponent;
    iget-object v3, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v3, v2

    invoke-virtual {v2, v1, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 390
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 393
    .end local v1    # "mti":Lorg/jpos/iso/ISOComponent;
    :cond_2
    const/4 v1, 0x0

    .line 394
    .local v1, "bmap":Ljava/util/BitSet;
    iget-object v2, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v2, v2

    .line 395
    .local v2, "maxField":I
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBasePackager;->emitBitMap()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    new-instance v3, Lorg/jpos/iso/ISOBitMap;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOBitMap;-><init>(I)V

    .line 397
    .local v3, "bitmap":Lorg/jpos/iso/ISOBitMap;
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBasePackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 398
    invoke-virtual {v3}, Lorg/jpos/iso/ISOBitMap;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    move-object v1, v4

    .line 399
    if-eqz v0, :cond_3

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<bitmap>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</bitmap>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 401
    :cond_3
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 402
    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 405
    .end local v3    # "bitmap":Lorg/jpos/iso/ISOBitMap;
    :cond_4
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBasePackager;->getFirstField()I

    move-result v3

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_a

    .line 406
    if-nez v1, :cond_5

    iget-object v4, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    if-nez v4, :cond_5

    .line 407
    goto :goto_2

    .line 409
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 410
    :cond_6
    iget-object v4, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    if-eqz v4, :cond_9

    .line 413
    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v4

    .line 414
    .local v4, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v5, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 415
    if-eqz v0, :cond_7

    .line 416
    iget-object v5, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v3

    iget-boolean v6, p0, Lorg/jpos/iso/ISOBasePackager;->logFieldName:Z

    invoke-static {v0, v3, v4, v5, v6}, Lorg/jpos/iso/ISOBasePackager;->fieldUnpackLogger(Lorg/jpos/util/LogEvent;ILorg/jpos/iso/ISOComponent;Lorg/jpos/iso/ISOFieldPackager;Z)V

    .line 417
    :cond_7
    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 405
    .end local v4    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_8
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 411
    :cond_9
    new-instance v4, Lorg/jpos/iso/ISOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "field packager \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v4

    .line 420
    .end local v3    # "i":I
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_a
    if-eqz v1, :cond_e

    const/16 v3, 0x41

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v5, v4

    const/16 v6, 0x80

    if-le v5, v6, :cond_e

    aget-object v4, v4, v3

    instance-of v4, v4, Lorg/jpos/iso/ISOBitMapPackager;

    if-eqz v4, :cond_e

    .line 423
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v3}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/BitSet;

    move-object v1, v3

    .line 424
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_3
    const/16 v4, 0x40

    if-ge v3, v4, :cond_e

    .line 425
    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 426
    :cond_b
    iget-object v4, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    add-int/lit16 v5, v3, 0x80

    aget-object v4, v4, v5

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v4

    .line 427
    .restart local v4    # "c":Lorg/jpos/iso/ISOComponent;
    iget-object v5, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    add-int/lit16 v6, v3, 0x80

    aget-object v5, v5, v6

    invoke-virtual {v5, v4, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    .line 428
    if-eqz v0, :cond_c

    .line 429
    add-int/lit16 v5, v3, 0x80

    iget-object v6, p0, Lorg/jpos/iso/ISOBasePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    add-int/lit16 v7, v3, 0x80

    aget-object v6, v6, v7

    iget-boolean v7, p0, Lorg/jpos/iso/ISOBasePackager;->logFieldName:Z

    invoke-static {v0, v5, v4, v6, v7}, Lorg/jpos/iso/ISOBasePackager;->fieldUnpackLogger(Lorg/jpos/util/LogEvent;ILorg/jpos/iso/ISOComponent;Lorg/jpos/iso/ISOFieldPackager;Z)V

    .line 430
    :cond_c
    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v4    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 445
    .end local v1    # "bmap":Ljava/util/BitSet;
    .end local v2    # "maxField":I
    .end local v3    # "i":I
    :cond_e
    if-eqz v0, :cond_f

    .line 446
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 448
    :cond_f
    return-void

    .line 374
    :cond_10
    :try_start_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_11

    .line 442
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 443
    :cond_11
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v2

    .line 438
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 439
    .local v1, "e":Ljava/io/EOFException;
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1

    .line 434
    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :catch_2
    move-exception v1

    .line 435
    .local v1, "e":Lorg/jpos/iso/ISOException;
    if-eqz v0, :cond_12

    .line 436
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 437
    :cond_12
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :goto_4
    if-eqz v0, :cond_13

    .line 446
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 447
    :cond_13
    throw v1
.end method
