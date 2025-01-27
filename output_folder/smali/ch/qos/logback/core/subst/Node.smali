.class public Lch/qos/logback/core/subst/Node;
.super Ljava/lang/Object;
.source "Node.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/subst/Node$Type;
    }
.end annotation


# instance fields
.field defaultPart:Ljava/lang/Object;

.field next:Lch/qos/logback/core/subst/Node;

.field payload:Ljava/lang/Object;

.field type:Lch/qos/logback/core/subst/Node$Type;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/subst/Node$Type;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lch/qos/logback/core/subst/Node$Type;
    .param p2, "payload"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    .line 29
    iput-object p2, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>(Lch/qos/logback/core/subst/Node$Type;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "type"    # Lch/qos/logback/core/subst/Node$Type;
    .param p2, "payload"    # Ljava/lang/Object;
    .param p3, "defaultPart"    # Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    .line 34
    iput-object p2, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    .line 35
    iput-object p3, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method append(Lch/qos/logback/core/subst/Node;)V
    .locals 2
    .param p1, "newNode"    # Lch/qos/logback/core/subst/Node;

    .line 39
    if-nez p1, :cond_0

    .line 40
    return-void

    .line 41
    :cond_0
    move-object v0, p0

    .line 43
    .local v0, "n":Lch/qos/logback/core/subst/Node;
    :goto_0
    iget-object v1, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-nez v1, :cond_1

    .line 44
    iput-object p1, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    .line 45
    return-void

    .line 47
    :cond_1
    iget-object v0, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    goto :goto_0
.end method

.method public dump()V
    .locals 2

    .line 73
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lch/qos/logback/core/subst/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lch/qos/logback/core/subst/Node;->dump()V

    goto :goto_0

    .line 78
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 98
    return v0

    .line 99
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 102
    :cond_1
    move-object v2, p1

    check-cast v2, Lch/qos/logback/core/subst/Node;

    .line 104
    .local v2, "node":Lch/qos/logback/core/subst/Node;
    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    iget-object v4, v2, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    if-eq v3, v4, :cond_2

    .line 105
    return v1

    .line 106
    :cond_2
    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 107
    :goto_0
    return v1

    .line 108
    :cond_4
    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v3, :cond_5

    iget-object v4, v2, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 109
    :goto_1
    return v1

    .line 110
    :cond_6
    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v3, :cond_7

    iget-object v4, v2, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    invoke-virtual {v3, v4}, Lch/qos/logback/core/subst/Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v3, :cond_8

    .line 111
    :goto_2
    return v1

    .line 113
    :cond_8
    return v0

    .line 100
    .end local v2    # "node":Lch/qos/logback/core/subst/Node;
    :cond_9
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 118
    iget-object v0, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lch/qos/logback/core/subst/Node$Type;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 119
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 120
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    add-int/2addr v0, v3

    .line 121
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lch/qos/logback/core/subst/Node;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v2, v1

    .line 122
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method recursive(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "n"    # Lch/qos/logback/core/subst/Node;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 83
    move-object v0, p1

    .line 84
    .local v0, "c":Lch/qos/logback/core/subst/Node;
    :goto_0
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lch/qos/logback/core/subst/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, v0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    goto :goto_0

    .line 88
    :cond_0
    const-string v1, "null "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    return-void
.end method

.method public setNext(Lch/qos/logback/core/subst/Node;)V
    .locals 0
    .param p1, "n"    # Lch/qos/logback/core/subst/Node;

    .line 92
    iput-object p1, p0, Lch/qos/logback/core/subst/Node;->next:Lch/qos/logback/core/subst/Node;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 53
    sget-object v0, Lch/qos/logback/core/subst/Node$1;->$SwitchMap$ch$qos$logback$core$subst$Node$Type:[I

    iget-object v1, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v1}, Lch/qos/logback/core/subst/Node$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ", payload=\'"

    const-string v2, "Node{type="

    packed-switch v0, :pswitch_data_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 57
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "payloadBuf":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v3, "defaultPartBuf2":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 60
    check-cast v4, Lch/qos/logback/core/subst/Node;

    invoke-virtual {p0, v4, v3}, Lch/qos/logback/core/subst/Node;->recursive(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V

    .line 62
    :cond_0
    iget-object v4, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    check-cast v4, Lch/qos/logback/core/subst/Node;

    invoke-virtual {p0, v4, v0}, Lch/qos/logback/core/subst/Node;->recursive(Lch/qos/logback/core/subst/Node;Ljava/lang/StringBuilder;)V

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "r":Ljava/lang/String;
    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->defaultPart:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", defaultPart="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x7d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    return-object v1

    .line 55
    .end local v0    # "payloadBuf":Ljava/lang/StringBuilder;
    .end local v1    # "r":Ljava/lang/String;
    .end local v3    # "defaultPartBuf2":Ljava/lang/StringBuilder;
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/core/subst/Node;->type:Lch/qos/logback/core/subst/Node$Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/subst/Node;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
