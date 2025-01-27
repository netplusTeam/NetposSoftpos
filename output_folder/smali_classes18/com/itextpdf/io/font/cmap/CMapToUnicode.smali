.class public Lcom/itextpdf/io/font/cmap/CMapToUnicode;
.super Lcom/itextpdf/io/font/cmap/AbstractCMap;
.source "CMapToUnicode.java"


# static fields
.field public static EmptyCMapToUnicodeMap:Lcom/itextpdf/io/font/cmap/CMapToUnicode; = null

.field private static final serialVersionUID:J = 0xe66907f4b0be5f0L


# instance fields
.field private byteMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>(Z)V

    sput-object v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->EmptyCMapToUnicodeMap:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    .line 78
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "emptyCMap"    # Z

    .line 69
    invoke-direct {p0}, Lcom/itextpdf/io/font/cmap/AbstractCMap;-><init>()V

    .line 70
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    .line 71
    return-void
.end method

.method private convertToInt([C)I
    .locals 3
    .param p1, "s"    # [C

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "value":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 156
    aget-char v2, p1, v1

    add-int/2addr v0, v2

    .line 157
    shl-int/lit8 v0, v0, 0x8

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    .end local v1    # "i":I
    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p1, v1

    add-int/2addr v0, v1

    .line 160
    return v0
.end method

.method private createCharsFromDoubleBytes([B)[C
    .locals 5
    .param p1, "bytes"    # [B

    .line 194
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 195
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 196
    div-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 195
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 198
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private createCharsFromSingleBytes([B)[C
    .locals 3
    .param p1, "bytes"    # [B

    .line 182
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 183
    new-array v0, v1, [C

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    return-object v0

    .line 185
    :cond_0
    array-length v0, p1

    new-array v0, v0, [C

    .line 186
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 187
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getIdentity()Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 3

    .line 81
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>()V

    .line 82
    .local v0, "uni":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const v2, 0x10001

    if-ge v1, v2, :cond_0

    .line 83
    invoke-static {v1}, Lcom/itextpdf/io/util/TextUtil;->convertFromUtf32(I)[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->addChar(I[C)V

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method addChar(I[C)V
    .locals 2
    .param p1, "cid"    # I
    .param p2, "uni"    # [C

    .line 164
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    return-void
.end method

.method addChar(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/CMapObject;)V
    .locals 4
    .param p1, "mark"    # Ljava/lang/String;
    .param p2, "code"    # Lcom/itextpdf/io/font/cmap/CMapObject;

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 170
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createCharsFromDoubleBytes([B)[C

    move-result-object v0

    .line 171
    .local v0, "dest":[C
    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v0    # "dest":[C
    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 173
    invoke-virtual {p2}, Lcom/itextpdf/io/font/cmap/CMapObject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->createCharsFromDoubleBytes([B)[C

    move-result-object v0

    .line 174
    .restart local v0    # "dest":[C
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .end local v0    # "dest":[C
    goto :goto_0

    .line 176
    :cond_1
    const-class v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 177
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v1, "ToUnicode CMap more than 2 bytes not supported."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 179
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :goto_0
    return-void
.end method

.method public createDirectMapping()Lcom/itextpdf/io/util/IntHashtable;
    .locals 5

    .line 134
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    .line 135
    .local v0, "result":Lcom/itextpdf/io/util/IntHashtable;
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 136
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[C>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    invoke-direct {p0, v4}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->convertToInt([C)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 139
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[C>;"
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    return-object v0
.end method

.method public createReverseMapping()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[C>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [C

    invoke-direct {p0, v3}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->convertToInt([C)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[C>;"
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    return-object v0
.end method

.method public getCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasByteMappings()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookup(I)[C
    .locals 2
    .param p1, "code"    # I

    .line 126
    iget-object v0, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public lookup([B)[C
    .locals 2
    .param p1, "code"    # [B

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public lookup([BII)[C
    .locals 5
    .param p1, "code"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "result":[C
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 109
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 110
    .local v1, "key":I
    iget-object v2, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [C

    goto :goto_0

    .line 111
    .end local v1    # "key":I
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 112
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    .line 113
    .local v1, "intKey":I
    shl-int/lit8 v1, v1, 0x8

    .line 114
    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 115
    move v2, v1

    .line 116
    .local v2, "key":I
    iget-object v3, p0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->byteMappings:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [C

    .line 118
    .end local v1    # "intKey":I
    .end local v2    # "key":I
    :cond_1
    :goto_0
    return-object v0
.end method
