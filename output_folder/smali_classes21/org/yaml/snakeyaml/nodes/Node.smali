.class public abstract Lorg/yaml/snakeyaml/nodes/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private anchor:Ljava/lang/String;

.field protected endMark:Lorg/yaml/snakeyaml/error/Mark;

.field protected resolved:Z

.field private startMark:Lorg/yaml/snakeyaml/error/Mark;

.field private tag:Lorg/yaml/snakeyaml/nodes/Tag;

.field private twoStepsConstruction:Z

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected useClassConstructor:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/nodes/Tag;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V
    .locals 1
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;
    .param p2, "startMark"    # Lorg/yaml/snakeyaml/error/Mark;
    .param p3, "endMark"    # Lorg/yaml/snakeyaml/error/Mark;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 49
    iput-object p2, p0, Lorg/yaml/snakeyaml/nodes/Node;->startMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 50
    iput-object p3, p0, Lorg/yaml/snakeyaml/nodes/Node;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    .line 51
    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->type:Ljava/lang/Class;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->twoStepsConstruction:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->resolved:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->useClassConstructor:Ljava/lang/Boolean;

    .line 55
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAnchor()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->anchor:Ljava/lang/String;

    return-object v0
.end method

.method public getEndMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->endMark:Lorg/yaml/snakeyaml/error/Mark;

    return-object v0
.end method

.method public abstract getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;
.end method

.method public getStartMark()Lorg/yaml/snakeyaml/error/Mark;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->startMark:Lorg/yaml/snakeyaml/error/Mark;

    return-object v0
.end method

.method public getTag()Lorg/yaml/snakeyaml/nodes/Tag;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 136
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isResolved()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->resolved:Z

    return v0
.end method

.method public isTwoStepsConstruction()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->twoStepsConstruction:Z

    return v0
.end method

.method public setAnchor(Ljava/lang/String;)V
    .locals 0
    .param p1, "anchor"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/Node;->anchor:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 2
    .param p1, "tag"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 85
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/Node;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 89
    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag in a Node is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTwoStepsConstruction(Z)V
    .locals 0
    .param p1, "twoStepsConstruction"    # Z

    .line 110
    iput-boolean p1, p0, Lorg/yaml/snakeyaml/nodes/Node;->twoStepsConstruction:Z

    .line 111
    return-void
.end method

.method public setType(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->type:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/Node;->type:Ljava/lang/Class;

    .line 107
    :cond_0
    return-void
.end method

.method public setUseClassConstructor(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "useClassConstructor"    # Ljava/lang/Boolean;

    .line 156
    iput-object p1, p0, Lorg/yaml/snakeyaml/nodes/Node;->useClassConstructor:Ljava/lang/Boolean;

    .line 157
    return-void
.end method

.method public useClassConstructor()Z
    .locals 3

    .line 140
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->useClassConstructor:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Tag;->isSecondary()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->resolved:Z

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/Object;

    iget-object v2, p0, Lorg/yaml/snakeyaml/nodes/Node;->type:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->NULL:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 142
    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/nodes/Node;->tag:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {p0}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->isCompatible(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    return v1

    .line 149
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
