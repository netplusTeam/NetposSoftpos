.class Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;
.super Ljava/lang/Object;
.source "RepNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/RepNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransientIds"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bits:Ljava/util/BitSet;

.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2683
    const-class v0, Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 2688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2689
    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->size:I

    .line 2690
    if-lez p1, :cond_0

    .line 2691
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->bits:Ljava/util/BitSet;

    .line 2692
    return-void

    .line 2690
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method declared-synchronized allocateId()I
    .locals 3

    monitor-enter p0

    .line 2708
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->bits:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 2709
    .local v0, "pos":I
    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->size:I

    if-ge v0, v1, :cond_0

    .line 2712
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->bits:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2713
    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    .line 2710
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No more secondary node IDs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2707
    .end local v0    # "pos":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized deallocateId(I)V
    .locals 4
    .param p1, "id"    # I

    monitor-enter p0

    .line 2722
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->size:I

    const v1, 0x7fffffff

    sub-int v0, v1, v0

    if-lt p1, v0, :cond_1

    .line 2726
    sub-int/2addr v1, p1

    .line 2727
    .local v1, "pos":I
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2731
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;->bits:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2732
    monitor-exit p0

    return-void

    .line 2728
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/node/RepNode$TransientIds;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary node ID is not currently allocated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2723
    .end local v1    # "pos":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal secondary node ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2721
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
