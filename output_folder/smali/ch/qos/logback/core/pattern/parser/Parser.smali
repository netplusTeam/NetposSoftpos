.class public Lch/qos/logback/core/pattern/parser/Parser;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;"
    }
.end annotation


# static fields
.field public static final DEFAULT_COMPOSITE_CONVERTER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MISSING_RIGHT_PARENTHESIS:Ljava/lang/String; = "http://logback.qos.ch/codes.html#missingRightParenthesis"

.field public static final REPLACE_CONVERTER_WORD:Ljava/lang/String; = "replace"


# instance fields
.field pointer:I

.field final tokenList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/qos/logback/core/pattern/parser/Parser;->DEFAULT_COMPOSITE_CONVERTER_MAP:Ljava/util/Map;

    .line 50
    sget-object v1, Lch/qos/logback/core/pattern/parser/Token;->BARE_COMPOSITE_KEYWORD_TOKEN:Lch/qos/logback/core/pattern/parser/Token;

    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lch/qos/logback/core/pattern/IdentityCompositeConverter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-class v1, Lch/qos/logback/core/pattern/ReplacingCompositeConverter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "replace"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/pattern/parser/TokenStream;)V
    .locals 1
    .param p1, "ts"    # Lch/qos/logback/core/pattern/parser/TokenStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 57
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    .line 58
    invoke-virtual {p1}, Lch/qos/logback/core/pattern/parser/TokenStream;->tokenize()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 62
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    new-instance v0, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;

    invoke-direct {v0}, Lch/qos/logback/core/pattern/util/RegularEscapeUtil;-><init>()V

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/Parser;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "escapeUtil"    # Lch/qos/logback/core/pattern/util/IEscapeUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 65
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    .line 67
    :try_start_0
    new-instance v0, Lch/qos/logback/core/pattern/parser/TokenStream;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/pattern/parser/TokenStream;-><init>(Ljava/lang/String;Lch/qos/logback/core/pattern/util/IEscapeUtil;)V

    .line 68
    .local v0, "ts":Lch/qos/logback/core/pattern/parser/TokenStream;
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/TokenStream;->tokenize()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "ts":Lch/qos/logback/core/pattern/parser/TokenStream;
    nop

    .line 72
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "npe":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lch/qos/logback/core/spi/ScanException;

    const-string v2, "Failed to initialize Parser"

    invoke-direct {v1, v2, v0}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method C()Lch/qos/logback/core/pattern/parser/FormattingNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 153
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    .line 156
    .local v0, "t":Lch/qos/logback/core/pattern/parser/Token;
    const-string v1, "a LEFT_PARENTHESIS or KEYWORD"

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;->expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v1

    .line 158
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 165
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    .line 163
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/pattern/parser/Parser;->COMPOSITE(Ljava/lang/String;)Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v2

    return-object v2

    .line 160
    :pswitch_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->SINGLE()Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v2

    return-object v2

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method COMPOSITE(Ljava/lang/String;)Lch/qos/logback/core/pattern/parser/FormattingNode;
    .locals 6
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 185
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    new-instance v0, Lch/qos/logback/core/pattern/parser/CompositeNode;

    invoke-direct {v0, p1}, Lch/qos/logback/core/pattern/parser/CompositeNode;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "compositeNode":Lch/qos/logback/core/pattern/parser/CompositeNode;
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->E()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v1

    .line 188
    .local v1, "childNode":Lch/qos/logback/core/pattern/parser/Node;
    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/CompositeNode;->setChildNode(Lch/qos/logback/core/pattern/parser/Node;)V

    .line 190
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getNextToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v2

    .line 192
    .local v2, "t":Lch/qos/logback/core/pattern/parser/Token;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_1

    .line 198
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v3

    .line 199
    .local v3, "ot":Lch/qos/logback/core/pattern/parser/Token;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v4

    const/16 v5, 0x3ee

    if-ne v4, v5, :cond_0

    .line 200
    invoke-virtual {v3}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 201
    .local v4, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Lch/qos/logback/core/pattern/parser/CompositeNode;->setOptions(Ljava/util/List;)V

    .line 202
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    .line 204
    .end local v4    # "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .line 193
    .end local v3    # "ot":Lch/qos/logback/core/pattern/parser/Token;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expecting RIGHT_PARENTHESIS token but got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lch/qos/logback/core/pattern/parser/Parser;->addError(Ljava/lang/String;)V

    .line 195
    const-string v4, "See also http://logback.qos.ch/codes.html#missingRightParenthesis"

    invoke-virtual {p0, v4}, Lch/qos/logback/core/pattern/parser/Parser;->addError(Ljava/lang/String;)V

    .line 196
    new-instance v4, Lch/qos/logback/core/spi/ScanException;

    invoke-direct {v4, v3}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method E()Lch/qos/logback/core/pattern/parser/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 96
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->T()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    .line 97
    .local v0, "t":Lch/qos/logback/core/pattern/parser/Node;
    if-nez v0, :cond_0

    .line 98
    const/4 v1, 0x0

    return-object v1

    .line 100
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->Eopt()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v1

    .line 101
    .local v1, "eOpt":Lch/qos/logback/core/pattern/parser/Node;
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/Node;->setNext(Lch/qos/logback/core/pattern/parser/Node;)V

    .line 104
    :cond_1
    return-object v0
.end method

