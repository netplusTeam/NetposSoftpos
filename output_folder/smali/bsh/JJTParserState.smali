.class Lbsh/JJTParserState;
.super Ljava/lang/Object;
.source "JJTParserState.java"


# instance fields
.field private marks:Ljava/util/Stack;

.field private mk:I

.field private node_created:Z

.field private nodes:Ljava/util/Stack;

.field private sp:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    .line 40
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lbsh/JJTParserState;->sp:I

    .line 42
    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 43
    return-void
.end method


# virtual methods
.method clearNodeScope(Lbsh/Node;)V
    .locals 2
    .param p1, "n"    # Lbsh/Node;

    .line 95
    :goto_0
    iget v0, p0, Lbsh/JJTParserState;->sp:I

    iget v1, p0, Lbsh/JJTParserState;->mk:I

    if-le v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 99
    return-void
.end method

.method closeNodeScope(Lbsh/Node;I)V
    .locals 1
    .param p1, "n"    # Lbsh/Node;
    .param p2, "num"    # I

    .line 114
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 115
    :goto_0
    add-int/lit8 v0, p2, -0x1

    .end local p2    # "num":I
    .local v0, "num":I
    if-lez p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object p2

    .line 117
    .local p2, "c":Lbsh/Node;
    invoke-interface {p2, p1}, Lbsh/Node;->jjtSetParent(Lbsh/Node;)V

    .line 118
    invoke-interface {p1, p2, v0}, Lbsh/Node;->jjtAddChild(Lbsh/Node;I)V

    .line 119
    .end local p2    # "c":Lbsh/Node;
    move p2, v0

    goto :goto_0

    .line 120
    :cond_0
    invoke-interface {p1}, Lbsh/Node;->jjtClose()V

    .line 121
    invoke-virtual {p0, p1}, Lbsh/JJTParserState;->pushNode(Lbsh/Node;)V

    .line 122
    const/4 p2, 0x1

    iput-boolean p2, p0, Lbsh/JJTParserState;->node_created:Z

    .line 123
    return-void
.end method

.method closeNodeScope(Lbsh/Node;Z)V
    .locals 2
    .param p1, "n"    # Lbsh/Node;
    .param p2, "condition"    # Z

    .line 132
    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p0}, Lbsh/JJTParserState;->nodeArity()I

    move-result v0

    .line 134
    .local v0, "a":I
    iget-object v1, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lbsh/JJTParserState;->mk:I

    .line 135
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "a":I
    .local v1, "a":I
    if-lez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lbsh/JJTParserState;->popNode()Lbsh/Node;

    move-result-object v0

    .line 137
    .local v0, "c":Lbsh/Node;
    invoke-interface {v0, p1}, Lbsh/Node;->jjtSetParent(Lbsh/Node;)V

    .line 138
    invoke-interface {p1, v0, v1}, Lbsh/Node;->jjtAddChild(Lbsh/Node;I)V

    .line 139
    .end local v0    # "c":Lbsh/Node;
    move v0, v1

    goto :goto_0

    .line 140
    :cond_0
    invoke-interface {p1}, Lbsh/Node;->jjtClose()V

    .line 141
    invoke-virtual {p0, p1}, Lbsh/JJTParserState;->pushNode(Lbsh/Node;)V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    .line 143
    .end local v1    # "a":I
    goto :goto_1

    .line 144
    :cond_1
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    .line 147
    :goto_1
    return-void
.end method

.method nodeArity()I
    .locals 2

    .line 90
    iget v0, p0, Lbsh/JJTParserState;->sp:I

    iget v1, p0, Lbsh/JJTParserState;->mk:I

    sub-int/2addr v0, v1

    return v0
.end method

.method nodeCreated()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lbsh/JJTParserState;->node_created:Z

    return v0
.end method

.method openNodeScope(Lbsh/Node;)V
    .locals 3
    .param p1, "n"    # Lbsh/Node;

    .line 103
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lbsh/JJTParserState;->mk:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget v0, p0, Lbsh/JJTParserState;->sp:I

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 105
    invoke-interface {p1}, Lbsh/Node;->jjtOpen()V

    .line 106
    return-void
.end method

.method peekNode()Lbsh/Node;
    .locals 1

    .line 84
    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method

.method popNode()Lbsh/Node;
    .locals 2

    .line 76
    iget v0, p0, Lbsh/JJTParserState;->sp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbsh/JJTParserState;->sp:I

    iget v1, p0, Lbsh/JJTParserState;->mk:I

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 79
    :cond_0
    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method

.method pushNode(Lbsh/Node;)V
    .locals 1
    .param p1, "n"    # Lbsh/Node;

    .line 69
    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget v0, p0, Lbsh/JJTParserState;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbsh/JJTParserState;->sp:I

    .line 71
    return-void
.end method

.method reset()V
    .locals 1

    .line 55
    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 56
    iget-object v0, p0, Lbsh/JJTParserState;->marks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lbsh/JJTParserState;->sp:I

    .line 58
    iput v0, p0, Lbsh/JJTParserState;->mk:I

    .line 59
    return-void
.end method

.method rootNode()Lbsh/Node;
    .locals 2

    .line 64
    iget-object v0, p0, Lbsh/JJTParserState;->nodes:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh/Node;

    return-object v0
.end method
