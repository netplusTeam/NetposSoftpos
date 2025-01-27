.class public Lch/qos/logback/core/pattern/parser/OptionTokenizer;
.super Ljava/lang/Object;
.source "OptionTokenizer.java"


# static fields
.field private static final EXPECTING_STATE:I = 0x0

.field private static final QUOTED_COLLECTING_STATE:I = 0x2

.field private static final RAW_COLLECTING_STATE:I = 0x1


# instance fields
.field final escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

.field final pattern:Ljava/lang/String;

.field final patternLength:I

.field quoteChar:C

.field state:I

.field final tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;


# direct methods
.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;)V
    .locals 1
    .param p1, "tokenStream"    # Lch/qos/logback/core/pattern/parser/TokenStream;

    .line 47
    new-instance v0, Lch/qos/logback/core/pattern/util/AsIsEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/AsIsEscapeUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;-><init>(Lch/qos/logback/core/pattern/parser/TokenStream;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    .line 48
    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V
    .locals 1
    .param p1, "tokenStream"    # Lch/qos/logback/core/pattern/parser/TokenStream;
    .param p2, "escapeUtil"    # Lch/qos/logback/core/pattern/util/IEscapeUtil;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    .line 51
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    .line 52
    iget-object v0, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    .line 53
    iget v0, p1, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    iput v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    .line 54
    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    .line 55
    return-void
.end method


# virtual methods
.method emitOptionToken(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    .local p2, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v1, 0x3ee

    invoke-direct {v0, v1, p2}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    sget-object v1, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v1, v0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 136
    return-void
.end method

.method escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "escapeChars"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 139
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v0, v0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v1, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    .local v0, "next":C
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v2, v2, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-interface {v1, p1, p2, v0, v2}, Lch/qos/logback/core/pattern/util/IEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    .line 143
    .end local v0    # "next":C
    :cond_0
    return-void
.end method

.method tokenize(CLjava/util/List;)V
    .locals 6
    .param p1, "firstChar"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 58
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v0, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v1, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v2, p1

    .line 62
    .local v2, "c":C
    :goto_0
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v3, v3, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v4, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->patternLength:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 63
    iget v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 101
    :pswitch_0
    iget-char v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    if-ne v2, v3, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 104
    iput v4, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    goto :goto_1

    .line 105
    :cond_0
    const/16 v4, 0x5c

    if-ne v2, v4, :cond_1

    .line 106
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    :pswitch_1
    sparse-switch v2, :sswitch_data_0

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    goto :goto_1

    .line 93
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    .line 95
    return-void

    .line 88
    :sswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 90
    iput v4, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    .line 91
    goto :goto_1

    .line 65
    :pswitch_2
    sparse-switch v2, :sswitch_data_1

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    iput v5, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    .line 84
    goto :goto_1

    .line 78
    :sswitch_2
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    .line 79
    return-void

    .line 74
    :sswitch_3
    const/4 v3, 0x2

    iput v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    .line 75
    iput-char v2, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->quoteChar:C

    .line 76
    goto :goto_1

    .line 71
    :sswitch_4
    nop

    .line 114
    :goto_1
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->pattern:Ljava/lang/String;

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v4, v4, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 115
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenStream:Lch/qos/logback/core/pattern/parser/TokenStream;

    iget v4, v3, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    add-int/2addr v4, v5

    iput v4, v3, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    goto :goto_0

    .line 119
    :cond_2
    const/16 v3, 0x7d

    const-string v4, "Unexpected end of pattern string in OptionTokenizer"

    if-ne v2, v3, :cond_5

    .line 120
    iget v3, p0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->state:I

    if-nez v3, :cond_3

    .line 121
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    goto :goto_2

    .line 122
    :cond_3
    if-ne v3, v5, :cond_4

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p0, p2, v1}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->emitOptionToken(Ljava/util/List;Ljava/util/List;)V

    .line 131
    :goto_2
    return-void

    .line 126
    :cond_4
    new-instance v3, Lch/qos/logback/core/spi/ScanException;

    invoke-direct {v3, v4}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_5
    new-instance v3, Lch/qos/logback/core/spi/ScanException;

    invoke-direct {v3, v4}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0xd -> :sswitch_4
        0x20 -> :sswitch_4
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x2c -> :sswitch_4
        0x7d -> :sswitch_2
    .end sparse-switch
.end method
