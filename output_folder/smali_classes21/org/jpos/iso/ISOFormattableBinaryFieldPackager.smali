.class public Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOFormattableBinaryFieldPackager.java"


# instance fields
.field private headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

.field private interpreter:Lorg/jpos/iso/BinaryInterpreter;

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

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 52
    sget-object v0, Lorg/jpos/iso/LiteralBinaryInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralBinaryInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 53
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 54
    sget-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 55
    sget-object v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->TAG_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 56
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/IsoFieldHeaderFormatter;)V
    .locals 0
    .param p1, "maxLength"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p4, "padder"    # Lorg/jpos/iso/Padder;
    .param p5, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p6, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p7, "headerFormatter"    # Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 109
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 110
    iput-object p3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 111
    iput-object p4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 112
    iput-object p5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 113
    iput-object p6, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 114
    iput-object p7, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 1
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "padder"    # Lorg/jpos/iso/Padder;
    .param p3, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p4, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 68
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 70
    iput-object p2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 71
    iput-object p3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 72
    iput-object p4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 73
    sget-object v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->TAG_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/BinaryInterpreter;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/IsoFieldHeaderFormatter;)V
    .locals 0
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "padder"    # Lorg/jpos/iso/Padder;
    .param p3, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;
    .param p4, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p5, "headerFormatter"    # Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 88
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 90
    iput-object p2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 91
    iput-object p3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 92
    iput-object p4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 93
    iput-object p5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 94
    return-void
.end method

.method private makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "operation"    # Ljava/lang/String;

    .line 170
    const-string v0, "unknown"

    .line 171
    .local v0, "fieldKey":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 174
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 175
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
.method public getHeaderFormatter()Lorg/jpos/iso/IsoFieldHeaderFormatter;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    return-object v0
.end method

.method public getMaxPackedLength()I
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 12
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 185
    .local v0, "valueBytes":[B
    array-length v1, v0

    if-ltz v1, :cond_2

    array-length v1, v0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 188
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 189
    .local v1, "tag":I
    move-object v2, v0

    .line 191
    .local v2, "paddedValueBytes":[B
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    instance-of v4, v3, Lorg/jpos/iso/NullPadder;

    if-nez v4, :cond_0

    .line 192
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lorg/jpos/iso/Padder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v3

    move-object v2, v3

    .line 194
    :cond_0
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v3}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v3

    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    array-length v5, v2

    invoke-interface {v4, v5}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 195
    .local v3, "rawData":[B
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    new-array v4, v4, [B

    move-object v10, v4

    .line 196
    .local v10, "rawTagData":[B
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4, v1, v10}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 198
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    new-array v4, v4, [B

    move-object v11, v4

    .line 199
    .local v11, "rawLen":[B
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    invoke-virtual {v5}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->isTagFirst()Z

    move-result v5

    if-nez v5, :cond_1

    array-length v5, v2

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v6}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    array-length v5, v2

    :goto_0
    invoke-interface {v4, v5, v11}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 201
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    move-object v7, v10

    move-object v8, v11

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->format(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;[B[B[B)V

    .line 203
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    iget-object v7, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v5, v6, v7}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getTotalLength(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;)I

    move-result v5

    invoke-interface {v4, v2, v3, v5}, Lorg/jpos/iso/BinaryInterpreter;->interpret([B[BI)V

    .line 205
    return-object v3

    .line 186
    .end local v1    # "tag":I
    .end local v2    # "paddedValueBytes":[B
    .end local v3    # "rawData":[B
    .end local v10    # "rawTagData":[B
    .end local v11    # "rawLen":[B
    :cond_2
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

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

    .line 206
    .end local v0    # "valueBytes":[B
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "packing"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHeaderFormatter(Lorg/jpos/iso/IsoFieldHeaderFormatter;)V
    .locals 0
    .param p1, "headerFormatter"    # Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 154
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 155
    return-void
.end method

.method public setInterpreter(Lorg/jpos/iso/BinaryInterpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/BinaryInterpreter;

    .line 130
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    .line 131
    return-void
.end method

.method public setPadder(Lorg/jpos/iso/Padder;)V
    .locals 0
    .param p1, "padder"    # Lorg/jpos/iso/Padder;

    .line 122
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 123
    return-void
.end method

.method public setPrefixer(Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 138
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 139
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 222
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v2, v3}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getTagIndex(Lorg/jpos/iso/Prefixer;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, p2, v2}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 223
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v2, v3}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getLengthIndex(Lorg/jpos/iso/Prefixer;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, p2, v2}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    .line 224
    .local v1, "len":I
    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    invoke-virtual {v2}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->isTagFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    sub-int/2addr v1, v2

    .line 227
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 230
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    goto :goto_0

    .line 232
    :cond_2
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

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

    .line 234
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "offset":I
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    .line 235
    .local v2, "lenLen":I
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    add-int/2addr v4, p3

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v5}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, p2, v4, v1}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v3

    .line 237
    .local v3, "unpacked":[B
    move-object v4, v3

    .line 238
    .local v4, "paddedValueBytes":[B
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->padder:Lorg/jpos/iso/Padder;

    instance-of v6, v5, Lorg/jpos/iso/NullPadder;

    if-nez v6, :cond_4

    .line 239
    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/jpos/iso/Padder;->unpad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v5

    move-object v4, v5

    .line 241
    :cond_4
    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 242
    add-int v5, v0, v2

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v6, v1}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v5, v6

    return v5

    .line 243
    .end local v0    # "tagLen":I
    .end local v1    # "len":I
    .end local v2    # "lenLen":I
    .end local v3    # "unpacked":[B
    .end local v4    # "paddedValueBytes":[B
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

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

    .line 259
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 260
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 261
    .local v1, "lenLen":I
    :goto_0
    const/4 v2, -0x1

    .line 262
    .local v2, "len":I
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v3, v4}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getTagIndex(Lorg/jpos/iso/Prefixer;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 263
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 264
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    move v2, v3

    goto :goto_1

    .line 266
    :cond_1
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    move v2, v3

    .line 267
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 269
    :goto_1
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v3

    if-gt v2, v3, :cond_2

    goto :goto_2

    .line 270
    :cond_2
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v3

    .line 272
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-interface {v3, v2}, Lorg/jpos/iso/BinaryInterpreter;->getPackedLength(I)I

    move-result v3

    .line 273
    .local v3, "packedLen":I
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->interpreter:Lorg/jpos/iso/BinaryInterpreter;

    invoke-virtual {p0, p2, v3}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-interface {v5, v6, v4, v2}, Lorg/jpos/iso/BinaryInterpreter;->uninterpret([BII)[B

    move-result-object v4

    .line 274
    .local v4, "unpacked":[B
    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0    # "tagLen":I
    .end local v1    # "lenLen":I
    .end local v2    # "len":I
    .end local v3    # "packedLen":I
    .end local v4    # "unpacked":[B
    nop

    .line 278
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOFormattableBinaryFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
