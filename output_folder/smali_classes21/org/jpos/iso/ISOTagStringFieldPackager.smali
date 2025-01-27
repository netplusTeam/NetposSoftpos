.class public Lorg/jpos/iso/ISOTagStringFieldPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOTagStringFieldPackager.java"


# instance fields
.field private interpreter:Lorg/jpos/iso/Interpreter;

.field private padder:Lorg/jpos/iso/Padder;

.field private prefixer:Lorg/jpos/iso/Prefixer;

.field private tagPrefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 51
    sget-object v0, Lorg/jpos/iso/AsciiPrefixer;->L:Lorg/jpos/iso/AsciiPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 52
    sget-object v0, Lorg/jpos/iso/LiteralInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 53
    sget-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "maxLength"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p4, "padder"    # Lorg/jpos/iso/Padder;
    .param p5, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p6, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 84
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 85
    iput-object p3, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 86
    iput-object p4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 87
    iput-object p5, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 88
    iput-object p6, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "padder"    # Lorg/jpos/iso/Padder;
    .param p3, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p4, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 66
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 68
    iput-object p2, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 69
    iput-object p3, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 70
    iput-object p4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 71
    return-void
.end method

.method private makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "operation"    # Ljava/lang/String;

    .line 126
    const-string v0, "unknown"

    .line 127
    .local v0, "fieldKey":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 130
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 131
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

    .line 119
    iget-object v0, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

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

    .line 139
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 143
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .local v1, "tag":I
    iget-object v2, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v3

    invoke-interface {v2, v0, v3}, Lorg/jpos/iso/Padder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "paddedData":Ljava/lang/String;
    iget-object v3, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v3}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v3

    iget-object v4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 147
    .local v3, "rawData":[B
    iget-object v4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4, v1, v3}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 148
    iget-object v4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    new-array v4, v4, [B

    .line 149
    .local v4, "rawLen":[B
    iget-object v5, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v5, v6, v4}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 150
    const/4 v5, 0x0

    iget-object v6, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v6}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v6

    array-length v7, v4

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iget-object v5, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    iget-object v6, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v6}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v6

    array-length v7, v4

    add-int/2addr v6, v7

    invoke-interface {v5, v2, v3, v6}, Lorg/jpos/iso/Interpreter;->interpret(Ljava/lang/String;[BI)V

    .line 152
    return-object v3

    .line 141
    .end local v1    # "tag":I
    .end local v2    # "paddedData":Ljava/lang/String;
    .end local v3    # "rawData":[B
    .end local v4    # "rawLen":[B
    :cond_0
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long. Max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

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

    .line 153
    .end local v0    # "data":Ljava/lang/String;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "packing"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOTagStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterpreter(Lorg/jpos/iso/Interpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/Interpreter;

    .line 104
    iput-object p1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 105
    return-void
.end method

.method public setPadder(Lorg/jpos/iso/Padder;)V
    .locals 0
    .param p1, "padder"    # Lorg/jpos/iso/Padder;

    .line 96
    iput-object p1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 97
    return-void
.end method

.method public setPrefixer(Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 112
    iput-object p1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 113
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

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 168
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1, p2, p3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 169
    iget-object v1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    add-int v2, p3, v0

    invoke-interface {v1, p2, v2}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    .line 170
    .local v1, "len":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 176
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

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

    .line 178
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "offset":I
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    .line 179
    .local v2, "lenLen":I
    iget-object v3, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    add-int v4, p3, v0

    add-int/2addr v4, v2

    invoke-interface {v3, p2, v4, v1}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "unpacked":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 181
    add-int v4, v0, v2

    iget-object v5, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v5, v1}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v5

    return v4

    .line 182
    .end local v0    # "tagLen":I
    .end local v1    # "len":I
    .end local v2    # "lenLen":I
    .end local v3    # "unpacked":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOTagStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

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

    .line 197
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 198
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 199
    iget-object v1, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 201
    .local v1, "lenLen":I
    if-nez v1, :cond_0

    .line 202
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v2

    .local v2, "len":I
    goto :goto_0

    .line 204
    .end local v2    # "len":I
    :cond_0
    iget-object v2, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/ISOTagStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    invoke-interface {v2, v4, v3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v2

    .line 205
    .restart local v2    # "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v4

    if-lez v4, :cond_2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v4

    if-gt v2, v4, :cond_1

    goto :goto_0

    .line 206
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOTagStringFieldPackager;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v3

    .line 208
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v4, v2}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v4

    .line 209
    .local v4, "packedLen":I
    iget-object v5, p0, Lorg/jpos/iso/ISOTagStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {p0, p2, v4}, Lorg/jpos/iso/ISOTagStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-interface {v5, v6, v3, v2}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "unpacked":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v0    # "tagLen":I
    .end local v1    # "lenLen":I
    .end local v2    # "len":I
    .end local v3    # "unpacked":Ljava/lang/String;
    .end local v4    # "packedLen":I
    nop

    .line 214
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOTagStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
