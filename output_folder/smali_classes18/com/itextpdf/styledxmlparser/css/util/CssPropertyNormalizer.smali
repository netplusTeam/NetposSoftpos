.class Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;
.super Ljava/lang/Object;
.source "CssPropertyNormalizer.java"


# static fields
.field private static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "^[uU][rR][lL]\\("

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/PortUtil;->createRegexPatternWithDotMatchingNewlines(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 5
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 112
    .local v0, "endQuoteSymbol":C
    add-int/lit8 v1, p2, 0x1

    invoke-static {p1, v0, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v1

    .line 113
    .local v1, "end":I
    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 115
    const-class v3, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;

    invoke-static {v3}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string v4, "The quote is not closed in css expression: {0}"

    invoke-static {v4, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    add-int/2addr v1, v2

    .line 119
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 120
    return v1
.end method

.method private static appendUrlContent(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 6
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 132
    const-class v0, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 133
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, v1, :cond_4

    .line 136
    move v1, p2

    .line 137
    .local v1, "curr":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    const/16 v4, 0x29

    invoke-static {p1, v4, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssUtils;->findNextUnescapedChar(Ljava/lang/String;CI)I

    move-result v1

    .line 142
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 143
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string/jumbo v2, "url function is not properly closed in expression:{0}"

    invoke-static {v2, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 146
    :cond_2
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, v1, 0x1

    return v0

    .line 138
    :cond_3
    :goto_1
    invoke-static {p0, p1, v1}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    .line 139
    .end local v1    # "curr":I
    .local v0, "curr":I
    return v0

    .line 152
    .end local v0    # "curr":I
    :cond_4
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string/jumbo v2, "url function is empty in expression:{0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 68
    .local v1, "isWhitespace":Z
    const/4 v2, 0x0

    .line 69
    .local v2, "i":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 70
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    .line 71
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    const/4 v1, 0x1

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_2
    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->trimSpaceAfter(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->trimSpaceBefore(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    const/4 v1, 0x0

    .line 87
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_8

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_5

    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-eq v3, v4, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x55

    if-ne v3, v4, :cond_7

    :cond_6
    sget-object v3, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->URL_PATTERN:Ljava/util/regex/Pattern;

    .line 90
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 91
    add-int/lit8 v3, v2, 0x4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v3, v2, 0x4

    invoke-static {v0, p0, v3}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->appendUrlContent(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    .line 94
    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 88
    :cond_8
    :goto_1
    invoke-static {v0, p0, v2}, Lcom/itextpdf/styledxmlparser/css/util/CssPropertyNormalizer;->appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v2

    goto/16 :goto_0

    .line 99
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static trimSpaceAfter(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 164
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

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

.method private static trimSpaceBefore(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 174
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x29

    if-ne p0, v0, :cond_0

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
