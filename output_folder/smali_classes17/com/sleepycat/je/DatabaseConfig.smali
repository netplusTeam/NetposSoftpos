.class public Lcom/sleepycat/je/DatabaseConfig;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/DatabaseConfig;


# instance fields
.field private allowCreate:Z

.field private btreeComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private btreeComparatorByClassName:Z

.field private cacheMode:Lcom/sleepycat/je/CacheMode;

.field private deferredWrite:Z

.field private duplicateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation
.end field

.field private duplicateComparatorByClassName:Z

.field private exclusiveCreate:Z

.field private keyPrefixing:Z

.field private nodeMaxEntries:I

.field private overrideBtreeComparator:Z

.field private overrideDuplicateComparator:Z

.field private overrideTriggers:Z

.field private readOnly:Z

.field private replicated:Z

.field private secAssociation:Lcom/sleepycat/je/SecondaryAssociation;

.field private sortedDuplicates:Z

.field private temporary:Z

.field private transactional:Z

.field private triggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;"
        }
    .end annotation
.end field

.field private useExistingConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/DatabaseConfig;->DEFAULT:Lcom/sleepycat/je/DatabaseConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->allowCreate:Z

    .line 105
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->exclusiveCreate:Z

    .line 106
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    .line 107
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    .line 108
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    .line 109
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->deferredWrite:Z

    .line 110
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->temporary:Z

    .line 111
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->keyPrefixing:Z

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->replicated:Z

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 116
    iput-object v1, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 117
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    .line 118
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    .line 119
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideBtreeComparator:Z

    .line 120
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideDuplicateComparator:Z

    .line 121
    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->useExistingConfig:Z

    .line 122
    iput-object v1, p0, Lcom/sleepycat/je/DatabaseConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 123
    iput-object v1, p0, Lcom/sleepycat/je/DatabaseConfig;->secAssociation:Lcom/sleepycat/je/SecondaryAssociation;

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->triggers:Ljava/util/List;

    .line 134
    return-void
.end method

