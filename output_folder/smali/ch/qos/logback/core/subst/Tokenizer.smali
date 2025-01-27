.class public Lch/qos/logback/core/subst/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/Tokenizer$TokenizerState;
    }
.end annotation


# instance fields
.field final pattern:Ljava/lang/String;

.field final patternLength:I

.field pointer:I

.field state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    .line 32
    iput-object p1, p0, Lch/qos/logback/core/subst/Tokenizer;->pattern:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lch/qos/logback/core/subst/Tokenizer;->patternLength:I

    .line 34
    return-void
.end method

.method private addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 130
    .local p1, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    return-void

    .line 132
    :cond_0
    new-instance v0, Lch/qos/logback/core/subst/Token;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->LITERAL:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/subst/Token;-><init>(Lch/qos/logback/core/subst/Token$Type;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private handleDefaultValueState(CLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "c"    # C
    .param p3, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 79
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    const/16 v0, 0x3a

    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    goto :goto_0

    .line 81
    :sswitch_0
    sget-object v0, Lch/qos/logback/core/subst/Token;->DEFAULT_SEP_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    .line 83
    goto :goto_0

    .line 85
    :sswitch_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 88
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->START_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    .line 89
    nop

    .line 95
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method private handleLiteralState(CLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "c"    # C
    .param p3, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 107
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    const/4 v0, 0x0

    const/16 v1, 0x24

    if-ne p1, v1, :cond_0

    .line 108
    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->START_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    goto :goto_0

    .line 111
    :cond_0
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_1

    .line 112
    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 113
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 114
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->DEFAULT_VAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    goto :goto_0

    .line 115
    :cond_1
    const/16 v1, 0x7b

    if-ne p1, v1, :cond_2

    .line 116
    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 117
    sget-object v1, Lch/qos/logback/core/subst/Token;->CURLY_LEFT_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 119
    :cond_2
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_3

    .line 120
    invoke-direct {p0, p2, p3}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 121
    sget-object v1, Lch/qos/logback/core/subst/Token;->CURLY_RIGHT_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :goto_0
    return-void
.end method

.method private handleStartState(CLjava/util/List;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "c"    # C
    .param p3, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 98
    .local p2, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_0

    .line 99
    sget-object v0, Lch/qos/logback/core/subst/Token;->START_TOKEN:Lch/qos/logback/core/subst/Token;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :goto_0
    sget-object v0, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->LITERAL_STATE:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    iput-object v0, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    .line 104
    return-void
.end method


# virtual methods
.method tokenize()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_0
    iget v2, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    iget v3, p0, Lch/qos/logback/core/subst/Tokenizer;->patternLength:I

    if-ge v2, v3, :cond_0

    .line 44
    iget-object v3, p0, Lch/qos/logback/core/subst/Tokenizer;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 45
    .local v2, "c":C
    iget v3, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/qos/logback/core/subst/Tokenizer;->pointer:I

    .line 47
    sget-object v3, Lch/qos/logback/core/subst/Tokenizer$1;->$SwitchMap$ch$qos$logback$core$subst$Tokenizer$TokenizerState:[I

    iget-object v4, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    invoke-virtual {v4}, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 55
    :pswitch_0
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->handleDefaultValueState(CLjava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 52
    :pswitch_1
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->handleStartState(CLjava/util/List;Ljava/lang/StringBuilder;)V

    .line 53
    goto :goto_1

    .line 49
    :pswitch_2
    invoke-direct {p0, v2, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->handleLiteralState(CLjava/util/List;Ljava/lang/StringBuilder;)V

    .line 50
    nop

    .line 58
    .end local v2    # "c":C
    :goto_1
    goto :goto_0

    .line 60
    :cond_0
    sget-object v2, Lch/qos/logback/core/subst/Tokenizer$1;->$SwitchMap$ch$qos$logback$core$subst$Tokenizer$TokenizerState:[I

    iget-object v3, p0, Lch/qos/logback/core/subst/Tokenizer;->state:Lch/qos/logback/core/subst/Tokenizer$TokenizerState;

    invoke-virtual {v3}, Lch/qos/logback/core/subst/Tokenizer$TokenizerState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 66
    :pswitch_3
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 68
    goto :goto_2

    .line 71
    :pswitch_4
    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    goto :goto_2

    .line 62
    :pswitch_5
    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/subst/Tokenizer;->addLiteralToken(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 63
    nop

    .line 75
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
