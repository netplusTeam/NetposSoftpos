.class Lch/qos/logback/core/pattern/parser/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;
    }
.end annotation


# instance fields
.field final escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

.field final optionEscapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

.field final pattern:Ljava/lang/String;

.field final patternLength:I

.field pointer:I

.field state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 64
    new-instance v0, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/TokenStream;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "escapeUtil"    # Lch/qos/logback/core/pattern/util/IEscapeUtil;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lch/qos/logback/core/pattern/util/RestrictedEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/RestrictedEscapeUtil;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->optionEscapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    .line 59
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    .line 73
    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    .line 74
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or empty pattern string not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;)V"
        }
    .end annotation

    .line 230
    .local p3, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 231
    new-instance v0, Lch/qos/logback/core/pattern/parser/Token;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 234
    :cond_0
    return-void
.end method

.method private handleFormatModifierState(CLjava/util/List;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "c"    # C
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .line 149
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    const/16 v0, 0x3ea

    const/16 v1, 0x28

    if-ne p1, v1, :cond_0

    .line 150
    invoke-direct {p0, v0, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 151
    sget-object v0, Lch/qos/logback/core/pattern/parser/Token;->BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    invoke-direct {p0, v0, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 155
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->KEYWORD_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 156
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    :goto_0
    return-void
.end method

.method private handleKeywordState(CLjava/util/List;Ljava/lang/StringBuffer;)V
    .locals 4
    .param p1, "c"    # C
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .line 186
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 188
    :cond_0
    const/16 v0, 0x7b

    const/16 v1, 0x3ec

    if-ne p1, v0, :cond_1

    .line 189
    invoke-direct {p0, v1, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 190
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->OPTION_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    goto :goto_1

    .line 191
    :cond_1
    const/16 v0, 0x28

    if-ne p1, v0, :cond_2

    .line 192
    const/16 v0, 0x3ed

    invoke-direct {p0, v0, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 193
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    goto :goto_1

    .line 194
    :cond_2
    const/16 v0, 0x25

    if-ne p1, v0, :cond_3

    .line 195
    invoke-direct {p0, v1, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 196
    sget-object v0, Lch/qos/logback/core/pattern/parser/Token;->PERCENT_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->FORMAT_MODIFIER_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    goto :goto_1

    .line 198
    :cond_3
    const/16 v0, 0x29

    if-ne p1, v0, :cond_4

    .line 199
    invoke-direct {p0, v1, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 200
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->RIGHT_PARENTHESIS_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    goto :goto_1

    .line 202
    :cond_4
    invoke-direct {p0, v1, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 203
    const/16 v0, 0x5c

    if-ne p1, v0, :cond_5

    .line 204
    iget v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    if-ge v0, v1, :cond_6

    .line 205
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 206
    .local v0, "next":C
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    iget v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    const-string v3, "%()"

    invoke-interface {v1, v3, p3, v0, v2}, Lch/qos/logback/core/pattern/util/IEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    .line 207
    .end local v0    # "next":C
    goto :goto_0

    .line 209
    :cond_5
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 211
    :cond_6
    :goto_0
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 213
    :goto_1
    return-void
.end method

.method private handleLiteralState(CLjava/util/List;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "c"    # C
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .line 163
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    const/16 v0, 0x3e8

    sparse-switch p1, :sswitch_data_0

    .line 180
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 165
    :sswitch_0
    const-string v0, "%()"

    invoke-virtual {p0, v0, p3}, Lch/qos/logback/core/pattern/parser/TokenStream;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 166
    goto :goto_0

    .line 175
    :sswitch_1
    invoke-direct {p0, v0, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 176
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->RIGHT_PARENTHESIS_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 177
    goto :goto_0

    .line 169
    :sswitch_2
    invoke-direct {p0, v0, p3, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 170
    sget-object v0, Lch/qos/logback/core/pattern/parser/Token;->PERCENT_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->FORMAT_MODIFIER_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 172
    nop

    .line 182
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0x29 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private handleRightParenthesisState(CLjava/util/List;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "c"    # C
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .line 126
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    sget-object v0, Lch/qos/logback/core/pattern/parser/Token;->RIGHT_PARENTHESIS_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sparse-switch p1, :sswitch_data_0

    .line 138
    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    goto :goto_0

    .line 131
    :sswitch_0
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->OPTION_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 132
    goto :goto_0

    .line 134
    :sswitch_1
    const-string v0, "%{}"

    invoke-virtual {p0, v0, p3}, Lch/qos/logback/core/pattern/parser/TokenStream;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 135
    sget-object v0, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    .line 136
    goto :goto_0

    .line 129
    :sswitch_2
    nop

    .line 141
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_2
        0x5c -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private processOption(CLjava/util/List;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "c"    # C
    .param p3, "buf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/pattern/parser/Token;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 144
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    new-instance v0, Lch/qos/logback/core/pattern/parser/OptionTokenizer;

    invoke-direct {v0, p0}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;-><init>(Lch/qos/logback/core/pattern/parser/TokenStream;)V

    .line 145
    .local v0, "ot":Lch/qos/logback/core/pattern/parser/OptionTokenizer;
    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/pattern/parser/OptionTokenizer;->tokenize(CLjava/util/List;)V

    .line 146
    return-void
.end method


# virtual methods
.method escape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "escapeChars"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 216
    iget v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    .local v0, "next":C
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->escapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    iget v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-interface {v1, p1, p2, v0, v2}, Lch/qos/logback/core/pattern/util/IEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    .line 220
    .end local v0    # "next":C
    :cond_0
    return-void
.end method

.method optionEscape(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "escapeChars"    # Ljava/lang/String;
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .line 223
    iget v0, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    if-ge v0, v1, :cond_0

    .line 224
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 225
    .local v0, "next":C
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->optionEscapeUtil:Lch/qos/logback/core/pattern/util/IEscapeUtil;

    iget v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    invoke-interface {v1, p1, p2, v0, v2}, Lch/qos/logback/core/pattern/util/IEscapeUtil;->escape(Ljava/lang/String;Ljava/lang/StringBuffer;CI)V

    .line 227
    .end local v0    # "next":C
    :cond_0
    return-void
.end method

.method tokenize()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/pattern/parser/Token;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v1, "buf":Ljava/lang/StringBuffer;
    :goto_0
    iget v2, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    iget v3, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->patternLength:I

    if-ge v2, v3, :cond_0

    .line 81
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 82
    .local v2, "c":C
    iget v3, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->pointer:I

    .line 84
    sget-object v3, Lch/qos/logback/core/pattern/parser/TokenStream$1;->$SwitchMap$ch$qos$logback$core$pattern$parser$TokenStream$TokenizerState:[I

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    invoke-virtual {v4}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 98
    :pswitch_0
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/pattern/parser/TokenStream;->handleRightParenthesisState(CLjava/util/List;Ljava/lang/StringBuffer;)V

    .line 99
    goto :goto_1

    .line 95
    :pswitch_1
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/pattern/parser/TokenStream;->handleKeywordState(CLjava/util/List;Ljava/lang/StringBuffer;)V

    .line 96
    goto :goto_1

    .line 92
    :pswitch_2
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/pattern/parser/TokenStream;->processOption(CLjava/util/List;Ljava/lang/StringBuffer;)V

    .line 93
    goto :goto_1

    .line 89
    :pswitch_3
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/pattern/parser/TokenStream;->handleFormatModifierState(CLjava/util/List;Ljava/lang/StringBuffer;)V

    .line 90
    goto :goto_1

    .line 86
    :pswitch_4
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/pattern/parser/TokenStream;->handleLiteralState(CLjava/util/List;Ljava/lang/StringBuffer;)V

    .line 87
    nop

    .line 103
    .end local v2    # "c":C
    :goto_1
    goto :goto_0

    .line 106
    :cond_0
    sget-object v2, Lch/qos/logback/core/pattern/parser/TokenStream$1;->$SwitchMap$ch$qos$logback$core$pattern$parser$TokenStream$TokenizerState:[I

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/TokenStream;->state:Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;

    invoke-virtual {v3}, Lch/qos/logback/core/pattern/parser/TokenStream$TokenizerState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 114
    :pswitch_5
    sget-object v2, Lch/qos/logback/core/pattern/parser/Token;->RIGHT_PARENTHESIS_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_2

    .line 111
    :pswitch_6
    new-instance v2, Lch/qos/logback/core/pattern/parser/Token;

    const/16 v3, 0x3ec

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lch/qos/logback/core/pattern/parser/Token;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_2

    .line 119
    :pswitch_7
    new-instance v2, Lch/qos/logback/core/spi/ScanException;

    const-string v3, "Unexpected end of pattern string"

    invoke-direct {v2, v3}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :pswitch_8
    const/16 v2, 0x3e8

    invoke-direct {p0, v2, v1, v0}, Lch/qos/logback/core/pattern/parser/TokenStream;->addValuedToken(ILjava/lang/StringBuffer;Ljava/util/List;)V

    .line 109
    nop

    .line 122
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
