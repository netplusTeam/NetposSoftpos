.class public Lorg/jpos/iso/ISOTagBinaryFieldPackager;
.super Lorg/jpos/iso/ISOBinaryFieldPackager;
.source "ISOTagBinaryFieldPackager.java"


# instance fields
.field private interpreter:Lorg/jpos/iso/BinaryInterpreter;

.field private padder:Lorg/jpos/iso/Padder;

.field private prefixer:Lorg/jpos/iso/Prefixer;

.field private tagPrefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>()V

    .line 51
    sget-object v0, Lorg/jpos/iso/AsciiPrefixer;->L:Lorg/jpos/iso/AsciiPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 52
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 53
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 54
    sget-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "maxLength"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p4, "padder"    # Lorg/jpos/iso/Padder;
    .param p5, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p6, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 85
    invoke-direct {p0, p1, p2, p5, p6}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>(ILjava/lang/String;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V

    .line 86
    iput-object p3, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 87
    iput-object p4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 88
    iput-object p5, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 89
    iput-object p6, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "padder"    # Lorg/jpos/iso/Padder;
    .param p3, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p4, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 67
    invoke-direct {p0}, Lorg/jpos/iso/ISOBinaryFieldPackager;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 69
    iput-object p2, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 70
    iput-object p3, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 71
    iput-object p4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 72
    return-void
.end method

.method private makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "operation"    # Ljava/lang/String;

    .line 131
    const-string v0, "unknown"

    .line 132
    .local v0, "fieldKey":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 135
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 136
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Problem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 8
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 145
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 146
    .local v0, "data":[B
    array-length v1, v0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 149
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 150
    .local v1, "tag":I
    move-object v2, v0

    .line 151
    .local v2, "paddedData":[B
    iget-object v3, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    instance-of v4, v3, Lorg/jpos/iso/NullPadder;

    if-nez v4, :cond_0

    .line 152
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/jpos/iso/Padder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    .line 153
    :cond_0
    iget-object v3, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v3}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v3

    iget-object v4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v5, v2

    .line 154
    invoke-interface {v4, v5}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 155
    .local v3, "rawData":[B
    iget-object v4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4, v1, v3}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 156
    iget-object v4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    new-array v4, v4, [B

    .line 157
    .local v4, "rawLen":[B
    iget-object v5, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    array-length v6, v2

    invoke-interface {v5, v6, v4}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 158
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v6}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v6

    array-length v7, v4

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    iget-object v5, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    iget-object v6, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v6}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v6

    array-length v7, v4

    add-int/2addr v6, v7

    invoke-interface {v5, v2, v3, v6}, Lorg/jpos/iso/BinaryInterpreter;->interpret([B[BI)V

    .line 160
    return-object v3

    .line 147
    .end local v1    # "tag":I
    .end local v2    # "paddedData":[B
    .end local v3    # "rawData":[B
    .end local v4    # "rawLen":[B
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long. Max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "data":[B
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "packing"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterpreter(Lorg/jpos/iso/BinaryInterpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;

    .line 106
    iput-object p1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 107
    return-void
.end method

.method public setPadder(Lorg/jpos/iso/Padder;)V
    .locals 0
    .param p1, "padder"    # Lorg/jpos/iso/Padder;

    .line 97
    iput-object p1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 98
    return-void
.end method

.method public setPrefixer(Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 115
    iput-object p1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 116
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 177
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1, p2, p3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 178
    iget-object v1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    add-int v2, p3, v0

    invoke-interface {v1, p2, v2}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    .line 179
    .local v1, "len":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 182
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too long. Max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    .end local p3    # "offset":I
    throw v2

    .line 186
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "offset":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    .line 187
    .local v2, "lenLen":I
    iget-object v3, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    add-int v4, p3, v0

    add-int/2addr v4, v2

    invoke-interface {v3, p2, v4, v1}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v3

    .line 188
    .local v3, "unpacked":[B
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 189
    add-int v4, v0, v2

    iget-object v5, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v5, v1}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v5

    return v4

    .line 190
    .end local v0    # "tagLen":I
    .end local v1    # "len":I
    .end local v2    # "lenLen":I
    .end local v3    # "unpacked":[B
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 205
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 206
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 207
    iget-object v1, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 209
    .local v1, "lenLen":I
    if-nez v1, :cond_0

    .line 210
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v2

    .local v2, "len":I
    goto :goto_0

    .line 212
    .end local v2    # "len":I
    :cond_0
    iget-object v2, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v2

    .line 213
    .restart local v2    # "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v4

    if-gt v2, v4, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " too long. Max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v3

    .line 216
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v4, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v4

    .line 217
    .local v4, "packedLen":I
    iget-object v5, p0, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-virtual {p0, p2, v4}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-interface {v5, v6, v3, v2}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v3

    .line 218
    .local v3, "unpacked":[B
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    .end local v0    # "tagLen":I
    .end local v1    # "lenLen":I
    .end local v2    # "len":I
    .end local v3    # "unpacked":[B
    .end local v4    # "packedLen":I
    nop

    .line 222
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOTagBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
