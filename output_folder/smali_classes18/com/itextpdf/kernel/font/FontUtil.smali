.class public Lcom/itextpdf/kernel/font/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static final uniMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/io/font/cmap/CMapToUnicode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/font/FontUtil;->uniMaps:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRandomSubsetPrefixForFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "fontName"    # Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 72
    .local v0, "newFontName":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 73
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4050400000000000L    # 65.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    .end local v1    # "k":I
    :cond_0
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static convertCompositeWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/io/util/IntHashtable;
    .locals 8
    .param p0, "widthsArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 147
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    .line 148
    .local v0, "res":Lcom/itextpdf/io/util/IntHashtable;
    if-nez p0, :cond_0

    .line 149
    return-object v0

    .line 152
    :cond_0
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 153
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 154
    .local v2, "c1":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 155
    .local v3, "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 157
    .local v4, "subWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 158
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v6

    .line 159
    .local v6, "c2":I
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "c1":I
    .local v7, "c1":I
    invoke-virtual {v0, v2, v6}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 157
    .end local v6    # "c2":I
    add-int/lit8 v5, v5, 0x1

    move v2, v7

    goto :goto_1

    .line 161
    .end local v4    # "subWidths":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "j":I
    .end local v7    # "c1":I
    .restart local v2    # "c1":I
    :cond_1
    goto :goto_3

    .line 162
    :cond_2
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 163
    .local v4, "c2":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v5

    .line 164
    .local v5, "w":I
    :goto_2
    if-gt v2, v4, :cond_3

    .line 165
    invoke-virtual {v0, v2, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 152
    .end local v2    # "c1":I
    .end local v3    # "obj":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "c2":I
    .end local v5    # "w":I
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "k":I
    :cond_4
    return-object v0
.end method

.method static convertSimpleWidthsArray(Lcom/itextpdf/kernel/pdf/PdfArray;II)[I
    .locals 6
    .param p0, "widthsArray"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p1, "first"    # I
    .param p2, "missingWidth"    # I

    .line 129
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 130
    .local v1, "res":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 131
    aput p2, v1, v2

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    :cond_0
    if-nez p0, :cond_1

    .line 134
    const-class v0, Lcom/itextpdf/kernel/font/FontUtil;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 135
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string v2, "Font dictionary does not contain required /Widths entry."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 136
    return-object v1

    .line 139
    .end local v0    # "logger":Lorg/slf4j/Logger;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    add-int v3, p1, v2

    if-ge v3, v0, :cond_3

    .line 140
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    .line 141
    .local v3, "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    add-int v4, p1, v2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v5

    goto :goto_2

    :cond_2
    move v5, p2

    :goto_2
    aput v5, v1, v4

    .line 139
    .end local v3    # "number":Lcom/itextpdf/kernel/pdf/PdfNumber;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 143
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method

.method static createRandomFontName()Ljava/lang/String;
    .locals 6

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x403a000000000000L    # 26.0

    mul-double/2addr v2, v4

    const-wide v4, 0x4050400000000000L    # 65.0

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "k":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 3
    .param p0, "uniMap"    # Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 100
    return-object v0

    .line 101
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/font/FontUtil;->uniMaps:Ljava/util/HashMap;

    monitor-enter v1

    .line 102
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    monitor-exit v1

    return-object v0

    .line 106
    :cond_1
    const-string v2, "Identity-H"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    invoke-static {}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->getIdentity()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    .local v0, "toUnicode":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    goto :goto_0

    .line 109
    .end local v0    # "toUnicode":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    :cond_2
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCache;->getUni2CidCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapUniCid;

    move-result-object v2

    .line 110
    .local v2, "uni":Lcom/itextpdf/io/font/cmap/CMapUniCid;
    if-nez v2, :cond_3

    .line 111
    monitor-exit v1

    return-object v0

    .line 113
    :cond_3
    invoke-virtual {v2}, Lcom/itextpdf/io/font/cmap/CMapUniCid;->exportToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    .line 115
    .end local v2    # "uni":Lcom/itextpdf/io/font/cmap/CMapUniCid;
    .restart local v0    # "toUnicode":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    :goto_0
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    monitor-exit v1

    return-object v0

    .line 117
    .end local v0    # "toUnicode":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static processToUnicode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 4
    .param p0, "toUnicode"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "cMapToUnicode":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    .line 84
    .local v1, "uniBytes":[B
    new-instance v2, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;

    invoke-direct {v2, v1}, Lcom/itextpdf/io/font/cmap/CMapLocationFromBytes;-><init>([B)V

    .line 85
    .local v2, "lb":Lcom/itextpdf/io/font/cmap/ICMapLocation;
    new-instance v3, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-direct {v3}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;-><init>()V

    move-object v0, v3

    .line 86
    const-string v3, ""

    invoke-static {v3, v0, v2}, Lcom/itextpdf/io/font/cmap/CMapParser;->parseCid(Ljava/lang/String;Lcom/itextpdf/io/font/cmap/AbstractCMap;Lcom/itextpdf/io/font/cmap/ICMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "uniBytes":[B
    .end local v2    # "lb":Lcom/itextpdf/io/font/cmap/ICMapLocation;
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-class v2, Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 89
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Unknown error while processing CMap."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->EmptyCMapToUnicodeMap:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :goto_0
    goto :goto_1

    .line 92
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->IdentityH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, p0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->getIdentity()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    .line 95
    :cond_1
    :goto_1
    return-object v0
.end method
