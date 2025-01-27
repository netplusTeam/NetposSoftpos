.class Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;
.super Ljava/lang/Object;
.source "SubscriptionConfig.java"

# interfaces
.implements Lcom/sleepycat/je/rep/stream/FeederFilter;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultFeederFilter"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final cachedIntDupDBId:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 790
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;->cachedIntDupDBId:Ljava/util/Set;

    .line 791
    return-void
.end method


# virtual methods
.method public execute(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 7
    .param p1, "record"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 808
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getReplicableDBId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 809
    .local v0, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    if-nez v0, :cond_0

    .line 810
    return-object p1

    .line 814
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;->cachedIntDupDBId:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 817
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getEntryType()B

    move-result v1

    .line 818
    .local v1, "type":B
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 819
    invoke-virtual {v3, v1}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 820
    :cond_1
    nop

    .line 821
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->instantiateEntry()Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    .line 822
    .local v3, "entry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/entry/DbOperationType;->REMOVE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v4, v5, :cond_2

    .line 823
    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getMainItem()Lcom/sleepycat/je/tree/LN;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/tree/NameLN;

    .line 824
    .local v4, "nameLn":Lcom/sleepycat/je/tree/NameLN;
    iget-object v5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;->cachedIntDupDBId:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/sleepycat/je/tree/NameLN;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 829
    .end local v3    # "entry":Lcom/sleepycat/je/log/entry/NameLNLogEntry;
    .end local v4    # "nameLn":Lcom/sleepycat/je/tree/NameLN;
    :cond_2
    return-object v2

    .line 832
    .end local v1    # "type":B
    :cond_3
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 833
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    .line 836
    .local v3, "impl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v3, :cond_5

    .line 837
    nop

    .line 854
    if-eqz v3, :cond_4

    .line 855
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 837
    :cond_4
    return-object p1

    .line 841
    :cond_5
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 842
    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;->cachedIntDupDBId:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    nop

    .line 854
    if-eqz v3, :cond_6

    .line 855
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 843
    :cond_6
    return-object v2

    .line 847
    :cond_7
    :try_start_1
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isInternalDb()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 848
    iget-object v4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig$DefaultFeederFilter;->cachedIntDupDBId:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    nop

    .line 854
    if-eqz v3, :cond_8

    .line 855
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 849
    :cond_8
    return-object v2

    .line 852
    :cond_9
    nop

    .line 854
    if-eqz v3, :cond_a

    .line 855
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 852
    :cond_a
    return-object p1

    .line 854
    :catchall_0
    move-exception v2

    if-eqz v3, :cond_b

    .line 855
    invoke-virtual {v1, v3}, Lcom/sleepycat/je/dbi/DbTree;->releaseDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    :cond_b
    throw v2
.end method

.method public getTableIds()[Ljava/lang/String;
    .locals 1

    .line 795
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLogger(Ljava/util/logging/Logger;)V
    .locals 0
    .param p1, "logger"    # Ljava/util/logging/Logger;

    .line 801
    return-void
.end method
