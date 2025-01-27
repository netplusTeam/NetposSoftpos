.class public Lcom/itextpdf/io/font/cmap/CMapUniCid;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapUniCid.java"


# static fields
.field private static final serialVersionUID:J = -0x54d18d8036f7c540L


# instance fields
.field private map:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 55
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    const v1, 0x10001

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    return-void
.end method


# virtual methods
.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 4
    .param p1, "mark"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/itextpdf/io/font/cmap/CMapObject;

    .line 59
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/font/cmap/CMapUniCid;->toUnicodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-static {v0, v1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v1

    .local v1, "codePoint":I
    goto :goto_0

    .line 65
    .end local v1    # "codePoint":I
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 67
    .restart local v1    # "codePoint":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 69
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "codePoint":I
    :cond_1
    return-void
.end method

.method public exportToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 7

    .line 76
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>()V

    .line 77
    .local v0, "uni":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v1}, Lcom/itextpdf/io/util/IntHashtable;->toOrderedKeys()[I

    move-result-object v1

    .line 78
    .local v1, "keys":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 79
    .local v4, "key":I
    iget-object v5, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v5

    invoke-static {v4}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->addChar(I[C)V

    .line 78
    .end local v4    # "key":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/cmap/CMapUniCid;->lookup(I)I

    move-result v3

    .line 82
    .local v3, "spaceCid":I
    if-eqz v3, :cond_1

    .line 83
    invoke-static {v2}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->addChar(I[C)V

    .line 85
    :cond_1
    return-object v0
.end method

.method public lookup(I)I
    .locals 1
    .param p1, "character"    # I

    .line 72
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapUniCid;->map:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method
