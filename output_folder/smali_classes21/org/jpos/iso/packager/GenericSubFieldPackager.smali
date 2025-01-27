.class public Lorg/jpos/iso/packager/GenericSubFieldPackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "GenericSubFieldPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOSubFieldPackager;


# instance fields
.field private fieldId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fieldId:Ljava/lang/Integer;

    .line 50
    return-void
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fieldId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    .line 125
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 126
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 129
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 131
    .local v2, "fields":Ljava/util/Map;
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->emitBitMap()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOComponent;

    .line 135
    .local v3, "c":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v4

    .line 136
    .local v4, "b":[B
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    .end local v3    # "c":Lorg/jpos/iso/ISOComponent;
    .end local v4    # "b":[B
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->getFirstField()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOComponent;

    .line 142
    .local v4, "c":Lorg/jpos/iso/ISOComponent;
    if-nez v4, :cond_1

    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->emitBitMap()Z

    move-result v5

    if-nez v5, :cond_1

    .line 143
    new-instance v5, Lorg/jpos/iso/ISOField;

    const-string v6, ""

    invoke-direct {v5, v3, v6}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    .line 144
    :cond_1
    if-eqz v4, :cond_2

    .line 147
    :try_start_2
    iget-object v5, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v5, v5, v3

    invoke-virtual {v5, v4}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v5

    .line 148
    .local v5, "b":[B
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .end local v5    # "b":[B
    goto :goto_1

    .line 150
    :catch_0
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error packing subfield "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 153
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {v0, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 155
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v5

    .line 139
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v3    # "i":I
    .end local v4    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 161
    .local v3, "d":[B
    iget-object v4, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v4, :cond_4

    .line 162
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :cond_4
    nop

    .line 164
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 177
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 163
    return-object v3

    .line 126
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

    .line 164
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
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 177
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_3
    move-exception v1

    goto :goto_3

    .line 170
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 173
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2

    .line 165
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catch_2
    move-exception v1

    .line 167
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 168
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 177
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_3
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 178
    throw v1
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 59
    invoke-super {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 60
    const-string v0, "id"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fieldId:Ljava/lang/Integer;

    .line 61
    return-void
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

    .line 66
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 69
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 71
    array-length v1, p2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    .line 115
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 72
    return v1

    .line 73
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v1, :cond_1

    .line 74
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 76
    :cond_1
    const/4 v1, 0x0

    .line 77
    .local v1, "consumed":I
    new-instance v2, Lorg/jpos/iso/ISOBitMap;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOBitMap;-><init>(I)V

    .line 79
    .local v2, "bitmap":Lorg/jpos/iso/ISOBitMap;
    const/4 v3, 0x0

    .line 80
    .local v3, "bmap":Ljava/util/BitSet;
    iget-object v4, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v4, v4

    .line 81
    .local v4, "maxField":I
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->emitBitMap()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->getBitMapfieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v5

    invoke-virtual {v5, v2, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v5

    add-int/2addr v1, v5

    .line 84
    invoke-virtual {v2}, Lorg/jpos/iso/ISOBitMap;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/BitSet;

    move-object v3, v5

    .line 85
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 86
    invoke-virtual {v3}, Ljava/util/BitSet;->size()I

    move-result v5

    move v4, v5

    .line 88
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericSubFieldPackager;->getFirstField()I

    move-result v5

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_5

    array-length v6, p2

    if-ge v1, v6, :cond_5

    .line 90
    if-eqz v3, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v6, v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v6, v6, v5

    if-eqz v6, :cond_4

    .line 91
    iget-object v6, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v6, v6, v5

    invoke-virtual {v6, v5}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v6

    .line 92
    .local v6, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v7, p0, Lorg/jpos/iso/packager/GenericSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v7, v7, v5

    invoke-virtual {v7, v6, p2, v1}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v7

    add-int/2addr v1, v7

    .line 93
    invoke-virtual {p1, v6}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 88
    .end local v6    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 96
    .end local v5    # "i":I
    :cond_5
    array-length v5, p2

    if-eq v5, v1, :cond_6

    .line 98
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
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :cond_6
    nop

    .line 115
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 101
    return v1

    .line 70
    .end local v1    # "consumed":I
    .end local v2    # "bitmap":Lorg/jpos/iso/ISOBitMap;
    .end local v3    # "bmap":Ljava/util/BitSet;
    .end local v4    # "maxField":I
    :cond_7
    :try_start_2
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 108
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 111
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v2

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catch_1
    move-exception v1

    .line 105
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 106
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_1
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 116
    throw v1
.end method
