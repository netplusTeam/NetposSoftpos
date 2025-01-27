.class public abstract Lcom/itextpdf/kernel/font/PdfSimpleFont;
.super Lcom/itextpdf/kernel/font/PdfFont;
.source "PdfSimpleFont.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/itextpdf/io/font/FontProgram;",
        ">",
        "Lcom/itextpdf/kernel/font/PdfFont;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x4496a43d362e82d0L


# instance fields
.field protected fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

.field protected forceWidthsOutput:Z

.field protected shortTag:[B

.field protected toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 73
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 100
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfFont;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    .line 86
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    .line 101
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 1
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 95
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    .line 86
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    .line 96
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ToUnicode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/font/FontUtil;->processToUnicode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    .line 97
    return-void
.end method

.method private isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 184
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/util/TextUtil;->isWhitespaceOrNonPrintable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method protected abstract addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
.end method

.method public appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    .local p3, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    goto :goto_0

    .line 167
    .end local v0    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 170
    .restart local v0    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_0
    if-eqz v0, :cond_1

    .line 171
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 13
    .param p2, "characterCodes"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfString;",
            ")Z"
        }
    .end annotation

    .line 305
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v0, 0x1

    .line 307
    .local v0, "allCodesDecoded":Z
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;

    move-result-object v1

    .line 308
    .local v1, "enc":Lcom/itextpdf/io/font/FontEncoding;
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValueBytes()[B

    move-result-object v2

    .line 309
    .local v2, "contentBytes":[B
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-byte v6, v2, v5

    .line 310
    .local v6, "b":B
    and-int/lit16 v7, v6, 0xff

    .line 311
    .local v7, "code":I
    const/4 v8, 0x0

    .line 312
    .local v8, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v9

    .line 313
    .local v9, "toUnicodeCMap":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    if-eqz v9, :cond_0

    invoke-virtual {v9, v7}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v10

    if-eqz v10, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v10

    move-object v8, v10

    if-eqz v10, :cond_0

    .line 315
    invoke-virtual {v9, v7}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v10

    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v10

    if-nez v10, :cond_2

    .line 317
    new-instance v10, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v10, v8}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;)V

    move-object v8, v10

    .line 318
    invoke-virtual {v9, v7}, Lcom/itextpdf/io/font/cmap/CMapToUnicode;->lookup(I)[C

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/itextpdf/io/font/otf/Glyph;->setChars([C)V

    goto :goto_1

    .line 321
    :cond_0
    invoke-virtual {v1, v7}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v10

    .line 322
    .local v10, "uni":I
    const/4 v11, -0x1

    if-le v10, v11, :cond_1

    .line 323
    invoke-virtual {p0, v10}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v8

    goto :goto_1

    .line 324
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 325
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v8

    .line 328
    .end local v10    # "uni":I
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 329
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 331
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v10

    .line 332
    .local v10, "logger":Lorg/slf4j/Logger;
    invoke-interface {v10}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 333
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    const-string v12, "Could not find glyph with the following code: {0}"

    invoke-static {v12, v11}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 335
    :cond_4
    const/4 v0, 0x0

    .line 309
    .end local v6    # "b":B
    .end local v7    # "code":I
    .end local v8    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v9    # "toUnicodeCMap":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .end local v10    # "logger":Lorg/slf4j/Logger;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 338
    :cond_5
    return v0
.end method

.method public appendGlyphs(Ljava/lang/String;IILjava/util/List;)I
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    .local p4, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v0, 0x0

    .line 134
    .local v0, "processed":I
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 136
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 137
    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v2, :cond_0

    .line 138
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    nop

    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    add-int/lit8 v0, v0, 0x1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_0
    goto :goto_3

    .line 145
    :cond_1
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    if-gt v1, p3, :cond_4

    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 147
    .restart local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->containsGlyph(I)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    :cond_2
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/util/TextUtil;->isWhitespaceOrNonPrintable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    add-int/lit8 v0, v0, 0x1

    .line 145
    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v1    # "i":I
    :cond_4
    :goto_3
    return v0
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B
    .locals 5
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 242
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 243
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_0

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 252
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aput-byte v0, v2, v3

    .line 253
    return-object v1

    .line 249
    :cond_1
    sget-object v0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B
    .locals 8
    .param p1, "glyphLine"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 216
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    if-eqz p1, :cond_5

    .line 217
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 218
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .line 219
    .local v1, "ptr":I
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 221
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .local v3, "ptr":I
    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 220
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    .end local v2    # "i":I
    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    :cond_0
    goto :goto_2

    .line 224
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 225
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "ptr":I
    .restart local v3    # "ptr":I
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {p1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    move v1, v3

    .line 224
    .end local v3    # "ptr":I
    .restart local v1    # "ptr":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    .end local v2    # "i":I
    :cond_3
    :goto_2
    invoke-static {v0, v1}, Lcom/itextpdf/io/util/ArrayUtil;->shortenArray([BI)[B

    move-result-object v0

    .line 231
    array-length v2, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_4

    aget-byte v4, v0, v3

    .line 232
    .local v4, "b":B
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    and-int/lit16 v6, v4, 0xff

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    .line 231
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 234
    :cond_4
    return-object v0

    .line 236
    .end local v0    # "bytes":[B
    .end local v1    # "ptr":I
    :cond_5
    sget-object v0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->EMPTY_BYTES:[B

    return-object v0
.end method

.method public convertToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .line 207
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontEncoding;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 208
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, v0, v2

    .line 209
    .local v3, "b":B
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    and-int/lit16 v5, v3, 0xff

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    .line 208
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-object v0
.end method

.method public createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .line 111
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    .local v0, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 115
    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 120
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 122
    .restart local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v2, :cond_3

    .line 123
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    .end local v1    # "i":I
    :cond_4
    :goto_2
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public decode(Lcom/itextpdf/kernel/pdf/PdfString;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 287
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 2
    .param p1, "content"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 295
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 296
    .local v0, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z

    .line 297
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method protected flushFontData(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 10
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "subtype"    # Lcom/itextpdf/kernel/pdf/PdfName;

    .line 371
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 372
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 377
    :cond_0
    const/4 v0, 0x0

    .local v0, "firstChar":I
    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 378
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_2
    :goto_1
    const/16 v2, 0xff

    .local v2, "lastChar":I
    :goto_2
    if-lt v2, v0, :cond_4

    .line 381
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aget-byte v3, v3, v2

    if-eqz v3, :cond_3

    goto :goto_3

    .line 380
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 383
    :cond_4
    :goto_3
    if-le v0, v1, :cond_5

    .line 384
    const/16 v0, 0xff

    .line 385
    const/16 v2, 0xff

    .line 387
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isSubset()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_9

    .line 388
    :cond_6
    const/4 v0, 0x0

    .line 389
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    array-length v1, v1

    const/4 v4, 0x1

    add-int/lit8 v2, v1, -0x1

    .line 390
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_4
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 393
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/font/FontEncoding;->canDecode(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 394
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aput-byte v4, v5, v1

    goto :goto_5

    .line 395
    :cond_7
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 396
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aput-byte v4, v5, v1

    goto :goto_5

    .line 398
    :cond_8
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aput-byte v3, v5, v1

    .line 390
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 402
    .end local v1    # "k":I
    :cond_9
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 404
    move v1, v0

    .restart local v1    # "k":I
    :goto_6
    const-string v4, ".notdef"

    if-gt v1, v2, :cond_b

    .line 405
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 406
    move v0, v1

    .line 407
    goto :goto_7

    .line 404
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 410
    .end local v1    # "k":I
    :cond_b
    :goto_7
    move v1, v2

    .restart local v1    # "k":I
    :goto_8
    if-lt v1, v0, :cond_d

    .line 411
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v1}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 412
    move v2, v1

    .line 413
    goto :goto_9

    .line 410
    :cond_c
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 416
    .end local v1    # "k":I
    :cond_d
    :goto_9
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 417
    .local v1, "enc":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 418
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 419
    .local v4, "diff":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v5, 0x1

    .line 420
    .local v5, "gap":Z
    move v6, v0

    .local v6, "k":I
    :goto_a
    if-gt v6, v2, :cond_10

    .line 421
    iget-object v7, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aget-byte v7, v7, v6

    if-eqz v7, :cond_f

    .line 422
    if-eqz v5, :cond_e

    .line 423
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 424
    const/4 v5, 0x0

    .line 426
    :cond_e
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v8, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v8, v6}, Lcom/itextpdf/io/font/FontEncoding;->getDifference(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_b

    .line 428
    :cond_f
    const/4 v5, 0x1

    .line 420
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 431
    .end local v6    # "k":I
    :cond_10
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Differences:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v6, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 432
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 433
    .end local v1    # "enc":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "diff":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v5    # "gap":Z
    :cond_11
    goto :goto_d

    :cond_12
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v1

    if-nez v1, :cond_11

    .line 434
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontEncoding;->getBaseEncoding()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cp1252"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->WinAnsiEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    goto :goto_c

    :cond_13
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->MacRomanEncoding:Lcom/itextpdf/kernel/pdf/PdfName;

    :goto_c
    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 439
    :goto_d
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isForceWidthsOutput()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isBuiltInFont()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontEncoding;->hasDifferences()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 440
    :cond_14
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FirstChar:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v0}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 441
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->LastChar:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 442
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 443
    .local v1, "wd":Lcom/itextpdf/kernel/pdf/PdfArray;
    move v4, v0

    .local v4, "k":I
    :goto_e
    if-gt v4, v2, :cond_17

    .line 444
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    aget-byte v5, v5, v4

    if-nez v5, :cond_15

    .line 445
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_10

    .line 448
    :cond_15
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/font/FontEncoding;->getUnicode(I)I

    move-result v5

    .line 449
    .local v5, "uni":I
    const/4 v6, -0x1

    if-le v5, v6, :cond_16

    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    goto :goto_f

    :cond_16
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v6, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    .line 450
    .local v6, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_f
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getGlyphWidth(Lcom/itextpdf/io/font/otf/Glyph;)D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 443
    .end local v5    # "uni":I
    .end local v6    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 453
    .end local v4    # "k":I
    :cond_17
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Widths:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 455
    .end local v1    # "wd":Lcom/itextpdf/kernel/pdf/PdfArray;
    :cond_18
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->isBuiltInFont()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    goto :goto_11

    :cond_19
    const/4 v1, 0x0

    .line 456
    .local v1, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_11
    if-eqz v1, :cond_1a

    .line 457
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 458
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    if-eqz v3, :cond_1a

    .line 459
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 462
    :cond_1a
    return-void
.end method

.method public getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F
    .locals 4
    .param p1, "content"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 344
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    const/4 v0, 0x0

    .line 345
    .local v0, "width":F
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 346
    .local v1, "glyphLine":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v2, "i":I
    :goto_0
    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v3, :cond_0

    .line 347
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method protected getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 7
    .param p1, "fontName"    # Ljava/lang/String;

    .line 479
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 480
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    .line 481
    .local v0, "fontMetrics":Lcom/itextpdf/io/font/FontMetrics;
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v1

    .line 482
    .local v1, "fontNames":Lcom/itextpdf/io/font/FontNames;
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 483
    .local v2, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 484
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 485
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v4, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 486
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 487
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 488
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 489
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/io/util/ArrayUtil;->cloneArray([I)[I

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 490
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v5

    float-to-double v5, v5

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 491
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getStemV()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 492
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getXHeight()I

    move-result v3

    if-lez v3, :cond_0

    .line 493
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->XHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getXHeight()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 495
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getStemH()I

    move-result v3

    if-lez v3, :cond_1

    .line 496
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->StemH:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->getStemH()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 498
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v3

    if-lez v3, :cond_2

    .line 499
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontWeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 501
    :cond_2
    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    const/4 v5, 0x4

    if-lt v3, v5, :cond_3

    .line 502
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->FontFamily:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFamilyName()[[Ljava/lang/String;

    move-result-object v6

    aget-object v4, v6, v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 505
    :cond_3
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->addFontStream(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 506
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getPdfFontFlags()I

    move-result v3

    .line 508
    .local v3, "flags":I
    sget v4, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    sget v5, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    or-int/2addr v4, v5

    not-int v4, v4

    and-int/2addr v3, v4

    .line 510
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v4

    if-eqz v4, :cond_4

    sget v4, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Symbolic:I

    goto :goto_0

    :cond_4
    sget v4, Lcom/itextpdf/io/font/constants/FontDescriptorFlags;->Nonsymbolic:I

    :goto_0
    or-int/2addr v3, v4

    .line 513
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 514
    return-object v2

    .line 479
    .end local v0    # "fontMetrics":Lcom/itextpdf/io/font/FontMetrics;
    .end local v1    # "fontNames":Lcom/itextpdf/io/font/FontNames;
    .end local v2    # "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v3    # "flags":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getFontEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 1

    .line 193
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    return-object v0
.end method

.method protected getGlyphWidth(Lcom/itextpdf/io/font/otf/Glyph;)D
    .locals 2
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 524
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getToUnicode()Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    .locals 1

    .line 202
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->toUnicode:Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    return-object v0
.end method

.method protected isBuiltInFont()Z
    .locals 1

    .line 469
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontProgram"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 105
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->isBuiltWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    .line 106
    invoke-virtual {v0, p2}, Lcom/itextpdf/io/font/FontEncoding;->isBuiltWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    :goto_0
    return v0
.end method

.method public isForceWidthsOutput()Z
    .locals 1

    .line 358
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    return v0
.end method

.method protected setFontProgram(Lcom/itextpdf/io/font/FontProgram;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 520
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    .local p1, "fontProgram":Lcom/itextpdf/io/font/FontProgram;, "TT;"
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 521
    return-void
.end method

.method public setForceWidthsOutput(Z)V
    .locals 0
    .param p1, "forceWidthsOutput"    # Z

    .line 367
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    iput-boolean p1, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->forceWidthsOutput:Z

    .line 368
    return-void
.end method

.method public writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 8
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "stream"    # Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 258
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    sub-int v0, p3, p2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 259
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 261
    .local v2, "ptr":I
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontEncoding;->isFontSpecific()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-gt v3, p3, :cond_0

    .line 263
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "ptr":I
    .local v4, "ptr":I
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 262
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    .end local v3    # "i":I
    .end local v4    # "ptr":I
    .restart local v2    # "ptr":I
    :cond_0
    goto :goto_2

    .line 266
    :cond_1
    move v3, p2

    .restart local v3    # "i":I
    :goto_1
    if-gt v3, p3, :cond_3

    .line 267
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 268
    .local v4, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontEncoding;->canEncode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 269
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "ptr":I
    .local v5, "ptr":I
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->fontEncoding:Lcom/itextpdf/io/font/FontEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    move v2, v5

    .line 266
    .end local v4    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v5    # "ptr":I
    .restart local v2    # "ptr":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    .end local v3    # "i":I
    :cond_3
    :goto_2
    invoke-static {v0, v2}, Lcom/itextpdf/io/util/ArrayUtil;->shortenArray([BI)[B

    move-result-object v0

    .line 274
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_4

    aget-byte v5, v0, v4

    .line 275
    .local v5, "b":B
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfSimpleFont;->shortTag:[B

    and-int/lit16 v7, v5, 0xff

    aput-byte v1, v6, v7

    .line 274
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 277
    :cond_4
    invoke-static {p4, v0}, Lcom/itextpdf/io/util/StreamUtil;->writeEscapedString(Ljava/io/OutputStream;[B)V

    .line 278
    return-void
.end method

.method public writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "stream"    # Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 282
    .local p0, "this":Lcom/itextpdf/kernel/font/PdfSimpleFont;, "Lcom/itextpdf/kernel/font/PdfSimpleFont<TT;>;"
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfSimpleFont;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/itextpdf/io/util/StreamUtil;->writeEscapedString(Ljava/io/OutputStream;[B)V

    .line 283
    return-void
.end method
