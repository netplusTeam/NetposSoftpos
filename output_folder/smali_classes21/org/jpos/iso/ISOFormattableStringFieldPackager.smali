.class public Lorg/jpos/iso/ISOFormattableStringFieldPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOFormattableStringFieldPackager.java"


# instance fields
.field private headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

.field private interpreter:Lorg/jpos/iso/Interpreter;

.field private padder:Lorg/jpos/iso/Padder;

.field private prefixer:Lorg/jpos/iso/Prefixer;

.field private tagPrefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 50
    sget-object v0, Lorg/jpos/iso/AsciiPrefixer;->L:Lorg/jpos/iso/AsciiPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 51
    sget-object v0, Lorg/jpos/iso/LiteralInterpreter;->INSTANCE:Lorg/jpos/iso/LiteralInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 52
    sget-object v0, Lorg/jpos/iso/NullPadder;->INSTANCE:Lorg/jpos/iso/NullPadder;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 53
    sget-object v0, Lorg/jpos/iso/NullPrefixer;->INSTANCE:Lorg/jpos/iso/NullPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 54
    sget-object v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->TAG_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/IsoFieldHeaderFormatter;)V
    .locals 0
    .param p1, "maxLength"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p4, "padder"    # Lorg/jpos/iso/Padder;
    .param p5, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p6, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p7, "headerFormatter"    # Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 108
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 109
    iput-object p3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 110
    iput-object p4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 111
    iput-object p5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 112
    iput-object p6, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 113
    iput-object p7, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 114
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;)V
    .locals 1
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "padder"    # Lorg/jpos/iso/Padder;
    .param p3, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p4, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;

    .line 67
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 69
    iput-object p2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 70
    iput-object p3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 71
    iput-object p4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 72
    sget-object v0, Lorg/jpos/iso/IsoFieldHeaderFormatter;->TAG_FIRST:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iput-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Padder;Lorg/jpos/iso/Interpreter;Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/IsoFieldHeaderFormatter;)V
    .locals 0
    .param p1, "tagPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p2, "padder"    # Lorg/jpos/iso/Padder;
    .param p3, "interpreter"    # Lorg/jpos/iso/Interpreter;
    .param p4, "lengthPrefixer"    # Lorg/jpos/iso/Prefixer;
    .param p5, "headerFormatter"    # Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 87
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    .line 89
    iput-object p2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 90
    iput-object p3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 91
    iput-object p4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 92
    iput-object p5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 93
    return-void
.end method

.method private makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "operation"    # Ljava/lang/String;

    .line 169
    const-string v0, "unknown"

    .line 170
    .local v0, "fieldKey":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 173
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    .line 174
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

    .line 145
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    return-object v0
.end method

