.class public Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
.super Lch/qos/logback/core/pattern/parser/FormattingNode;
.source "SimpleKeywordNode.java"


# instance fields
.field optionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/pattern/parser/FormattingNode;-><init>(ILjava/lang/Object;)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lch/qos/logback/core/pattern/parser/FormattingNode;-><init>(ILjava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 39
    invoke-super {p0, p1}, Lch/qos/logback/core/pattern/parser/FormattingNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 40
    return v1

    .line 43
    :cond_0
    instance-of v0, p1, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    if-nez v0, :cond_1

    .line 44
    return v1

    .line 46
    :cond_1
    move-object v0, p1

    check-cast v0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;

    .line 48
    .local v0, "r":Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;
    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v1, v0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public getOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 53
    invoke-super {p0}, Lch/qos/logback/core/pattern/parser/FormattingNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public setOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "optionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    const-string v2, ")"

    const-string v3, ","

    const-string v4, "KeyWord("

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->value:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->value:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->formatInfo:Lch/qos/logback/core/pattern/FormatInfo;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->optionList:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/SimpleKeywordNode;->printNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
