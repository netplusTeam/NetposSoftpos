.class public Lorg/jpos/iso/packager/Base1SubFieldPackager;
.super Lorg/jpos/iso/ISOBasePackager;
.source "Base1SubFieldPackager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lorg/jpos/iso/ISOBasePackager;-><init>()V

    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/jpos/iso/ISOBitMapPackager;

    return v0
.end method

.method protected getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getFirstField()I
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Lorg/jpos/iso/ISOBitMapPackager;

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 123
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 124
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 127
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 129
    .local v2, "fields":Ljava/util/Map;
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;->emitBitMap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOComponent;

    .line 133
    .local v3, "c":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v4

    .line 134
    .local v4, "b":[B
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 137
    .end local v3    # "c":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "b":[B
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;->getFirstField()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v4

    if-gt v3, v4, :cond_2

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOComponent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    .local v5, "c":Lorg/jpos/iso/ISOComponent;
    if-eqz v4, :cond_1

    .line 143
    :try_start_2
    iget-object v4, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v4, v4, v3

    invoke-virtual {v4, v5}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v4

    .line 144
    .restart local v4    # "b":[B
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local v4    # "b":[B
    goto :goto_1

    .line 146
    :catch_0
    move-exception v4

    .line 148
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error packing field "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v0, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 151
    new-instance v6, Lorg/jpos/iso/ISOException;

    invoke-direct {v6, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v6

    .line 137
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v3    # "i":I
    .end local v5    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 157
    .local v3, "d":[B
    iget-object v4, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_3

    .line 158
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    :cond_3
    nop

    .line 160
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 167
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 159
    return-object v3

    .line 124
    .end local v2    # "fields":Ljava/util/Map;
    .end local v3    # "d":[B
    :catchall_0
    move-exception v2

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 160
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_2
    throw v3
    :try_end_7
    .catch Lorg/jpos/iso/ISOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 167
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_3
    move-exception v1

    goto :goto_3

    .line 163
    :catch_1
    move-exception v1

    .line 164
    .local v1, "ex":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 165
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2

    .line 160
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catch_2
    move-exception v1

    .line 161
    .local v1, "ex":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 162
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 167
    .end local v1    # "ex":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_3
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 168
    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 71
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 74
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 76
    iget-object v1, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 79
    :cond_0
    const/4 v1, 0x0

    .line 80
    .local v1, "consumed":I
    new-instance v2, Lorg/jpos/iso/ISOBitMap;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOBitMap;-><init>(I)V

    .line 82
    .local v2, "bitmap":Lorg/jpos/iso/ISOBitMap;
    const/4 v3, 0x0

    .line 83
    .local v3, "bmap":Ljava/util/BitSet;
    iget-object v4, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v4, v4

    .line 84
    .local v4, "maxField":I
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;->emitBitMap()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v5

    invoke-virtual {v5, v2, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v5

    add-int/2addr v1, v5

    .line 87
    invoke-virtual {v2}, Lorg/jpos/iso/ISOBitMap;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    move-object v3, v5

    .line 88
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 89
    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v5

    move v4, v5

    .line 91
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/iso/packager/Base1SubFieldPackager;->getFirstField()I

    move-result v5

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    array-length v6, p2

    if-ge v1, v6, :cond_4

    .line 93
    if-eqz v3, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    :cond_2
    iget-object v6, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v6, v6, v5

    invoke-virtual {v6, v5}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v6

    .line 96
    .local v6, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v7, p0, Lorg/jpos/iso/packager/Base1SubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v7, v7, v5

    invoke-virtual {v7, v6, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v7

    add-int/2addr v1, v7

    .line 97
    invoke-virtual {p1, v6}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 91
    .end local v6    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "i":I
    :cond_4
    array-length v5, p2

    if-eq v5, v1, :cond_5

    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: unpack len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " consumed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_5
    nop

    .line 114
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 105
    return v1

    .line 75
    .end local v1    # "consumed":I
    .end local v2    # "bitmap":Lorg/jpos/iso/ISOBitMap;
    .end local v3    # "bmap":Ljava/util/BitSet;
    .end local v4    # "maxField":I
    :cond_6
    :try_start_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :try_start_2
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 110
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_1
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 115
    throw v1
.end method