.method static combineConfig(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 3
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "dbHandleConfig"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 1719
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseConfig;->cloneConfig()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    .line 1731
    .local v0, "showConfig":Lcom/sleepycat/je/DatabaseConfig;
    if-eqz p0, :cond_0

    .line 1733
    nop

    .line 1734
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 1735
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getBtreeComparatorByClass()Z

    move-result v2

    .line 1734
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparatorInternal(Ljava/util/Comparator;Z)V

    .line 1736
    nop

    .line 1737
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDuplicateComparator()Ljava/util/Comparator;

    move-result-object v1

    .line 1738
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getDuplicateComparatorByClass()Z

    move-result v2

    .line 1737
    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setDuplicateComparatorInternal(Ljava/util/Comparator;Z)V

    .line 1739
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getKeyPrefixing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1740
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getNodeMaxTreeEntries()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setNodeMaxEntries(I)Lcom/sleepycat/je/DatabaseConfig;

    .line 1741
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTriggers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTriggers(Ljava/util/List;)Lcom/sleepycat/je/DatabaseConfig;

    .line 1744
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTransactional()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1745
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDurableDeferredWrite()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setDeferredWrite(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1748
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isReplicated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1749
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getSortedDuplicates()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1750
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isTemporary()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 1753
    :cond_0
    return-object v0
.end method

.method private genDatabaseConfigMismatchMessage(ZZZZZZ)Ljava/lang/String;
    .locals 2
    .param p1, "txnMatch"    # Z
    .param p2, "roMatch"    # Z
    .param p3, "sdMatch"    # Z
    .param p4, "dwMatch"    # Z
    .param p5, "btCmpMatch"    # Z
    .param p6, "dtCmpMatch"    # Z

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The following DatabaseConfig parameters for the\ncached Database do not match the parameters for the\nrequested Database:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v0, "ret":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 1473
    const-string v1, " Transactional\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    :cond_0
    if-nez p2, :cond_1

    .line 1477
    const-string v1, " Read-Only\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    :cond_1
    if-nez p3, :cond_2

    .line 1481
    const-string v1, " Sorted Duplicates\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    :cond_2
    if-nez p4, :cond_3

    .line 1485
    const-string v1, " Deferred Write"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1488
    :cond_3
    if-nez p5, :cond_4

    .line 1489
    const-string v1, " Btree Comparator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    :cond_4
    if-nez p6, :cond_5

    .line 1493
    const-string v1, " Duplicate Comparator\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateComparator(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1535
    .local p1, "comparatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Comparator<[B>;>;"
    if-nez p1, :cond_0

    .line 1536
    const/4 v0, 0x0

    return-object v0

    .line 1539
    :cond_0
    const-class v0, Ljava/util/Comparator;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1548
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->instantiateComparator(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1549
    :catch_0
    move-exception v0

    .line 1550
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " comparator is not valid. Perhaps you have not implemented a zero-parameter constructor for the comparator or the comparator class cannot be found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1540
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1541
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is is not valid as a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " comparator because it does not  implement java.util.Comparator."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateComparator(Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/Comparator;
    .locals 4
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1510
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    if-nez p1, :cond_0

    .line 1511
    const/4 v0, 0x0

    return-object v0

    .line 1515
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->comparatorToBytes(Ljava/util/Comparator;ZLjava/lang/String;)[B
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    return-object p1

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " comparator is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method checkTriggers(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;)Z"
        }
    .end annotation

    .line 1672
    .local p1, "triggerList":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    nop

    .line 1673
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sleepycat/je/trigger/ReplicatedDatabaseTrigger;

    .line 1675
    .local v0, "replicatedTrigger":Z
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1677
    .local v1, "triggerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/trigger/Trigger;

    .line 1690
    .local v3, "trigger":Lcom/sleepycat/je/trigger/Trigger;
    invoke-interface {v3}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1694
    instance-of v4, v3, Lcom/sleepycat/je/trigger/ReplicatedDatabaseTrigger;

    if-ne v0, v4, :cond_0

    .line 1699
    .end local v3    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    goto :goto_0

    .line 1696
    .restart local v3    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting trigger types in list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1691
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate trigger name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1692
    invoke-interface {v3}, Lcom/sleepycat/je/trigger/Trigger;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1700
    .end local v3    # "trigger":Lcom/sleepycat/je/trigger/Trigger;
    :cond_2
    return v0
.end method

.method public clone()Lcom/sleepycat/je/DatabaseConfig;
    .locals 2

    .line 1389
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/DatabaseConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 96
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->clone()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    return-object v0
.end method

.method public cloneConfig()Lcom/sleepycat/je/DatabaseConfig;
    .locals 1

    .line 1380
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->clone()Lcom/sleepycat/je/DatabaseConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCreate()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->allowCreate:Z

    return v0
.end method

.method public getBtreeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 680
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getBtreeComparatorByClassName()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    return v0
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 1294
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    return-object v0
.end method

.method public getDeferredWrite()Z
    .locals 1

    .line 1193
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->deferredWrite:Z

    return v0
.end method

.method public getDuplicateComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[B>;"
        }
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getDuplicateComparatorByClassName()Z
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    return v0
.end method

.method public getExclusiveCreate()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->exclusiveCreate:Z

    return v0
.end method

.method public getKeyPrefixing()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->keyPrefixing:Z

    return v0
.end method

.method public getNodeMaxDupTreeEntries()I
    .locals 1

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public getNodeMaxEntries()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/sleepycat/je/DatabaseConfig;->nodeMaxEntries:I

    return v0
.end method

.method public getOverrideBtreeComparator()Z
    .locals 1

    .line 718
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideBtreeComparator:Z

    return v0
.end method

.method public getOverrideDuplicateComparator()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideDuplicateComparator:Z

    return v0
.end method

.method public getOverrideTriggers()Z
    .locals 1

    .line 1082
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideTriggers:Z

    return v0
.end method

.method public getReadOnly()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    return v0
.end method

.method public getReplicated()Z
    .locals 1

    .line 1332
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->replicated:Z

    return v0
.end method

.method public getSecondaryAssociation()Lcom/sleepycat/je/SecondaryAssociation;
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->secAssociation:Lcom/sleepycat/je/SecondaryAssociation;

    return-object v0
.end method

.method public getSortedDuplicates()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    return v0
.end method

.method public getTemporary()Z
    .locals 1

    .line 1135
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->temporary:Z

    return v0
.end method

.method public getTransactional()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    return v0
.end method

.method public getTriggers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;"
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->triggers:Ljava/util/List;

    return-object v0
.end method

.method public getUseExistingConfig()Z
    .locals 1

    .line 1249
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->useExistingConfig:Z

    return v0
.end method

.method persistentEquals(Lcom/sleepycat/je/DatabaseConfig;)Z
    .locals 3
    .param p1, "other"    # Lcom/sleepycat/je/DatabaseConfig;

    .line 1587
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    iget-boolean v1, p1, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 1588
    return v2

    .line 1591
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->temporary:Z

    iget-boolean v1, p1, Lcom/sleepycat/je/DatabaseConfig;->temporary:Z

    if-eq v0, v1, :cond_1

    .line 1592
    return v2

    .line 1595
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->replicated:Z

    iget-boolean v1, p1, Lcom/sleepycat/je/DatabaseConfig;->replicated:Z

    if-eq v0, v1, :cond_2

    .line 1596
    return v2

    .line 1599
    :cond_2
    iget v0, p0, Lcom/sleepycat/je/DatabaseConfig;->nodeMaxEntries:I

    iget v1, p1, Lcom/sleepycat/je/DatabaseConfig;->nodeMaxEntries:I

    if-eq v0, v1, :cond_3

    .line 1600
    return v2

    .line 1603
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    if-nez v0, :cond_4

    iget-object v1, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    if-nez v1, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    if-nez v1, :cond_6

    .line 1605
    :cond_5
    return v2

    .line 1608
    :cond_6
    if-eqz v0, :cond_7

    .line 1609
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 1610
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_7

    .line 1611
    return v2

    .line 1615
    :cond_7
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    if-nez v0, :cond_8

    iget-object v1, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    if-nez v1, :cond_9

    :cond_8
    if-eqz v0, :cond_a

    iget-object v1, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    if-nez v1, :cond_a

    .line 1619
    :cond_9
    return v2

    .line 1622
    :cond_a
    if-eqz v0, :cond_b

    .line 1623
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 1624
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_b

    .line 1625
    return v2

    .line 1629
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreateVoid(Z)V

    .line 149
    return-object p0
.end method

.method public setAllowCreateVoid(Z)V
    .locals 0
    .param p1, "allowCreate"    # Z

    .line 157
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->allowCreate:Z

    .line 158
    return-void
.end method

.method public setBtreeComparator(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;)",
            "Lcom/sleepycat/je/DatabaseConfig;"
        }
    .end annotation

    .line 659
    .local p1, "btreeComparatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Comparator<[B>;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparatorVoid(Ljava/lang/Class;)V

    .line 660
    return-object p0
.end method

.method public setBtreeComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/DatabaseConfig;"
        }
    .end annotation

    .line 556
    .local p1, "btreeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setBtreeComparatorVoid(Ljava/util/Comparator;)V

    .line 557
    return-object p0
.end method

.method setBtreeComparatorInternal(Ljava/util/Comparator;Z)V
    .locals 0
    .param p2, "byClassName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;Z)V"
        }
    .end annotation

    .line 1202
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 1203
    iput-boolean p2, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    .line 1204
    return-void
.end method

.method public setBtreeComparatorVoid(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;)V"
        }
    .end annotation

    .line 671
    .local p1, "btreeComparatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Comparator<[B>;>;"
    const-string v0, "Btree"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/DatabaseConfig;->validateComparator(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    .line 674
    return-void
.end method

.method public setBtreeComparatorVoid(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;)V"
        }
    .end annotation

    .line 567
    .local p1, "btreeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    nop

    .line 568
    const-string v0, "BtreeComparator"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/DatabaseConfig;->validateComparator(Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    .line 570
    return-void
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1270
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setCacheModeVoid(Lcom/sleepycat/je/CacheMode;)V

    .line 1271
    return-object p0
.end method

.method public setCacheModeVoid(Lcom/sleepycat/je/CacheMode;)V
    .locals 0
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 1279
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseConfig;->cacheMode:Lcom/sleepycat/je/CacheMode;

    .line 1280
    return-void
.end method

.method public setDeferredWrite(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "deferredWrite"    # Z

    .line 1175
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setDeferredWriteVoid(Z)V

    .line 1176
    return-object p0
.end method

.method public setDeferredWriteVoid(Z)V
    .locals 0
    .param p1, "deferredWrite"    # Z

    .line 1184
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->deferredWrite:Z

    .line 1185
    return-void
.end method

.method public setDuplicateComparator(Ljava/lang/Class;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;)",
            "Lcom/sleepycat/je/DatabaseConfig;"
        }
    .end annotation

    .line 921
    .local p1, "duplicateComparatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Comparator<[B>;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setDuplicateComparatorVoid(Ljava/lang/Class;)V

    .line 922
    return-object p0
.end method

.method public setDuplicateComparator(Ljava/util/Comparator;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;)",
            "Lcom/sleepycat/je/DatabaseConfig;"
        }
    .end annotation

    .line 810
    .local p1, "duplicateComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setDuplicateComparatorVoid(Ljava/util/Comparator;)V

    .line 811
    return-object p0
