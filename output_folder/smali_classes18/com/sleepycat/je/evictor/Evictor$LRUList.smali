.class Lcom/sleepycat/je/evictor/Evictor$LRUList;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LRUList"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final doExpensiveCheck:Z = false


# instance fields
.field private back:Lcom/sleepycat/je/tree/IN;

.field private front:Lcom/sleepycat/je/tree/IN;

.field private final id:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 871
    const-class v0, Lcom/sleepycat/je/evictor/Evictor;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 880
    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 883
    iput p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->id:I

    .line 884
    return-void
.end method

.method private contains2(Lcom/sleepycat/je/tree/IN;)Z
    .locals 3
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    .line 1237
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_0

    .line 1239
    return v1

    .line 1238
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1245
    .local v0, "curr":Lcom/sleepycat/je/tree/IN;
    :goto_0
    if-ne v0, p1, :cond_2

    .line 1246
    const/4 v1, 0x1

    return v1

    .line 1249
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v2

    if-ne v2, v0, :cond_3

    .line 1250
    nop

    .line 1256
    return v1

    .line 1253
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addBack(Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 889
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_4

    .line 890
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_4

    .line 900
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isDIN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isDBIN()Z

    move-result v0

    if-nez v0, :cond_3

    .line 902
    invoke-virtual {p1, p1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 904
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 906
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 908
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_2

    .line 909
    invoke-virtual {p1, p1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 912
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 914
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_1

    .line 915
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 918
    :cond_1
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 919
    monitor-exit p0

    return-void

    .line 908
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 900
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 892
    :cond_4
    nop

    .line 893
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 894
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 895
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 896
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Attempting to add node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 897
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the LRU, but node is already in the LRU."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 888
    .end local p1    # "node":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized addFront(Lcom/sleepycat/je/tree/IN;)V
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 924
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_4

    .line 925
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_4

    .line 935
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isDIN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->isDBIN()Z

    move-result v0

    if-nez v0, :cond_3

    .line 937
    invoke-virtual {p1, p1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 939
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 941
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 943
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_2

    .line 944
    invoke-virtual {p1, p1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 947
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 949
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_1

    .line 950
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 953
    :cond_1
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    monitor-exit p0

    return-void

    .line 943
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 935
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 927
    :cond_4
    nop

    .line 928
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 930
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 931
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Attempting to add node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 932
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNodeId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in the LRU, but node is already in the LRU."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 923
    .end local p1    # "node":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized contains(Lcom/sleepycat/je/tree/IN;)Z
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 1232
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1232
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    .end local p1    # "node":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized copyList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1261
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_1

    .line 1262
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_0

    .line 1263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1262
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1266
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/IN;>;"
    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1271
    .local v1, "curr":Lcom/sleepycat/je/tree/IN;
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1273
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v1, :cond_2

    .line 1274
    nop

    .line 1280
    monitor-exit p0

    return-object v0

    .line 1277
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 1260
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/tree/IN;>;"
    .end local v1    # "curr":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSize()I
    .locals 1

    .line 1284
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    return v0
.end method

.method declared-synchronized getStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;)V
    .locals 2
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "stats"    # Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;

    monitor-enter p0

    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1291
    monitor-exit p0

    return-void

    .line 1290
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1294
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_1
    nop

    .line 1297
    .local v0, "curr":Lcom/sleepycat/je/tree/IN;
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    if-ne v1, p1, :cond_5

    .line 1298
    :cond_2
    iget v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->size:I

    .line 1300
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1301
    iget v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->dirtySize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->dirtySize:I

    .line 1304
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->isBIN()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1305
    iget v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numBINs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numBINs:I

    .line 1307
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1308
    iget v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyBINs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyBINs:I

    .line 1311
    :cond_4
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->hasCachedChildren()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1312
    iget v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numStrippedBINs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numStrippedBINs:I

    .line 1314
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDirty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1315
    iget v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyStrippedBINs:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p2, Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;->numDirtyStrippedBINs:I

    .line 1321
    :cond_5
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v0, :cond_6

    .line 1322
    nop

    .line 1327
    monitor-exit p0

    return-void

    .line 1325
    :cond_6
    :try_start_2
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 1288
    .end local v0    # "curr":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p2    # "stats":Lcom/sleepycat/je/evictor/Evictor$LRUDebugStats;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized moveBack(Lcom/sleepycat/je/tree/IN;)V
    .locals 2
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 959
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_1

    .line 960
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 961
    monitor-exit p0

    return-void

    .line 960
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 976
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 978
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-ne v0, p1, :cond_3

    .line 979
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 978
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 982
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-eq v0, v1, :cond_c

    .line 983
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    .line 985
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 987
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, p1, :cond_6

    .line 988
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 990
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 991
    invoke-virtual {v0, v0}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 988
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 987
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 994
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-eq v0, p1, :cond_a

    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-eq v0, p1, :cond_a

    .line 995
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 996
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 998
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 999
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1002
    :goto_0
    invoke-virtual {p1, p1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1003
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1005
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1006
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    :goto_1
    monitor-exit p0

    return-void

    .line 996
    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 995
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 994
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 983
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 982
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    .end local p1    # "node":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized moveFront(Lcom/sleepycat/je/tree/IN;)V
    .locals 2
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 1013
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1014
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1015
    monitor-exit p0

    return-void

    .line 1014
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1030
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 1032
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, p1, :cond_3

    .line 1033
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1032
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1036
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-eq v0, v1, :cond_c

    .line 1037
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    .line 1039
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 1041
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-ne v0, p1, :cond_6

    .line 1042
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 1044
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 1045
    invoke-virtual {v0, v0}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1042
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1041
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1048
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-eq v0, p1, :cond_a

    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-eq v0, p1, :cond_a

    .line 1049
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 1050
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_8

    .line 1052
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1053
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1056
    :goto_0
    invoke-virtual {p1, p1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1057
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1059
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1060
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1062
    :goto_1
    monitor-exit p0

    return-void

    .line 1050
    :cond_8
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1049
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1048
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1037
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1036
    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1012
    .end local p1    # "node":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized remove(Lcom/sleepycat/je/tree/IN;)Z
    .locals 4
    .param p1, "node"    # Lcom/sleepycat/je/tree/IN;

    monitor-enter p0

    .line 1097
    :try_start_0
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1098
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1099
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1098
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1102
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1116
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    .line 1117
    iget v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    if-ne v1, v2, :cond_5

    .line 1118
    if-ne v0, p1, :cond_4

    .line 1119
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, v1, :cond_3

    .line 1120
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, v1, :cond_2

    .line 1122
    iput-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1123
    iput-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    goto/16 :goto_0

    .line 1120
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1119
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1118
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1117
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1125
    :cond_6
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 1127
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, p1, :cond_8

    .line 1128
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_7

    .line 1130
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1131
    invoke-virtual {v0, v0}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1128
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1127
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1133
    :cond_9
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_c

    .line 1135
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-ne v0, p1, :cond_b

    .line 1136
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_a

    .line 1138
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 1139
    invoke-virtual {v0, v0}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    goto :goto_0

    .line 1136
    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1135
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1142
    :cond_c
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    .line 1143
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    if-eq v0, v1, :cond_10

    .line 1144
    if-eq v0, p1, :cond_f

    if-eq v1, p1, :cond_f

    .line 1145
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_e

    .line 1146
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    if-ne v0, p1, :cond_d

    .line 1148
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1149
    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1152
    :goto_0
    invoke-virtual {p1, v3}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1153
    invoke-virtual {p1, v3}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1154
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1156
    monitor-exit p0

    return v2

    .line 1146
    :cond_d
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1145
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1144
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1143
    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1142
    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1102
    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1096
    .end local p1    # "node":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeFront()Lcom/sleepycat/je/tree/IN;
    .locals 5

    monitor-enter p0

    .line 1065
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1067
    monitor-exit p0

    return-object v1

    .line 1066
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1070
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_1
    move-object v2, v0

    .line 1072
    .local v2, "res":Lcom/sleepycat/je/tree/IN;
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_5

    .line 1073
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, v3, :cond_4

    .line 1074
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-ne v0, v3, :cond_3

    .line 1075
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    if-ne v0, v4, :cond_2

    .line 1077
    iput-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1078
    iput-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    goto :goto_0

    .line 1075
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1074
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1073
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1081
    :cond_5
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    if-le v3, v4, :cond_6

    .line 1083
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1084
    invoke-virtual {v0, v0}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1087
    :goto_0
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1088
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1089
    iget v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    monitor-exit p0

    return-object v2

    .line 1081
    :cond_6
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1064
    .end local v2    # "res":Lcom/sleepycat/je/tree/IN;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeINsForEnv(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 8
    .param p1, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    monitor-enter p0

    .line 1161
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_1

    .line 1162
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1163
    monitor-exit p0

    return-void

    .line 1162
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1166
    .end local p0    # "this":Lcom/sleepycat/je/evictor/Evictor$LRUList;
    :cond_1
    nop

    .line 1170
    .local v0, "node":Lcom/sleepycat/je/tree/IN;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v1

    .line 1171
    .local v1, "nextNode":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v2

    .line 1173
    .local v2, "prevNode":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getDatabase()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    if-ne v3, p1, :cond_14

    .line 1175
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1176
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1178
    iget-object v4, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    iget-object v5, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_6

    .line 1179
    iget v5, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    if-ne v5, v6, :cond_5

    .line 1180
    if-ne v4, v0, :cond_4

    .line 1181
    if-ne v1, v4, :cond_3

    .line 1182
    if-ne v2, v4, :cond_2

    .line 1184
    iput-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1185
    iput-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 1186
    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    .line 1187
    goto/16 :goto_1

    .line 1182
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1181
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1180
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1179
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1189
    :cond_6
    if-ne v2, v0, :cond_a

    .line 1191
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    if-le v3, v6, :cond_9

    .line 1192
    if-ne v4, v0, :cond_8

    .line 1193
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    if-ne v3, v0, :cond_7

    .line 1195
    iput-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    .line 1196
    invoke-virtual {v1, v1}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1197
    iget-object v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->front:Lcom/sleepycat/je/tree/IN;

    move-object v0, v3

    .line 1198
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    goto/16 :goto_2

    .line 1193
    :cond_7
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1192
    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1191
    :cond_9
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1200
    :cond_a
    if-ne v1, v0, :cond_e

    .line 1202
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    if-le v3, v6, :cond_d

    .line 1203
    if-ne v5, v0, :cond_c

    .line 1204
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    if-ne v3, v0, :cond_b

    .line 1206
    iput-object v2, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->back:Lcom/sleepycat/je/tree/IN;

    .line 1207
    invoke-virtual {v2, v2}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1208
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    .line 1209
    goto :goto_1

    .line 1204
    :cond_b
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1203
    :cond_c
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1202
    :cond_d
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1212
    :cond_e
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    const/4 v7, 0x2

    if-le v3, v7, :cond_13

    .line 1213
    if-eq v4, v5, :cond_12

    .line 1214
    if-eq v4, v0, :cond_11

    if-eq v5, v0, :cond_11

    .line 1215
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/IN;->getNextLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    if-ne v3, v0, :cond_10

    .line 1216
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/IN;->getPrevLRUNode()Lcom/sleepycat/je/tree/IN;

    move-result-object v3

    if-ne v3, v0, :cond_f

    .line 1218
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/tree/IN;->setNextLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1219
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/tree/IN;->setPrevLRUNode(Lcom/sleepycat/je/tree/IN;)V

    .line 1220
    move-object v0, v1

    .line 1221
    iget v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/sleepycat/je/evictor/Evictor$LRUList;->size:I

    goto :goto_2

    .line 1216
    :cond_f
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1215
    :cond_10
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1214
    :cond_11
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1213
    :cond_12
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1212
    :cond_13
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    :cond_14
    if-ne v1, v0, :cond_15

    .line 1224
    nop

    .line 1229
    .end local v1    # "nextNode":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "prevNode":Lcom/sleepycat/je/tree/IN;
    :goto_1
    monitor-exit p0

    return-void

    .line 1226
    .restart local v1    # "nextNode":Lcom/sleepycat/je/tree/IN;
    .restart local v2    # "prevNode":Lcom/sleepycat/je/tree/IN;
    :cond_15
    move-object v0, v1

    .line 1228
    .end local v1    # "nextNode":Lcom/sleepycat/je/tree/IN;
    .end local v2    # "prevNode":Lcom/sleepycat/je/tree/IN;
    :goto_2
    goto/16 :goto_0

    .line 1160
    .end local v0    # "node":Lcom/sleepycat/je/tree/IN;
    .end local p1    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
