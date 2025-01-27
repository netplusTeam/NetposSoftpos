.class public Lorg/jline/reader/impl/DefaultHighlighter;
.super Ljava/lang/Object;
.source "DefaultHighlighter.java"

# interfaces
.implements Lorg/jline/reader/Highlighter;


# instance fields
.field private errorIndex:I

.field private errorPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lorg/jline/reader/impl/DefaultHighlighter;->errorIndex:I

    return-void
.end method


# virtual methods
.method public highlight(Lorg/jline/reader/LineReader;Ljava/lang/String;)Lorg/jline/utils/AttributedString;
    .locals 11
    .param p1, "reader"    # Lorg/jline/reader/LineReader;
    .param p2, "buffer"    # Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    .line 38
    .local v0, "underlineStart":I
    const/4 v1, -0x1

    .line 39
    .local v1, "underlineEnd":I
    const/4 v2, -0x1

    .line 40
    .local v2, "negativeStart":I
    const/4 v3, -0x1

    .line 41
    .local v3, "negativeEnd":I
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getSearchTerm()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "search":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 43
    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    if-ltz v0, :cond_0

    .line 45
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v0

    add-int/lit8 v1, v5, -0x1

    .line 48
    :cond_0
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getRegionActive()Lorg/jline/reader/LineReader$RegionType;

    move-result-object v5

    sget-object v6, Lorg/jline/reader/LineReader$RegionType;->NONE:Lorg/jline/reader/LineReader$RegionType;

    const/16 v7, 0xa

    if-eq v5, v6, :cond_3

    .line 49
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getRegionMark()I

    move-result v2

    .line 50
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->cursor()I

    move-result v3

    .line 51
    if-le v2, v3, :cond_1

    .line 52
    move v5, v3

    .line 53
    .local v5, "x":I
    move v3, v2

    .line 54
    move v2, v5

    .line 56
    .end local v5    # "x":I
    :cond_1
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getRegionActive()Lorg/jline/reader/LineReader$RegionType;

    move-result-object v5

    sget-object v6, Lorg/jline/reader/LineReader$RegionType;->LINE:Lorg/jline/reader/LineReader$RegionType;

    if-ne v5, v6, :cond_3

    .line 57
    :goto_0
    if-lez v2, :cond_2

    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v5, v6}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v5

    if-eq v5, v7, :cond_2

    .line 58
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/jline/reader/Buffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_3

    invoke-interface {p1}, Lorg/jline/reader/LineReader;->getBuffer()Lorg/jline/reader/Buffer;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Lorg/jline/reader/Buffer;->atChar(I)I

    move-result v5

    if-eq v5, v7, :cond_3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    :cond_3
    new-instance v5, Lorg/jline/utils/AttributedStringBuilder;

    invoke-direct {v5}, Lorg/jline/utils/AttributedStringBuilder;-><init>()V

    .line 67
    .local v5, "sb":Lorg/jline/utils/AttributedStringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_e

    .line 68
    if-ne v6, v0, :cond_4

    .line 69
    new-instance v8, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v8}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    .line 71
    :cond_4
    if-ne v6, v2, :cond_5

    .line 72
    new-instance v8, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v8}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    .line 74
    :cond_5
    iget v8, p0, Lorg/jline/reader/impl/DefaultHighlighter;->errorIndex:I

    if-ne v6, v8, :cond_6

    .line 75
    new-instance v8, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v5, v8}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    .line 78
    :cond_6
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 79
    .local v8, "c":C
    const/16 v9, 0x9

    if-eq v8, v9, :cond_9

    if-ne v8, v7, :cond_7

    goto :goto_3

    .line 81
    :cond_7
    const/16 v9, 0x20

    if-ge v8, v9, :cond_8

    .line 82
    new-instance v9, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v5, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v9

    const/16 v10, 0x5e

    .line 83
    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v9

    add-int/lit8 v10, v8, 0x40

    int-to-char v10, v10

    .line 84
    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    move-result-object v9

    new-instance v10, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda2;-><init>()V

    .line 85
    invoke-virtual {v9, v10}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_4

    .line 87
    :cond_8
    invoke-static {v8}, Lorg/jline/utils/WCWidth;->wcwidth(I)I

    move-result v9

    .line 88
    .local v9, "w":I
    if-lez v9, :cond_a

    .line 89
    invoke-virtual {v5, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    goto :goto_4

    .line 80
    .end local v9    # "w":I
    :cond_9
    :goto_3
    invoke-virtual {v5, v8}, Lorg/jline/utils/AttributedStringBuilder;->append(C)Lorg/jline/utils/AttributedStringBuilder;

    .line 92
    :cond_a
    :goto_4
    if-ne v6, v1, :cond_b

    .line 93
    new-instance v9, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v5, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    .line 95
    :cond_b
    if-ne v6, v3, :cond_c

    .line 96
    new-instance v9, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda4;

    invoke-direct {v9}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    .line 98
    :cond_c
    iget v9, p0, Lorg/jline/reader/impl/DefaultHighlighter;->errorIndex:I

    if-ne v6, v9, :cond_d

    .line 99
    new-instance v9, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda4;

    invoke-direct {v9}, Lorg/jline/reader/impl/DefaultHighlighter$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v9}, Lorg/jline/utils/AttributedStringBuilder;->style(Ljava/util/function/Function;)Lorg/jline/utils/AttributedStringBuilder;

    .line 67
    .end local v8    # "c":C
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 102
    .end local v6    # "i":I
    :cond_e
    iget-object v6, p0, Lorg/jline/reader/impl/DefaultHighlighter;->errorPattern:Ljava/util/regex/Pattern;

    if-eqz v6, :cond_f

    .line 103
    sget-object v7, Lorg/jline/utils/AttributedStyle;->INVERSE:Lorg/jline/utils/AttributedStyle;

    invoke-virtual {v5, v6, v7}, Lorg/jline/utils/AttributedStringBuilder;->styleMatches(Ljava/util/regex/Pattern;Lorg/jline/utils/AttributedStyle;)Lorg/jline/utils/AttributedStringBuilder;

    .line 105
    :cond_f
    invoke-virtual {v5}, Lorg/jline/utils/AttributedStringBuilder;->toAttributedString()Lorg/jline/utils/AttributedString;

    move-result-object v6

    return-object v6
.end method

.method public setErrorIndex(I)V
    .locals 0
    .param p1, "errorIndex"    # I

    .line 32
    iput p1, p0, Lorg/jline/reader/impl/DefaultHighlighter;->errorIndex:I

    .line 33
    return-void
.end method

.method public setErrorPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "errorPattern"    # Ljava/util/regex/Pattern;

    .line 27
    iput-object p1, p0, Lorg/jline/reader/impl/DefaultHighlighter;->errorPattern:Ljava/util/regex/Pattern;

    .line 28
    return-void
.end method
