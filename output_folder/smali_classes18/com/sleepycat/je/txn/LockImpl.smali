.class public Lcom/sleepycat/je/txn/LockImpl;
.super Ljava/lang/Object;
.source "LockImpl.java"

# interfaces
.implements Lcom/sleepycat/je/txn/Lock;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final REMOVE_LOCKINFO_OVERHEAD:I


# instance fields
.field private firstOwner:Lcom/sleepycat/je/txn/LockInfo;

.field private firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

.field private ownerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private waiterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 33
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    rsub-int/lit8 v0, v0, 0x0

    sput v0, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/txn/LockImpl;)V
    .locals 1
    .param p1, "lock"    # Lcom/sleepycat/je/txn/LockImpl;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    .line 72
    iget-object v0, p1, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    .line 73
    iget-object v0, p1, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    .line 74
    iget-object v0, p1, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/txn/LockInfo;)V
    .locals 0
    .param p1, "firstOwner"    # Lcom/sleepycat/je/txn/LockInfo;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    .line 80
    return-void
.end method

.method private addOwner(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 2
    .param p1, "newLock"    # Lcom/sleepycat/je/txn/LockInfo;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 168
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    :goto_0
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    int-to-long v0, v0

    .line 177
    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 178
    return-void
.end method

.method private addWaiterToEndOfList(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 2
    .param p1, "waiter"    # Lcom/sleepycat/je/txn/LockInfo;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 92
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    .line 97
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :goto_0
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    int-to-long v0, v0

    .line 103
    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 104
    return-void
.end method

.method private addWaiterToHeadOfList(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 3
    .param p1, "waiter"    # Lcom/sleepycat/je/txn/LockInfo;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 113
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 120
    :cond_1
    iput-object p1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    .line 121
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->LOCKINFO_OVERHEAD:I

    int-to-long v0, v0

    .line 122
    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 123
    return-void
.end method

.method private flushOwner(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockInfo;
    .locals 4
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "flushedInfo":Lcom/sleepycat/je/txn/LockInfo;
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    .line 237
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 239
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/LockInfo;

    .line 242
    .local v2, "o":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 244
    move-object v0, v2

    .line 246
    .end local v2    # "o":Lcom/sleepycat/je/txn/LockInfo;
    :cond_1
    goto :goto_0

    .line 248
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 249
    sget v1, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 252
    :cond_3
    return-object v0
.end method

.method private flushOwner(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)Z
    .locals 3
    .param p1, "oldOwner"    # Lcom/sleepycat/je/txn/LockInfo;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "removed":Z
    if-eqz p1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-ne v1, p1, :cond_0

    .line 214
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    .line 215
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 221
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 222
    sget v1, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 224
    :cond_2
    return v0
.end method

.method private getOwnerLockInfo(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockInfo;
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 260
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    return-object v0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 265
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 266
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/LockInfo;

    .line 268
    .local v1, "o":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 269
    return-object v1

    .line 271
    .end local v1    # "o":Lcom/sleepycat/je/txn/LockInfo;
    :cond_1
    goto :goto_0

    .line 274
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private rangeInsertConflict(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 5
    .param p1, "waiterLocker"    # Lcom/sleepycat/je/txn/Locker;

    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, "owner":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v1, 0x0

    .line 717
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 718
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 721
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v2, :cond_1

    .line 722
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_0

    .line 723
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 724
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/je/txn/LockInfo;

    .line 727
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 728
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    .line 729
    .local v2, "ownerLocker":Lcom/sleepycat/je/txn/Locker;
    if-eq v2, p1, :cond_3

    .line 730
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/txn/Locker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 731
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/txn/LockType;->RANGE_INSERT:Lcom/sleepycat/je/txn/LockType;

    if-ne v3, v4, :cond_3

    .line 732
    const/4 v3, 0x1

    return v3

    .line 736
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 737
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_1

    .line 739
    :cond_4
    const/4 v0, 0x0

    .line 741
    .end local v2    # "ownerLocker":Lcom/sleepycat/je/txn/Locker;
    :goto_1
    goto :goto_0

    .line 743
    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private tryLock(Lcom/sleepycat/je/txn/LockInfo;ZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockGrantType;
    .locals 16
    .param p1, "newLock"    # Lcom/sleepycat/je/txn/LockInfo;
    .param p2, "firstWaiterInLine"    # Z
    .param p3, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p4, "lockTableIndex"    # I

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/txn/LockImpl;->nOwners()I

    move-result v4

    if-nez v4, :cond_0

    .line 603
    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/txn/LockImpl;->addOwner(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    .line 604
    sget-object v4, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v4

    .line 607
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v4

    .line 608
    .local v4, "locker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v5

    .line 609
    .local v5, "requestType":Lcom/sleepycat/je/txn/LockType;
    const/4 v6, 0x0

    .line 610
    .local v6, "upgrade":Lcom/sleepycat/je/txn/LockUpgrade;
    const/4 v7, 0x0

    .line 611
    .local v7, "lockToUpgrade":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v8, 0x0

    .line 612
    .local v8, "ownerExists":Z
    const/4 v9, 0x0

    .line 619
    .local v9, "ownerConflicts":Z
    const/4 v10, 0x0

    .line 620
    .local v10, "owner":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v11, 0x0

    .line 622
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v12, v0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v12, :cond_1

    .line 623
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 626
    :cond_1
    iget-object v12, v0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v12, :cond_2

    .line 627
    iget-object v10, v0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_0

    .line 628
    :cond_2
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 629
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v10, v12

    check-cast v10, Lcom/sleepycat/je/txn/LockInfo;

    .line 632
    :cond_3
    :goto_0
    if-eqz v10, :cond_b

    .line 633
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v12

    .line 634
    .local v12, "ownerLocker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v10}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v13

    .line 635
    .local v13, "ownerType":Lcom/sleepycat/je/txn/LockType;
    if-ne v4, v12, :cond_6

    .line 643
    if-nez v6, :cond_5

    .line 644
    invoke-virtual {v13, v5}, Lcom/sleepycat/je/txn/LockType;->getUpgrade(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockUpgrade;

    move-result-object v6

    .line 645
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/LockUpgrade;->getUpgrade()Lcom/sleepycat/je/txn/LockType;

    move-result-object v14

    if-nez v14, :cond_4

    .line 646
    sget-object v14, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v14

    .line 648
    :cond_4
    move-object v7, v10

    goto :goto_1

    .line 643
    :cond_5
    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 658
    :cond_6
    invoke-virtual {v4, v12}, Lcom/sleepycat/je/txn/Locker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 659
    invoke-virtual {v12, v4}, Lcom/sleepycat/je/txn/Locker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 660
    invoke-virtual {v13, v5}, Lcom/sleepycat/je/txn/LockType;->getConflict(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockConflict;

    move-result-object v14

    .line 661
    .local v14, "conflict":Lcom/sleepycat/je/txn/LockConflict;
    invoke-virtual {v14}, Lcom/sleepycat/je/txn/LockConflict;->getRestart()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 662
    sget-object v15, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v15

    .line 664
    :cond_7
    invoke-virtual {v14}, Lcom/sleepycat/je/txn/LockConflict;->getAllowed()Z

    move-result v15

    if-nez v15, :cond_8

    .line 665
    const/4 v9, 0x1

    .line 667
    :cond_8
    const/4 v8, 0x1

    .line 673
    .end local v14    # "conflict":Lcom/sleepycat/je/txn/LockConflict;
    :cond_9
    :goto_1
    if-eqz v11, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 674
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v10, v14

    check-cast v10, Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_2

    .line 676
    :cond_a
    const/4 v10, 0x0

    .line 678
    .end local v12    # "ownerLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v13    # "ownerType":Lcom/sleepycat/je/txn/LockType;
    :goto_2
    goto :goto_0

    .line 681
    :cond_b
    if-eqz v6, :cond_f

    .line 683
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/LockUpgrade;->getUpgrade()Lcom/sleepycat/je/txn/LockType;

    move-result-object v12

    .line 684
    .local v12, "upgradeType":Lcom/sleepycat/je/txn/LockType;
    if-eqz v12, :cond_e

    .line 685
    if-nez v9, :cond_d

    .line 687
    invoke-virtual {v7, v12}, Lcom/sleepycat/je/txn/LockInfo;->setLockType(Lcom/sleepycat/je/txn/LockType;)V

    .line 688
    invoke-virtual {v6}, Lcom/sleepycat/je/txn/LockUpgrade;->getPromotion()Z

    move-result v13

    if-eqz v13, :cond_c

    sget-object v13, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    goto :goto_3

    :cond_c
    sget-object v13, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    :goto_3
    return-object v13

    .line 692
    :cond_d
    sget-object v13, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v13

    .line 684
    :cond_e
    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 696
    .end local v12    # "upgradeType":Lcom/sleepycat/je/txn/LockType;
    :cond_f
    if-nez v9, :cond_11

    if-eqz v8, :cond_10

    if-eqz p2, :cond_11

    .line 698
    :cond_10
    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/txn/LockImpl;->addOwner(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    .line 699
    sget-object v12, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v12

    .line 702
    :cond_11
    sget-object v12, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    return-object v12
.end method

.method private validateRequest(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 6
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 800
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    const-string v1, " is already on waiters list."

    const-string v2, "locker "

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 807
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 808
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 809
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 810
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 811
    .local v3, "o":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v4

    if-eq v4, p1, :cond_2

    .line 815
    .end local v3    # "o":Lcom/sleepycat/je/txn/LockInfo;
    goto :goto_1

    .line 812
    .restart local v3    # "o":Lcom/sleepycat/je/txn/LockInfo;
    :cond_2
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 817
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    .end local v3    # "o":Lcom/sleepycat/je/txn/LockInfo;
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public demote(Lcom/sleepycat/je/txn/Locker;)V
    .locals 3
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 750
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockImpl;->getOwnerLockInfo(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v0

    .line 751
    .local v0, "owner":Lcom/sleepycat/je/txn/LockInfo;
    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v1

    .line 753
    .local v1, "type":Lcom/sleepycat/je/txn/LockType;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    sget-object v2, Lcom/sleepycat/je/txn/LockType;->RANGE_WRITE:Lcom/sleepycat/je/txn/LockType;

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/sleepycat/je/txn/LockType;->RANGE_READ:Lcom/sleepycat/je/txn/LockType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sleepycat/je/txn/LockType;->READ:Lcom/sleepycat/je/txn/LockType;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/txn/LockInfo;->setLockType(Lcom/sleepycat/je/txn/LockType;)V

    .line 758
    .end local v1    # "type":Lcom/sleepycat/je/txn/LockType;
    :cond_1
    return-void
.end method

.method public flushWaiter(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 4
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    .line 149
    sget v0, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v0, v0

    .line 150
    invoke-virtual {p2, v0, v1, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/LockInfo;

    .line 155
    .local v1, "info":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 157
    sget v2, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v2, v2

    .line 158
    invoke-virtual {p2, v2, v3, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 159
    return-void

    .line 161
    .end local v1    # "info":Lcom/sleepycat/je/txn/LockInfo;
    :cond_1
    goto :goto_0

    .line 163
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public getOwnedLockType(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockType;
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 296
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockImpl;->getOwnerLockInfo(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v0

    .line 297
    .local v0, "o":Lcom/sleepycat/je/txn/LockInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getOwnersClone(Z)Ljava/util/Set;
    .locals 4
    .param p1, "cloneLockInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 188
    if-eqz p1, :cond_1

    .line 189
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v0, "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/LockInfo;

    .line 191
    .local v2, "owner":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockInfo;->clone()Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v2    # "owner":Lcom/sleepycat/je/txn/LockInfo;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 194
    .end local v0    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v0    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    goto :goto_1

    .line 197
    .end local v0    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 199
    .restart local v0    # "owners":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v1, :cond_4

    .line 200
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockInfo;->clone()Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v1

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_4
    return-object v0
.end method

.method public getWaitersListClone()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/txn/LockInfo;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "dumpWaiters":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    :cond_1
    return-object v0
.end method

.method public getWriteOwnerLocker()Lcom/sleepycat/je/txn/Locker;
    .locals 3

    .line 766
    const/4 v0, 0x0

    .line 767
    .local v0, "owner":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v1, 0x0

    .line 769
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 770
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v2, :cond_1

    .line 774
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_0

    .line 775
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 776
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/je/txn/LockInfo;

    .line 779
    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 781
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 782
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    return-object v2

    .line 786
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 787
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_0

    .line 789
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 793
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method public isOwnedWriteLock(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 291
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockImpl;->getOwnerLockInfo(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v0

    .line 292
    .local v0, "o":Lcom/sleepycat/je/txn/LockInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockType;->isWriteLock()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isOwner(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)Z
    .locals 2
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "lockType"    # Lcom/sleepycat/je/txn/LockType;

    .line 282
    invoke-direct {p0, p1}, Lcom/sleepycat/je/txn/LockImpl;->getOwnerLockInfo(Lcom/sleepycat/je/txn/Locker;)Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v0

    .line 283
    .local v0, "o":Lcom/sleepycat/je/txn/LockInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isThin()Z
    .locals 1

    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public isWaiter(Lcom/sleepycat/je/txn/Locker;)Z
    .locals 4
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;

    .line 307
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 309
    return v1

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 314
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 315
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/txn/LockInfo;

    .line 317
    .local v2, "info":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 318
    return v1

    .line 320
    .end local v2    # "info":Lcom/sleepycat/je/txn/LockInfo;
    :cond_1
    goto :goto_0

    .line 322
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public lock(Lcom/sleepycat/je/txn/LockType;Lcom/sleepycat/je/txn/Locker;ZZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockAttemptResult;
    .locals 9
    .param p1, "requestType"    # Lcom/sleepycat/je/txn/LockType;
    .param p2, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p3, "nonBlockingRequest"    # Z
    .param p4, "jumpAheadOfWaiters"    # Z
    .param p5, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p6, "lockTableIndex"    # I

    .line 360
    invoke-direct {p0, p2}, Lcom/sleepycat/je/txn/LockImpl;->validateRequest(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 363
    new-instance v0, Lcom/sleepycat/je/txn/LockInfo;

    invoke-direct {v0, p2, p1}, Lcom/sleepycat/je/txn/LockInfo;-><init>(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/txn/LockType;)V

    .line 364
    .local v0, "newLock":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockImpl;->nWaiters()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v0, v2, p5, p6}, Lcom/sleepycat/je/txn/LockImpl;->tryLock(Lcom/sleepycat/je/txn/LockInfo;ZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v2

    .line 369
    .local v2, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v2, v3, :cond_e

    .line 379
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/txn/LockType;->getCausesRestart()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v2, v3, :cond_8

    .line 381
    const/4 v3, 0x0

    .line 382
    .local v3, "waiter":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v4, 0x0

    .line 384
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    iget-object v5, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 385
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 388
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v5, :cond_4

    .line 389
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_2

    .line 390
    :cond_4
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 391
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 394
    :cond_5
    :goto_2
    if-eqz v3, :cond_8

    .line 400
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v5

    .line 401
    .local v5, "waiterLocker":Lcom/sleepycat/je/txn/Locker;
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v6

    .line 402
    .local v6, "waiterType":Lcom/sleepycat/je/txn/LockType;
    sget-object v7, Lcom/sleepycat/je/txn/LockType;->RESTART:Lcom/sleepycat/je/txn/LockType;

    if-eq v6, v7, :cond_6

    if-eq p2, v5, :cond_6

    .line 404
    invoke-virtual {p2, v5}, Lcom/sleepycat/je/txn/Locker;->sharesLocksWith(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 405
    nop

    .line 406
    invoke-virtual {v6, p1}, Lcom/sleepycat/je/txn/LockType;->getConflict(Lcom/sleepycat/je/txn/LockType;)Lcom/sleepycat/je/txn/LockConflict;

    move-result-object v7

    .line 407
    .local v7, "conflict":Lcom/sleepycat/je/txn/LockConflict;
    invoke-virtual {v7}, Lcom/sleepycat/je/txn/LockConflict;->getRestart()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 408
    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    .line 409
    goto :goto_4

    .line 414
    .end local v7    # "conflict":Lcom/sleepycat/je/txn/LockConflict;
    :cond_6
    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 415
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_3

    .line 417
    :cond_7
    const/4 v3, 0x0

    .line 419
    .end local v5    # "waiterLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v6    # "waiterType":Lcom/sleepycat/je/txn/LockType;
    :goto_3
    goto :goto_2

    .line 423
    .end local v3    # "waiter":Lcom/sleepycat/je/txn/LockInfo;
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_8
    :goto_4
    if-eqz p3, :cond_9

    .line 424
    sget-object v2, Lcom/sleepycat/je/txn/LockGrantType;->DENIED:Lcom/sleepycat/je/txn/LockGrantType;

    goto :goto_6

    .line 426
    :cond_9
    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v2, v3, :cond_a

    .line 432
    invoke-direct {p0, v0, p5, p6}, Lcom/sleepycat/je/txn/LockImpl;->addWaiterToHeadOfList(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    goto :goto_6

    .line 434
    :cond_a
    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v2, v3, :cond_c

    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v2, v3, :cond_b

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 444
    :cond_c
    :goto_5
    sget-object v3, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v2, v3, :cond_d

    .line 445
    sget-object v3, Lcom/sleepycat/je/txn/LockType;->RESTART:Lcom/sleepycat/je/txn/LockType;

    invoke-virtual {v0, v3}, Lcom/sleepycat/je/txn/LockInfo;->setLockType(Lcom/sleepycat/je/txn/LockType;)V

    .line 448
    :cond_d
    invoke-direct {p0, v0, p5, p6}, Lcom/sleepycat/je/txn/LockImpl;->addWaiterToEndOfList(Lcom/sleepycat/je/txn/LockInfo;Lcom/sleepycat/je/dbi/MemoryBudget;I)V

    .line 454
    :cond_e
    :goto_6
    new-instance v3, Lcom/sleepycat/je/txn/LockAttemptResult;

    invoke-direct {v3, p0, v2, v1}, Lcom/sleepycat/je/txn/LockAttemptResult;-><init>(Lcom/sleepycat/je/txn/Lock;Lcom/sleepycat/je/txn/LockGrantType;Z)V

    return-object v3

    .line 360
    .end local v0    # "newLock":Lcom/sleepycat/je/txn/LockInfo;
    .end local v2    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :cond_f
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public nOwners()I
    .locals 2

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v1, :cond_0

    .line 339
    add-int/lit8 v0, v0, 0x1

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 343
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_1
    return v0
.end method

.method public nWaiters()I
    .locals 2

    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "count":I
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v1, :cond_0

    .line 328
    add-int/lit8 v0, v0, 0x1

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 331
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_1
    return v0
.end method

.method public release(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)Ljava/util/Set;
    .locals 11
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/txn/Locker;",
            "Lcom/sleepycat/je/dbi/MemoryBudget;",
            "I)",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/txn/Locker;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/txn/LockImpl;->flushOwner(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockInfo;

    move-result-object v0

    .line 469
    .local v0, "removedLock":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 471
    return-object v1

    .line 474
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    .line 476
    .local v2, "lockersToNotify":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/txn/Locker;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockImpl;->nWaiters()I

    move-result v3

    if-nez v3, :cond_1

    .line 478
    return-object v2

    .line 485
    :cond_1
    const/4 v3, 0x0

    .line 486
    .local v3, "waiter":Lcom/sleepycat/je/txn/LockInfo;
    const/4 v4, 0x0

    .line 487
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    const/4 v5, 0x0

    .line 489
    .local v5, "isFirstWaiter":Z
    iget-object v6, p0, Lcom/sleepycat/je/txn/LockImpl;->waiterList:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 490
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 493
    :cond_2
    iget-object v6, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v6, :cond_3

    .line 494
    iget-object v3, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    .line 495
    const/4 v5, 0x1

    goto :goto_0

    .line 496
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 497
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 500
    :cond_4
    :goto_0
    if-eqz v3, :cond_d

    .line 502
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLockType()Lcom/sleepycat/je/txn/LockType;

    move-result-object v6

    .line 503
    .local v6, "waiterType":Lcom/sleepycat/je/txn/LockType;
    invoke-virtual {v3}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v7

    .line 505
    .local v7, "waiterLocker":Lcom/sleepycat/je/txn/Locker;
    sget-object v8, Lcom/sleepycat/je/txn/LockType;->RESTART:Lcom/sleepycat/je/txn/LockType;

    if-ne v6, v8, :cond_6

    .line 507
    invoke-direct {p0, v7}, Lcom/sleepycat/je/txn/LockImpl;->rangeInsertConflict(Lcom/sleepycat/je/txn/Locker;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    goto :goto_1

    :cond_5
    sget-object v8, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    .local v8, "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :goto_1
    goto :goto_2

    .line 511
    .end local v8    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :cond_6
    const/4 v8, 0x1

    invoke-direct {p0, v3, v8, p2, p3}, Lcom/sleepycat/je/txn/LockImpl;->tryLock(Lcom/sleepycat/je/txn/LockInfo;ZLcom/sleepycat/je/dbi/MemoryBudget;I)Lcom/sleepycat/je/txn/LockGrantType;

    move-result-object v8

    .line 514
    .restart local v8    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :goto_2
    sget-object v9, Lcom/sleepycat/je/txn/LockGrantType;->NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v8, v9, :cond_9

    sget-object v9, Lcom/sleepycat/je/txn/LockGrantType;->EXISTING:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v8, v9, :cond_9

    sget-object v9, Lcom/sleepycat/je/txn/LockGrantType;->PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v8, v9, :cond_7

    goto :goto_3

    .line 530
    :cond_7
    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_NEW:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v8, v1, :cond_d

    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_PROMOTION:Lcom/sleepycat/je/txn/LockGrantType;

    if-eq v8, v1, :cond_d

    sget-object v1, Lcom/sleepycat/je/txn/LockGrantType;->WAIT_RESTART:Lcom/sleepycat/je/txn/LockGrantType;

    if-ne v8, v1, :cond_8

    goto :goto_6

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 518
    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    .line 519
    iput-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstWaiter:Lcom/sleepycat/je/txn/LockInfo;

    goto :goto_4

    .line 521
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 523
    :goto_4
    sget-object v9, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v2, v9, :cond_b

    .line 524
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move-object v2, v9

    .line 526
    :cond_b
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    sget v9, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v9, v9

    .line 528
    invoke-virtual {p2, v9, v10, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 538
    if-eqz v4, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 539
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v3, v9

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 540
    const/4 v5, 0x0

    goto :goto_5

    .line 542
    :cond_c
    const/4 v3, 0x0

    .line 544
    .end local v6    # "waiterType":Lcom/sleepycat/je/txn/LockType;
    .end local v7    # "waiterLocker":Lcom/sleepycat/je/txn/Locker;
    .end local v8    # "grant":Lcom/sleepycat/je/txn/LockGrantType;
    :goto_5
    goto :goto_0

    .line 545
    :cond_d
    :goto_6
    return-object v2
.end method

.method public stealLock(Lcom/sleepycat/je/txn/Locker;Lcom/sleepycat/je/dbi/MemoryBudget;I)V
    .locals 5
    .param p1, "locker"    # Lcom/sleepycat/je/txn/Locker;
    .param p2, "mb"    # Lcom/sleepycat/je/dbi/MemoryBudget;
    .param p3, "lockTableIndex"    # I

    .line 552
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v0

    .line 554
    .local v0, "thisLocker":Lcom/sleepycat/je/txn/Locker;
    if-eq v0, p1, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->getPreemptable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v0}, Lcom/sleepycat/je/txn/Locker;->setPreempted()V

    .line 557
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    .line 558
    sget v1, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v1, v1

    invoke-virtual {p2, v1, v2, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 563
    .end local v0    # "thisLocker":Lcom/sleepycat/je/txn/Locker;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 564
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 565
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/txn/LockInfo;

    .line 567
    .local v1, "lockInfo":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v1}, Lcom/sleepycat/je/txn/LockInfo;->getLocker()Lcom/sleepycat/je/txn/Locker;

    move-result-object v2

    .line 568
    .local v2, "thisLocker":Lcom/sleepycat/je/txn/Locker;
    if-eq v2, p1, :cond_1

    .line 569
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->getPreemptable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 570
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Locker;->setPreempted()V

    .line 571
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 572
    sget v3, Lcom/sleepycat/je/txn/LockImpl;->REMOVE_LOCKINFO_OVERHEAD:I

    int-to-long v3, v3

    invoke-virtual {p2, v3, v4, p3}, Lcom/sleepycat/je/dbi/MemoryBudget;->updateLockMemoryUsage(JI)V

    .line 575
    .end local v1    # "lockInfo":Lcom/sleepycat/je/txn/LockInfo;
    .end local v2    # "thisLocker":Lcom/sleepycat/je/txn/Locker;
    :cond_1
    goto :goto_0

    .line 577
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " LockAddr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, " Owners:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockImpl;->nOwners()I

    move-result v1

    const-string v2, " (none)"

    if-nez v1, :cond_0

    .line 833
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->firstOwner:Lcom/sleepycat/je/txn/LockInfo;

    if-eqz v1, :cond_1

    .line 836
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 839
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/txn/LockImpl;->ownerSet:Ljava/util/Set;

    if-eqz v1, :cond_2

    .line 840
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 841
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 842
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/txn/LockInfo;

    .line 843
    .local v3, "info":Lcom/sleepycat/je/txn/LockInfo;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 844
    .end local v3    # "info":Lcom/sleepycat/je/txn/LockInfo;
    goto :goto_0

    .line 848
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/txn/LockInfo;>;"
    :cond_2
    :goto_1
    const-string v1, " Waiters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockImpl;->nWaiters()I

    move-result v1

    if-nez v1, :cond_3

    .line 850
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 852
    :cond_3
    invoke-virtual {p0}, Lcom/sleepycat/je/txn/LockImpl;->getWaitersListClone()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 854
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
