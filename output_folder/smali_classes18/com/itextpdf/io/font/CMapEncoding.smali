.class public Lcom/itextpdf/io/font/CMapEncoding;
.super Ljava/lang/Object;
.source "CMapEncoding.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x218f7ee977068b31L


# instance fields
.field private cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

.field private cid2Uni:Lcom/itextpdf/io/font/cmap/CMapCidUni;

.field private cmap:Ljava/lang/String;

.field private code2Cid:Lcom/itextpdf/io/util/IntHashtable;

.field private codeSpaceRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private isDirect:Z

.field private uniMap:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    const/4 v0, 0x2

    new-array v1, v0, [[B

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/CMapEncoding;->IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmap"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    .line 85
    const-string v0, "Identity-H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Identity-V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    .line 90
    :cond_1
    sget-object v0, Lcom/itextpdf/io/font/CMapEncoding;->IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cmap"    # Ljava/lang/String;
    .param p2, "uniMap"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lcom/itextpdf/io/font/CMapEncoding;->uniMap:Ljava/lang/String;

    .line 101
    const-string v0, "Identity-H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Identity-V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/io/font/FontCache;->getCid2Byte(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidByte;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    .line 107
    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getReversMap()Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->code2Cid:Lcom/itextpdf/io/util/IntHashtable;

    .line 108
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getCodeSpaceRanges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    goto :goto_1

    .line 102
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/itextpdf/io/font/FontCache;->getCid2UniCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidUni;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Uni:Lcom/itextpdf/io/font/cmap/CMapCidUni;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    .line 104
    sget-object v0, Lcom/itextpdf/io/font/CMapEncoding;->IDENTITY_H_V_CODESPACE_RANGES:Ljava/util/List;

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    .line 110
    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "cmap"    # Ljava/lang/String;
    .param p2, "cmapBytes"    # [B

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-direct {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    .line 116
    :try_start_0
    new-instance v1, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;

    invoke-direct {v1, p2}, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;-><init>([B)V

    invoke-static {p1, v0, v1}, Lcom/itextpdf/io/font/cmap/CMapParser;->parseCid(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;Lcom/itextpdf/io/font/cmap/ICMapLocation;)V

    .line 117
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getReversMap()Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->code2Cid:Lcom/itextpdf/io/util/IntHashtable;

    .line 118
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getCodeSpaceRanges()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Failed to parse encoding stream."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static toInteger([B)I
    .locals 5
    .param p0, "bytes"    # [B

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "result":I
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 260
    .local v3, "b":B
    shl-int/lit8 v0, v0, 0x8

    .line 261
    and-int/lit16 v4, v3, 0xff

    add-int/2addr v0, v4

    .line 259
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return v0
.end method


# virtual methods
.method public containsCodeInCodeSpaceRange(II)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "length"    # I

    .line 236
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 237
    iget-object v1, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    if-ne p2, v1, :cond_3

    .line 238
    const/16 v1, 0xff

    .line 239
    .local v1, "mask":I
    const/4 v2, 0x0

    .line 240
    .local v2, "totalShift":I
    iget-object v3, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 241
    .local v3, "low":[B
    iget-object v4, p0, Lcom/itextpdf/io/font/CMapEncoding;->codeSpaceRanges:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 242
    .local v4, "high":[B
    const/4 v5, 0x1

    .line 243
    .local v5, "fitsIntoRange":Z
    add-int/lit8 v6, p2, -0x1

    .local v6, "ind":I
    :goto_1
    if-ltz v6, :cond_2

    .line 244
    and-int v7, p1, v1

    shr-int/2addr v7, v2

    .line 245
    .local v7, "actualByteValue":I
    aget-byte v8, v3, v6

    and-int/lit16 v8, v8, 0xff

    if-lt v7, v8, :cond_0

    aget-byte v8, v4, v6

    and-int/lit16 v8, v8, 0xff

    if-le v7, v8, :cond_1

    .line 246
    :cond_0
    const/4 v5, 0x0

    .line 243
    .end local v7    # "actualByteValue":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v2, v2, 0x8

    shl-int/lit8 v1, v1, 0x8

    goto :goto_1

    .line 249
    .end local v6    # "ind":I
    :cond_2
    if-eqz v5, :cond_3

    .line 250
    const/4 v6, 0x1

    return v6

    .line 236
    .end local v1    # "mask":I
    .end local v2    # "totalShift":I
    .end local v3    # "low":[B
    .end local v4    # "high":[B
    .end local v5    # "fitsIntoRange":Z
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public fillCmapBytes(I[BI)I
    .locals 4
    .param p1, "cid"    # I
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .line 197
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    .line 198
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "offset":I
    .local v0, "offset":I
    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 199
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "offset":I
    .restart local p3    # "offset":I
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_1

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object v0

    .line 202
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 203
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "offset":I
    .local v2, "offset":I
    aget-byte v3, v0, v1

    aput-byte v3, p2, p3

    .line 202
    add-int/lit8 v1, v1, 0x1

    move p3, v2

    goto :goto_0

    .line 206
    .end local v0    # "bytes":[B
    .end local v1    # "i":I
    .end local v2    # "offset":I
    .restart local p3    # "offset":I
    :cond_1
    :goto_1
    return p3
.end method

.method public fillCmapBytes(ILcom/itextpdf/io/source/ByteBuffer;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "buffer"    # Lcom/itextpdf/io/source/ByteBuffer;

    .line 210
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    .line 211
    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 212
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object v0

    .line 215
    .local v0, "bytes":[B
    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 217
    .end local v0    # "bytes":[B
    :goto_0
    return-void
.end method

.method public getCidCode(I)I
    .locals 1
    .param p1, "cmapCode"    # I

    .line 228
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    .line 229
    return p1

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->code2Cid:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method

.method public getCmapBytes(I)[B
    .locals 3
    .param p1, "cid"    # I

    .line 190
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytesLength(I)I

    move-result v0

    .line 191
    .local v0, "length":I
    new-array v1, v0, [B

    .line 192
    .local v1, "result":[B
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/io/font/CMapEncoding;->fillCmapBytes(I[BI)I

    .line 193
    return-object v1
.end method

.method public getCmapBytesLength(I)I
    .locals 1
    .param p1, "cid"    # I

    .line 220
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x2

    return v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getCmapCode(I)I
    .locals 1
    .param p1, "cid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    if-eqz v0, :cond_0

    .line 183
    return p1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->lookup(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/io/font/CMapEncoding;->toInteger([B)I

    move-result v0

    return v0
.end method

.method public getCmapName()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "Identity"

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getOrdering()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistry()Ljava/lang/String;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "Adobe"

    return-object v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getRegistry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupplement()I
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cid2Code:Lcom/itextpdf/io/font/cmap/CMapCidByte;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/cmap/CMapCidByte;->getSupplement()I

    move-result v0

    return v0
.end method

.method public getUniMapName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->uniMap:Ljava/lang/String;

    return-object v0
.end method

.method public hasUniMap()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->uniMap:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "cmap"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->cmap:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/itextpdf/io/font/CMapEncoding;->isDirect:Z

    return v0
.end method
