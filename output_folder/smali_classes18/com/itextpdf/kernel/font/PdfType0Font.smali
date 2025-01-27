.class public Lcom/itextpdf/kernel/font/PdfType0Font;
.super Lcom/itextpdf/kernel/font/PdfFont;
.source "PdfType0Font.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final CID_FONT_TYPE_0:I = 0x0

.field protected static final CID_FONT_TYPE_2:I = 0x2

.field private static final MAX_CID_CODE_LENGTH:I = 0x4

.field private static final rotbits:[B

.field private static final serialVersionUID:J = -0x6f7d27198691b075L


# instance fields
.field protected cidFontType:I

.field protected cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

.field protected longTag:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected specificUnicodeDifferences:[C

.field protected vertical:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    nop

    .line 94
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/kernel/font/PdfType0Font;->rotbits:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method constructor <init>(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;)V
    .locals 4
    .param p1, "font"    # Lcom/itextpdf/io/font/CidFont;
    .param p2, "cmap"    # Ljava/lang/String;

    .line 145
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfFont;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/itextpdf/io/font/CidFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/itextpdf/io/font/CidFontProperties;->isCidFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 151
    const-string v0, "V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    .line 152
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getRegistry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "uniMap":Ljava/lang/String;
    new-instance v2, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v2, p2, v0}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 154
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    .line 155
    iput v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    .line 156
    return-void

    .line 147
    .end local v0    # "uniMap":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Font {0} with {1} encoding is not a cjk font."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p1}, Lcom/itextpdf/io/font/CidFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;)V
    .locals 7
    .param p1, "ttf"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .param p2, "cmap"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfFont;-><init>()V

    .line 114
    const-string v0, "Identity-H"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Identity-V"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Only Identity CMaps supports with truetype"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 122
    iput-object p1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 123
    iput-boolean v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z

    .line 124
    const-string v0, "V"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    .line 125
    new-instance v0, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v0, p2}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 126
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    .line 127
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    .line 128
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const/16 v0, 0x100

    new-array v3, v0, [C

    iput-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->specificUnicodeDifferences:[C

    .line 130
    new-array v2, v2, [B

    .line 131
    .local v2, "bytes":[B
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 132
    int-to-byte v4, v3

    aput-byte v4, v2, v1

    .line 133
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_2
    const/16 v5, 0x3f

    .line 135
    .local v5, "ch":C
    :goto_2
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->specificUnicodeDifferences:[C

    aput-char v5, v6, v3

    .line 131
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "ch":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 138
    .end local v2    # "bytes":[B
    .end local v3    # "k":I
    :cond_3
    return-void

    .line 119
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string/jumbo v3, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0
.end method

.method constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 12
    .param p1, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 159
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/font/PdfFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->newFont:Z

    .line 161
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 162
    .local v1, "cidFont":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 163
    .local v2, "cmap":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->ToUnicode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 164
    .local v3, "toUnicode":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-static {v3}, Lcom/itextpdf/kernel/font/FontUtil;->processToUnicode(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v4

    .line 165
    .local v4, "toUnicodeCMap":Lcom/itextpdf/io/font/cmap/CMapToUnicode;
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    move-object v5, v2

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v9, "Identity-H"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v10, "Identity-V"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    :cond_0
    if-nez v4, :cond_1

    .line 167
    invoke-static {v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getOrdering(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->getUniMapFromOrdering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "uniMap":Ljava/lang/String;
    invoke-static {v5}, Lcom/itextpdf/kernel/font/FontUtil;->getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v4

    .line 169
    if-nez v4, :cond_1

    .line 170
    invoke-static {v9}, Lcom/itextpdf/kernel/font/FontUtil;->getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v4

    .line 171
    const-class v9, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v9}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v9

    .line 172
    .local v9, "logger":Lorg/slf4j/Logger;
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v0

    const-string v11, "Unknown CMap {0}"

    invoke-static {v11, v10}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 175
    .end local v5    # "uniMap":Ljava/lang/String;
    .end local v9    # "logger":Lorg/slf4j/Logger;
    :cond_1
    invoke-static {v1, v4}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 176
    invoke-static {v2, v8}, Lcom/itextpdf/kernel/font/PdfType0Font;->createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v5

    iput-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 177
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    instance-of v5, v5, Lcom/itextpdf/kernel/font/IDocFontProgram;

    if-eqz v5, :cond_3

    .line 178
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v5, Lcom/itextpdf/kernel/font/IDocFontProgram;

    invoke-interface {v5}, Lcom/itextpdf/kernel/font/IDocFontProgram;->getFontFile()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move v7, v0

    :goto_0
    iput-boolean v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z

    goto :goto_3

    .line 177
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 180
    :cond_4
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, "cidFontName":Ljava/lang/String;
    invoke-static {v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getOrdering(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/itextpdf/kernel/font/PdfType0Font;->getUniMapFromOrdering(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "uniMap":Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v10, "Uni"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v5, v9}, Lcom/itextpdf/io/font/CidFontProperties;->isCidFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 184
    :try_start_0
    invoke-static {v5}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v10

    iput-object v10, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 185
    invoke-static {v2, v9}, Lcom/itextpdf/kernel/font/PdfType0Font;->createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v10

    iput-object v10, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 186
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v10

    .line 188
    .local v10, "ignored":Ljava/io/IOException;
    iput-object v8, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 189
    iput-object v8, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 190
    .end local v10    # "ignored":Ljava/io/IOException;
    :goto_1
    goto :goto_2

    .line 192
    :cond_5
    if-nez v4, :cond_6

    .line 193
    invoke-static {v9}, Lcom/itextpdf/kernel/font/FontUtil;->getToUnicodeFromUniMap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapToUnicode;

    move-result-object v4

    .line 195
    :cond_6
    if-eqz v4, :cond_7

    .line 196
    invoke-static {v1, v4}, Lcom/itextpdf/kernel/font/DocTrueTypeFont;->createFontProgram(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/font/cmap/CMapToUnicode;)Lcom/itextpdf/io/font/TrueTypeFont;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    .line 197
    invoke-static {v2, v9}, Lcom/itextpdf/kernel/font/PdfType0Font;->createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v8

    iput-object v8, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 200
    :cond_7
    :goto_2
    iget-object v8, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    if-eqz v8, :cond_a

    .line 205
    .end local v5    # "cidFontName":Ljava/lang/String;
    .end local v9    # "uniMap":Ljava/lang/String;
    :goto_3
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 207
    .local v5, "cidFontDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    .line 208
    .local v7, "subtype":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 209
    iput v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    goto :goto_4

    .line 210
    :cond_8
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 211
    iput v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    goto :goto_4

    .line 213
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v6

    const-string v8, "Failed to determine CIDFont subtype. The type of CIDFont shall be CIDFontType0 or CIDFontType2."

    invoke-interface {v6, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 215
    :goto_4
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    iput-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    .line 216
    iput-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    .line 217
    return-void

    .line 201
    .end local v7    # "subtype":Lcom/itextpdf/kernel/pdf/PdfName;
    .local v5, "cidFontName":Ljava/lang/String;
    .restart local v9    # "uniMap":Ljava/lang/String;
    :cond_a
    new-instance v8, Lcom/itextpdf/kernel/PdfException;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v0

    aput-object v2, v6, v7

    const-string v0, "Cannot recognise document font {0} with {1} encoding"

    invoke-static {v0, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private appendUniGlyphs(Ljava/lang/String;IILjava/util/List;)I
    .locals 6
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

    .line 446
    .local p4, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v0, 0x0

    .line 447
    .local v0, "processed":I
    move v1, p2

    .local v1, "k":I
    :goto_0
    if-gt v1, p3, :cond_2

    .line 449
    move v2, v0

    .line 450
    .local v2, "currentlyProcessed":I
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 451
    invoke-static {p1, v1}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    .line 452
    .local v3, "val":I
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 454
    .end local v3    # "val":I
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 455
    .restart local v3    # "val":I
    add-int/lit8 v0, v0, 0x1

    .line 457
    :goto_1
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 458
    .local v4, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/font/PdfType0Font;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v2    # "currentlyProcessed":I
    .end local v3    # "val":I
    .end local v4    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .restart local v2    # "currentlyProcessed":I
    .restart local v3    # "val":I
    .restart local v4    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_1
    move v0, v2

    .line 465
    .end local v1    # "k":I
    .end local v2    # "currentlyProcessed":I
    .end local v3    # "val":I
    .end local v4    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_2
    return v0
.end method

.method private convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/source/ByteBuffer;)V
    .locals 3
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;
    .param p2, "result"    # Lcom/itextpdf/io/source/ByteBuffer;

    .line 694
    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v0

    .line 695
    .local v0, "code":I
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v1, v0, p2}, Lcom/itextpdf/io/font/CMapEncoding;->fillCmapBytes(ILcom/itextpdf/io/source/ByteBuffer;)V

    .line 697
    return-void
.end method

.method private static createCMap(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/lang/String;)Lcom/itextpdf/io/font/CMapEncoding;
    .locals 4
    .param p0, "cmap"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p1, "uniMap"    # Ljava/lang/String;

    .line 990
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 992
    .local v0, "cmapStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    .line 993
    .local v1, "cmapBytes":[B
    new-instance v2, Lcom/itextpdf/io/font/CMapEncoding;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CMapName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;[B)V

    return-object v2

    .line 995
    .end local v0    # "cmapStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v1    # "cmapBytes":[B
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "cmapName":Ljava/lang/String;
    const-string v1, "Identity-H"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Identity-V"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 999
    :cond_1
    new-instance v1, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 997
    :cond_2
    :goto_0
    new-instance v1, Lcom/itextpdf/io/font/CMapEncoding;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/CMapEncoding;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private flushFontData()V
    .locals 12

    .line 707
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const-string/jumbo v1, "{0}-{1}"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 708
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 709
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Type0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 710
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object v5

    .line 712
    .local v5, "style":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfName;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    iget-object v9, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v9}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v4

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 716
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 717
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 718
    .local v1, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 719
    .local v2, "cidFont":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v3, v4, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 721
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 722
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 723
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v2    # "cidFont":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v5    # "style":Ljava/lang/String;
    goto/16 :goto_5

    :cond_1
    if-ne v0, v2, :cond_b

    .line 724
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    .line 725
    .local v0, "ttf":Lcom/itextpdf/io/font/TrueTypeFont;
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    iget-boolean v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->embedded:Z

    invoke-static {v5, v6, v7}, Lcom/itextpdf/kernel/font/PdfType0Font;->updateSubsetPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 726
    .local v5, "fontName":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    .line 729
    .local v6, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    check-cast v7, Ljava/util/SortedSet;

    iget-boolean v8, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    iget-object v9, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subsetRanges:Ljava/util/List;

    invoke-virtual {v0, v7, v8, v9}, Lcom/itextpdf/io/font/TrueTypeFont;->updateUsedGlyphs(Ljava/util/SortedSet;ZLjava/util/List;)V

    .line 730
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 732
    iget-boolean v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    if-eqz v7, :cond_2

    .line 733
    new-instance v7, Lcom/itextpdf/io/font/CFFFontSubset;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v8

    iget-object v9, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    invoke-direct {v7, v8, v9}, Lcom/itextpdf/io/font/CFFFontSubset;-><init>([BLjava/util/Set;)V

    invoke-virtual {v7}, Lcom/itextpdf/io/font/CFFFontSubset;->Process()[B

    move-result-object v7

    .local v7, "cffBytes":[B
    goto :goto_0

    .line 735
    .end local v7    # "cffBytes":[B
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v7

    .line 737
    .restart local v7    # "cffBytes":[B
    :goto_0
    new-array v8, v4, [I

    array-length v9, v7

    aput v9, v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v8

    .line 738
    .local v8, "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v11, "CIDFontType0C"

    invoke-direct {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 740
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfName;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v3

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 741
    invoke-virtual {v3}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 742
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v1, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 743
    .end local v7    # "cffBytes":[B
    goto :goto_2

    .line 744
    .end local v8    # "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_3
    const/4 v1, 0x0

    .line 746
    .local v1, "ttfBytes":[B
    iget-boolean v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getDirectoryOffset()I

    move-result v2

    if-lez v2, :cond_5

    .line 748
    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    iget-boolean v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    invoke-virtual {v0, v2, v7}, Lcom/itextpdf/io/font/TrueTypeFont;->getSubset(Ljava/util/Set;Z)[B

    move-result-object v2
    :try_end_0
    .catch Lcom/itextpdf/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 753
    goto :goto_1

    .line 749
    :catch_0
    move-exception v2

    .line 750
    .local v2, "e":Lcom/itextpdf/io/IOException;
    const-class v7, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v7}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v7

    .line 751
    .local v7, "logger":Lorg/slf4j/Logger;
    const-string v8, "Font subset issue. Full font will be embedded."

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 752
    const/4 v1, 0x0

    .line 755
    .end local v2    # "e":Lcom/itextpdf/io/IOException;
    .end local v7    # "logger":Lorg/slf4j/Logger;
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 756
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontStreamBytes()[B

    move-result-object v1

    .line 758
    :cond_6
    new-array v2, v4, [I

    array-length v7, v1

    aput v7, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfFontStream([B[I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v8

    .line 759
    .restart local v8    # "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 760
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontFile2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v2, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 765
    .end local v1    # "ttfBytes":[B
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getNumberOfGlyphs()I

    move-result v1

    .line 766
    .local v1, "numOfGlyphs":I
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontMetrics;->getNumberOfGlyphs()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v4

    new-array v2, v2, [B

    .line 767
    .local v2, "cidSetBytes":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    div-int/lit8 v7, v1, 0x8

    if-ge v3, v7, :cond_7

    .line 768
    aget-byte v7, v2, v3

    or-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 770
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    rem-int/lit8 v7, v1, 0x8

    if-ge v3, v7, :cond_8

    .line 771
    array-length v7, v2

    sub-int/2addr v7, v4

    aget-byte v9, v2, v7

    sget-object v10, Lcom/itextpdf/kernel/font/PdfType0Font;->rotbits:[B

    aget-byte v10, v10, v3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v2, v7

    .line 770
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 773
    .end local v3    # "i":I
    :cond_8
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSet:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v7, v2}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    invoke-virtual {v6, v3, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 774
    invoke-virtual {v0}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v3

    xor-int/2addr v3, v4

    invoke-virtual {p0, v6, v5, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 776
    .local v3, "cidFont":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 777
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Type0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 778
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Encoding:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v10}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 779
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DescendantFonts:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    invoke-virtual {v4, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 781
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getToUnicode()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    .line 782
    .local v4, "toUnicode":Lcom/itextpdf/kernel/pdf/PdfStream;
    if-eqz v4, :cond_9

    .line 783
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->ToUnicode:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v9, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 784
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 785
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 791
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v7

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v7, v9}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v7

    if-ltz v7, :cond_a

    .line 793
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSet:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 795
    :cond_a
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 796
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush()V

    .line 797
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 798
    .end local v0    # "ttf":Lcom/itextpdf/io/font/TrueTypeFont;
    .end local v1    # "numOfGlyphs":I
    .end local v2    # "cidSetBytes":[B
    .end local v3    # "cidFont":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v4    # "toUnicode":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v5    # "fontName":Ljava/lang/String;
    .end local v6    # "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v8    # "fontStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    nop

    .line 801
    :goto_5
    return-void

    .line 799
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unsupported CID Font"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateWidthsArray()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 10

    .line 861
    new-instance v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    .line 862
    .local v0, "bytes":Lcom/itextpdf/io/source/ByteArrayOutputStream;
    new-instance v1, Lcom/itextpdf/io/source/OutputStream;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 863
    .local v1, "stream":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<Lcom/itextpdf/io/source/ByteArrayOutputStream;>;"
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 864
    const/16 v3, -0xa

    .line 865
    .local v3, "lastNumber":I
    const/4 v4, 0x1

    .line 866
    .local v4, "firstTime":Z
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 867
    .local v6, "code":I
    iget-object v7, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v7, v6}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    .line 868
    .local v7, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v8

    const/16 v9, 0x3e8

    if-ne v8, v9, :cond_0

    .line 869
    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    add-int/lit8 v9, v3, 0x1

    if-ne v8, v9, :cond_1

    .line 872
    const/16 v8, 0x20

    invoke-virtual {v1, v8}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    goto :goto_1

    .line 874
    :cond_1
    if-nez v4, :cond_2

    .line 875
    const/16 v8, 0x5d

    invoke-virtual {v1, v8}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 877
    :cond_2
    const/4 v4, 0x0

    .line 878
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/itextpdf/io/source/OutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 879
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 881
    :goto_1
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/itextpdf/io/source/OutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 882
    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    .line 883
    .end local v6    # "code":I
    .end local v7    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    goto :goto_0

    .line 884
    :cond_3
    invoke-virtual {v1}, Lcom/itextpdf/io/source/OutputStream;->getCurrentPos()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-lez v2, :cond_4

    .line 885
    const-string v2, "]]"

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 886
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfLiteral;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfLiteral;-><init>([B)V

    return-object v2

    .line 888
    :cond_4
    const/4 v2, 0x0

    return-object v2
.end method

.method private getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "registry"    # Ljava/lang/String;

    .line 977
    const-string v0, ""

    .line 978
    .local v0, "uniMap":Ljava/lang/String;
    invoke-static {}, Lcom/itextpdf/io/font/CidFontProperties;->getRegistryNames()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Uni"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 979
    .local v2, "name":Ljava/lang/String;
    move-object v0, v2

    .line 980
    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    if-eqz v4, :cond_0

    .line 981
    goto :goto_1

    .line 982
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    if-nez v3, :cond_1

    .line 983
    goto :goto_1

    .line 985
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 986
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static getOrdering(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 3
    .param p0, "cidFont"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 700
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSystemInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 701
    .local v0, "cidinfo":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 702
    return-object v1

    .line 703
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Ordering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ordering:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getUniMapFromOrdering(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ordering"    # Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "CNS1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "GB1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "Identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "Korea1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "Japan1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 230
    :pswitch_0
    const-string v0, "Identity-H"

    return-object v0

    .line 228
    :pswitch_1
    const-string v0, "UniGB-UTF16-H"

    return-object v0

    .line 226
    :pswitch_2
    const-string v0, "UniKS-UTF16-H"

    return-object v0

    .line 224
    :pswitch_3
    const-string v0, "UniJIS-UTF16-H"

    return-object v0

    .line 222
    :pswitch_4
    const-string v0, "UniCNS-UTF16-H"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c2e16f5 -> :sswitch_4
        -0x79b2ff19 -> :sswitch_3
        -0x43d2b22 -> :sswitch_2
        0x112b6 -> :sswitch_1
        0x1fa3e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z
    .locals 1
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 518
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

.method private static toHex4(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private writeBfrange(Lcom/itextpdf/io/source/OutputStream;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/source/OutputStream<",
            "Lcom/itextpdf/io/source/ByteArrayOutputStream;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/Glyph;",
            ">;)I"
        }
    .end annotation

    .line 938
    .local p1, "stream":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<Lcom/itextpdf/io/source/ByteArrayOutputStream;>;"
    .local p2, "range":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 939
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeInteger(I)Ljava/io/OutputStream;

    .line 940
    const-string v0, " beginbfrange\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 941
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/io/font/otf/Glyph;

    .line 942
    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/io/font/cmap/CMapContentParser;->toHex(I)Ljava/lang/String;

    move-result-object v3

    .line 943
    .local v3, "fromTo":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 944
    invoke-virtual {p1, v3}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 945
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 946
    invoke-virtual {v2}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget-char v7, v4, v6

    .line 947
    .local v7, "ch":C
    invoke-static {v7}, Lcom/itextpdf/kernel/font/PdfType0Font;->toHex4(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 946
    .end local v7    # "ch":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 949
    :cond_1
    const/16 v4, 0x3e

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 950
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    .line 951
    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v3    # "fromTo":Ljava/lang/String;
    goto :goto_0

    .line 952
    :cond_2
    const-string v0, "endbfrange\n"

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 953
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 954
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addRangeUni(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/util/Map;Z)V
    .locals 1
    .param p1, "ttf"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .param p3, "includeMetrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/TrueTypeFont;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 690
    .local p2, "longTag":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->addRangeUni(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/util/Set;)V

    .line 691
    return-void
.end method

.method protected addRangeUni(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/util/Set;)V
    .locals 3
    .param p1, "ttf"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/io/font/TrueTypeFont;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 973
    .local p2, "longTag":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object v0, p2

    check-cast v0, Ljava/util/SortedSet;

    iget-boolean v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subset:Z

    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->subsetRanges:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2}, Lcom/itextpdf/io/font/TrueTypeFont;->updateUsedGlyphs(Ljava/util/SortedSet;ZLjava/util/List;)V

    .line 974
    return-void
.end method

.method public appendAnyGlyph(Ljava/lang/String;ILjava/util/List;)I
    .locals 5
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

    .line 470
    .local p3, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v0, 0x1

    .line 472
    .local v0, "process":I
    iget v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    if-nez v1, :cond_3

    .line 473
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 475
    .local v1, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v1, :cond_0

    .line 476
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v1    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    goto :goto_3

    .line 480
    :cond_1
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v1

    .line 482
    .local v1, "ch":I
    const/4 v0, 0x2

    goto :goto_0

    .line 484
    .end local v1    # "ch":I
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 486
    .restart local v1    # "ch":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    .end local v1    # "ch":I
    goto :goto_3

    .line 488
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 489
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    check-cast v1, Lcom/itextpdf/io/font/TrueTypeFont;

    .line 490
    .local v1, "ttf":Lcom/itextpdf/io/font/TrueTypeFont;
    invoke-virtual {v1}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 491
    const-string/jumbo v2, "symboltt"

    invoke-static {p1, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 492
    .local v2, "b":[B
    array-length v3, v2

    if-lez v3, :cond_4

    .line 493
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    .line 494
    .local v3, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v3, :cond_4

    .line 495
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v2    # "b":[B
    .end local v3    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_4
    goto :goto_2

    .line 500
    :cond_5
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 501
    invoke-static {p1, p2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v2

    .line 502
    .local v2, "ch":I
    const/4 v0, 0x2

    goto :goto_1

    .line 504
    .end local v2    # "ch":I
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 506
    .restart local v2    # "ch":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v1    # "ttf":Lcom/itextpdf/io/font/TrueTypeFont;
    .end local v2    # "ch":I
    :goto_2
    nop

    .line 511
    :goto_3
    return v0

    .line 509
    :cond_7
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Font has no suitable cmap."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 15
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

    .line 541
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x1

    .line 543
    .local v1, "allCodesDecoded":Z
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "charCodesSequence":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 550
    const/4 v4, 0x0

    .line 551
    .local v4, "code":I
    const/4 v5, 0x0

    .line 552
    .local v5, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    const/4 v6, 0x1

    .line 553
    .local v6, "codeSpaceMatchedLength":I
    const/4 v7, 0x1

    .local v7, "codeLength":I
    :goto_1
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-gt v7, v8, :cond_2

    add-int v10, v3, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_2

    .line 555
    shl-int/lit8 v10, v4, 0x8

    add-int v11, v3, v7

    sub-int/2addr v11, v9

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int v4, v10, v11

    .line 556
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCmap()Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v10

    invoke-virtual {v10, v4, v7}, Lcom/itextpdf/io/font/CMapEncoding;->containsCodeInCodeSpaceRange(II)Z

    move-result v10

    if-nez v10, :cond_0

    .line 557
    goto :goto_2

    .line 559
    :cond_0
    move v6, v7

    .line 561
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCmap()Lcom/itextpdf/io/font/CMapEncoding;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/itextpdf/io/font/CMapEncoding;->getCidCode(I)I

    move-result v10

    .line 562
    .local v10, "glyphCode":I
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 563
    if-eqz v5, :cond_1

    .line 564
    add-int/lit8 v11, v7, -0x1

    add-int/2addr v3, v11

    .line 565
    goto :goto_3

    .line 554
    .end local v10    # "glyphCode":I
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 568
    .end local v7    # "codeLength":I
    :cond_2
    :goto_3
    const/4 v7, 0x0

    if-nez v5, :cond_5

    .line 569
    const-class v10, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v10}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v10

    .line 570
    .local v10, "logger":Lorg/slf4j/Logger;
    invoke-interface {v10}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 571
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 572
    .local v11, "failedCodes":Ljava/lang/StringBuilder;
    const/4 v12, 0x1

    .line 573
    .local v12, "codeLength":I
    :goto_4
    if-gt v12, v8, :cond_3

    add-int v13, v3, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-gt v13, v14, :cond_3

    .line 575
    add-int v13, v3, v12

    sub-int/2addr v13, v9

    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 577
    .end local v12    # "codeLength":I
    :cond_3
    new-array v8, v9, [Ljava/lang/Object;

    .line 578
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v8, v7

    const-string v12, "Could not find glyph with the following code: {0}"

    invoke-static {v12, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 577
    invoke-interface {v10, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 580
    .end local v11    # "failedCodes":Ljava/lang/StringBuilder;
    :cond_4
    add-int/lit8 v8, v6, -0x1

    add-int/2addr v3, v8

    .line 582
    .end local v10    # "logger":Lorg/slf4j/Logger;
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v8

    if-eqz v8, :cond_6

    .line 583
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 585
    :cond_6
    new-instance v8, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v10

    const/4 v11, -0x1

    invoke-direct {v8, v7, v10, v11}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    const/4 v1, 0x0

    .line 549
    .end local v4    # "code":I
    .end local v5    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v6    # "codeSpaceMatchedLength":I
    :goto_5
    add-int/2addr v3, v9

    goto/16 :goto_0

    .line 589
    .end local v3    # "i":I
    :cond_7
    return v1
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

    .line 408
    .local p4, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    if-nez v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "processed":I
    move v1, p2

    .local v1, "k":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 412
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 413
    .local v2, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v2, :cond_0

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/font/PdfType0Font;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    nop

    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    add-int/lit8 v0, v0, 0x1

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v1    # "k":I
    :cond_0
    return v0

    .line 422
    .end local v0    # "processed":I
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/font/PdfType0Font;->appendUniGlyphs(Ljava/lang/String;IILjava/util/List;)I

    move-result v0

    return v0

    .line 424
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 425
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    const/4 v0, 0x0

    .line 427
    .restart local v0    # "processed":I
    move v1, p2

    .restart local v1    # "k":I
    :goto_1
    if-gt v1, p3, :cond_3

    .line 428
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v2

    .line 429
    .restart local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v2, :cond_3

    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/font/PdfType0Font;->isAppendableGlyph(Lcom/itextpdf/io/font/otf/Glyph;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 430
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    nop

    .end local v2    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    add-int/lit8 v0, v0, 0x1

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 436
    .end local v1    # "k":I
    :cond_3
    return v0

    .line 438
    .end local v0    # "processed":I
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/font/PdfType0Font;->appendUniGlyphs(Ljava/lang/String;IILjava/util/List;)I

    move-result v0

    return v0

    .line 441
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Font has no suitable cmap."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsGlyph(I)Z
    .locals 5
    .param p1, "unicode"    # I

    .line 256
    iget v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 257
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 262
    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 263
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    int-to-char v0, p1

    const-string/jumbo v3, "symboltt"

    invoke-static {v0, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(CLjava/lang/String;)[B

    move-result-object v0

    .line 265
    .local v0, "b":[B
    array-length v3, v0

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    return v1

    .line 267
    .end local v0    # "b":[B
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    return v1

    .line 270
    :cond_7
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid CID font type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;)[B
    .locals 2
    .param p1, "glyph"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 334
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B
    .locals 6
    .param p1, "glyphLine"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 313
    if-eqz p1, :cond_2

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "totalByteCount":I
    iget v1, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v1, "i":I
    :goto_0
    iget v2, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v1, v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {p1, v1}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapBytesLength(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    :cond_0
    new-array v1, v0, [B

    .line 321
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .line 322
    .local v2, "offset":I
    iget v3, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v3, "i":I
    :goto_1
    iget v4, p1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v3, v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {p1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/itextpdf/io/font/CMapEncoding;->fillCmapBytes(I[BI)I

    move-result v2

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 326
    .end local v3    # "i":I
    :cond_1
    return-object v1

    .line 328
    .end local v0    # "totalByteCount":I
    .end local v1    # "bytes":[B
    .end local v2    # "offset":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public convertToBytes(Ljava/lang/String;)[B
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 277
    .local v0, "len":I
    new-instance v1, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    .line 278
    .local v1, "buffer":Lcom/itextpdf/io/source/ByteBuffer;
    const/4 v2, 0x0

    .line 279
    .local v2, "i":I
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    const-string/jumbo v3, "symboltt"

    invoke-static {p1, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 281
    .local v3, "b":[B
    array-length v0, v3

    .line 282
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 283
    iget-object v5, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    aget-byte v6, v3, v4

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 284
    .local v5, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v5, :cond_0

    .line 285
    invoke-direct {p0, v5, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/source/ByteBuffer;)V

    .line 282
    .end local v5    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 288
    .end local v3    # "b":[B
    .end local v4    # "k":I
    :cond_1
    goto :goto_4

    .line 289
    :cond_2
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 291
    invoke-static {p1, v3}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    invoke-static {p1, v3}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v4

    .line 293
    .local v4, "val":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 295
    .end local v4    # "val":I
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 297
    .restart local v4    # "val":I
    :goto_2
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 298
    .restart local v5    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v6

    if-lez v6, :cond_4

    .line 299
    invoke-direct {p0, v5, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/source/ByteBuffer;)V

    goto :goto_3

    .line 302
    :cond_4
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/font/CMapEncoding;->getCmapCode(I)I

    move-result v6

    .line 303
    .local v6, "nullCode":I
    shr-int/lit8 v7, v6, 0x8

    invoke-virtual {v1, v7}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 304
    invoke-virtual {v1, v6}, Lcom/itextpdf/io/source/ByteBuffer;->append(I)Lcom/itextpdf/io/source/ByteBuffer;

    .line 289
    .end local v4    # "val":I
    .end local v5    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v6    # "nullCode":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    .end local v3    # "k":I
    :cond_5
    :goto_4
    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public createGlyphLine(Ljava/lang/String;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    iget v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cidFontType:I

    if-nez v1, :cond_5

    .line 356
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 357
    .local v1, "len":I
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/CMapEncoding;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 359
    iget-object v3, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    .line 360
    .local v3, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    .end local v3    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "k":I
    :cond_1
    goto :goto_3

    .line 365
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 367
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    .line 369
    .local v3, "ch":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 371
    .end local v3    # "ch":I
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 373
    .restart local v3    # "ch":I
    :goto_2
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    .end local v3    # "ch":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    .end local v1    # "len":I
    .end local v2    # "k":I
    :cond_4
    :goto_3
    goto :goto_8

    :cond_5
    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 378
    .restart local v1    # "len":I
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/FontProgram;->isFontSpecific()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 379
    const-string/jumbo v2, "symboltt"

    invoke-static {p1, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 380
    .local v2, "b":[B
    array-length v1, v2

    .line 381
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_4
    if-ge v3, v1, :cond_7

    .line 382
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    .line 383
    .local v4, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v4, :cond_6

    .line 384
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v4    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 387
    .end local v2    # "b":[B
    .end local v3    # "k":I
    :cond_7
    goto :goto_7

    .line 388
    :cond_8
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_5
    if-ge v2, v1, :cond_a

    .line 390
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 391
    invoke-static {p1, v2}, Lcom/itextpdf/io/util/TextUtil;->convertToUtf32(Ljava/lang/String;I)I

    move-result v3

    .line 392
    .local v3, "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 394
    .end local v3    # "val":I
    :cond_9
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 396
    .restart local v3    # "val":I
    :goto_6
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/font/PdfType0Font;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v3    # "val":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 399
    .end local v1    # "len":I
    .end local v2    # "k":I
    :cond_a
    :goto_7
    nop

    .line 403
    :goto_8
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object v1

    .line 400
    :cond_b
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Font has no suitable cmap."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode(Lcom/itextpdf/kernel/pdf/PdfString;)Ljava/lang/String;
    .locals 1
    .param p1, "content"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 523
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 2
    .param p1, "characterCodes"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 531
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v0, "glyphs":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/Glyph;>;"
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->appendDecodedCodesToGlyphsList(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfString;)Z

    .line 533
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    invoke-direct {v1, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public flush()V
    .locals 1

    .line 610
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 611
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->ensureUnderlyingObjectHasIndirectReference()V

    .line 612
    iget-boolean v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->newFont:Z

    if-eqz v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->flushFontData()V

    .line 615
    :cond_1
    invoke-super {p0}, Lcom/itextpdf/kernel/font/PdfFont;->flush()V

    .line 616
    return-void
.end method

.method protected getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 5
    .param p1, "fontDescriptor"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "isType2"    # Z

    .line 829
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 830
    .local v0, "cidFont":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-static {v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->markObjectAsIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 831
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Font:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 833
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 834
    if-eqz p3, :cond_0

    .line 835
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType2:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 836
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CIDToGIDMap:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Identity:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_0

    .line 838
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CIDFontType0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 840
    :goto_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p2}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 841
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 842
    .local v1, "cidInfo":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Registry:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/CMapEncoding;->getRegistry()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 843
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Ordering:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/CMapEncoding;->getOrdering()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 844
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Supplement:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/CMapEncoding;->getSupplement()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 845
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CIDSystemInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 846
    iget-boolean v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->vertical:Z

    if-nez v2, :cond_2

    .line 847
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->DW:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfNumber;

    const/16 v4, 0x3e8

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 848
    invoke-direct {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->generateWidthsArray()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    .line 849
    .local v2, "widthsArray":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v2, :cond_1

    .line 850
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 852
    .end local v2    # "widthsArray":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_1
    goto :goto_1

    .line 854
    :cond_2
    const-class v2, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 855
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v3, "Vertical writing has not been implemented yet."

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 857
    .end local v2    # "logger":Lorg/slf4j/Logger;
    :goto_1
    return-object v0
.end method

.method protected getCidFontType2(Lcom/itextpdf/io/font/TrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;[I)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1
    .param p1, "ttf"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .param p2, "fontDescriptor"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "glyphIds"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 816
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, p3, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method protected getCidFontType2(Lcom/itextpdf/io/font/TrueTypeFont;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;[[I)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1
    .param p1, "ttf"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .param p2, "fontDescriptor"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "fontName"    # Ljava/lang/String;
    .param p4, "metrics"    # [[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/io/font/TrueTypeFont;->isCff()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p2, p3, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getCidFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/lang/String;Z)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    return-object v0
.end method

.method public getCmap()Lcom/itextpdf/io/font/CMapEncoding;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    return-object v0
.end method

.method public getContentWidth(Lcom/itextpdf/kernel/pdf/PdfString;)F
    .locals 4
    .param p1, "content"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "width":F
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->decodeIntoGlyphLine(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/io/font/otf/GlyphLine;

    move-result-object v1

    .line 596
    .local v1, "glyphLine":Lcom/itextpdf/io/font/otf/GlyphLine;
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .local v2, "i":I
    :goto_0
    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    if-ge v2, v3, :cond_0

    .line 597
    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 596
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 599
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method protected getFontDescriptor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 5
    .param p1, "fontName"    # Ljava/lang/String;

    .line 643
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 644
    .local v0, "fontDescriptor":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/font/PdfType0Font;->makeObjectIndirect(Lcom/itextpdf/kernel/pdf/PdfObject;)Z

    .line 645
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FontDescriptor:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 646
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 647
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->FontBBox:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getBbox()[I

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>([I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 648
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Ascent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getTypoAscender()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 649
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Descent:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getTypoDescender()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 650
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->CapHeight:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getCapHeight()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 651
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ItalicAngle:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getItalicAngle()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(D)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 652
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StemV:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontMetrics;->getStemV()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 653
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Flags:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/FontProgram;->getPdfFontFlags()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 654
    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontProgram;->getFontIdentification()Lcom/itextpdf/io/font/FontIdentification;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontIdentification;->getPanose()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 655
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 656
    .local v1, "styleDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Panose:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontProgram;->getFontIdentification()Lcom/itextpdf/io/font/FontIdentification;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontIdentification;->getPanose()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;->setHexWriting(Z)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 657
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 659
    .end local v1    # "styleDictionary":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    return-object v0
.end method

.method public getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;
    .locals 5
    .param p1, "unicode"    # I

    .line 239
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v0

    .line 240
    .local v0, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/io/font/otf/Glyph;

    move-object v0, v1

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 244
    .local v1, "notdef":Lcom/itextpdf/io/font/otf/Glyph;
    if-eqz v1, :cond_0

    .line 245
    new-instance v2, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-direct {v2, v1, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;I)V

    move-object v0, v2

    goto :goto_0

    .line 247
    :cond_0
    new-instance v3, Lcom/itextpdf/io/font/otf/Glyph;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v2, p1}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    move-object v0, v3

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->notdefGlyphs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .end local v1    # "notdef":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_1
    return-object v0
.end method

.method public getToUnicode()Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 8

    .line 897
    new-instance v0, Lcom/itextpdf/io/source/OutputStream;

    new-instance v1, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-direct {v1}, Lcom/itextpdf/io/source/ByteArrayOutputStream;-><init>()V

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 898
    .local v0, "stream":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<Lcom/itextpdf/io/source/ByteArrayOutputStream;>;"
    const-string v1, "/CIDInit /ProcSet findresource begin\n12 dict begin\nbegincmap\n/CIDSystemInfo\n<< /Registry (Adobe)\n/Ordering (UCS)\n/Supplement 0\n>> def\n/CMapName /Adobe-Identity-UCS def\n/CMapType 2 def\n1 begincodespacerange\n<0000><FFFF>\nendcodespacerange\n"

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 913
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 915
    .local v1, "glyphGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/itextpdf/io/font/otf/Glyph;>;"
    const/4 v3, 0x0

    .line 916
    .local v3, "bfranges":I
    iget-object v4, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->longTag:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 917
    .local v5, "glyphId":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->fontProgram:Lcom/itextpdf/io/font/FontProgram;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/font/FontProgram;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v6

    .line 918
    .local v6, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v6}, Lcom/itextpdf/io/font/otf/Glyph;->getChars()[C

    move-result-object v7

    if-eqz v7, :cond_0

    .line 919
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v2, :cond_0

    .line 921
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->writeBfrange(Lcom/itextpdf/io/source/OutputStream;Ljava/util/List;)I

    move-result v7

    add-int/2addr v3, v7

    .line 924
    .end local v5    # "glyphId":Ljava/lang/Integer;
    .end local v6    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_0
    goto :goto_0

    .line 926
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->writeBfrange(Lcom/itextpdf/io/source/OutputStream;Ljava/util/List;)I

    move-result v2

    add-int/2addr v3, v2

    .line 928
    if-nez v3, :cond_2

    .line 929
    const/4 v2, 0x0

    return-object v2

    .line 931
    :cond_2
    const-string v2, "endcmap\nCMapName currentdict /CMap defineresource pop\nend end\n"

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/OutputStream;->writeString(Ljava/lang/String;)Ljava/io/OutputStream;

    .line 934
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/OutputStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    return-object v2
.end method

.method public getToUnicode([Ljava/lang/Object;)Lcom/itextpdf/kernel/pdf/PdfStream;
    .locals 1
    .param p1, "metrics"    # [Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getToUnicode()Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v0

    return-object v0
.end method

.method public isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontProgram"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 604
    invoke-virtual {p0}, Lcom/itextpdf/kernel/font/PdfType0Font;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/font/FontProgram;->isBuiltWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/font/PdfType0Font;->cmapEncoding:Lcom/itextpdf/io/font/CMapEncoding;

    .line 605
    invoke-virtual {v0, p2}, Lcom/itextpdf/io/font/CMapEncoding;->isBuiltWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 604
    :goto_0
    return v0
.end method

.method public writeText(Lcom/itextpdf/io/font/otf/GlyphLine;IILcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 3
    .param p1, "text"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "stream"    # Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 340
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 341
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 342
    new-instance v1, Lcom/itextpdf/io/font/otf/GlyphLine;

    add-int/lit8 v2, p3, 0x1

    invoke-direct {v1, p1, p2, v2}, Lcom/itextpdf/io/font/otf/GlyphLine;-><init>(Lcom/itextpdf/io/font/otf/GlyphLine;II)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Lcom/itextpdf/io/font/otf/GlyphLine;)[B

    move-result-object v1

    .line 343
    .local v1, "bytes":[B
    invoke-static {p4, v1}, Lcom/itextpdf/io/util/StreamUtil;->writeHexedString(Ljava/io/OutputStream;[B)V

    .line 345
    .end local v1    # "bytes":[B
    :cond_0
    return-void
.end method

.method public writeText(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfOutputStream;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "stream"    # Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    .line 349
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;->convertToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2, v0}, Lcom/itextpdf/io/util/StreamUtil;->writeHexedString(Ljava/io/OutputStream;[B)V

    .line 350
    return-void
.end method
