.class public final Lcom/itextpdf/kernel/font/PdfFontFactory;
.super Ljava/lang/Object;
.source "PdfFontFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHED:Z = true

.field private static final DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    sput-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    const-string v0, "Helvetica"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;

    .line 353
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "encoding"    # Ljava/lang/String;

    .line 343
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 317
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 318
    return-object v0

    .line 319
    :cond_0
    instance-of v1, p0, Lcom/itextpdf/io/font/Type1Font;

    if-eqz v1, :cond_1

    .line 320
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/font/Type1Font;

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFontFromType1FontProgram(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType1Font;

    move-result-object v0

    return-object v0

    .line 321
    :cond_1
    instance-of v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;

    if-eqz v1, :cond_4

    .line 322
    const-string v0, "Identity-H"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Identity-V"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 325
    :cond_2
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createTrueTypeFontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    move-result-object v0

    return-object v0

    .line 323
    :cond_3
    :goto_0
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createType0FontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;

    move-result-object v0

    return-object v0

    .line 328
    :cond_4
    instance-of v1, p0, Lcom/itextpdf/io/font/CidFont;

    if-eqz v1, :cond_5

    .line 329
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/io/font/CidFont;

    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createType0FontFromCidFontProgram(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;

    move-result-object v0

    return-object v0

    .line 331
    :cond_5
    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3
    .param p0, "fontDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 112
    if-eqz p0, :cond_5

    .line 115
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 116
    .local v0, "subtypeObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Lcom/itextpdf/kernel/font/PdfType1Font;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 118
    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type0:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    new-instance v1, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/font/PdfType0Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 120
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TrueType:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    new-instance v1, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 122
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Type3:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 124
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MMType1:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    new-instance v1, Lcom/itextpdf/kernel/font/PdfType1Font;

    invoke-direct {v1, p0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-object v1

    .line 128
    :cond_4
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    const-string v2, "Dictionary doesn\'t have supported font data."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "subtypeObject":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_5
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot create font from null pdf dictionary."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-static {p0, p3}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 304
    .local v0, "fp":Lcom/itextpdf/io/font/FontProgram;
    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "cacheTo"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    if-nez p2, :cond_0

    .line 147
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p2, p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->findFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 151
    .local v0, "pdfFont":Lcom/itextpdf/kernel/font/PdfFont;
    if-nez v0, :cond_1

    .line 152
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/font/PdfFont;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 158
    :cond_1
    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 218
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont(Ljava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # Ljava/lang/String;
    .param p1, "embedded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BLcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BLjava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 365
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p0, "fontProgram"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    invoke-static {p0, p3}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 471
    .local v0, "fp":Lcom/itextpdf/io/font/FontProgram;
    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method public static createFont([BLjava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 402
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BLjava/lang/String;ZZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 423
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createFont([BZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontProgram"    # [B
    .param p1, "embedded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont([BLcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method private static createFontFromType1FontProgram(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType1Font;
    .locals 2
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/Type1Font;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 931
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 947
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unsupported font embedding strategy."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :pswitch_0
    const/4 v0, 0x0

    .line 945
    .local v0, "embedded":Z
    goto :goto_0

    .line 940
    .end local v0    # "embedded":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 941
    .restart local v0    # "embedded":Z
    goto :goto_0

    .line 933
    .end local v0    # "embedded":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/Type1Font;->isBuiltInFont()Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    const/4 v0, 0x1

    .line 937
    .restart local v0    # "embedded":Z
    nop

    .line 949
    :goto_0
    new-instance v1, Lcom/itextpdf/kernel/font/PdfType1Font;

    invoke-direct {v1, p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfType1Font;-><init>(Lcom/itextpdf/io/font/Type1Font;Ljava/lang/String;Z)V

    return-object v1

    .line 934
    .end local v0    # "embedded":Z
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Standard fonts cannot be embedded."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createRegisteredFont(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory;->DEFAULT_EMBEDDING:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 780
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;I)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;I)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p3, "style"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 806
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p3, "style"    # I
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 728
    invoke-static {p0, p3, p4}, Lcom/itextpdf/io/font/FontProgramFactory;->createRegisteredFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 729
    .local v0, "fp":Lcom/itextpdf/io/font/FontProgram;
    invoke-static {v0, p1, p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;ZI)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .param p3, "style"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;I)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;ZIZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .param p3, "style"    # I
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0, p3, p4}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;IZ)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createRegisteredFont(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embedded"    # Z
    .param p3, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 643
    invoke-static {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createRegisteredFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method private static createTrueTypeFontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfTrueTypeFont;
    .locals 5
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 974
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 990
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unsupported font embedding strategy."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :pswitch_0
    const/4 v0, 0x0

    .line 988
    .local v0, "embedded":Z
    goto :goto_0

    .line 983
    .end local v0    # "embedded":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    .line 984
    .restart local v0    # "embedded":Z
    goto :goto_0

    .line 976
    .end local v0    # "embedded":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    const/4 v0, 0x1

    .line 981
    .restart local v0    # "embedded":Z
    nop

    .line 992
    :goto_0
    new-instance v1, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;

    invoke-direct {v1, p0, p1, v0}, Lcom/itextpdf/kernel/font/PdfTrueTypeFont;-><init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Z)V

    return-object v1

    .line 977
    .end local v0    # "embedded":Z
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string/jumbo v1, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 978
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 977
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createTtcFont(Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p0, "ttc"    # Ljava/lang/String;
    .param p1, "ttcIndex"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    invoke-static {p0, p1, p4}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 558
    .local v0, "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    invoke-static {v0, p2, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method public static createTtcFont(Ljava/lang/String;ILjava/lang/String;ZZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "ttc"    # Ljava/lang/String;
    .param p1, "ttcIndex"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "embedded"    # Z
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 517
    invoke-static {p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createTtcFont(Ljava/lang/String;ILjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public static createTtcFont([BILjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2
    .param p0, "ttc"    # [B
    .param p1, "ttcIndex"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    invoke-static {p0, p1, p4}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BIZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 538
    .local v0, "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    invoke-static {v0, p2, p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v1

    return-object v1
.end method

.method public static createTtcFont([BILjava/lang/String;ZZ)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p0, "ttc"    # [B
    .param p1, "ttcIndex"    # I
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "embedded"    # Z
    .param p4, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    invoke-static {p3}, Lcom/itextpdf/kernel/font/PdfFontFactory;->getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createTtcFont([BILjava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;Z)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method private static createType0FontFromCidFontProgram(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;
    .locals 2
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/CidFont;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 997
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CidFont;->compatibleWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    const/4 v0, 0x0

    return-object v0

    .line 1000
    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1009
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unsupported font embedding strategy."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :pswitch_0
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;-><init>(Lcom/itextpdf/io/font/CidFont;Ljava/lang/String;)V

    return-object v0

    .line 1002
    :pswitch_1
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot embed Type0 font with CID font program based on non-generic predefined CMap."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static createType0FontFromTrueTypeFontProgram(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfType0Font;
    .locals 5
    .param p0, "fontProgram"    # Lcom/itextpdf/io/font/TrueTypeFont;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "embeddingStrategy"    # Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 954
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontNames;->allowEmbedding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$1;->$SwitchMap$com$itextpdf$kernel$font$PdfFontFactory$EmbeddingStrategy:[I

    invoke-virtual {p2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 967
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Unsupported font embedding strategy."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :pswitch_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string v1, "Cannot create Type0 font with true type font program without embedding it."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :pswitch_1
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType0Font;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/font/PdfType0Font;-><init>(Lcom/itextpdf/io/font/TrueTypeFont;Ljava/lang/String;)V

    return-object v0

    .line 955
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/PdfException;

    const-string/jumbo v1, "{0} cannot be embedded due to licensing restrictions."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/font/FontNames;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 955
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createType3Font(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/kernel/font/PdfType3Font;
    .locals 1
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .param p3, "colorized"    # Z

    .line 582
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static createType3Font(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/kernel/font/PdfType3Font;
    .locals 1
    .param p0, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "colorized"    # Z

    .line 569
    new-instance v0, Lcom/itextpdf/kernel/font/PdfType3Font;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/kernel/font/PdfType3Font;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)V

    return-object v0
.end method

.method private static getEmbeddingStrategy(Z)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .locals 1
    .param p0, "embedded"    # Z

    .line 1014
    if-eqz p0, :cond_0

    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    :goto_0
    return-object v0
.end method

.method public static getRegisteredFamilies()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 915
    invoke-static {}, Lcom/itextpdf/io/font/FontProgramFactory;->getRegisteredFontFamilies()Ljava/util/Set;

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

    .line 906
    invoke-static {}, Lcom/itextpdf/io/font/FontProgramFactory;->getRegisteredFonts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;

    .line 925
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramFactory;->isRegisteredFont(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static register(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 867
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/kernel/font/PdfFontFactory;->register(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "alias"    # Ljava/lang/String;

    .line 877
    invoke-static {p0, p1}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFont(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method public static registerDirectory(Ljava/lang/String;)I
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .line 887
    invoke-static {p0}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFontDirectory(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static registerFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 856
    invoke-static {p0, p1, p2}, Lcom/itextpdf/io/font/FontProgramFactory;->registerFontFamily(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-void
.end method

.method public static registerSystemDirectories()I
    .locals 1

    .line 897
    invoke-static {}, Lcom/itextpdf/io/font/FontProgramFactory;->registerSystemFontDirectories()I

    move-result v0

    return v0
.end method
