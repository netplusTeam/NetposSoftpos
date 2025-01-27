.class public Lcom/sleepycat/je/rep/stream/MasterStatus;
.super Ljava/lang/Object;
.source "MasterStatus.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private groupMasterHostName:Ljava/lang/String;

.field private groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private groupMasterPort:I

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private nodeMasterHostName:Ljava/lang/String;

.field private nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private nodeMasterPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 3
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterHostName:Ljava/lang/String;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterPort:I

    .line 35
    sget-object v2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 41
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterHostName:Ljava/lang/String;

    .line 42
    iput v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterPort:I

    .line 43
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 46
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized assertSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->inSync()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;-><init>(Lcom/sleepycat/je/rep/stream/MasterStatus;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 54
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v0    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGroupMaster()Ljava/net/InetSocketAddress;
    .locals 3

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 155
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterHostName:Ljava/lang/String;

    iget v2, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGroupMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    monitor-enter p0

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 159
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNodeMaster()Ljava/net/InetSocketAddress;
    .locals 3

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 139
    :cond_0
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterHostName:Ljava/lang/String;

    iget v2, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 135
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 143
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized inSync()Z
    .locals 2

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->hasNullId()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 98
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    monitor-exit p0

    return v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isGroupMaster()Z
    .locals 2

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    .line 67
    .local v0, "id":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 68
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :cond_0
    const/4 v1, 0x0

    .line 67
    :goto_0
    monitor-exit p0

    return v1

    .line 65
    .end local v0    # "id":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNodeMaster()Z
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    .line 76
    .local v0, "id":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 77
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :cond_0
    const/4 v1, 0x0

    .line 76
    :goto_0
    monitor-exit p0

    return v1

    .line 74
    .end local v0    # "id":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGroupMaster(Ljava/lang/String;ILcom/sleepycat/je/rep/impl/node/NameIdPair;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "newGroupMasterNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    monitor-enter p0

    .line 83
    :try_start_0
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterHostName:Ljava/lang/String;

    .line 84
    iput p2, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterPort:I

    .line 85
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 82
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    .end local p1    # "hostname":Ljava/lang/String;
    .end local p2    # "port":I
    .end local p3    # "newGroupMasterNameId":Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sync()V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterHostName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterHostName:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterPort:I

    iput v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterPort:I

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->groupMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 125
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unSync()V
    .locals 1

    monitor-enter p0

    .line 102
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterHostName:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterPort:I

    .line 104
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/MasterStatus;->nodeMasterNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 101
    .end local p0    # "this":Lcom/sleepycat/je/rep/stream/MasterStatus;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
