.class public Lcom/itextpdf/io/font/Type1Font;
.super Lcom/itextpdf/io/font/FontProgram;
.source "Type1Font.java"


# static fields
.field private static final PFB_TYPES:[I

.field private static final serialVersionUID:J = -0xef690aa1335b710L


# instance fields
.field private characterSet:Ljava/lang/String;

.field private fontParser:Lcom/itextpdf/io/font/Type1Parser;

.field private fontStreamBytes:[B

.field private fontStreamLengths:[I

.field private kernPairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/io/font/Type1Font;->PFB_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 92
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseFont"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/itextpdf/io/font/Type1Font;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    .locals 1
    .param p1, "metricsPath"    # Ljava/lang/String;
    .param p2, "binaryPath"    # Ljava/lang/String;
    .param p3, "afm"    # [B
    .param p4, "pfb"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/itextpdf/io/font/Type1Font;-><init>()V

    .line 97
    new-instance v0, Lcom/itextpdf/io/font/Type1Parser;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/itextpdf/io/font/Type1Parser;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    iput-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    .line 98
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->process()V

    .line 99
    return-void
.end method

.method protected static createStandardFont(Ljava/lang/String;)Lcom/itextpdf/io/font/Type1Font;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {p0}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/itextpdf/io/font/Type1Font;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string/jumbo v1, "{0} is not a standard type1 font."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getCharacterSet()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->characterSet:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStreamBytes()[B
    .locals 10

    .line 185
    const-class v0, Lcom/itextpdf/io/font/Type1Font;

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 186
    return-object v2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B

    if-eqz v1, :cond_1

    .line 188
    return-object v1

    .line 189
    :cond_1
    const/4 v1, 0x0

    .line 191
    .local v1, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/Type1Parser;->getPostscriptBinary()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v3

    move-object v1, v3

    .line 192
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v3

    long-to-int v3, v3

    .line 193
    .local v3, "fileLength":I
    add-int/lit8 v4, v3, -0x12

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B

    .line 194
    const/4 v4, 0x3

    new-array v5, v4, [I

    iput-object v5, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamLengths:[I

    .line 195
    const/4 v5, 0x0

    .line 196
    .local v5, "bytePtr":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_0
    if-ge v6, v4, :cond_9

    .line 197
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    const/16 v8, 0x80

    if-eq v7, v8, :cond_3

    .line 198
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 199
    .local v4, "logger":Lorg/slf4j/Logger;
    const-string v7, "Start marker is missing in the pfb file"

    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    nop

    .line 229
    if-eqz v1, :cond_2

    .line 231
    :try_start_1
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    goto :goto_1

    .line 232
    :catch_0
    move-exception v0

    .line 200
    :cond_2
    :goto_1
    return-object v2

    .line 202
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    sget-object v8, Lcom/itextpdf/io/font/Type1Font;->PFB_TYPES:[I

    aget v8, v8, v6

    if-eq v7, v8, :cond_5

    .line 203
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 204
    .restart local v4    # "logger":Lorg/slf4j/Logger;
    const-string v7, "incorrect.segment.type.in.pfb.file"

    invoke-interface {v4, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    nop

    .line 229
    if-eqz v1, :cond_4

    .line 231
    :try_start_3
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 233
    goto :goto_2

    .line 232
    :catch_1
    move-exception v0

    .line 205
    :cond_4
    :goto_2
    return-object v2

    .line 207
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_5
    :try_start_4
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v7

    .line 208
    .local v7, "size":I
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    .line 209
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    .line 210
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v8

    shl-int/lit8 v8, v8, 0x18

    add-int/2addr v7, v8

    .line 211
    iget-object v8, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamLengths:[I

    aput v7, v8, v6

    .line 212
    :goto_3
    if-eqz v7, :cond_8

    .line 213
    iget-object v8, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B

    invoke-virtual {v1, v8, v5, v7}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([BII)I

    move-result v8

    .line 214
    .local v8, "got":I
    if-gez v8, :cond_7

    .line 215
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v4

    .line 216
    .restart local v4    # "logger":Lorg/slf4j/Logger;
    const-string v9, "premature.end.in.pfb.file"

    invoke-interface {v4, v9}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    nop

    .line 229
    if-eqz v1, :cond_6

    .line 231
    :try_start_5
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 233
    goto :goto_4

    .line 232
    :catch_2
    move-exception v0

    .line 217
    :cond_6
    :goto_4
    return-object v2

    .line 219
    .end local v4    # "logger":Lorg/slf4j/Logger;
    :cond_7
    add-int/2addr v5, v8

    .line 220
    sub-int/2addr v7, v8

    .line 221
    .end local v8    # "got":I
    goto :goto_3

    .line 196
    .end local v7    # "size":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 223
    .end local v6    # "k":I
    :cond_9
    :try_start_6
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamBytes:[B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 229
    if-eqz v1, :cond_a

    .line 231
    :try_start_7
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 233
    goto :goto_5

    .line 232
    :catch_3
    move-exception v2

    .line 223
    :cond_a
    :goto_5
    return-object v0

    .line 229
    .end local v3    # "fileLength":I
    .end local v5    # "bytePtr":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 224
    :catch_4
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 226
    .local v0, "logger":Lorg/slf4j/Logger;
    const-string/jumbo v4, "type1.font.file.exception"

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 227
    nop

    .line 229
    if-eqz v1, :cond_b

    .line 231
    :try_start_9
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 233
    goto :goto_6

    .line 232
    :catch_5
    move-exception v4

    .line 227
    :cond_b
    :goto_6
    return-object v2

    .line 229
    .end local v0    # "logger":Lorg/slf4j/Logger;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_7
    if-eqz v1, :cond_c

    .line 231
    :try_start_a
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 233
    goto :goto_8

    .line 232
    :catch_6
    move-exception v2

    .line 235
    :cond_c
    :goto_8
    throw v0
.end method

.method public getFontStreamLengths()[I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontStreamLengths:[I

    return-object v0
.end method

.method public getGlyph(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 176
    invoke-static {p1}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, "unicode":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 178
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/Type1Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    return-object v1

    .line 180
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 6
    .param p1, "first"    # Lcom/itextpdf/io/font/otf/Glyph;
    .param p2, "second"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 145
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/Glyph;->hasValidUnicode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 147
    .local v2, "record":J
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 150
    :cond_0
    return v1

    .line 153
    .end local v2    # "record":J
    :cond_1
    return v1
.end method

.method public getPdfFontFlags()I
    .locals 3

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "flags":I
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    or-int/lit8 v0, v0, 0x1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    :goto_0
    or-int/2addr v0, v1

    .line 117
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 118
    or-int/lit8 v0, v0, 0x40

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Caps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 121
    :cond_3
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->isBold()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_6

    .line 124
    :cond_5
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 126
    :cond_6
    return v0
.end method

.method public hasKernPairs()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltInFont()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Parser;->isBuiltInFont()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontProgram"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected process()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/Type1Parser;->getMetricsFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    .line 249
    .local v1, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    const/4 v2, 0x0

    .line 250
    .local v2, "startKernPairs":Z
    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .local v10, "line":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 251
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, " ,\n\r\t\u000c"

    invoke-direct {v9, v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v9, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-nez v11, :cond_0

    .line 253
    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 255
    .local v11, "ident":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_1
    goto/16 :goto_1

    :sswitch_0
    const-string v12, "UnderlineThickness"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v12, "StartCharMetrics"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0x11

    goto/16 :goto_2

    :sswitch_2
    const-string v12, "FullName"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v6, v8

    goto/16 :goto_2

    :sswitch_3
    const-string v12, "FontName"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v6, v7

    goto/16 :goto_2

    :sswitch_4
    const-string v12, "FontBBox"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v6, 0x7

    goto/16 :goto_2

    :sswitch_5
    const-string v12, "UnderlinePosition"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_6
    const-string v12, "StdVW"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0x10

    goto/16 :goto_2

    :sswitch_7
    const-string v12, "StdHW"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0xf

    goto/16 :goto_2

    :sswitch_8
    const-string v12, "IsFixedPitch"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v6, 0x5

    goto/16 :goto_2

    :sswitch_9
    const-string v12, "Ascender"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0xd

    goto :goto_2

    :sswitch_a
    const-string v12, "Descender"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0xe

    goto :goto_2

    :sswitch_b
    const-string v12, "CapHeight"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0xb

    goto :goto_2

    :sswitch_c
    const-string v12, "CharacterSet"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v6, 0x6

    goto :goto_2

    :sswitch_d
    const-string v12, "XHeight"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0xc

    goto :goto_2

    :sswitch_e
    const-string v12, "FamilyName"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v6, v5

    goto :goto_2

    :sswitch_f
    const-string v12, "EncodingScheme"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v6, 0xa

    goto :goto_2

    :sswitch_10
    const-string v12, "Weight"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v6, v4

    goto :goto_2

    :sswitch_11
    const-string v12, "ItalicAngle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v6, v3

    goto :goto_2

    :goto_1
    const/4 v6, -0x1

    :goto_2
    const-string v12, ""

    const-string/jumbo v13, "\u00ff"

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 314
    :pswitch_0
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 311
    :pswitch_1
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setStemV(I)V

    .line 312
    goto/16 :goto_3

    .line 308
    :pswitch_2
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setStemH(I)V

    .line 309
    goto/16 :goto_3

    .line 305
    :pswitch_3
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    .line 306
    goto/16 :goto_3

    .line 302
    :pswitch_4
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    .line 303
    goto/16 :goto_3

    .line 299
    :pswitch_5
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setXHeight(I)V

    .line 300
    goto/16 :goto_3

    .line 296
    :pswitch_6
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    .line 297
    goto/16 :goto_3

    .line 293
    :pswitch_7
    invoke-virtual {v9, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->encodingScheme:Ljava/lang/String;

    .line 294
    goto/16 :goto_3

    .line 290
    :pswitch_8
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlineThickness(I)V

    .line 291
    goto/16 :goto_3

    .line 287
    :pswitch_9
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlinePosition(I)V

    .line 288
    goto/16 :goto_3

    .line 280
    :pswitch_a
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 281
    .local v3, "llx":I
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 282
    .local v4, "lly":I
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 283
    .local v5, "urx":I
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    .line 284
    .local v6, "ury":I
    iget-object v7, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v7, v3, v4, v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setBbox(IIII)V

    .line 285
    goto/16 :goto_3

    .line 277
    .end local v3    # "llx":I
    .end local v4    # "lly":I
    .end local v5    # "urx":I
    .end local v6    # "ury":I
    :pswitch_b
    invoke-virtual {v9, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->characterSet:Ljava/lang/String;

    .line 278
    goto/16 :goto_3

    .line 274
    :pswitch_c
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setIsFixedPitch(Z)V

    .line 275
    goto :goto_3

    .line 271
    :pswitch_d
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    .line 272
    goto :goto_3

    .line 268
    :pswitch_e
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v9, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/io/font/constants/FontWeights;->fromType1FontWeight(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontNames;->setFontWeight(I)V

    .line 269
    goto :goto_3

    .line 264
    :pswitch_f
    invoke-virtual {v9, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 265
    .local v6, "familyName":Ljava/lang/String;
    iget-object v13, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    new-array v14, v8, [[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v12, v3, v7

    aput-object v12, v3, v8

    aput-object v12, v3, v5

    aput-object v6, v3, v4

    aput-object v3, v14, v7

    invoke-virtual {v13, v14}, Lcom/itextpdf/io/font/FontNames;->setFamilyName([[Ljava/lang/String;)V

    .line 266
    goto :goto_3

    .line 260
    .end local v6    # "familyName":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v9, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "fullName":Ljava/lang/String;
    iget-object v13, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    new-array v14, v8, [[Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v12, v3, v7

    aput-object v12, v3, v8

    aput-object v12, v3, v5

    aput-object v6, v3, v4

    aput-object v3, v14, v7

    invoke-virtual {v13, v14}, Lcom/itextpdf/io/font/FontNames;->setFullName([[Ljava/lang/String;)V

    .line 262
    goto :goto_3

    .line 257
    .end local v6    # "fullName":Ljava/lang/String;
    :pswitch_11
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v9, v13}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 258
    nop

    .line 317
    .end local v9    # "tok":Ljava/util/StringTokenizer;
    .end local v11    # "ident":Ljava/lang/String;
    :goto_3
    goto/16 :goto_0

    .line 318
    .end local v10    # "line":Ljava/lang/String;
    :cond_2
    if-nez v2, :cond_4

    .line 319
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "metricsPath":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 321
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string/jumbo v5, "startcharmetrics is missing in {0}."

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v4

    throw v4

    .line 323
    :cond_3
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string/jumbo v5, "startcharmetrics is missing in the metrics file."

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 326
    .end local v3    # "metricsPath":Ljava/lang/String;
    :cond_4
    iput v7, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    .line 327
    const/4 v9, 0x0

    .line 328
    .local v9, "widthCount":I
    :goto_4
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .local v11, "line":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 329
    new-instance v10, Ljava/util/StringTokenizer;

    invoke-direct {v10, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 330
    .local v10, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-nez v12, :cond_5

    .line 331
    goto :goto_4

    .line 333
    :cond_5
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, "ident":Ljava/lang/String;
    const-string v13, "EndCharMetrics"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 335
    const/4 v2, 0x0

    .line 336
    goto/16 :goto_9

    .line 338
    :cond_6
    const/4 v13, -0x1

    .line 339
    .local v13, "C":I
    const/16 v14, 0xfa

    .line 340
    .local v14, "WX":I
    const-string v15, ""

    .line 341
    .local v15, "N":Ljava/lang/String;
    const/16 v16, 0x0

    .line 342
    .local v16, "B":[I
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v4, ";"

    invoke-direct {v6, v11, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    move-object/from16 v6, v16

    .line 343
    .end local v10    # "tok":Ljava/util/StringTokenizer;
    .end local v16    # "B":[I
    .local v4, "tok":Ljava/util/StringTokenizer;
    .local v6, "B":[I
    :goto_5
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 344
    new-instance v10, Ljava/util/StringTokenizer;

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 345
    .local v5, "tokc":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-nez v10, :cond_7

    .line 346
    const/4 v5, 0x2

    goto :goto_5

    .line 348
    :cond_7
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 349
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    :cond_8
    goto :goto_6

    :sswitch_12
    const-string v10, "WX"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v8

    goto :goto_7

    :sswitch_13
    const-string v10, "N"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x2

    goto :goto_7

    :sswitch_14
    const-string v10, "C"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v7

    goto :goto_7

    :sswitch_15
    const-string v10, "B"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x3

    goto :goto_7

    :goto_6
    const/4 v10, -0x1

    :goto_7
    packed-switch v10, :pswitch_data_1

    const/16 v16, 0x2

    const/16 v17, 0x3

    goto :goto_8

    .line 360
    :pswitch_12
    new-array v10, v3, [I

    .line 361
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v10, v7

    .line 362
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aput v18, v10, v8

    .line 363
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v16, 0x2

    aput v18, v10, v16

    .line 364
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v17, 0x3

    aput v18, v10, v17

    move-object v6, v10

    goto :goto_8

    .line 357
    :pswitch_13
    const/16 v16, 0x2

    const/16 v17, 0x3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 358
    .end local v15    # "N":Ljava/lang/String;
    .local v10, "N":Ljava/lang/String;
    move-object v15, v10

    goto :goto_8

    .line 354
    .end local v10    # "N":Ljava/lang/String;
    .restart local v15    # "N":Ljava/lang/String;
    :pswitch_14
    const/16 v16, 0x2

    const/16 v17, 0x3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    .line 355
    .end local v14    # "WX":I
    .local v10, "WX":I
    move v14, v10

    goto :goto_8

    .line 351
    .end local v10    # "WX":I
    .restart local v14    # "WX":I
    :pswitch_15
    const/16 v16, 0x2

    const/16 v17, 0x3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 352
    .end local v13    # "C":I
    .local v10, "C":I
    move v13, v10

    .line 368
    .end local v5    # "tokc":Ljava/util/StringTokenizer;
    .end local v10    # "C":I
    .restart local v13    # "C":I
    :goto_8
    move/from16 v5, v16

    goto/16 :goto_5

    .line 369
    :cond_9
    move/from16 v16, v5

    const/16 v17, 0x3

    invoke-static {v15}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v5

    .line 370
    .local v5, "unicode":I
    new-instance v10, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v10, v13, v14, v5, v6}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    .line 371
    .local v10, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-ltz v13, :cond_a

    .line 372
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->codeToGlyph:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_a
    const/4 v3, -0x1

    if-eq v5, v3, :cond_b

    .line 375
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_b
    iget v3, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    add-int/2addr v3, v14

    iput v3, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    .line 378
    nop

    .end local v4    # "tok":Ljava/util/StringTokenizer;
    .end local v5    # "unicode":I
    .end local v6    # "B":[I
    .end local v10    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v12    # "ident":Ljava/lang/String;
    .end local v13    # "C":I
    .end local v14    # "WX":I
    .end local v15    # "N":Ljava/lang/String;
    add-int/lit8 v9, v9, 0x1

    .line 379
    move/from16 v5, v16

    move/from16 v4, v17

    const/4 v3, 0x4

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 380
    :cond_c
    :goto_9
    if-eqz v9, :cond_d

    .line 381
    iget v3, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    div-int/2addr v3, v9

    iput v3, v0, Lcom/itextpdf/io/font/Type1Font;->avgWidth:I

    .line 383
    :cond_d
    if-eqz v2, :cond_f

    .line 384
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v3

    .line 385
    .restart local v3    # "metricsPath":Ljava/lang/String;
    if-eqz v3, :cond_e

    .line 386
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string v5, "endcharmetrics is missing in {0}."

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v4

    throw v4

    .line 388
    :cond_e
    new-instance v4, Lcom/itextpdf/io/IOException;

    const-string v5, "endcharmetrics is missing in the metrics file."

    invoke-direct {v4, v5}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    .end local v3    # "metricsPath":Ljava/lang/String;
    :cond_f
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    const/16 v4, 0xa0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/16 v5, 0x20

    if-nez v3, :cond_10

    .line 396
    iget-object v3, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/io/font/otf/Glyph;

    .line 397
    .local v3, "space":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v3, :cond_10

    .line 398
    iget-object v6, v0, Lcom/itextpdf/io/font/Type1Font;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v10, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v12

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v13

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getBbox()[I

    move-result-object v14

    invoke-direct {v10, v12, v13, v4, v14}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v3    # "space":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_10
    const/4 v3, 0x0

    .line 402
    .local v3, "endOfMetrics":Z
    :goto_a
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    if-eqz v4, :cond_14

    .line 403
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 404
    .restart local v4    # "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_11

    .line 405
    goto :goto_a

    .line 407
    :cond_11
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "ident":Ljava/lang/String;
    const-string v7, "EndFontMetrics"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 409
    const/4 v3, 0x1

    .line 410
    goto :goto_b

    .line 411
    :cond_12
    const-string v7, "StartKernPairs"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 412
    const/4 v2, 0x1

    .line 413
    goto :goto_b

    .line 415
    .end local v4    # "tok":Ljava/util/StringTokenizer;
    .end local v6    # "ident":Ljava/lang/String;
    :cond_13
    goto :goto_a

    .line 416
    :cond_14
    :goto_b
    if-eqz v2, :cond_1a

    .line 417
    :goto_c
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    if-eqz v4, :cond_19

    .line 418
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 419
    .restart local v4    # "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_15

    .line 420
    move/from16 v16, v9

    const/4 v15, -0x1

    goto :goto_f

    .line 422
    :cond_15
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 423
    .restart local v6    # "ident":Ljava/lang/String;
    const-string v7, "KPX"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 424
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 425
    .local v7, "first":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 426
    .local v10, "second":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    float-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 428
    .local v12, "width":Ljava/lang/Integer;
    invoke-static {v7}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v13

    .line 429
    .local v13, "firstUni":I
    invoke-static {v10}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v14

    .line 431
    .local v14, "secondUni":I
    const/4 v15, -0x1

    if-eq v13, v15, :cond_16

    if-eq v14, v15, :cond_16

    .line 432
    move/from16 v16, v9

    .end local v9    # "widthCount":I
    .local v16, "widthCount":I
    int-to-long v8, v13

    shl-long/2addr v8, v5

    move-object/from16 v18, v6

    .end local v6    # "ident":Ljava/lang/String;
    .local v18, "ident":Ljava/lang/String;
    int-to-long v5, v14

    add-long/2addr v8, v5

    .line 433
    .local v8, "record":J
    iget-object v5, v0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 431
    .end local v8    # "record":J
    .end local v16    # "widthCount":I
    .end local v18    # "ident":Ljava/lang/String;
    .restart local v6    # "ident":Ljava/lang/String;
    .restart local v9    # "widthCount":I
    :cond_16
    move-object/from16 v18, v6

    move/from16 v16, v9

    .line 435
    .end local v6    # "ident":Ljava/lang/String;
    .end local v7    # "first":Ljava/lang/String;
    .end local v9    # "widthCount":I
    .end local v10    # "second":Ljava/lang/String;
    .end local v12    # "width":Ljava/lang/Integer;
    .end local v13    # "firstUni":I
    .end local v14    # "secondUni":I
    .restart local v16    # "widthCount":I
    .restart local v18    # "ident":Ljava/lang/String;
    :goto_d
    goto :goto_e

    .end local v16    # "widthCount":I
    .end local v18    # "ident":Ljava/lang/String;
    .restart local v6    # "ident":Ljava/lang/String;
    .restart local v9    # "widthCount":I
    :cond_17
    move-object/from16 v18, v6

    move/from16 v16, v9

    const/4 v15, -0x1

    .end local v6    # "ident":Ljava/lang/String;
    .end local v9    # "widthCount":I
    .restart local v16    # "widthCount":I
    .restart local v18    # "ident":Ljava/lang/String;
    const-string v5, "EndKernPairs"

    .end local v18    # "ident":Ljava/lang/String;
    .restart local v6    # "ident":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 436
    const/4 v2, 0x0

    .line 437
    goto :goto_10

    .line 439
    .end local v4    # "tok":Ljava/util/StringTokenizer;
    .end local v6    # "ident":Ljava/lang/String;
    :cond_18
    :goto_e
    nop

    .line 417
    .end local v16    # "widthCount":I
    .restart local v9    # "widthCount":I
    :goto_f
    move/from16 v9, v16

    const/16 v5, 0x20

    const/4 v8, 0x1

    .end local v9    # "widthCount":I
    .restart local v16    # "widthCount":I
    goto :goto_c

    .end local v16    # "widthCount":I
    .restart local v9    # "widthCount":I
    :cond_19
    move/from16 v16, v9

    .end local v9    # "widthCount":I
    .restart local v16    # "widthCount":I
    goto :goto_10

    .line 440
    .end local v16    # "widthCount":I
    .restart local v9    # "widthCount":I
    :cond_1a
    move/from16 v16, v9

    .end local v9    # "widthCount":I
    .restart local v16    # "widthCount":I
    if-nez v3, :cond_1c

    .line 441
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "metricsPath":Ljava/lang/String;
    if-eqz v4, :cond_1b

    .line 443
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "endfontmetrics is missing in {0}."

    invoke-direct {v5, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v5

    throw v5

    .line 445
    :cond_1b
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "endfontmetrics is missing in the metrics file."

    invoke-direct {v5, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 449
    .end local v4    # "metricsPath":Ljava/lang/String;
    :cond_1c
    :goto_10
    if-eqz v2, :cond_1e

    .line 450
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->fontParser:Lcom/itextpdf/io/font/Type1Parser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/Type1Parser;->getAfmPath()Ljava/lang/String;

    move-result-object v4

    .line 451
    .restart local v4    # "metricsPath":Ljava/lang/String;
    if-eqz v4, :cond_1d

    .line 452
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "endkernpairs is missing in {0}."

    invoke-direct {v5, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v5

    throw v5

    .line 454
    :cond_1d
    new-instance v5, Lcom/itextpdf/io/IOException;

    const-string v6, "endkernpairs is missing in the metrics file."

    invoke-direct {v5, v6}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 457
    .end local v4    # "metricsPath":Ljava/lang/String;
    :cond_1e
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 459
    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->encodingScheme:Ljava/lang/String;

    const-string v5, "AdobeStandardEncoding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, v0, Lcom/itextpdf/io/font/Type1Font;->encodingScheme:Ljava/lang/String;

    const-string v5, "StandardEncoding"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    move v7, v6

    :cond_1f
    iput-boolean v7, v0, Lcom/itextpdf/io/font/Type1Font;->isFontSpecific:Z

    .line 460
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x796f2b9d -> :sswitch_11
        -0x65c9d168 -> :sswitch_10
        -0x5ea46f08 -> :sswitch_f
        -0x59952bd1 -> :sswitch_e
        -0x503e2461 -> :sswitch_d
        -0x4c3a5f67 -> :sswitch_c
        -0x306d8887 -> :sswitch_b
        -0x2fdca149 -> :sswitch_a
        -0x2db46ce9 -> :sswitch_9
        -0xfd53aea -> :sswitch_8
        0x4c7da52 -> :sswitch_7
        0x4c7dc04 -> :sswitch_6
        0x195d77f5 -> :sswitch_5
        0x199cb718 -> :sswitch_4
        0x19a29f9a -> :sswitch_3
        0x532d95da -> :sswitch_2
        0x63ae6eeb -> :sswitch_1
        0x7082f228 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x42 -> :sswitch_15
        0x43 -> :sswitch_14
        0x4e -> :sswitch_13
        0xae1 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public setKerning(III)Z
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I
    .param p3, "kern"    # I

    .line 165
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 166
    .local v0, "record":J
    iget-object v2, p0, Lcom/itextpdf/io/font/Type1Font;->kernPairs:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v2, 0x1

    return v2
.end method
