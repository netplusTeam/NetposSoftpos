.class public Lorg/jpos/iso/ISOStringFieldPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOStringFieldPackager.java"


# instance fields
.field private interpreter:Lorg/jpos/iso/Interpreter;

.field private padder:Lorg/jpos/iso/Padder;

.field private prefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 42
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    iput-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 43
    sget-object v0, Lorg/jpos/iso/LiteralInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 44
    sget-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "maxLength"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "padder"    # Lorg/jpos/iso/Padder;
    .param p4, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p5, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 73
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 74
    iput-object p3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 75
    iput-object p4, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 76
    iput-object p5, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "padder"    # Lorg/jpos/iso/Padder;
    .param p2, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p3, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 56
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 58
    iput-object p2, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 59
    iput-object p3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 60
    return-void
.end method

.method private makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "operation"    # Ljava/lang/String;

    .line 116
    const-string v0, "unknown"

    .line 117
    .local v0, "fieldKey":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 126
    :cond_0
    :goto_0
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
.method protected checkLength(II)V
    .locals 3
    .param p1, "len"    # I
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 240
    if-gt p1, p2, :cond_0

    .line 244
    return-void

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too long for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxPackedLength()I
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getBytes()[B

    move-result-object v1

    sget-object v2, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .local v0, "data":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0    # "data":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .restart local v0    # "data":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 149
    iget-object v1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lorg/jpos/iso/Padder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "paddedData":Ljava/lang/String;
    iget-object v2, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    iget-object v3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v3, v4}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 152
    .local v2, "rawData":[B
    iget-object v3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v3, v4, v2}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 153
    iget-object v3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    iget-object v4, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    invoke-interface {v3, v1, v2, v4}, Lorg/jpos/iso/Interpreter;->interpret(Ljava/lang/String;[BI)V

    .line 154
    return-object v2

    .line 147
    .end local v1    # "paddedData":Ljava/lang/String;
    .end local v2    # "rawData":[B
    :cond_1
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

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

    .line 155
    .end local v0    # "data":Ljava/lang/String;
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "packing"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterpreter(Lorg/jpos/iso/Interpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/Interpreter;

    .line 94
    iput-object p1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 95
    return-void
.end method

.method public setPadder(Lorg/jpos/iso/Padder;)V
    .locals 0
    .param p1, "padder"    # Lorg/jpos/iso/Padder;

    .line 85
    iput-object p1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 86
    return-void
.end method

.method public setPrefixer(Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 103
    iput-object p1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 104
    return-void
.end method

.method public setTrim(Z)V
    .locals 1
    .param p1, "trim"    # Z

    .line 224
    invoke-super {p0, p1}, Lorg/jpos/iso/ISOFieldPackager;->setTrim(Z)V

    .line 225
    if-eqz p1, :cond_0

    .line 226
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    iput-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 227
    :cond_0
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0, p2, p3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v0

    .line 173
    .local v0, "len":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 176
    iget-boolean v1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->trim:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v1

    array-length v2, p2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v1

    :goto_0
    move v0, v1

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v1

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 179
    :cond_2
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Field length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " too long. Max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    .end local p3    # "offset":I
    throw v1

    .line 181
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "offset":I
    :cond_3
    :goto_1
    iget-object v1, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 182
    .local v1, "lenLen":I
    iget-object v2, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    add-int v3, p3, v1

    invoke-interface {v2, p2, v3, v0}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "unpacked":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 184
    iget-object v3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v3, v0}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v1

    return v3

    .line 185
    .end local v0    # "len":I
    .end local v1    # "lenLen":I
    .end local v2    # "unpacked":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 204
    .local v0, "lenLen":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v2

    .local v2, "len":I
    goto :goto_0

    .line 209
    .end local v2    # "len":I
    :cond_0
    iget-object v2, p0, Lorg/jpos/iso/ISOStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v2

    .line 210
    .restart local v2    # "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v3

    if-lez v3, :cond_2

    if-lez v2, :cond_2

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v3

    if-gt v2, v3, :cond_1

    goto :goto_0

    .line 211
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Field length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too long. Max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOStringFieldPackager;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v1

    .line 213
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v3, v2}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v3

    .line 214
    .local v3, "packedLen":I
    iget-object v4, p0, Lorg/jpos/iso/ISOStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {p0, p2, v3}, Lorg/jpos/iso/ISOStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v4, v5, v1, v2}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "unpacked":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0    # "lenLen":I
    .end local v1    # "unpacked":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "packedLen":I
    nop

    .line 220
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
