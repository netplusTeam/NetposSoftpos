.class public final Lcom/itextpdf/layout/font/FontInfo;
.super Ljava/lang/Object;
.source "FontInfo.java"


# static fields
.field private static final fontNamesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/io/font/FontCacheKey;",
            "Lcom/itextpdf/io/font/FontProgramDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final alias:Ljava/lang/String;

.field private final descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

.field private final encoding:Ljava/lang/String;

.field private final fontData:[B

.field private final fontName:Ljava/lang/String;

.field private final hash:I

.field private final range:Lcom/itextpdf/layout/font/Range;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/layout/font/FontInfo;->fontNamesCache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V
    .locals 2
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontData"    # [B
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "descriptor"    # Lcom/itextpdf/io/font/FontProgramDescriptor;
    .param p5, "unicodeRange"    # Lcom/itextpdf/layout/font/Range;
    .param p6, "alias"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    .line 84
    iput-object p3, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    .line 86
    if-eqz p5, :cond_0

    move-object v0, p5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/itextpdf/layout/font/RangeBuilder;->getFullRange()Lcom/itextpdf/layout/font/Range;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    .line 87
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->alias:Ljava/lang/String;

    .line 88
    invoke-static {p1, p2, p3, v0}, Lcom/itextpdf/layout/font/FontInfo;->calculateHashCode(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/layout/font/FontInfo;->hash:I

    .line 89
    return-void
.end method

.method private static calculateHashCode(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)I
    .locals 4
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "bytes"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "range"    # Lcom/itextpdf/layout/font/Range;

    .line 201
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 202
    .local v1, "result":I
    :goto_0
    mul-int/lit8 v2, v1, 0x1f

    invoke-static {p1}, Lcom/itextpdf/io/util/ArrayUtil;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    .line 203
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    .line 204
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p3}, Lcom/itextpdf/layout/font/Range;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 205
    .end local v1    # "result":I
    .local v0, "result":I
    return v0
.end method

.method public static create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 1
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontInfo;->create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 9
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "range"    # Lcom/itextpdf/layout/font/Range;

    .line 101
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v7

    .line 102
    .local v7, "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    new-instance v8, Lcom/itextpdf/layout/font/FontInfo;

    invoke-virtual {v7}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, v8

    move-object v3, p1

    move-object v4, v7

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    return-object v8
.end method

.method public static create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 1
    .param p0, "fontInfo"    # Lcom/itextpdf/layout/font/FontInfo;
    .param p1, "alias"    # Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/layout/font/FontInfo;->create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/itextpdf/layout/font/FontInfo;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 8
    .param p0, "fontInfo"    # Lcom/itextpdf/layout/font/FontInfo;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "range"    # Lcom/itextpdf/layout/font/Range;

    .line 92
    new-instance v7, Lcom/itextpdf/layout/font/FontInfo;

    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    iget-object v3, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    iget-object v4, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-object v0, v7

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    return-object v7
.end method

.method static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 10
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "range"    # Lcom/itextpdf/layout/font/Range;

    .line 110
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 111
    .local v0, "cacheKey":Lcom/itextpdf/io/font/FontCacheKey;
    invoke-static {v0}, Lcom/itextpdf/layout/font/FontInfo;->getFontNamesFromCache(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    .line 112
    .local v1, "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    if-nez v1, :cond_0

    .line 113
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/itextpdf/layout/font/FontInfo;->putFontNamesToCache(Lcom/itextpdf/io/font/FontCacheKey;Lcom/itextpdf/io/font/FontProgramDescriptor;)V

    .line 116
    :cond_0
    if-eqz v1, :cond_1

    new-instance v9, Lcom/itextpdf/layout/font/FontInfo;

    const/4 v4, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    return-object v9
.end method

.method static create([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Lcom/itextpdf/layout/font/FontInfo;
    .locals 10
    .param p0, "fontProgram"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "range"    # Lcom/itextpdf/layout/font/Range;

    .line 120
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create([B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 121
    .local v0, "cacheKey":Lcom/itextpdf/io/font/FontCacheKey;
    invoke-static {v0}, Lcom/itextpdf/layout/font/FontInfo;->getFontNamesFromCache(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    .line 122
    .local v1, "descriptor":Lcom/itextpdf/io/font/FontProgramDescriptor;
    if-nez v1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramDescriptorFactory;->fetchDescriptor([B)Lcom/itextpdf/io/font/FontProgramDescriptor;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/itextpdf/layout/font/FontInfo;->putFontNamesToCache(Lcom/itextpdf/io/font/FontCacheKey;Lcom/itextpdf/io/font/FontProgramDescriptor;)V

    .line 126
    :cond_0
    if-eqz v1, :cond_1

    new-instance v9, Lcom/itextpdf/layout/font/FontInfo;

    const/4 v3, 0x0

    move-object v2, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, v1

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/itextpdf/layout/font/FontInfo;-><init>(Ljava/lang/String;[BLjava/lang/String;Lcom/itextpdf/io/font/FontProgramDescriptor;Lcom/itextpdf/layout/font/Range;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    return-object v9
.end method

.method private static getFontNamesFromCache(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 1
    .param p0, "key"    # Lcom/itextpdf/io/font/FontCacheKey;

    .line 209
    sget-object v0, Lcom/itextpdf/layout/font/FontInfo;->fontNamesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/FontProgramDescriptor;

    return-object v0
.end method

.method private static putFontNamesToCache(Lcom/itextpdf/io/font/FontCacheKey;Lcom/itextpdf/io/font/FontProgramDescriptor;)V
    .locals 1
    .param p0, "key"    # Lcom/itextpdf/io/font/FontCacheKey;
    .param p1, "descriptor"    # Lcom/itextpdf/io/font/FontProgramDescriptor;

    .line 213
    if-eqz p1, :cond_0

    .line 214
    sget-object v0, Lcom/itextpdf/layout/font/FontInfo;->fontNamesCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 172
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/layout/font/FontInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 174
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/layout/font/FontInfo;

    .line 175
    .local v1, "that":Lcom/itextpdf/layout/font/FontInfo;
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_0
    iget-object v3, p0, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    iget-object v4, v1, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    .line 176
    invoke-virtual {v3, v4}, Lcom/itextpdf/layout/font/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    iget-object v4, v1, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    .line 177
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v1, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    .line 175
    :goto_2
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Lcom/itextpdf/io/font/FontProgramDescriptor;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFontData()[B
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->fontData:[B

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontUnicodeRange()Lcom/itextpdf/layout/font/Range;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->range:Lcom/itextpdf/layout/font/Range;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/itextpdf/layout/font/FontInfo;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontInfo;->descriptor:Lcom/itextpdf/io/font/FontProgramDescriptor;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgramDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontInfo;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 191
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string/jumbo v1, "{0}+{1}"

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 193
    :cond_0
    return-object v0

    .line 196
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
