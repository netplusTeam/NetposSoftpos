.class public final Lcom/itextpdf/io/font/FontProgramFactory;
.super Ljava/lang/Object;
.source "FontProgramFactory.java"


# static fields
.field private static DEFAULT_CACHED:Z

.field private static fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    .line 67
    new-instance v0, Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;-><init>()V

    sput-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static clearRegisteredFontFamilies()V
    .locals 1

    .line 508
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->clearRegisteredFontFamilies()V

    return-void
.end method

.method public static clearRegisteredFonts()V
    .locals 1

    .line 503
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->clearRegisteredFonts()V

    return-void
.end method

.method public static createFont()Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "Helvetica"

    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .param p0, "fontProgram"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    sget-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 3
    .param p0, "ttc"    # Ljava/lang/String;
    .param p1, "ttcIndex"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 322
    .local v0, "fontCacheKey":Lcom/itextpdf/io/font/FontCacheKey;
    if-eqz p2, :cond_0

    .line 323
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    .line 324
    .local v1, "fontFound":Lcom/itextpdf/io/font/FontProgram;
    if-eqz v1, :cond_0

    .line 325
    return-object v1

    .line 328
    .end local v1    # "fontFound":Lcom/itextpdf/io/font/FontProgram;
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Ljava/lang/String;I)V

    .line 329
    .local v1, "fontBuilt":Lcom/itextpdf/io/font/FontProgram;
    if-eqz p2, :cond_1

    invoke-static {v1, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public static createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method private static createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fontProgram"    # [B
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgram;->trimFontStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "baseName":Ljava/lang/String;
    invoke-static {p0}, Lcom/itextpdf/io/font/constants/StandardFonts;->isStandardFont(Ljava/lang/String;)Z

    move-result v1

    .line 165
    .local v1, "isBuiltinFonts14":Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->isPredefinedCidFont(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 168
    .local v4, "isCidFont":Z
    :goto_0
    const/4 v5, 0x0

    .line 169
    .local v5, "fontKey":Lcom/itextpdf/io/font/FontCacheKey;
    if-eqz p2, :cond_1

    .line 170
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFontCacheKey(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v5

    .line 171
    invoke-static {v5}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v6

    .line 172
    .local v6, "fontFound":Lcom/itextpdf/io/font/FontProgram;
    if-eqz v6, :cond_1

    .line 173
    return-object v6

    .line 177
    .end local v6    # "fontFound":Lcom/itextpdf/io/font/FontProgram;
    :cond_1
    const/4 v6, 0x0

    .line 178
    .local v6, "fontBuilt":Lcom/itextpdf/io/font/FontProgram;
    const/4 v7, 0x0

    if-nez p0, :cond_4

    .line 179
    if-eqz p1, :cond_10

    .line 181
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/io/font/WoffConverter;->isWoffFont([B)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 182
    invoke-static {p1}, Lcom/itextpdf/io/font/WoffConverter;->convert([B)[B

    move-result-object v8

    move-object p1, v8

    goto :goto_1

    .line 183
    :cond_2
    invoke-static {p1}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->isWoff2Font([B)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    invoke-static {p1}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->convert([B)[B

    move-result-object v8

    move-object p1, v8

    .line 186
    :cond_3
    :goto_1
    new-instance v8, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v8, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    .line 188
    goto :goto_2

    .line 187
    :catch_0
    move-exception v8

    .line 189
    :goto_2
    if-nez v6, :cond_10

    .line 191
    :try_start_1
    new-instance v8, Lcom/itextpdf/io/font/Type1Font;

    invoke-direct {v8, v7, v7, p1, v7}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v8

    .line 193
    :goto_3
    goto/16 :goto_8

    .line 192
    :catch_1
    move-exception v7

    goto :goto_3

    .line 197
    :cond_4
    const/4 v8, 0x0

    .line 198
    .local v8, "fontFileExtension":Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 199
    .local v9, "extensionBeginIndex":I
    if-lez v9, :cond_5

    .line 200
    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 202
    :cond_5
    if-nez v1, :cond_f

    const-string v10, ".afm"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, ".pfm"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto/16 :goto_7

    .line 204
    :cond_6
    if-eqz v4, :cond_7

    .line 205
    new-instance v7, Lcom/itextpdf/io/font/CidFont;

    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getCompatibleCmaps(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v7, p0, v10}, Lcom/itextpdf/io/font/CidFont;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    move-object v6, v7

    goto/16 :goto_8

    .line 206
    :cond_7
    const-string v7, ".ttf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, ".otf"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_6

    .line 212
    :cond_8
    const-string v7, ".woff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, ".woff2"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_4

    .line 233
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v10, ".ttc,"

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 234
    .local v7, "ttcSplit":I
    if-lez v7, :cond_10

    .line 238
    add-int/lit8 v10, v7, 0x4

    :try_start_2
    invoke-virtual {v0, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 241
    .local v10, "ttcName":Ljava/lang/String;
    add-int/lit8 v11, v7, 0x5

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 242
    .local v11, "ttcIndex":I
    new-instance v12, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v12, v10, v11}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v6, v12

    .line 245
    .end local v10    # "ttcName":Ljava/lang/String;
    .end local v11    # "ttcIndex":I
    goto :goto_8

    .line 243
    :catch_2
    move-exception v2

    .line 244
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/itextpdf/io/IOException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 213
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v7    # "ttcSplit":I
    :cond_a
    :goto_4
    if-nez p1, :cond_b

    .line 214
    invoke-static {v0}, Lcom/itextpdf/io/font/FontProgramFactory;->readFontBytesFromPath(Ljava/lang/String;)[B

    move-result-object p1

    .line 216
    :cond_b
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 218
    :try_start_3
    invoke-static {p1}, Lcom/itextpdf/io/font/WoffConverter;->convert([B)[B

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object p1, v7

    .line 221
    goto :goto_5

    .line 219
    :catch_3
    move-exception v2

    .line 220
    .local v2, "woffException":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v7, "Invalid WOFF font file."

    invoke-direct {v3, v7, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 226
    .end local v2    # "woffException":Ljava/lang/IllegalArgumentException;
    :cond_c
    :try_start_4
    invoke-static {p1}, Lcom/itextpdf/io/font/woff2/Woff2Converter;->convert([B)[B

    move-result-object v7
    :try_end_4
    .catch Lcom/itextpdf/io/font/woff2/FontCompressionException; {:try_start_4 .. :try_end_4} :catch_4

    move-object p1, v7

    .line 229
    nop

    .line 231
    :goto_5
    new-instance v7, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v7, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([B)V

    move-object v6, v7

    goto :goto_8

    .line 227
    :catch_4
    move-exception v2

    .line 228
    .local v2, "woff2Exception":Lcom/itextpdf/io/font/woff2/FontCompressionException;
    new-instance v3, Lcom/itextpdf/io/IOException;

    const-string v7, "Invalid WOFF2 font file."

    invoke-direct {v3, v7, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 207
    .end local v2    # "woff2Exception":Lcom/itextpdf/io/font/woff2/FontCompressionException;
    :cond_d
    :goto_6
    if-eqz p1, :cond_e

    .line 208
    new-instance v7, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v7, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([B)V

    move-object v6, v7

    goto :goto_8

    .line 210
    :cond_e
    new-instance v7, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v7, p0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_8

    .line 203
    :cond_f
    :goto_7
    new-instance v10, Lcom/itextpdf/io/font/Type1Font;

    invoke-direct {v10, p0, v7, v7, v7}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    move-object v6, v10

    .line 249
    .end local v8    # "fontFileExtension":Ljava/lang/String;
    .end local v9    # "extensionBeginIndex":I
    :cond_10
    :goto_8
    if-nez v6, :cond_12

    .line 250
    if-eqz p0, :cond_11

    .line 251
    new-instance v7, Lcom/itextpdf/io/IOException;

    const-string v8, "Type of font {0} is not recognized."

    invoke-direct {v7, v8}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v7, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v2

    throw v2

    .line 253
    :cond_11
    new-instance v2, Lcom/itextpdf/io/IOException;

    const-string v3, "Type of font is not recognized."

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_12
    if-eqz p2, :cond_13

    invoke-static {v6, v5}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    goto :goto_9

    :cond_13
    move-object v2, v6

    :goto_9
    return-object v2
.end method

.method public static createFont([B)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .param p0, "fontProgram"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    sget-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BIZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 3
    .param p0, "ttc"    # [B
    .param p1, "ttcIndex"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontCacheKey;->create([BI)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 345
    .local v0, "fontKey":Lcom/itextpdf/io/font/FontCacheKey;
    if-eqz p2, :cond_0

    .line 346
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    .line 347
    .local v1, "fontFound":Lcom/itextpdf/io/font/FontProgram;
    if-eqz v1, :cond_0

    .line 348
    return-object v1

    .line 351
    .end local v1    # "fontFound":Lcom/itextpdf/io/font/FontProgram;
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-direct {v1, p0, p1}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>([BI)V

    .line 352
    .local v1, "fontBuilt":Lcom/itextpdf/io/font/FontProgram;
    if-eqz p2, :cond_1

    invoke-static {v1, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public static createFont([BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method private static createFontCacheKey(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontCacheKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fontProgram"    # [B

    .line 495
    if-eqz p0, :cond_0

    .line 496
    invoke-static {p0}, Lcom/itextpdf/io/font/FontCacheKey;->create(Ljava/lang/String;)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .local v0, "key":Lcom/itextpdf/io/font/FontCacheKey;
    goto :goto_0

    .line 498
    .end local v0    # "key":Lcom/itextpdf/io/font/FontCacheKey;
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/io/font/FontCacheKey;->create([B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 500
    .restart local v0    # "key":Lcom/itextpdf/io/font/FontCacheKey;
    :goto_0
    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .param p0, "fontName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "style"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;I)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "style"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/io/font/FontRegisterProvider;->getFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createType1Font(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "metricsPath"    # Ljava/lang/String;
    .param p1, "binaryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createType1Font(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "metricsPath"    # Ljava/lang/String;
    .param p1, "binaryPath"    # Ljava/lang/String;
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method private static createType1Font(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 3
    .param p0, "metricsPath"    # Ljava/lang/String;
    .param p1, "binaryPath"    # Ljava/lang/String;
    .param p2, "afm"    # [B
    .param p3, "pfb"    # [B
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, "fontKey":Lcom/itextpdf/io/font/FontCacheKey;
    if-eqz p4, :cond_0

    .line 482
    invoke-static {p0, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFontCacheKey(Ljava/lang/String;[B)Lcom/itextpdf/io/font/FontCacheKey;

    move-result-object v0

    .line 483
    invoke-static {v0}, Lcom/itextpdf/io/font/FontCache;->getFont(Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    .line 484
    .local v1, "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    if-eqz v1, :cond_0

    .line 485
    return-object v1

    .line 489
    .end local v1    # "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    :cond_0
    new-instance v1, Lcom/itextpdf/io/font/Type1Font;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/itextpdf/io/font/Type1Font;-><init>(Ljava/lang/String;Ljava/lang/String;[B[B)V

    .line 490
    .restart local v1    # "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    if-eqz p4, :cond_1

    invoke-static {v1, v0}, Lcom/itextpdf/io/font/FontCache;->saveFont(Lcom/itextpdf/io/font/FontProgram;Lcom/itextpdf/io/font/FontCacheKey;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method public static createType1Font([B[B)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "afm"    # [B
    .param p1, "pfb"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    sget-boolean v0, Lcom/itextpdf/io/font/FontProgramFactory;->DEFAULT_CACHED:Z

    invoke-static {p0, p1, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font([B[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static createType1Font([B[BZ)Lcom/itextpdf/io/font/FontProgram;
    .locals 1
    .param p0, "afm"    # [B
    .param p1, "pfb"    # [B
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    const/4 v0, 0x0

    invoke-static {v0, v0, p0, p1, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->createType1Font(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredFontFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->getRegisteredFontFamilies()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredFonts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->getRegisteredFonts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isRegisteredFont(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;

    .line 475
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->isRegisteredFont(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static readFontBytesFromPath(Ljava/lang/String;)[B
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p0}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 512
    .local v0, "raf":Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 513
    .local v1, "bufLen":I
    int-to-long v2, v1

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 516
    new-array v2, v1, [B

    .line 517
    .local v2, "buf":[B
    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 518
    return-object v2

    .line 514
    .end local v2    # "buf":[B
    :cond_0
    new-instance v2, Lcom/itextpdf/io/IOException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const-string v4, "Source data from \"{0}\" is bigger than byte array can hold."

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static registerFont(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 417
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public static registerFont(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .line 427
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public static registerFontDirectory(Ljava/lang/String;)I
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .line 437
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontDirectory(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 406
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public static registerSystemFontDirectories()I
    .locals 1

    .line 447
    sget-object v0, Lcom/itextpdf/io/font/FontProgramFactory;->fontRegisterProvider:Lcom/itextpdf/io/font/FontRegisterProvider;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontRegisterProvider;->registerSystemFontDirectories()I

    move-result v0

    return v0
.end method
