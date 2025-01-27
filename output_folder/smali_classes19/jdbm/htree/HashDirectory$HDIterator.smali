.class public Ljdbm/htree/HashDirectory$HDIterator;
.super Ljdbm/helper/FastIterator;
.source "HashDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljdbm/htree/HashDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HDIterator"
.end annotation


# instance fields
.field private _child:I

.field private _childStack:Ljava/util/ArrayList;

.field private _dir:Ljdbm/htree/HashDirectory;

.field private _dirStack:Ljava/util/ArrayList;

.field private _iter:Ljava/util/Iterator;

.field private _iterateKeys:Z

.field private final synthetic this$0:Ljdbm/htree/HashDirectory;


# direct methods
.method constructor <init>(Ljdbm/htree/HashDirectory;Z)V
    .locals 1
    .param p2, "iterateKeys"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Ljdbm/helper/FastIterator;-><init>()V

    iput-object p1, p0, Ljdbm/htree/HashDirectory$HDIterator;->this$0:Ljdbm/htree/HashDirectory;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljdbm/htree/HashDirectory$HDIterator;->_childStack:Ljava/util/ArrayList;

    .line 459
    iput-object p1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    .line 460
    const/4 p1, -0x1

    iput p1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    .line 461
    iput-boolean p2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iterateKeys:Z

    .line 463
    invoke-direct {p0}, Ljdbm/htree/HashDirectory$HDIterator;->prepareNext()V

    .line 464
    return-void
.end method

.method private prepareNext()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    const-wide/16 v0, 0x0

    .line 501
    .local v0, "child_recid":J
    :goto_0
    iget v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    .line 502
    const/16 v3, 0x100

    if-lt v2, v3, :cond_1

    .line 504
    iget-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    return-void

    .line 510
    :cond_0
    iget-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdbm/htree/HashDirectory;

    iput-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    .line 511
    iget-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_childStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    .line 512
    goto :goto_1

    .line 514
    :cond_1
    iget-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    invoke-static {v2}, Ljdbm/htree/HashDirectory;->access$000(Ljdbm/htree/HashDirectory;)[J

    move-result-object v2

    iget v3, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    aget-wide v0, v2, v3

    .line 515
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 517
    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    .line 521
    iget-object v2, p0, Ljdbm/htree/HashDirectory$HDIterator;->this$0:Ljdbm/htree/HashDirectory;

    invoke-static {v2}, Ljdbm/htree/HashDirectory;->access$100(Ljdbm/htree/HashDirectory;)Ljdbm/RecordManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljdbm/RecordManager;->fetch(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdbm/htree/HashNode;

    .line 524
    .local v2, "node":Ljdbm/htree/HashNode;
    instance-of v3, v2, Ljdbm/htree/HashDirectory;

    if-eqz v3, :cond_2

    .line 526
    iget-object v3, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dirStack:Ljava/util/ArrayList;

    iget-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    iget-object v3, p0, Ljdbm/htree/HashDirectory$HDIterator;->_childStack:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    iget v5, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    move-object v3, v2

    check-cast v3, Ljdbm/htree/HashDirectory;

    iput-object v3, p0, Ljdbm/htree/HashDirectory$HDIterator;->_dir:Ljdbm/htree/HashDirectory;

    .line 530
    const/4 v4, -0x1

    iput v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_child:I

    .line 533
    iget-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->this$0:Ljdbm/htree/HashDirectory;

    invoke-static {v4}, Ljdbm/htree/HashDirectory;->access$100(Ljdbm/htree/HashDirectory;)Ljdbm/RecordManager;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1}, Ljdbm/htree/HashDirectory;->setPersistenceContext(Ljdbm/RecordManager;J)V

    .line 534
    invoke-direct {p0}, Ljdbm/htree/HashDirectory$HDIterator;->prepareNext()V

    .line 535
    goto :goto_2

    .line 537
    :cond_2
    move-object v3, v2

    check-cast v3, Ljdbm/htree/HashBucket;

    .line 538
    .local v3, "bucket":Ljdbm/htree/HashBucket;
    iget-boolean v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iterateKeys:Z

    if-eqz v4, :cond_3

    .line 539
    invoke-virtual {v3}, Ljdbm/htree/HashBucket;->getKeys()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iput-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    .line 540
    goto :goto_2

    .line 541
    :cond_3
    invoke-virtual {v3}, Ljdbm/htree/HashBucket;->getValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iput-object v4, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    .line 544
    .end local v3    # "bucket":Ljdbm/htree/HashBucket;
    :goto_2
    return-void

    .line 518
    .end local v2    # "node":Ljdbm/htree/HashNode;
    :cond_4
    new-instance v2, Ljava/lang/Error;

    const-string v3, "child_recid cannot be 0"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_5
    goto/16 :goto_0
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "next":Ljava/lang/Object;
    iget-object v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 475
    goto :goto_0

    .line 477
    :cond_0
    :try_start_0
    invoke-direct {p0}, Ljdbm/htree/HashDirectory$HDIterator;->prepareNext()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    nop

    .line 481
    iget-object v1, p0, Ljdbm/htree/HashDirectory$HDIterator;->_iter:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p0}, Ljdbm/htree/HashDirectory$HDIterator;->next()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 485
    :cond_1
    :goto_0
    return-object v0

    .line 478
    :catch_0
    move-exception v1

    .line 479
    .local v1, "except":Ljava/io/IOException;
    new-instance v2, Ljdbm/helper/IterationException;

    invoke-direct {v2, v1}, Ljdbm/helper/IterationException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
