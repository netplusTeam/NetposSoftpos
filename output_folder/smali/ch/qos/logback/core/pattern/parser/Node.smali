.class public Lch/qos/logback/core/pattern/parser/Node;
.super Ljava/lang/Object;
.source "Node.java"


# static fields
.field static final COMPOSITE_KEYWORD:I = 0x2

.field static final LITERAL:I = 0x0

.field static final SIMPLE_KEYWORD:I = 0x1


# instance fields
.field next:Lch/qos/logback/core/pattern/parser/Node;

.field final type:I

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/qos/logback/core/pattern/parser/Node;-><init>(ILjava/lang/Object;)V

    .line 27
    return-void
.end method

.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lch/qos/logback/core/pattern/parser/Node;->type:I

    .line 31
    iput-object p2, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Lch/qos/logback/core/pattern/parser/Node;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 61
    return v2

    .line 63
    :cond_1
    move-object v1, p1

    check-cast v1, Lch/qos/logback/core/pattern/parser/Node;

    .line 65
    .local v1, "r":Lch/qos/logback/core/pattern/parser/Node;
    iget v3, p0, Lch/qos/logback/core/pattern/parser/Node;->type:I

    iget v4, v1, Lch/qos/logback/core/pattern/parser/Node;->type:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v4, v1, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    if-nez v3, :cond_4

    :goto_0
    iget-object v3, p0, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    if-eqz v3, :cond_3

    iget-object v4, v1, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    invoke-virtual {v3, v4}, Lch/qos/logback/core/pattern/parser/Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    if-nez v3, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0
.end method

.method public getNext()Lch/qos/logback/core/pattern/parser/Node;
    .locals 1

    .line 49
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 38
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Node;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 70
    iget v0, p0, Lch/qos/logback/core/pattern/parser/Node;->type:I

    .line 71
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 72
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method printNext()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public setNext(Lch/qos/logback/core/pattern/parser/Node;)V
    .locals 0
    .param p1, "next"    # Lch/qos/logback/core/pattern/parser/Node;

    .line 53
    iput-object p1, p0, Lch/qos/logback/core/pattern/parser/Node;->next:Lch/qos/logback/core/pattern/parser/Node;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lch/qos/logback/core/pattern/parser/Node;->type:I

    packed-switch v1, :pswitch_data_0

    .line 90
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LITERAL("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/pattern/parser/Node;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    nop

    .line 93
    :goto_0
    invoke-virtual {p0}, Lch/qos/logback/core/pattern/parser/Node;->printNext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
