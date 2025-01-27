.class public abstract Lcom/itextpdf/io/font/cmap/AbstractCMap;
.super Ljava/lang/Object;
.source "AbstractCMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x7db28edf23c74153L


# instance fields
.field private cmapName:Ljava/lang/String;

.field private ordering:Ljava/lang/String;

.field private registry:Ljava/lang/String;

.field private supplement:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToInt([B)I
    .locals 3
    .param p0, "b"    # [B

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 170
    shl-int/lit8 v0, v0, 0x8

    .line 171
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "k":I
    :cond_0
    return v0
.end method

.method public static decodeStringToByte(Ljava/lang/String;)[B
    .locals 3
    .param p0, "range"    # Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 141
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 142
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static intToByteArray(I[B)V
    .locals 2
    .param p0, "n"    # I
    .param p1, "b"    # [B

    .line 161
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "k":I
    :goto_0
    if-ltz v0, :cond_0

    .line 162
    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 163
    ushr-int/lit8 p0, p0, 0x8

    .line 161
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    .end local v0    # "k":I
    :cond_0
    return-void
.end method


# virtual methods
.method abstract addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
.end method

.method addCodeSpaceRange([B[B)V
    .locals 0
    .param p1, "low"    # [B
    .param p2, "high"    # [B

    .line 99
    return-void
.end method

.method addRange(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 11
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "code"    # Lcom/itextpdf/io/font/cmap/CMapObject;

    .line 102
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    .local v0, "a1":[B
    invoke-static {p2}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 104
    .local v1, "a2":[B
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_6

    array-length v2, v0

    if-eqz v2, :cond_6

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, "sout":[B
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isString()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 111
    :cond_0
    invoke-static {v0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->byteArrayToInt([B)I

    move-result v3

    .line 112
    .local v3, "start":I
    invoke-static {v1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->byteArrayToInt([B)I

    move-result v4

    .line 113
    .local v4, "end":I
    move v5, v3

    .local v5, "k":I
    :goto_0
    if-gt v5, v4, :cond_5

    .line 114
    invoke-static {v5, v0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->intToByteArray(I[B)V

    .line 115
    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "mark":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isArray()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 117
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 118
    .local v7, "codes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/cmap/CMapObject;>;"
    sub-int v8, v5, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/io/font/cmap/CMapObject;

    invoke-virtual {p0, v6, v8}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V

    .line 119
    .end local v7    # "codes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/cmap/CMapObject;>;"
    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 120
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, v5

    sub-int/2addr v7, v3

    .line 121
    .local v7, "nn":I
    new-instance v8, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v9, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v6, v8}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V

    .end local v7    # "nn":I
    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p3}, Lcom/itextpdf/io/font/cmap/CMapObject;->isString()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 123
    new-instance v7, Lcom/itextpdf/io/font/cmap/CMapObject;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v2}, Lcom/itextpdf/io/font/cmap/CMapObject;-><init>(ILjava/lang/Object;)V

    .line 124
    .local v7, "s1":Lcom/itextpdf/io/font/cmap/CMapObject;
    invoke-virtual {p0, v6, v7}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V

    .line 125
    if-eqz v2, :cond_3

    .line 126
    invoke-static {v2}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->byteArrayToInt([B)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8, v2}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->intToByteArray(I[B)V

    goto :goto_2

    .line 125
    :cond_3
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 122
    .end local v7    # "s1":Lcom/itextpdf/io/font/cmap/CMapObject;
    :cond_4
    :goto_1
    nop

    .line 113
    .end local v6    # "mark":Ljava/lang/String;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v5    # "k":I
    :cond_5
    return-void

    .line 105
    .end local v2    # "sout":[B
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid map."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->cmapName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->ordering:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->registry:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->supplement:I

    return v0
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cmapName"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->cmapName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method setOrdering(Ljava/lang/String;)V
    .locals 0
    .param p1, "ordering"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->ordering:Ljava/lang/String;

    .line 78
    return-void
.end method

.method setRegistry(Ljava/lang/String;)V
    .locals 0
    .param p1, "registry"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->registry:Ljava/lang/String;

    .line 86
    return-void
.end method

.method setSupplement(I)V
    .locals 0
    .param p1, "supplement"    # I

    .line 93
    iput p1, p0, Lcom/itextpdf/io/font/cmap/AbstractCMap;->supplement:I

    .line 94
    return-void
.end method

.method protected toUnicodeString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isHexWriting"    # Z

    .line 148
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/AbstractCMap;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 149
    .local v0, "bytes":[B
    if-eqz p2, :cond_0

    .line 150
    const-string v1, "UnicodeBigUnmarked"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 152
    :cond_0
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 153
    const-string v1, "UnicodeBig"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 155
    :cond_1
    const-string v1, "PDF"

    invoke-static {v0, v1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
