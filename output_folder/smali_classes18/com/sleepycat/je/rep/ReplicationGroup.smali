.class public Lcom/sleepycat/je/rep/ReplicationGroup;
.super Ljava/lang/Object;
.source "ReplicationGroup.java"


# instance fields
.field final repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/RepGroupImpl;)V
    .locals 0
    .param p1, "repGroupImpl"    # Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public getArbiterNodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeArbiterMembers(Ljava/util/Set;)V

    .line 162
    return-object v0
.end method

.method public getDataNodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeDataMembers(Ljava/util/Set;)V

    .line 148
    return-object v0
.end method

.method public getElectableNodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 84
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeElectableMembers(Ljava/util/Set;)V

    .line 85
    return-object v0
.end method

.method public getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationNode;
    .locals 1
    .param p1, "nodeName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getMember(Ljava/lang/String;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    return-object v0
.end method

.method public getMonitorNodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 125
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeMonitorMembers(Ljava/util/Set;)V

    .line 126
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeMembers(Lcom/sleepycat/je/rep/impl/RepGroupImpl$Predicate;Ljava/util/Set;)V

    .line 66
    return-object v0
.end method

.method public getRepGroupImpl()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    return-object v0
.end method

.method public getSecondaryNodes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/rep/ReplicationNode;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 107
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/rep/ReplicationNode;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->includeSecondaryMembers(Ljava/util/Set;)V

    .line 108
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sleepycat/je/rep/ReplicationGroup;->repGroupImpl:Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