.method Eopt()Lch/qos/logback/core/pattern/parser/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 110
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    .line 112
    .local v0, "next":Lch/qos/logback/core/pattern/parser/Token;
    if-nez v0, :cond_0

    .line 113
    const/4 v1, 0x0

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->E()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v1

    return-object v1
.end method

.method SINGLE()Lch/qos/logback/core/pattern/parser/FormattingNode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 171
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getNextToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    .line 173
    .local v0, "t":Lch/qos/logback/core/pattern/parser/Token;
    new-instance v1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;-><init>(Ljava/lang/Object;)V

    .line 175
    .local v1, "keywordNode":Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v2

    .line 176
    .local v2, "ot":Lch/qos/logback/core/pattern/parser/Token;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v3

    const/16 v4, 0x3ee

    if-ne v3, v4, :cond_0

    .line 177
    invoke-virtual {v2}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 178
    .local v3, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->setOptions(Ljava/util/List;)V

    .line 179
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    .line 181
    .end local v3    # "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method T()Lch/qos/logback/core/pattern/parser/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v0

    .line 122
    .local v0, "t":Lch/qos/logback/core/pattern/parser/Token;
    const-string v1, "a LITERAL or \'%\'"

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/pattern/parser/Parser;->expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 146
    const/4 v1, 0x0

    return-object v1

    .line 126
    :sswitch_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    .line 127
    new-instance v1, Lch/qos/logback/core/pattern/parser/Node;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lch/qos/logback/core/pattern/parser/Node;-><init>(ILjava/lang/Object;)V

    return-object v1

    .line 129
    :sswitch_1
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    .line 132
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->getCurentToken()Lch/qos/logback/core/pattern/parser/Token;

    move-result-object v1

    .line 134
    .local v1, "u":Lch/qos/logback/core/pattern/parser/Token;
    const-string v2, "a FORMAT_MODIFIER, SIMPLE_KEYWORD or COMPOUND_KEYWORD"

    invoke-virtual {p0, v1, v2}, Lch/qos/logback/core/pattern/parser/Parser;->expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Token;->getType()I

    move-result v2

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_0

    .line 136
    invoke-virtual {v1}, Lch/qos/logback/core/pattern/parser/Token;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lch/qos/logback/core/pattern/FormatInfo;->valueOf(Ljava/lang/String;)Lch/qos/logback/core/pattern/FormatInfo;

    move-result-object v2

    .line 137
    .local v2, "fi":Lch/qos/logback/core/pattern/FormatInfo;
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->advanceTokenPointer()V

    .line 138
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->C()Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v3

    .line 139
    .local v3, "c":Lch/qos/logback/core/pattern/parser/FormattingNode;
    invoke-virtual {v3, v2}, Lch/qos/logback/core/pattern/parser/FormattingNode;->setFormatInfo(Lch/qos/logback/core/pattern/FormatInfo;)V

    goto :goto_0

    .line 141
    .end local v2    # "fi":Lch/qos/logback/core/pattern/FormatInfo;
    .end local v3    # "c":Lch/qos/logback/core/pattern/parser/FormattingNode;
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->C()Lch/qos/logback/core/pattern/parser/FormattingNode;

    move-result-object v3

    .line 143
    .restart local v3    # "c":Lch/qos/logback/core/pattern/parser/FormattingNode;
    :goto_0
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method advanceTokenPointer()V
    .locals 1

    .line 222
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    .line 223
    return-void
.end method

.method public compile(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)Lch/qos/logback/core/pattern/Converter;
    .locals 2
    .param p1, "top"    # Lch/qos/logback/core/pattern/parser/Node;
    .param p2, "converterMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/pattern/parser/Node;",
            "Ljava/util/Map;",
            ")",
            "Lch/qos/logback/core/pattern/Converter<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    new-instance v0, Lch/qos/logback/core/pattern/parser/Compiler;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/pattern/parser/Compiler;-><init>(Lch/qos/logback/core/pattern/parser/Node;Ljava/util/Map;)V

    .line 85
    .local v0, "compiler":Lch/qos/logback/core/pattern/parser/Compiler;, "Lch/qos/logback/core/pattern/parser/Compiler<TE;>;"
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/pattern/parser/Compiler;->setContext(Lch/qos/logback/core/Context;)V

    .line 87
    invoke-virtual {v0}, Lch/qos/logback/core/pattern/parser/Compiler;->compile()Lch/qos/logback/core/pattern/Converter;

    move-result-object v1

    return-object v1
.end method

.method expectNotNull(Lch/qos/logback/core/pattern/parser/Token;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Lch/qos/logback/core/pattern/parser/Token;
    .param p2, "expected"    # Ljava/lang/String;

    .line 226
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    if-eqz p1, :cond_0

    .line 229
    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All tokens consumed but was expecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCurentToken()Lch/qos/logback/core/pattern/parser/Token;
    .locals 2

    .line 215
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/pattern/parser/Token;

    return-object v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getNextToken()Lch/qos/logback/core/pattern/parser/Token;
    .locals 3

    .line 208
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Parser;->tokenList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/qos/logback/core/pattern/parser/Parser;->pointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/pattern/parser/Token;

    return-object v0

    .line 211
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public parse()Lch/qos/logback/core/pattern/parser/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 91
    .local p0, "this":Lch/qos/logback/core/pattern/parser/Parser;, "Lch/qos/logback/core/pattern/parser/Parser<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Parser;->E()Lch/qos/logback/core/pattern/parser/Node;

    move-result-object v0

    return-object v0
.end method
