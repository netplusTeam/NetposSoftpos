.class public Lcom/itextpdf/layout/hyphenation/PatternParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/hyphenation/PatternParser$SafeEmptyEntityResolver;
    }
.end annotation


# static fields
.field static final ELEM_CLASSES:I = 0x1

.field static final ELEM_EXCEPTIONS:I = 0x2

.field static final ELEM_HYPHEN:I = 0x4

.field static final ELEM_PATTERNS:I = 0x3


# instance fields
.field private consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

.field private currElement:I

.field private errMsg:Ljava/lang/String;

.field private exception:Ljava/util/ArrayList;

.field private hasClasses:Z

.field private hyphenChar:C

.field private parser:Lorg/xml/sax/XMLReader;

.field private token:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    .line 66
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/PatternParser;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 67
    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 68
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 71
    const/16 v0, 0x2d

    iput-char v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/IPatternConsumer;)V
    .locals 0
    .param p1, "consumer"    # Lcom/itextpdf/layout/hyphenation/IPatternConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    .line 82
    return-void
.end method

.method static createParser()Lorg/xml/sax/XMLReader;
    .locals 5

    .line 121
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 122
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 123
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 124
    const-string v2, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 126
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 127
    .local v2, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/itextpdf/layout/hyphenation/PatternParser$SafeEmptyEntityResolver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/itextpdf/layout/hyphenation/PatternParser$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/layout/hyphenation/PatternParser$1;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-object v2

    .line 129
    .end local v0    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v1    # "saxParser":Ljavax/xml/parsers/SAXParser;
    .end local v2    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t create XMLReader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .param p1, "ex"    # Ljava/util/ArrayList;

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v0, "res":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 228
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 229
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 230
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 232
    :cond_0
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/hyphenation/Hyphen;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 233
    move-object v3, v2

    check-cast v3, Lcom/itextpdf/layout/hyphenation/Hyphen;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/Hyphen;->noBreak:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v2    # "item":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getInterletterValues(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pat"    # Ljava/lang/String;

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .local v0, "il":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "word":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 246
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 248
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 252
    :cond_0
    const/16 v5, 0x30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    .end local v4    # "c":C
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;
    .locals 4
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "systemId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 425
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 426
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 427
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .end local v2    # "index":I
    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "word"    # Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "pat":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 186
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 187
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 188
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "ex"    # Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "res":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 197
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 198
    .local v2, "item":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 199
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .local v4, "buf":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 202
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 203
    .local v6, "c":C
    iget-char v7, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    if-eq v6, v7, :cond_0

    .line 204
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 206
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 208
    const/4 v8, 0x1

    new-array v8, v8, [C

    .line 209
    .local v8, "h":[C
    iget-char v9, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    aput-char v9, v8, v7

    .line 212
    new-instance v7, Lcom/itextpdf/layout/hyphenation/Hyphen;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([C)V

    const/4 v10, 0x0

    invoke-direct {v7, v9, v10, v10}, Lcom/itextpdf/layout/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    .end local v6    # "c":C
    .end local v8    # "h":[C
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 215
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "buf":Ljava/lang/StringBuilder;
    :cond_2
    goto :goto_3

    .line 219
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .end local v2    # "item":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method private readToken(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "chars"    # Ljava/lang/StringBuilder;

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "space":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 151
    move v3, v1

    .local v3, "countr":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 152
    sub-int v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 154
    .end local v3    # "countr":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 156
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "word":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 158
    return-object v3

    .line 161
    .end local v3    # "word":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 162
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    const/4 v0, 0x1

    .line 165
    goto :goto_3

    .line 162
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    move v3, v1

    .local v3, "countr":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 171
    sub-int v4, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 173
    .end local v3    # "countr":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    if-eqz v0, :cond_6

    .line 175
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "word":Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 177
    return-object v3

    .line 179
    .end local v3    # "word":Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 180
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 362
    .local v0, "chars":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 363
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->readToken(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "word":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 366
    iget v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 378
    :pswitch_0
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-static {v1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 379
    invoke-static {v1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-interface {v2, v3, v4}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    goto :goto_1

    .line 371
    :pswitch_1
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/hyphenation/PatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 373
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-direct {p0, v2}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 374
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 373
    invoke-interface {v3, v2, v4}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addException(Ljava/lang/String;Ljava/util/List;)V

    .line 375
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 376
    goto :goto_1

    .line 368
    :pswitch_2
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-interface {v2, v1}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addClass(Ljava/lang/String;)V

    .line 369
    nop

    .line 384
    :goto_1
    invoke-direct {p0, v0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->readToken(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 387
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-lez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "word":Ljava/lang/String;
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 338
    :pswitch_0
    goto :goto_0

    .line 333
    :pswitch_1
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-static {v0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getInterletterValues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    invoke-interface {v3, v4, v5}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addPattern(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/itextpdf/layout/hyphenation/PatternParser;->normalizeException(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 329
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-direct {p0, v3}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExceptionWord(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    .line 330
    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 329
    invoke-interface {v4, v3, v5}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addException(Ljava/lang/String;Ljava/util/List;)V

    .line 331
    goto :goto_0

    .line 324
    :pswitch_3
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->consumer:Lcom/itextpdf/layout/hyphenation/IPatternConsumer;

    invoke-interface {v3, v0}, Lcom/itextpdf/layout/hyphenation/IPatternConsumer;->addClass(Ljava/lang/String;)V

    .line 325
    nop

    .line 342
    :goto_0
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    if-eq v3, v2, :cond_0

    .line 343
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 346
    .end local v0    # "word":Ljava/lang/String;
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 347
    iput-boolean v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hasClasses:Z

    .line 349
    :cond_1
    if-ne v0, v2, :cond_2

    .line 350
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    goto :goto_1

    .line 352
    :cond_2
    iput v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    .line 355
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Error] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Fatal Error] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    .line 414
    throw p1
.end method

.method protected getExternalClasses()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 261
    .local v0, "mainParser":Lorg/xml/sax/XMLReader;
    invoke-static {}, Lcom/itextpdf/layout/hyphenation/PatternParser;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 262
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 263
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 264
    const-string v1, "com/itextpdf/hyph/external/classes.xml"

    invoke-static {v1}, Lcom/itextpdf/io/util/ResourceUtil;->getResourceStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 265
    .local v1, "stream":Ljava/io/InputStream;
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 267
    .local v2, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 268
    :catch_0
    move-exception v3

    .line 269
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lorg/xml/sax/SAXException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .end local v0    # "mainParser":Lorg/xml/sax/XMLReader;
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "source":Lorg/xml/sax/InputSource;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    .end local v3    # "ioe":Ljava/io/IOException;
    .restart local v0    # "mainParser":Lorg/xml/sax/XMLReader;
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "source":Lorg/xml/sax/InputSource;
    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    .line 272
    throw v3
.end method

.method public parse(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v0, "source":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->parser:Lorg/xml/sax/XMLReader;

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lcom/itextpdf/layout/hyphenation/HyphenationException;

    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 109
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/layout/hyphenation/HyphenationException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 106
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 107
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v2, Lcom/itextpdf/layout/hyphenation/HyphenationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/layout/hyphenation/HyphenationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/layout/hyphenation/HyphenationException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->parse(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/lang/String;
    .param p3, "raw"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 285
    const-string v0, "hyphen-char"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 286
    const-string/jumbo v0, "value"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "h":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hyphenChar:C

    .line 290
    .end local v0    # "h":Ljava/lang/String;
    :cond_0
    goto/16 :goto_0

    :cond_1
    const-string v0, "classes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iput v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "patterns"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 293
    iget-boolean v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hasClasses:Z

    if-nez v0, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExternalClasses()V

    .line 296
    :cond_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    goto :goto_0

    .line 297
    :cond_4
    const-string v0, "exceptions"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 298
    iget-boolean v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->hasClasses:Z

    if-nez v0, :cond_5

    .line 299
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getExternalClasses()V

    .line 301
    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    goto :goto_0

    .line 303
    :cond_6
    const-string v0, "hyphen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 304
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 305
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->exception:Ljava/util/ArrayList;

    new-instance v2, Lcom/itextpdf/layout/hyphenation/Hyphen;

    const-string v3, "pre"

    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    const-string v4, "no"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    const-string v5, "post"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/layout/hyphenation/Hyphen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    const/4 v0, 0x4

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->currElement:I

    .line 312
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->token:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 313
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "ex"    # Lorg/xml/sax/SAXParseException;

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Warning] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itextpdf/layout/hyphenation/PatternParser;->getLocationString(Lorg/xml/sax/SAXParseException;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/layout/hyphenation/PatternParser;->errMsg:Ljava/lang/String;

    .line 399
    return-void
.end method
