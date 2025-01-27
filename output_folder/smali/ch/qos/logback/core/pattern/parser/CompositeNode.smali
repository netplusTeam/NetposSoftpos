.class public Lch/qos/logback/core/pattern/parser/CompositeNode;
.super Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
.source "CompositeNode.java"


# instance fields
.field childNode:Lch/qos/logback/core/pattern/parser/Node;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;

    .line 20
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;-><init>(ILjava/lang/Object;)V

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 33
    invoke-super {p0, p1}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 34
    return v1

    .line 36
    :cond_0
    instance-of v0, p1, Lch/qos/logback/core/pattern/parser/CompositeNode;

    if-nez v0, :cond_1

    .line 37
    return v1

    .line 39
    :cond_1
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/pattern/parser/CompositeNode;

    .line 41
    .local v0, "r":Lch/qos/logback/core/pattern/parser/CompositeNode;
    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/pattern/parser/Node;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public getChildNode()Lch/qos/logback/core/pattern/parser/Node;
    .locals 1

    .line 25
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 46
    invoke-super {p0}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public setChildNode(Lch/qos/logback/core/pattern/parser/Node;)V
    .locals 0
    .param p1, "childNode"    # Lch/qos/logback/core/pattern/parser/Node;

    .line 29
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    if-eqz v1, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompositeNode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/CompositeNode;->childNode:Lch/qos/logback/core/pattern/parser/Node;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 54
    :cond_0
    const-string v1, "CompositeNode(no child)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/CompositeNode;->printNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
