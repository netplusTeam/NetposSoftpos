.class public Lcom/itextpdf/io/font/cmap/CMapCidByte;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapCidByte.java"


# static fields
.field private static final serialVersionUID:J = 0x44c776033befc400L


# instance fields
.field private final EMPTY:[B

.field private codeSpaceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    .line 60
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->EMPTY:[B

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 3
    .param p1, "mark"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/itextpdf/io/font/cmap/CMapObject;

    .line 65
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->decodeStringToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 67
    .local v0, "ser":[B
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v0    # "ser":[B
    :cond_0
    return-void
.end method

.method addCodeSpaceRange([B[B)V
    .locals 1
    .param p1, "low"    # [B
    .param p2, "high"    # [B

    .line 106
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public getCodeSpaceRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->codeSpaceRanges:Ljava/util/List;

    return-object v0
.end method

.method public getReversMap()Lcom/itextpdf/io/util/IntHashtable;
    .locals 9

    .line 81
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    .line 82
    .local v0, "code2cid":Lcom/itextpdf/io/util/IntHashtable;
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    .local v2, "cid":I
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 84
    .local v3, "bytes":[B
    const/4 v4, 0x0

    .line 85
    .local v4, "byteCode":I
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-byte v7, v3, v6

    .line 86
    .local v7, "b":B
    shl-int/lit8 v4, v4, 0x8

    .line 87
    and-int/lit16 v8, v7, 0xff

    add-int/2addr v4, v8

    .line 85
    .end local v7    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {v0, v4, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 90
    .end local v2    # "cid":I
    .end local v3    # "bytes":[B
    .end local v4    # "byteCode":I
    goto :goto_0

    .line 91
    :cond_1
    return-object v0
.end method

.method public lookup(I)[B
    .locals 2
    .param p1, "cid"    # I

    .line 72
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 73
    .local v0, "ser":[B
    if-nez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapCidByte;->EMPTY:[B

    return-object v1

    .line 76
    :cond_0
    return-object v0
.end method
