.class public Ljdbm/recman/TransactionManager$BlockIoComparator;
.super Ljava/lang/Object;
.source "TransactionManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/recman/TransactionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockIoComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 389
    move-object v0, p1

    check-cast v0, Ljdbm/recman/BlockIo;

    .line 390
    .local v0, "block1":Ljdbm/recman/BlockIo;
    move-object v1, p2

    check-cast v1, Ljdbm/recman/BlockIo;

    .line 391
    .local v1, "block2":Ljdbm/recman/BlockIo;
    const/4 v2, 0x0

    .line 392
    .local v2, "result":I
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v3

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 393
    const/4 v2, 0x0

    .line 394
    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {v0}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v3

    invoke-virtual {v1}, Ljdbm/recman/BlockIo;->getBlockId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 396
    const/4 v2, -0x1

    .line 397
    goto :goto_0

    .line 399
    :cond_1
    const/4 v2, 0x1

    .line 401
    :goto_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 405
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