.end method

.method setDuplicateComparatorInternal(Ljava/util/Comparator;Z)V
    .locals 0
    .param p2, "byClassName"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;Z)V"
        }
    .end annotation

    .line 1212
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 1213
    iput-boolean p2, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    .line 1214
    return-void
.end method

.method public setDuplicateComparatorVoid(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Comparator<",
            "[B>;>;)V"
        }
    .end annotation

    .line 934
    .local p1, "duplicateComparatorClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Comparator<[B>;>;"
    nop

    .line 935
    const-string v0, "Duplicate"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/DatabaseConfig;->validateComparator(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    .line 937
    return-void
.end method

.method public setDuplicateComparatorVoid(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "[B>;)V"
        }
    .end annotation

    .line 823
    .local p1, "duplicateComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    nop

    .line 824
    const-string v0, "DuplicateComparator"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/DatabaseConfig;->validateComparator(Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    .line 826
    return-void
.end method

.method public setExclusiveCreate(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "exclusiveCreate"    # Z

    .line 190
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setExclusiveCreateVoid(Z)V

    .line 191
    return-object p0
.end method

.method public setExclusiveCreateVoid(Z)V
    .locals 0
    .param p1, "exclusiveCreate"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->exclusiveCreate:Z

    .line 200
    return-void
.end method

.method public setKeyPrefixing(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "keyPrefixing"    # Z

    .line 319
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixingVoid(Z)V

    .line 320
    return-object p0
.end method

.method public setKeyPrefixingVoid(Z)V
    .locals 2
    .param p1, "keyPrefixing"    # Z

    .line 328
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key prefixing is mandatory for databases with duplicates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->keyPrefixing:Z

    .line 333
    return-void
.end method

.method public setNodeMaxDupTreeEntries(I)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "nodeMaxDupTreeEntries"    # I

    .line 441
    return-object p0
.end method

.method public setNodeMaxDupTreeEntriesVoid(I)V
    .locals 0
    .param p1, "nodeMaxDupTreeEntries"    # I

    .line 449
    return-void
.end method

.method public setNodeMaxEntries(I)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "nodeMaxEntries"    # I

    .line 424
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setNodeMaxEntriesVoid(I)V

    .line 425
    return-object p0
.end method

.method public setNodeMaxEntriesVoid(I)V
    .locals 0
    .param p1, "nodeMaxEntries"    # I

    .line 433
    iput p1, p0, Lcom/sleepycat/je/DatabaseConfig;->nodeMaxEntries:I

    .line 434
    return-void
.end method

.method public setOverrideBtreeComparator(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "override"    # Z

    .line 702
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setOverrideBtreeComparatorVoid(Z)V

    .line 703
    return-object p0
.end method

.method public setOverrideBtreeComparatorVoid(Z)V
    .locals 0
    .param p1, "override"    # Z

    .line 711
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideBtreeComparator:Z

    .line 712
    return-void
.end method

.method public setOverrideDuplicateComparator(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "override"    # Z

    .line 968
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setOverrideDuplicateComparatorVoid(Z)V

    .line 969
    return-object p0
.end method

.method public setOverrideDuplicateComparatorVoid(Z)V
    .locals 0
    .param p1, "override"    # Z

    .line 977
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideDuplicateComparator:Z

    .line 978
    return-void
.end method

.method public setOverrideTriggers(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "override"    # Z

    .line 1063
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setOverrideTriggersVoid(Z)V

    .line 1064
    return-object p0
.end method

.method public setOverrideTriggersVoid(Z)V
    .locals 0
    .param p1, "override"    # Z

    .line 1072
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->overrideTriggers:Z

    .line 1073
    return-void
.end method

.method public setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "readOnly"    # Z

    .line 386
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnlyVoid(Z)V

    .line 387
    return-object p0
.end method

.method public setReadOnlyVoid(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 395
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    .line 396
    return-void
.end method

.method public setReplicated(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "replicated"    # Z

    .line 1310
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setReplicatedVoid(Z)V

    .line 1311
    return-object p0
.end method

.method public setReplicatedVoid(Z)V
    .locals 0
    .param p1, "replicated"    # Z

    .line 1319
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->replicated:Z

    .line 1320
    return-void
.end method

.method public setSecondaryAssociation(Lcom/sleepycat/je/SecondaryAssociation;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "association"    # Lcom/sleepycat/je/SecondaryAssociation;

    .line 1348
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setSecondaryAssociationVoid(Lcom/sleepycat/je/SecondaryAssociation;)V

    .line 1349
    return-object p0
.end method

.method public setSecondaryAssociationVoid(Lcom/sleepycat/je/SecondaryAssociation;)V
    .locals 0
    .param p1, "association"    # Lcom/sleepycat/je/SecondaryAssociation;

    .line 1357
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseConfig;->secAssociation:Lcom/sleepycat/je/SecondaryAssociation;

    .line 1358
    return-void
.end method

.method public setSortedDuplicates(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "sortedDuplicates"    # Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setSortedDuplicatesVoid(Z)V

    .line 253
    return-object p0
.end method

.method public setSortedDuplicatesVoid(Z)V
    .locals 1
    .param p1, "sortedDuplicates"    # Z

    .line 261
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    .line 262
    if-eqz p1, :cond_0

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/DatabaseConfig;->setKeyPrefixingVoid(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method public setTemporary(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "temporary"    # Z

    .line 1118
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setTemporaryVoid(Z)V

    .line 1119
    return-object p0
.end method

.method public setTemporaryVoid(Z)V
    .locals 0
    .param p1, "temporary"    # Z

    .line 1127
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->temporary:Z

    .line 1128
    return-void
.end method

.method public setTransactional(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "transactional"    # Z

    .line 351
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setTransactionalVoid(Z)V

    .line 352
    return-object p0
.end method

.method public setTransactionalVoid(Z)V
    .locals 0
    .param p1, "transactional"    # Z

    .line 360
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    .line 361
    return-void
.end method

.method public setTriggers(Ljava/util/List;)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;)",
            "Lcom/sleepycat/je/DatabaseConfig;"
        }
    .end annotation

    .line 1020
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setTriggersVoid(Ljava/util/List;)V

    .line 1021
    return-object p0
.end method

.method public setTriggersVoid(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/trigger/Trigger;",
            ">;)V"
        }
    .end annotation

    .line 1029
    .local p1, "triggers":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/trigger/Trigger;>;"
    iput-object p1, p0, Lcom/sleepycat/je/DatabaseConfig;->triggers:Ljava/util/List;

    .line 1031
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1035
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->checkTriggers(Ljava/util/List;)Z

    .line 1036
    return-void

    .line 1032
    :cond_1
    :goto_0
    return-void
.end method

.method public setUseExistingConfig(Z)Lcom/sleepycat/je/DatabaseConfig;
    .locals 0
    .param p1, "useExistingConfig"    # Z

    .line 1231
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DatabaseConfig;->setUseExistingConfigVoid(Z)V

    .line 1232
    return-object p0
.end method

.method public setUseExistingConfigVoid(Z)V
    .locals 0
    .param p1, "useExistingConfig"    # Z

    .line 1240
    iput-boolean p1, p0, Lcom/sleepycat/je/DatabaseConfig;->useExistingConfig:Z

    .line 1241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allowCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->allowCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexclusiveCreate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->exclusiveCreate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntransactional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsortedDuplicates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndeferredWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->deferredWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ntemporary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->temporary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nkeyPrefixing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->keyPrefixing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method validate(Lcom/sleepycat/je/DatabaseConfig;)V
    .locals 14
    .param p1, "config"    # Lcom/sleepycat/je/DatabaseConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1403
    if-nez p1, :cond_0

    .line 1404
    sget-object p1, Lcom/sleepycat/je/DatabaseConfig;->DEFAULT:Lcom/sleepycat/je/DatabaseConfig;

    .line 1407
    :cond_0
    iget-boolean v0, p1, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    iget-boolean v1, p0, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1408
    .local v0, "txnMatch":Z
    :goto_0
    iget-boolean v1, p1, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    iget-boolean v4, p0, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    if-ne v1, v4, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 1409
    .local v1, "roMatch":Z
    :goto_1
    iget-boolean v4, p1, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    iget-boolean v5, p0, Lcom/sleepycat/je/DatabaseConfig;->sortedDuplicates:Z

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    move v11, v4

    .line 1410
    .local v11, "sdMatch":Z
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sleepycat/je/DatabaseConfig;->deferredWrite:Z

    if-ne v4, v5, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    move v12, v4

    .line 1411
    .local v12, "dwMatch":Z
    const/4 v4, 0x1

    .line 1412
    .local v4, "btCmpMatch":Z
    iget-boolean v5, p1, Lcom/sleepycat/je/DatabaseConfig;->overrideBtreeComparator:Z

    if-eqz v5, :cond_a

    .line 1413
    iget-object v5, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    if-nez v5, :cond_6

    .line 1414
    iget-object v5, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    if-nez v5, :cond_5

    move v5, v2

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    move v4, v5

    move v13, v4

    goto :goto_6

    .line 1415
    :cond_6
    iget-boolean v6, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    iget-boolean v7, p0, Lcom/sleepycat/je/DatabaseConfig;->btreeComparatorByClassName:Z

    if-eq v6, v7, :cond_7

    .line 1417
    const/4 v4, 0x0

    move v13, v4

    goto :goto_6

    .line 1418
    :cond_7
    if-eqz v7, :cond_9

    .line 1419
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 1420
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v3

    :goto_5
    move v4, v5

    move v13, v4

    goto :goto_6

    .line 1422
    :cond_9
    nop

    .line 1424
    const-string v6, "BtreeComparator"

    invoke-static {v5, v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v5

    iget-object v7, p1, Lcom/sleepycat/je/DatabaseConfig;->btreeComparator:Ljava/util/Comparator;

    .line 1426
    invoke-static {v7, v6}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v6

    .line 1423
    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    move v13, v4

    goto :goto_6

    .line 1412
    :cond_a
    move v13, v4

    .line 1429
    .end local v4    # "btCmpMatch":Z
    .local v13, "btCmpMatch":Z
    :goto_6
    const/4 v4, 0x1

    .line 1430
    .local v4, "dtCmpMatch":Z
    iget-boolean v5, p1, Lcom/sleepycat/je/DatabaseConfig;->overrideDuplicateComparator:Z

    if-eqz v5, :cond_10

    .line 1431
    iget-object v5, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    if-nez v5, :cond_c

    .line 1432
    iget-object v5, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move v2, v3

    :goto_7
    move v4, v2

    goto :goto_9

    .line 1433
    :cond_c
    iget-boolean v6, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    iget-boolean v7, p0, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparatorByClassName:Z

    if-eq v6, v7, :cond_d

    .line 1435
    const/4 v4, 0x0

    move v2, v4

    goto :goto_9

    .line 1436
    :cond_d
    if-eqz v7, :cond_f

    .line 1437
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 1438
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_e

    goto :goto_8

    :cond_e
    move v2, v3

    :goto_8
    move v4, v2

    goto :goto_9

    .line 1440
    :cond_f
    nop

    .line 1442
    const-string v2, "DuplicateComparator"

    invoke-static {v5, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v3

    iget-object v5, p1, Lcom/sleepycat/je/DatabaseConfig;->duplicateComparator:Ljava/util/Comparator;

    .line 1444
    invoke-static {v5, v2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->objectToBytes(Ljava/lang/Object;Ljava/lang/String;)[B

    move-result-object v2

    .line 1441
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    move v2, v4

    goto :goto_9

    .line 1430
    :cond_10
    move v2, v4

    .line 1448
    .end local v4    # "dtCmpMatch":Z
    .local v2, "dtCmpMatch":Z
    :goto_9
    if-eqz v0, :cond_11

    if-eqz v1, :cond_11

    if-eqz v11, :cond_11

    if-eqz v12, :cond_11

    if-eqz v13, :cond_11

    if-eqz v2, :cond_11

    .line 1454
    return-void

    .line 1456
    :cond_11
    nop

    .line 1457
    move-object v4, p0

    move v5, v0

    move v6, v1

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/DatabaseConfig;->genDatabaseConfigMismatchMessage(ZZZZZZ)Ljava/lang/String;

    move-result-object v3

    .line 1459
    .local v3, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method validateForNewDb()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1569
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->readOnly:Z

    if-nez v0, :cond_2

    .line 1575
    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->transactional:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/DatabaseConfig;->deferredWrite:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1576
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deferredWrite mode is not supported for transactional databases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1580
    :cond_1
    :goto_0
    return-void

    .line 1570
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseConfig.setReadOnly() must be set to false when creating a Database"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method validateOnDbOpen(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "dbIsReplicated"    # Z

    .line 1639
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1640
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getDeferredWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1641
    :cond_1
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getTemporary()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseConfig;->getTransactional()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1642
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to open Database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and two ore more of the following exclusive properties are true: deferredWrite, temporary, transactional"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->triggers:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1650
    iget-object v0, p0, Lcom/sleepycat/je/DatabaseConfig;->triggers:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/DatabaseConfig;->checkTriggers(Ljava/util/List;)Z

    move-result v0

    .line 1651
    .local v0, "replicatedTriggers":Z
    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    .line 1652
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For a replicated Database, triggers must implement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/sleepycat/je/trigger/ReplicatedDatabaseTrigger;

    .line 1654
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1657
    .end local v0    # "replicatedTriggers":Z
    :cond_5
    :goto_1
    return-void
.end method
