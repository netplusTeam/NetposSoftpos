.class public Lcom/itextpdf/io/font/FontEncoding;
.super Ljava/lang/Object;
.source "FontEncoding.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FONT_SPECIFIC:Ljava/lang/String; = "FontSpecific"

.field public static final NOTDEF:Ljava/lang/String; = ".notdef"

.field private static final emptyBytes:[B

.field private static final serialVersionUID:J = -0x9817e354eeb58ebL


# instance fields
.field protected baseEncoding:Ljava/lang/String;

.field protected codeToUnicode:[I

.field protected differences:[Ljava/lang/String;

.field protected fontSpecific:Z

.field protected unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

.field protected unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/itextpdf/io/font/FontEncoding;->emptyBytes:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    .line 94
    new-array v0, v1, [I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/itextpdf/io/util/ArrayUtil;->fillWithValue([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    .line 95
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    .line 97
    return-void
.end method

.method public static createEmptyFontEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 4

    .line 111
    new-instance v0, Lcom/itextpdf/io/font/FontEncoding;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    .line 112
    .local v0, "encoding":Lcom/itextpdf/io/font/FontEncoding;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    .line 113
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    .line 114
    const/16 v1, 0x100

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    .line 115
    const/4 v2, 0x0

    .local v2, "ch":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 116
    iget-object v3, v0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v3, v2, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "ch":I
    :cond_0
    return-object v0
.end method

.method public static createFontEncoding(Ljava/lang/String;)Lcom/itextpdf/io/font/FontEncoding;
    .locals 3
    .param p0, "baseEncoding"    # Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/itextpdf/io/font/FontEncoding;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    .line 101
    .local v0, "encoding":Lcom/itextpdf/io/font/FontEncoding;
    invoke-static {p0}, Lcom/itextpdf/io/font/FontEncoding;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    .line 102
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->fillCustomEncoding()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontEncoding;->fillNamedEncoding()V

    .line 107
    :goto_0
    return-object v0
.end method

.method public static createFontSpecificEncoding()Lcom/itextpdf/io/font/FontEncoding;
    .locals 3

    .line 127
    new-instance v0, Lcom/itextpdf/io/font/FontEncoding;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontEncoding;-><init>()V

    .line 128
    .local v0, "encoding":Lcom/itextpdf/io/font/FontEncoding;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    .line 129
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 130
    iget-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v1, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 131
    iget-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v1, v2, v1

    .line 132
    iget-object v2, v0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v2, v1, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "ch":I
    :cond_0
    return-object v0
.end method

.method protected static normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "enc"    # Ljava/lang/String;

    .line 363
    const-string v0, ""

    if-nez p0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "tmp":Ljava/lang/String;
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string/jumbo v0, "zapfdingbatsencoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "winansi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "macromanencoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "macroman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_5
    const-string/jumbo v0, "winansiencoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 375
    return-object p0

    .line 373
    :pswitch_0
    const-string v0, "ZapfDingbats"

    return-object v0

    .line 371
    :pswitch_1
    const-string v0, "MacRoman"

    return-object v0

    .line 368
    :pswitch_2
    const-string v0, "Cp1252"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x431a208e -> :sswitch_5
        -0xa7919f2 -> :sswitch_4
        0x0 -> :sswitch_3
        0xcfe2561 -> :sswitch_2
        0x506e411f -> :sswitch_1
        0x7edb6bac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addSymbol(II)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "unicode"    # I

    .line 146
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0xff

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {p2}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "glyphName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 152
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput p2, v0, p1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aput-object v1, v0, p1

    .line 154
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p2, p2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 155
    const/4 v0, 0x1

    return v0

    .line 157
    :cond_1
    return v0

    .line 147
    .end local v1    # "glyphName":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public canDecode(I)Z
    .locals 2
    .param p1, "code"    # I

    .line 247
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canEncode(I)Z
    .locals 1
    .param p1, "unicode"    # I

    .line 236
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isNonPrintable(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/itextpdf/io/util/TextUtil;->isNewLine(I)Z

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

.method public convertToByte(I)I
    .locals 1
    .param p1, "unicode"    # I

    .line 225
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method

.method public convertToBytes(Ljava/lang/String;)[B
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 204
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, "ptr":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [B

    .line 209
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ptr":I
    .local v3, "ptr":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/FontEncoding;->convertToByte(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    move v0, v3

    .line 209
    .end local v3    # "ptr":I
    .restart local v0    # "ptr":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_2
    invoke-static {v1, v0}, Lcom/itextpdf/io/util/ArrayUtil;->shortenArray([BI)[B

    move-result-object v2

    return-object v2

    .line 205
    .end local v0    # "ptr":I
    .end local v1    # "bytes":[B
    :cond_3
    :goto_1
    sget-object v0, Lcom/itextpdf/io/font/FontEncoding;->emptyBytes:[B

    return-object v0
.end method

.method protected fillCustomEncoding()V
    .locals 10

    .line 261
    const/16 v0, 0x100

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    .line 262
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, " ,\t\n\r\u000c"

    invoke-direct {v1, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "full"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x10

    if-eqz v2, :cond_1

    .line 264
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "order":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    .line 268
    .local v6, "uni":C
    invoke-static {v5}, Lcom/itextpdf/io/font/AdobeGlyphList;->nameToUnicode(Ljava/lang/String;)I

    move-result v7

    .line 270
    .local v7, "uniName":I
    const-string v8, "\'"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .local v8, "orderK":I
    goto :goto_1

    .line 273
    .end local v8    # "orderK":I
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 275
    .restart local v8    # "orderK":I
    :goto_1
    rem-int/2addr v8, v0

    .line 276
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v9, v6, v8}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 277
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v6, v9, v8

    .line 278
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aput-object v5, v9, v8

    .line 279
    iget-object v9, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v9, v6, v7}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 280
    .end local v2    # "order":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "uni":C
    .end local v7    # "uniName":I
    .end local v8    # "orderK":I
    goto :goto_0

    .line 282
    :cond_1
    const/4 v2, 0x0

    .line 283
    .local v2, "k":I
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 286
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v2, v0, :cond_4

    .line 287
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "hex":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    const/high16 v6, 0x10000

    rem-int/2addr v5, v6

    .line 289
    .local v5, "uni":I
    invoke-static {v5}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v6

    .line 290
    .local v6, "name":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 291
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uni"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 293
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v7, v5, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 294
    iget-object v7, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v5, v7, v2

    .line 295
    iget-object v7, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aput-object v6, v7, v2

    .line 296
    iget-object v7, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v7, v5, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 297
    nop

    .end local v3    # "hex":Ljava/lang/String;
    .end local v5    # "uni":I
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 298
    goto :goto_2

    .line 300
    .end local v2    # "k":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_3
    if-ge v2, v0, :cond_6

    .line 301
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    aget-object v4, v3, v2

    if-nez v4, :cond_5

    .line 302
    const-string v4, ".notdef"

    aput-object v4, v3, v2

    .line 300
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 305
    .end local v2    # "k":I
    :cond_6
    return-void
.end method

.method protected fillNamedEncoding()V
    .locals 9

    .line 309
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    const-string v1, " "

    invoke-static {v1, v0}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 310
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    const-string v1, "Cp1252"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    const-string v1, "MacRoman"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 311
    .local v0, "stdEncoding":Z
    :goto_1
    const/16 v1, 0x100

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 312
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    .line 315
    :cond_2
    new-array v2, v1, [B

    .line 316
    .local v2, "b":[B
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 317
    int-to-byte v4, v3

    aput-byte v4, v2, v3

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 319
    .end local v3    # "k":I
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 321
    .local v4, "encoded":[C
    const/4 v5, 0x0

    .local v5, "ch":I
    :goto_3
    if-ge v5, v1, :cond_6

    .line 322
    aget-char v6, v4, v5

    .line 323
    .local v6, "uni":C
    invoke-static {v6}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 325
    const-string v7, ".notdef"

    goto :goto_4

    .line 327
    :cond_4
    iget-object v8, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v8, v6, v5}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 328
    iget-object v8, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v6, v8, v5

    .line 329
    iget-object v8, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v8, v6, v6}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 331
    :goto_4
    iget-object v8, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 332
    aput-object v7, v8, v5

    .line 321
    .end local v6    # "uni":C
    .end local v7    # "name":Ljava/lang/String;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 335
    .end local v5    # "ch":I
    :cond_6
    return-void
.end method

.method protected fillStandardEncoding()V
    .locals 5

    .line 338
    sget-object v0, Lcom/itextpdf/io/font/PdfEncodings;->standardEncoding:[I

    .line 339
    .local v0, "encoded":[I
    const/4 v1, 0x0

    .local v1, "ch":I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    .line 340
    aget v2, v0, v1

    .line 341
    .local v2, "uni":I
    invoke-static {v2}, Lcom/itextpdf/io/font/AdobeGlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 343
    const-string v3, ".notdef"

    goto :goto_1

    .line 345
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeToCode:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v2, v1}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 346
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aput v2, v4, v1

    .line 347
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v4, v2, v2}, Lcom/itextpdf/io/util/IntHashtable;->put(II)I

    .line 349
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 350
    aput-object v3, v4, v1

    .line 339
    .end local v2    # "uni":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "ch":I
    :cond_2
    return-void
.end method

.method public getBaseEncoding()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getDifference(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 180
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUnicode(I)I
    .locals 1
    .param p1, "index"    # I

    .line 168
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->codeToUnicode:[I

    aget v0, v0, p1

    return v0
.end method

.method public getUnicodeDifference(I)I
    .locals 1
    .param p1, "index"    # I

    .line 172
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->unicodeDifferences:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0
.end method

.method public hasDifferences()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .line 257
    invoke-static {p1}, Lcom/itextpdf/io/font/FontEncoding;->normalizeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/font/FontEncoding;->baseEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFontSpecific()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/itextpdf/io/font/FontEncoding;->fontSpecific:Z

    return v0
.end method

.method public setDifference(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "difference"    # Ljava/lang/String;

    .line 191
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/io/font/FontEncoding;->differences:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 192
    aput-object p2, v0, p1

    .line 194
    :cond_0
    return-void
.end method
