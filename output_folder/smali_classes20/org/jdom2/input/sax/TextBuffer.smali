.class final Lorg/jdom2/input/sax/TextBuffer;
.super Ljava/lang/Object;
.source "TextBuffer.java"


# instance fields
.field private array:[C

.field private arraySize:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 89
    return-void
.end method


# virtual methods
.method append([CII)V
    .locals 4
    .param p1, "source"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 102
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    add-int v1, p3, v0

    iget-object v2, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 104
    add-int/2addr v0, p3

    array-length v1, v2

    shr-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lorg/jdom2/internal/ArrayCopy;->copyOf([CI)[C

    move-result-object v0

    iput-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    iget v1, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 108
    return-void
.end method

.method clear()V
    .locals 1

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 115
    return-void
.end method

.method isAllWhitespace()Z
    .locals 2

    .line 123
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    .line 124
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 125
    iget-object v1, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lorg/jdom2/Verifier;->isXMLWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    return v1

    .line 129
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    iget v0, p0, Lorg/jdom2/input/sax/TextBuffer;->arraySize:I

    if-nez v0, :cond_0

    .line 136
    const-string v0, ""

    return-object v0

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/jdom2/input/sax/TextBuffer;->array:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
