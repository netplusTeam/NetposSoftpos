.class public final Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;
.super Ljava/lang/Object;
.source "CssStyleSheetParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 1
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "baseUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "controller":Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/PortUtil;->wrapInBufferedReader(Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v1

    .line 80
    .local v1, "br":Ljava/io/Reader;
    const/16 v2, 0x2000

    new-array v2, v2, [C

    .line 82
    .local v2, "buffer":[C
    :goto_0
    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v4, v3

    .local v4, "length":I
    if-lez v3, :cond_1

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 84
    aget-char v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->process(C)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_0
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/css/parse/syntax/CssParserStateController;->getParsingResult()Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v3

    return-object v3
.end method

.method public static parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "baseUrl"    # Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 112
    .local v0, "stream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {v0, p1}, Lcom/itextpdf/styledxmlparser/css/parse/CssStyleSheetParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/css/CssStyleSheet;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "exc":Ljava/io/IOException;
    const/4 v2, 0x0

    return-object v2
.end method
