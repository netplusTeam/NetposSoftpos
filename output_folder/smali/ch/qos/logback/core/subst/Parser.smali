.class public Lch/qos/logback/core/subst/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field pointer:I

.field final tokenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/subst/Token;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "tokenList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/subst/Parser;->pointer:I

    .line 41
    iput-object p1, p0, Lch/qos/logback/core/subst/Parser;->tokenList:Ljava/util/List;

    .line 42
    return-void
.end method

.method private C()Lch/qos/logback/core/subst/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->E()Lch/qos/logback/core/subst/Node;

    move-result-object v0

    .line 122
    .local v0, "e0":Lch/qos/logback/core/subst/Node;
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->peekAtCurentToken()Lch/qos/logback/core/subst/Token;

    move-result-object v1

    .line 123
    .local v1, "t":Lch/qos/logback/core/subst/Token;
    invoke-direct {p0, v1}, Lch/qos/logback/core/subst/Parser;->isDefaultToken(Lch/qos/logback/core/subst/Token;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 125
    const-string v2, ":-"

    invoke-direct {p0, v2}, Lch/qos/logback/core/subst/Parser;->makeNewLiteralNode(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v2

    .line 126
    .local v2, "literal":Lch/qos/logback/core/subst/Node;
    invoke-virtual {v0, v2}, Lch/qos/logback/core/subst/Node;->append(Lch/qos/logback/core/subst/Node;)V

    .line 127
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->E()Lch/qos/logback/core/subst/Node;

    move-result-object v3

    .line 128
    .local v3, "e1":Lch/qos/logback/core/subst/Node;
    invoke-virtual {v0, v3}, Lch/qos/logback/core/subst/Node;->append(Lch/qos/logback/core/subst/Node;)V

    .line 130
    .end local v2    # "literal":Lch/qos/logback/core/subst/Node;
    .end local v3    # "e1":Lch/qos/logback/core/subst/Node;
    :cond_0
    return-object v0
.end method

.method private E()Lch/qos/logback/core/subst/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->T()Lch/qos/logback/core/subst/Node;

    move-result-object v0

    .line 52
    .local v0, "t":Lch/qos/logback/core/subst/Node;
    if-nez v0, :cond_0

    .line 53
    const/4 v1, 0x0

    return-object v1

    .line 55
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->Eopt()Lch/qos/logback/core/subst/Node;

    move-result-object v1

    .line 56
    .local v1, "eOpt":Lch/qos/logback/core/subst/Node;
    if-eqz v1, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Lch/qos/logback/core/subst/Node;->append(Lch/qos/logback/core/subst/Node;)V

    .line 59
    :cond_1
    return-object v0
.end method

.method private Eopt()Lch/qos/logback/core/subst/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->peekAtCurentToken()Lch/qos/logback/core/subst/Token;

    move-result-object v0

    .line 65
    .local v0, "next":Lch/qos/logback/core/subst/Token;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->E()Lch/qos/logback/core/subst/Node;

    move-result-object v1

    return-object v1
.end method

.method private T()Lch/qos/logback/core/subst/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->peekAtCurentToken()Lch/qos/logback/core/subst/Token;

    move-result-object v0

    .line 76
    .local v0, "t":Lch/qos/logback/core/subst/Token;
    sget-object v1, Lch/qos/logback/core/subst/Parser$1;->$SwitchMap$ch$qos$logback$core$subst$Token$Type:[I

    iget-object v2, v0, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    invoke-virtual {v2}, Lch/qos/logback/core/subst/Token$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 98
    const/4 v1, 0x0

    return-object v1

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 92
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->V()Lch/qos/logback/core/subst/Node;

    move-result-object v1

    .line 93
    .local v1, "v":Lch/qos/logback/core/subst/Node;
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->peekAtCurentToken()Lch/qos/logback/core/subst/Token;

    move-result-object v2

    .line 94
    .local v2, "w":Lch/qos/logback/core/subst/Token;
    invoke-virtual {p0, v2}, Lch/qos/logback/core/subst/Parser;->expectCurlyRight(Lch/qos/logback/core/subst/Token;)V

    .line 95
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 96
    return-object v1

    .line 81
    .end local v1    # "v":Lch/qos/logback/core/subst/Node;
    .end local v2    # "w":Lch/qos/logback/core/subst/Token;
    :pswitch_1
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 82
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->C()Lch/qos/logback/core/subst/Node;

    move-result-object v1

    .line 83
    .local v1, "innerNode":Lch/qos/logback/core/subst/Node;
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->peekAtCurentToken()Lch/qos/logback/core/subst/Token;

    move-result-object v2

    .line 84
    .local v2, "right":Lch/qos/logback/core/subst/Token;
    invoke-virtual {p0, v2}, Lch/qos/logback/core/subst/Parser;->expectCurlyRight(Lch/qos/logback/core/subst/Token;)V

    .line 85
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 86
    sget-object v3, Lch/qos/logback/core/CoreConstants;->LEFT_ACCOLADE:Ljava/lang/String;

    invoke-direct {p0, v3}, Lch/qos/logback/core/subst/Parser;->makeNewLiteralNode(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v3

    .line 87
    .local v3, "curlyLeft":Lch/qos/logback/core/subst/Node;
    invoke-virtual {v3, v1}, Lch/qos/logback/core/subst/Node;->append(Lch/qos/logback/core/subst/Node;)V

    .line 88
    sget-object v4, Lch/qos/logback/core/CoreConstants;->RIGHT_ACCOLADE:Ljava/lang/String;

    invoke-direct {p0, v4}, Lch/qos/logback/core/subst/Parser;->makeNewLiteralNode(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/qos/logback/core/subst/Node;->append(Lch/qos/logback/core/subst/Node;)V

    .line 89
    return-object v3

    .line 78
    .end local v1    # "innerNode":Lch/qos/logback/core/subst/Node;
    .end local v2    # "right":Lch/qos/logback/core/subst/Token;
    .end local v3    # "curlyLeft":Lch/qos/logback/core/subst/Node;
    :pswitch_2
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 79
    iget-object v1, v0, Lch/qos/logback/core/subst/Token;->payload:Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/qos/logback/core/subst/Parser;->makeNewLiteralNode(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private V()Lch/qos/logback/core/subst/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->E()Lch/qos/logback/core/subst/Node;

    move-result-object v0

    .line 109
    .local v0, "e":Lch/qos/logback/core/subst/Node;
    new-instance v1, Lch/qos/logback/core/subst/Node;

    sget-object v2, Lch/qos/logback/core/subst/Node$Type;->VARIABLE:Lch/qos/logback/core/subst/Node$Type;

    invoke-direct {v1, v2, v0}, Lch/qos/logback/core/subst/Node;-><init>(Lch/qos/logback/core/subst/Node$Type;Ljava/lang/Object;)V

    .line 110
    .local v1, "variable":Lch/qos/logback/core/subst/Node;
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->peekAtCurentToken()Lch/qos/logback/core/subst/Token;

    move-result-object v2

    .line 111
    .local v2, "t":Lch/qos/logback/core/subst/Token;
    invoke-direct {p0, v2}, Lch/qos/logback/core/subst/Parser;->isDefaultToken(Lch/qos/logback/core/subst/Token;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lch/qos/logback/core/subst/Parser;->advanceTokenPointer()V

    .line 113
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->E()Lch/qos/logback/core/subst/Node;

    move-result-object v3

    .line 114
    .local v3, "def":Lch/qos/logback/core/subst/Node;
    iput-object v3, v1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    .line 116
    .end local v3    # "def":Lch/qos/logback/core/subst/Node;
    :cond_0
    return-object v1
.end method

.method private isDefaultToken(Lch/qos/logback/core/subst/Token;)Z
    .locals 2
    .param p1, "t"    # Lch/qos/logback/core/subst/Token;

    .line 134
    if-eqz p1, :cond_0

    iget-object v0, p1, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->DEFAULT:Lch/qos/logback/core/subst/Token$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeNewLiteralNode(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 103
    new-instance v0, Lch/qos/logback/core/subst/Node;

    sget-object v1, Lch/qos/logback/core/subst/Node$Type;->LITERAL:Lch/qos/logback/core/subst/Node$Type;

    invoke-direct {v0, v1, p1}, Lch/qos/logback/core/subst/Node;-><init>(Lch/qos/logback/core/subst/Node$Type;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method advanceTokenPointer()V
    .locals 1

    .line 138
    iget v0, p0, Lch/qos/logback/core/subst/Parser;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/subst/Parser;->pointer:I

    .line 139
    return-void
.end method

.method expectCurlyRight(Lch/qos/logback/core/subst/Token;)V
    .locals 2
    .param p1, "t"    # Lch/qos/logback/core/subst/Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 148
    const-string/jumbo v0, "}"

    invoke-virtual {p0, p1, v0}, Lch/qos/logback/core/subst/Parser;->expectNotNull(Lch/qos/logback/core/subst/Token;Ljava/lang/String;)V

    .line 149
    iget-object v0, p1, Lch/qos/logback/core/subst/Token;->type:Lch/qos/logback/core/subst/Token$Type;

    sget-object v1, Lch/qos/logback/core/subst/Token$Type;->CURLY_RIGHT:Lch/qos/logback/core/subst/Token$Type;

    if-ne v0, v1, :cond_0

    .line 152
    return-void

    .line 150
    :cond_0
    new-instance v0, Lch/qos/logback/core/spi/ScanException;

    const-string v1, "Expecting }"

    invoke-direct {v0, v1}, Lch/qos/logback/core/spi/ScanException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method expectNotNull(Lch/qos/logback/core/subst/Token;Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Lch/qos/logback/core/subst/Token;
    .param p2, "expected"    # Ljava/lang/String;

    .line 142
    if-eqz p1, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All tokens consumed but was expecting \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse()Lch/qos/logback/core/subst/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lch/qos/logback/core/subst/Parser;->tokenList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lch/qos/logback/core/subst/Parser;->E()Lch/qos/logback/core/subst/Node;

    move-result-object v0

    return-object v0

    .line 46
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method peekAtCurentToken()Lch/qos/logback/core/subst/Token;
    .locals 2

    .line 155
    iget v0, p0, Lch/qos/logback/core/subst/Parser;->pointer:I

    iget-object v1, p0, Lch/qos/logback/core/subst/Parser;->tokenList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lch/qos/logback/core/subst/Parser;->tokenList:Ljava/util/List;

    iget v1, p0, Lch/qos/logback/core/subst/Parser;->pointer:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/subst/Token;

    return-object v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
