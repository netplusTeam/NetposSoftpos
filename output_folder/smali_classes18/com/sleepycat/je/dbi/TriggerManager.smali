.class public Lcom/sleepycat/je/dbi/TriggerManager;
.super Ljava/lang/Object;
.source "TriggerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/dbi/TriggerManager$MapOver;,
        Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Environment;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/Transaction;

    .line 37
    invoke-static {p0}, Lcom/sleepycat/je/dbi/TriggerManager;->getOpenTriggerEnvironment(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Environment;

    move-result-object v0

    return-object v0
.end method

.method private static getOpenTriggerEnvironment(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Environment;
    .locals 2
    .param p0, "transaction"    # Lcom/sleepycat/je/Transaction;

    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    nop

    .line 105
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getTxn(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Txn;->getEnvironmentImpl()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 111
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getInternalEnvHandle()Lcom/sleepycat/je/Environment;

    move-result-object v1

    return-object v1

    .line 120
    :cond_1
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getEnvironment(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Environment;

    move-result-object v1

    return-object v1
.end method

.method public static invokeAddRemoveTriggers(Lcom/sleepycat/je/txn/Locker;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "oldTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    .local p2, "newTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$11;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/dbi/TriggerManager$11;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 405
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/TriggerManager$11;->run(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 407
    .local v0, "oldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lcom/sleepycat/je/dbi/TriggerManager$12;

    invoke-direct {v1, p2}, Lcom/sleepycat/je/dbi/TriggerManager$12;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 412
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/dbi/TriggerManager$12;->run(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 414
    .local v1, "newNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    instance-of v2, p0, Lcom/sleepycat/je/txn/Txn;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/sleepycat/je/txn/Txn;

    .line 415
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 418
    .local v2, "txn":Lcom/sleepycat/je/Transaction;
    :goto_0
    if-eqz p1, :cond_2

    .line 419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/trigger/Trigger;

    .line 420
    .local v4, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    invoke-interface {v4}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 421
    invoke-interface {v4, v2}, Lcom/sleepycat/je/trigger/Trigger;->removeTrigger(Lcom/sleepycat/je/Transaction;)V

    .line 423
    .end local v4    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_1
    goto :goto_1

    .line 427
    :cond_2
    if-eqz p2, :cond_4

    .line 428
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/trigger/Trigger;

    .line 429
    .restart local v4    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    invoke-interface {v4}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 430
    invoke-interface {v4, v2}, Lcom/sleepycat/je/trigger/Trigger;->addTrigger(Lcom/sleepycat/je/Transaction;)V

    .line 432
    .end local v4    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_3
    goto :goto_2

    .line 434
    :cond_4
    return-void
.end method

.method public static runAbortTriggers(Lcom/sleepycat/je/txn/Txn;)V
    .locals 5
    .param p0, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 251
    if-eqz p0, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getTriggerDbs()Ljava/util/Set;

    move-result-object v0

    .line 255
    .local v0, "triggerDbs":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    if-nez v0, :cond_0

    .line 256
    return-void

    .line 259
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 261
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v3, Lcom/sleepycat/je/dbi/TriggerManager$8;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2}, Lcom/sleepycat/je/dbi/TriggerManager$8;-><init>(ZLcom/sleepycat/je/dbi/DatabaseImpl;)V

    invoke-static {v2, p0, v3}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 274
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 275
    :cond_1
    return-void

    .line 251
    .end local v0    # "triggerDbs":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static runCloseTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 130
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/TriggerManager$2;-><init>(Z)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 140
    return-void
.end method

.method public static runCommitTriggers(Lcom/sleepycat/je/txn/Txn;)V
    .locals 5
    .param p0, "txn"    # Lcom/sleepycat/je/txn/Txn;

    .line 221
    if-eqz p0, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/Txn;->getTriggerDbs()Ljava/util/Set;

    move-result-object v0

    .line 225
    .local v0, "triggerDbs":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    if-nez v0, :cond_0

    .line 226
    return-void

    .line 229
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 231
    .local v2, "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    new-instance v3, Lcom/sleepycat/je/dbi/TriggerManager$7;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sleepycat/je/dbi/TriggerManager$7;-><init>(Z)V

    invoke-static {v2, p0, v3}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 241
    .end local v2    # "dbImpl":Lcom/sleepycat/je/dbi/DatabaseImpl;
    goto :goto_0

    .line 242
    :cond_1
    return-void

    .line 221
    .end local v0    # "triggerDbs":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static runDeleteTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "oldData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 305
    if-eqz p2, :cond_0

    .line 307
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$10;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lcom/sleepycat/je/dbi/TriggerManager$10;-><init>(ZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 315
    return-void

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/Database;Z)V
    .locals 1
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "isNew"    # Z

    .line 46
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/sleepycat/je/dbi/TriggerManager;->runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V

    .line 47
    return-void
.end method

.method public static runOpenTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Z)V
    .locals 1
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "isNew"    # Z

    .line 56
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$1;

    invoke-direct {v0, p2, p2}, Lcom/sleepycat/je/dbi/TriggerManager$1;-><init>(ZZ)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 68
    return-void
.end method

.method public static runPutTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 2
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "oldData"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "newData"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 285
    if-eqz p2, :cond_1

    .line 286
    if-eqz p4, :cond_0

    .line 288
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$9;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/sleepycat/je/dbi/TriggerManager$9;-><init>(ZLcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 296
    return-void

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static runRemoveTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 149
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/TriggerManager$3;-><init>(Z)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 159
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$4;

    invoke-direct {v0, v1}, Lcom/sleepycat/je/dbi/TriggerManager$4;-><init>(Z)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 168
    return-void
.end method

.method public static runRenameTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/lang/String;)V
    .locals 2
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "newName"    # Ljava/lang/String;

    .line 197
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$6;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lcom/sleepycat/je/dbi/TriggerManager$6;-><init>(ZLjava/lang/String;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 210
    return-void
.end method

.method private static runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V
    .locals 5
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "invoker"    # Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;

    .line 332
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v0

    .line 334
    .local v0, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    if-nez v0, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/txn/Txn;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/txn/Txn;

    .line 339
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/Txn;->getTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 342
    .local v1, "triggerTransaction":Lcom/sleepycat/je/Transaction;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/trigger/Trigger;

    .line 343
    .local v3, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    move-object v4, v3

    .line 344
    .local v4, "dbt":Lcom/sleepycat/je/trigger/Trigger;
    invoke-virtual {p2, v1, v4}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;->run(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/trigger/Trigger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v3    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    .end local v4    # "dbt":Lcom/sleepycat/je/trigger/Trigger;
    goto :goto_1

    .line 349
    :cond_2
    nop

    .line 355
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;->invokeTransactionTrigger()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getTxn(Lcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/txn/Txn;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/txn/Txn;->noteTriggerDb(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 358
    :cond_3
    return-void

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v3

    .line 348
    .local v3, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-static {v3, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method

.method public static runTruncateTriggers(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 2
    .param p0, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p1, "newDb"    # Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 177
    new-instance v0, Lcom/sleepycat/je/dbi/TriggerManager$5;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/sleepycat/je/dbi/TriggerManager$5;-><init>(ZLcom/sleepycat/je/dbi/DatabaseImpl;)V

    invoke-static {p1, p0, v0}, Lcom/sleepycat/je/dbi/TriggerManager;->runTriggers(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/TriggerManager$TriggerInvoker;)V

    .line 188
    return-void
.end method
