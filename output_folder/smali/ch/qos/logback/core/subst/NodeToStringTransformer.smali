.class public Lch/qos/logback/core/subst/NodeToStringTransformer;
.super Ljava/lang/Object;
.source "NodeToStringTransformer.java"


# instance fields
.field final node:Lch/qos/logback/core/subst/Node;

.field final propertyContainer0:Lch/qos/logback/core/spi/PropertyContainer;

.field final propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;)V
    .locals 1
    .param p1, "node"    # Lch/qos/logback/core/subst/Node;
    .param p2, "propertyContainer0"    # Lch/qos/logback/core/spi/PropertyContainer;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lch/qos/logback/core/subst/NodeToStringTransformer;-><init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)V
    .locals 0
    .param p1, "node"    # Lch/qos/logback/core/subst/Node;
    .param p2, "propertyContainer0"    # Lch/qos/logback/core/spi/PropertyContainer;
    .param p3, "propertyContainer1"    # Lch/qos/logback/core/spi/PropertyContainer;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->node:Lch/qos/logback/core/subst/Node;

    .line 37
    iput-object p2, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer0:Lch/qos/logback/core/spi/PropertyContainer;

    .line 38
    iput-object p3, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;

    .line 39
    return-void
.end method

.method private compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V
    .locals 3
    .param p1, "inputNode"    # Lch/qos/logback/core/subst/Node;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/subst/Node;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 65
    .local p3, "cycleCheckStack":Ljava/util/Stack;, "Ljava/util/Stack<Lch/qos/logback/core/subst/Node;>;"
    move-object v0, p1

    .line 66
    .local v0, "n":Lch/qos/logback/core/subst/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 67
    sget-object v1, Lch/qos/logback/core/subst/NodeToStringTransformer$1;->$SwitchMap$ch$qos$logback$core$subst$Node$Type:[I

    iget-object v2, v0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v2}, Lch/qos/logback/core/subst/Node$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 72
    :pswitch_0
    invoke-direct {p0, v0, p2, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->handleVariable(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-direct {p0, v0, p2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->handleLiteral(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V

    .line 70
    nop

    .line 75
    :goto_1
    iget-object v0, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    goto :goto_0

    .line 77
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructRecursionErrorMessage(Ljava/util/Stack;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 149
    .local p1, "recursionNodes":Ljava/util/Stack;, "Ljava/util/Stack<Lch/qos/logback/core/subst/Node;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Circular variable reference detected while parsing input ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "errorBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/subst/Node;

    .line 152
    .local v2, "stackNode":Lch/qos/logback/core/subst/Node;
    const-string v3, "${"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->variableNodeValue(Lch/qos/logback/core/subst/Node;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_0

    .line 154
    const-string v3, " --> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .end local v2    # "stackNode":Lch/qos/logback/core/subst/Node;
    :cond_0
    goto :goto_0

    .line 157
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private equalNodes(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/subst/Node;)Z
    .locals 3
    .param p1, "node1"    # Lch/qos/logback/core/subst/Node;
    .param p2, "node2"    # Lch/qos/logback/core/subst/Node;

    .line 176
    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    iget-object v2, p2, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v0, v2}, Lch/qos/logback/core/subst/Node$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return v1

    .line 178
    :cond_0
    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    iget-object v2, p2, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    return v1

    .line 180
    :cond_1
    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    iget-object v2, p2, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    return v1

    .line 183
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private handleLiteral(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "n"    # Lch/qos/logback/core/subst/Node;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method private handleVariable(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V
    .locals 7
    .param p1, "n"    # Lch/qos/logback/core/subst/Node;
    .param p2, "stringBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/subst/Node;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 82
    .local p3, "cycleCheckStack":Ljava/util/Stack;, "Ljava/util/Stack<Lch/qos/logback/core/subst/Node;>;"
    invoke-direct {p0, p1, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->haveVisitedNodeAlready(Lch/qos/logback/core/subst/Node;Ljava/util/Stack;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    invoke-virtual {p3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, "keyBuffer":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v1, Lch/qos/logback/core/subst/Node;

    .line 91
    .local v1, "payload":Lch/qos/logback/core/subst/Node;
    invoke-direct {p0, v1, v0, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, v2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->lookupKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 96
    invoke-static {v3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->tokenizeAndParseString(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v4

    .line 97
    .local v4, "innerNode":Lch/qos/logback/core/subst/Node;
    invoke-direct {p0, v4, p2, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    .line 98
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 99
    return-void

    .line 102
    .end local v4    # "innerNode":Lch/qos/logback/core/subst/Node;
    :cond_0
    iget-object v4, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_IS_UNDEFINED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 105
    return-void

    .line 108
    :cond_1
    iget-object v4, p1, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    check-cast v4, Lch/qos/logback/core/subst/Node;

    .line 109
    .local v4, "defaultPart":Lch/qos/logback/core/subst/Node;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v5, "defaultPartBuffer":Ljava/lang/StringBuilder;
    invoke-direct {p0, v4, v5, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    .line 111
    invoke-virtual {p3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "defaultVal":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    return-void

    .line 83
    .end local v0    # "keyBuffer":Ljava/lang/StringBuilder;
    .end local v1    # "payload":Lch/qos/logback/core/subst/Node;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "defaultPart":Lch/qos/logback/core/subst/Node;
    .end local v5    # "defaultPartBuffer":Ljava/lang/StringBuilder;
    .end local v6    # "defaultVal":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0, p3}, Lch/qos/logback/core/subst/NodeToStringTransformer;->constructRecursionErrorMessage(Ljava/util/Stack;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "error":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private haveVisitedNodeAlready(Lch/qos/logback/core/subst/Node;Ljava/util/Stack;)Z
    .locals 3
    .param p1, "node"    # Lch/qos/logback/core/subst/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/subst/Node;",
            "Ljava/util/Stack<",
            "Lch/qos/logback/core/subst/Node;",
            ">;)Z"
        }
    .end annotation

    .line 167
    .local p2, "cycleDetectionStack":Ljava/util/Stack;, "Ljava/util/Stack<Lch/qos/logback/core/subst/Node;>;"
    invoke-virtual {p2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/subst/Node;

    .line 168
    .local v1, "cycleNode":Lch/qos/logback/core/subst/Node;
    invoke-direct {p0, p1, v1}, Lch/qos/logback/core/subst/NodeToStringTransformer;->equalNodes(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/subst/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    const/4 v2, 0x1

    return v2

    .line 171
    .end local v1    # "cycleNode":Lch/qos/logback/core/subst/Node;
    :cond_0
    goto :goto_0

    .line 172
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private lookupKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer0:Lch/qos/logback/core/spi/PropertyContainer;

    invoke-interface {v0, p1}, Lch/qos/logback/core/spi/PropertyContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->propertyContainer1:Lch/qos/logback/core/spi/PropertyContainer;

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {v1, p1}, Lch/qos/logback/core/spi/PropertyContainer;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    .line 124
    return-object v0

    .line 127
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lch/qos/logback/core/util/OptionHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    return-object v0

    .line 131
    :cond_2
    invoke-static {p1}, Lch/qos/logback/core/util/OptionHelper;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_3

    .line 133
    return-object v0

    .line 136
    :cond_3
    return-object v1
.end method

.method public static substituteVariable(Ljava/lang/String;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pc0"    # Lch/qos/logback/core/spi/PropertyContainer;
    .param p2, "pc1"    # Lch/qos/logback/core/spi/PropertyContainer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 46
    invoke-static {p0}, Lch/qos/logback/core/subst/NodeToStringTransformer;->tokenizeAndParseString(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;

    move-result-object v0

    .line 47
    .local v0, "node":Lch/qos/logback/core/subst/Node;
    new-instance v1, Lch/qos/logback/core/subst/NodeToStringTransformer;

    invoke-direct {v1, v0, p1, p2}, Lch/qos/logback/core/subst/NodeToStringTransformer;-><init>(Lch/qos/logback/core/subst/Node;Lch/qos/logback/core/spi/PropertyContainer;Lch/qos/logback/core/spi/PropertyContainer;)V

    .line 48
    .local v1, "nodeToStringTransformer":Lch/qos/logback/core/subst/NodeToStringTransformer;
    invoke-virtual {v1}, Lch/qos/logback/core/subst/NodeToStringTransformer;->transform()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static tokenizeAndParseString(Ljava/lang/String;)Lch/qos/logback/core/subst/Node;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 52
    new-instance v0, Lch/qos/logback/core/subst/Tokenizer;

    invoke-direct {v0, p0}, Lch/qos/logback/core/subst/Tokenizer;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "tokenizer":Lch/qos/logback/core/subst/Tokenizer;
    invoke-virtual {v0}, Lch/qos/logback/core/subst/Tokenizer;->tokenize()Ljava/util/List;

    move-result-object v1

    .line 54
    .local v1, "tokens":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/subst/Token;>;"
    new-instance v2, Lch/qos/logback/core/subst/Parser;

    invoke-direct {v2, v1}, Lch/qos/logback/core/subst/Parser;-><init>(Ljava/util/List;)V

    .line 55
    .local v2, "parser":Lch/qos/logback/core/subst/Parser;
    invoke-virtual {v2}, Lch/qos/logback/core/subst/Parser;->parse()Lch/qos/logback/core/subst/Node;

    move-result-object v3

    return-object v3
.end method

.method private variableNodeValue(Lch/qos/logback/core/subst/Node;)Ljava/lang/String;
    .locals 2
    .param p1, "variableNode"    # Lch/qos/logback/core/subst/Node;

    .line 144
    iget-object v0, p1, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v0, Lch/qos/logback/core/subst/Node;

    .line 145
    .local v0, "literalPayload":Lch/qos/logback/core/subst/Node;
    iget-object v1, v0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method


# virtual methods
.method public transform()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/spi/ScanException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/subst/NodeToStringTransformer;->node:Lch/qos/logback/core/subst/Node;

    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    invoke-direct {p0, v1, v0, v2}, Lch/qos/logback/core/subst/NodeToStringTransformer;->compileNode(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;Ljava/util/Stack;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