.method public getMaxPackedLength()I
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 13
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 183
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 185
    .local v1, "valueLength":I
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 188
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 189
    .local v2, "tag":I
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lorg/jpos/iso/Padder;->pad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "paddedValue":Ljava/lang/String;
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v5}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v5, v6}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 192
    .local v4, "rawData":[B
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v5}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v5

    new-array v5, v5, [B

    move-object v11, v5

    .line 193
    .local v11, "rawTagData":[B
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v5, v2, v11}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 195
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v5}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v5

    new-array v5, v5, [B

    move-object v12, v5

    .line 197
    .local v12, "rawLen":[B
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    invoke-virtual {v6}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->isTagFirst()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v7}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    invoke-interface {v5, v6, v12}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 199
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    iget-object v7, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    move-object v8, v11

    move-object v9, v12

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->format(Lorg/jpos/iso/Prefixer;Lorg/jpos/iso/Prefixer;[B[B[B)V

    .line 201
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    iget-object v6, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v6}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v6

    iget-object v7, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v7}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v7

    add-int/2addr v6, v7

    invoke-interface {v5, v3, v4, v6}, Lorg/jpos/iso/Interpreter;->interpret(Ljava/lang/String;[BI)V

    .line 203
    return-object v4

    .line 186
    .end local v2    # "tag":I
    .end local v3    # "paddedValue":Ljava/lang/String;
    .end local v4    # "rawData":[B
    .end local v11    # "rawTagData":[B
    .end local v12    # "rawLen":[B
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "valueLength":I
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "packing"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setHeaderFormatter(Lorg/jpos/iso/IsoFieldHeaderFormatter;)V
    .locals 0
    .param p1, "headerFormatter"    # Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 153
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    .line 154
    return-void
.end method

.method public setInterpreter(Lorg/jpos/iso/Interpreter;)V
    .locals 0
    .param p1, "interpreter"    # Lorg/jpos/iso/Interpreter;

    .line 129
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 130
    return-void
.end method

.method public setPadder(Lorg/jpos/iso/Padder;)V
    .locals 0
    .param p1, "padder"    # Lorg/jpos/iso/Padder;

    .line 121
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    .line 122
    return-void
.end method

.method public setPrefixer(Lorg/jpos/iso/Prefixer;)V
    .locals 0
    .param p1, "prefixer"    # Lorg/jpos/iso/Prefixer;

    .line 137
    iput-object p1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 138
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

    .line 219
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 220
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v2, v3}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getTagIndex(Lorg/jpos/iso/Prefixer;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, p2, v2}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 221
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v2, v3}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getLengthIndex(Lorg/jpos/iso/Prefixer;)I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, p2, v2}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v1

    .line 222
    .local v1, "len":I
    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    invoke-virtual {v2}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->isTagFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    sub-int/2addr v1, v2

    .line 225
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 228
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 230
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_2

    goto :goto_0

    .line 231
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

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

    .line 233
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    .restart local p3    # "offset":I
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v2}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v2

    .line 235
    .local v2, "lenLen":I
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v4}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v4

    add-int/2addr v4, p3

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v5}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v5

    add-int/2addr v4, v5

    invoke-interface {v3, p2, v4, v1}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "unpacked":Ljava/lang/String;
    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    invoke-interface {v4, v3}, Lorg/jpos/iso/Padder;->unpad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 238
    add-int v4, v0, v2

    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v5, v1}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v4, v5

    return v4

    .line 239
    .end local v0    # "tagLen":I
    .end local v1    # "len":I
    .end local v2    # "lenLen":I
    .end local v3    # "unpacked":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

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

    .line 254
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v0

    .line 255
    .local v0, "tagLen":I
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v1}, Lorg/jpos/iso/Prefixer;->getPackedLength()I

    move-result v1

    .line 256
    .local v1, "lenLen":I
    :goto_0
    const/4 v2, -0x1

    .line 257
    .local v2, "len":I
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->headerFormatter:Lorg/jpos/iso/IsoFieldHeaderFormatter;

    iget-object v4, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {v3, v4}, Lorg/jpos/iso/IsoFieldHeaderFormatter;->getTagIndex(Lorg/jpos/iso/Prefixer;)I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 258
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 259
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    move v2, v3

    goto :goto_1

    .line 261
    :cond_1
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    move v2, v3

    .line 262
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->tagPrefixer:Lorg/jpos/iso/Prefixer;

    invoke-virtual {p0, p2, v0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 264
    :goto_1
    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v3

    if-lez v3, :cond_3

    if-lez v2, :cond_3

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v3

    if-gt v2, v3, :cond_2

    goto :goto_2

    .line 265
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

    invoke-virtual {p0}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "in":Ljava/io/InputStream;
    throw v3

    .line 267
    .restart local p1    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v3, v2}, Lorg/jpos/iso/Interpreter;->getPackedLength(I)I

    move-result v3

    .line 268
    .local v3, "packedLen":I
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-virtual {p0, p2, v3}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v6

    invoke-interface {v5, v6, v4, v2}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "unpacked":Ljava/lang/String;
    iget-object v5, p0, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->padder:Lorg/jpos/iso/Padder;

    invoke-interface {v5, v4}, Lorg/jpos/iso/Padder;->unpad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "tagLen":I
    .end local v1    # "lenLen":I
    .end local v2    # "len":I
    .end local v3    # "packedLen":I
    .end local v4    # "unpacked":Ljava/lang/String;
    nop

    .line 273
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "unpacking"

    invoke-direct {p0, p1, v2}, Lorg/jpos/iso/ISOFormattableStringFieldPackager;->makeExceptionMessage(Lorg/jpos/iso/ISOComponent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
