.class public Lcom/itextpdf/io/font/cmap/CMapByteCid;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapByteCid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7abb1f6c83537085L


# instance fields
.field private planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    .line 72
    const/16 v1, 0x100

    new-array v1, v1, [I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private encodeSequence([BI)V
    .locals 9
    .param p1, "seq"    # [B
    .param p2, "cid"    # I

    .line 118
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 119
    .local v0, "size":I
    const/4 v1, 0x0

    .line 120
    .local v1, "nextPlane":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    const-string v3, "Inconsistent mapping."

    const v4, 0x8000

    if-ge v2, v0, :cond_3

    .line 121
    iget-object v5, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 122
    .local v5, "plane":[I
    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    .line 123
    .local v6, "one":I
    aget v7, v5, v6

    .line 124
    .local v7, "c":I
    if-eqz v7, :cond_1

    and-int v8, v7, v4

    if-eqz v8, :cond_0

    goto :goto_1

    .line 125
    :cond_0
    new-instance v4, Lcom/itextpdf/io/IOException;

    invoke-direct {v4, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_1
    :goto_1
    if-nez v7, :cond_2

    .line 127
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    const/16 v8, 0x100

    new-array v8, v8, [I

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    or-int v7, v3, v4

    .line 129
    aput v7, v5, v6

    .line 131
    :cond_2
    and-int/lit16 v1, v7, 0x7fff

    .line 120
    .end local v5    # "plane":[I
    .end local v6    # "one":I
    .end local v7    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "idx":I
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 134
    .local v2, "plane":[I
    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    .line 135
    .local v5, "one":I
    aget v6, v2, v5

    .line 136
    .local v6, "c":I
    and-int/2addr v4, v6

    if-nez v4, :cond_4

    .line 138
    aput p2, v2, v5

    .line 139
    return-void

    .line 137
    :cond_4
    new-instance v4, Lcom/itextpdf/io/IOException;

    invoke-direct {v4, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 2
    .param p1, "mark"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/itextpdf/io/font/cmap/CMapObject;

    .line 77
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/CMapByteCid;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/io/font/cmap/CMapByteCid;->encodeSequence([BI)V

    .line 80
    :cond_0
    return-void
.end method

.method public decodeSequence([BII)Ljava/lang/String;
    .locals 4
    .param p1, "cidBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;

    invoke-direct {v1, p2, p3}, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;-><init>(II)V

    .line 94
    .local v1, "cursor":Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/itextpdf/io/font/cmap/CMapByteCid;->decodeSingle([BLcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;)I

    move-result v2

    move v3, v2

    .local v3, "cid":I
    if-ltz v2, :cond_0

    .line 95
    int-to-char v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected decodeSingle([BLcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;)I
    .locals 6
    .param p1, "cidBytes"    # [B
    .param p2, "cursor"    # Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;

    .line 101
    iget v0, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    iget v1, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    add-int/2addr v0, v1

    .line 102
    .local v0, "end":I
    const/4 v1, 0x0

    .line 103
    .local v1, "currentPlane":I
    :goto_0
    iget v2, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    if-ge v2, v0, :cond_1

    .line 104
    iget v2, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->offset:I

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 105
    .local v2, "one":I
    iget v3, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p2, Lcom/itextpdf/io/font/cmap/CMapByteCid$Cursor;->length:I

    .line 106
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapByteCid;->planes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 107
    .local v3, "plane":[I
    aget v4, v3, v2

    .line 108
    .local v4, "cid":I
    const v5, 0x8000

    and-int/2addr v5, v4

    if-nez v5, :cond_0

    .line 109
    return v4

    .line 111
    :cond_0
    and-int/lit16 v1, v4, 0x7fff

    .line 113
    .end local v2    # "one":I
    .end local v3    # "plane":[I
    .end local v4    # "cid":I
    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, -0x1

    return v2
.end method
