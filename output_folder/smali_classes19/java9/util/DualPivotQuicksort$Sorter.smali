.class final Ljava9/util/DualPivotQuicksort$Sorter;
.super Ljava9/util/concurrent/CountedCompleter;
.source "DualPivotQuicksort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/DualPivotQuicksort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava9/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133ef52L


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Ljava/lang/Object;

.field final depth:I

.field final low:I

.field final offset:I

.field final size:I


# direct methods
.method constructor <init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V
    .locals 0
    .param p2, "a"    # Ljava/lang/Object;
    .param p3, "b"    # Ljava/lang/Object;
    .param p4, "low"    # I
    .param p5, "size"    # I
    .param p6, "offset"    # I
    .param p7, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "IIII)V"
        }
    .end annotation

    .line 4006
    .local p1, "parent":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/CountedCompleter;-><init>(Ljava9/util/concurrent/CountedCompleter;)V

    .line 4007
    iput-object p2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4008
    iput-object p3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    .line 4009
    iput p4, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    .line 4010
    iput p5, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    .line 4011
    iput p6, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    .line 4012
    iput p7, p0, Ljava9/util/DualPivotQuicksort$Sorter;->depth:I

    .line 4013
    return-void
.end method


# virtual methods
.method public final compute()V
    .locals 10

    .line 4017
    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->depth:I

    if-gez v0, :cond_0

    .line 4018
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava9/util/DualPivotQuicksort$Sorter;->setPendingCount(I)V

    .line 4019
    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    shr-int/lit8 v8, v0, 0x1

    .line 4020
    .local v8, "half":I
    new-instance v9, Ljava9/util/DualPivotQuicksort$Sorter;

    iget-object v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v4, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v6, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, v9

    move-object v1, p0

    move v5, v8

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v9}, Ljava9/util/DualPivotQuicksort$Sorter;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 4021
    new-instance v9, Ljava9/util/DualPivotQuicksort$Sorter;

    iget-object v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget-object v3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    add-int v4, v0, v8

    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    sub-int v5, v0, v8

    iget v6, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->depth:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v9}, Ljava9/util/DualPivotQuicksort$Sorter;->compute()V

    .line 4022
    .end local v8    # "half":I
    goto :goto_0

    .line 4023
    :cond_0
    iget-object v1, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    instance-of v2, v1, [I

    if-eqz v2, :cond_1

    .line 4024
    check-cast v1, [I

    check-cast v1, [I

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[IIII)V

    goto :goto_0

    .line 4025
    :cond_1
    instance-of v2, v1, [J

    if-eqz v2, :cond_2

    .line 4026
    check-cast v1, [J

    check-cast v1, [J

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[JIII)V

    goto :goto_0

    .line 4027
    :cond_2
    instance-of v2, v1, [F

    if-eqz v2, :cond_3

    .line 4028
    check-cast v1, [F

    check-cast v1, [F

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[FIII)V

    goto :goto_0

    .line 4029
    :cond_3
    instance-of v2, v1, [D

    if-eqz v2, :cond_4

    .line 4030
    check-cast v1, [D

    check-cast v1, [D

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v3, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v3, v2

    invoke-static {p0, v1, v0, v2, v3}, Ljava9/util/DualPivotQuicksort;->sort(Ljava9/util/DualPivotQuicksort$Sorter;[DIII)V

    .line 4036
    :goto_0
    invoke-virtual {p0}, Ljava9/util/DualPivotQuicksort$Sorter;->tryComplete()V

    .line 4037
    return-void

    .line 4032
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4033
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method forkSorter(III)V
    .locals 10
    .param p1, "depth"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .line 4059
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava9/util/DualPivotQuicksort$Sorter;->addToPendingCount(I)V

    .line 4060
    iget-object v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    .line 4061
    .local v0, "a":Ljava/lang/Object;
    new-instance v9, Ljava9/util/DualPivotQuicksort$Sorter;

    iget-object v4, p0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    sub-int v6, p3, p2

    iget v7, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move v5, p2

    move v8, p1

    invoke-direct/range {v1 .. v8}, Ljava9/util/DualPivotQuicksort$Sorter;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    invoke-virtual {v9}, Ljava9/util/DualPivotQuicksort$Sorter;->fork()Ljava9/util/concurrent/ForkJoinTask;

    .line 4062
    return-void
.end method

.method public final onCompletion(Ljava9/util/concurrent/CountedCompleter;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;)V"
        }
    .end annotation

    .line 4041
    .local p1, "caller":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    iget v0, p0, Ljava9/util/DualPivotQuicksort$Sorter;->depth:I

    if-gez v0, :cond_6

    .line 4042
    iget v1, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 4043
    .local v1, "mi":I
    and-int/2addr v0, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v0, v3

    .line 4045
    .local v0, "src":Z
    new-instance v12, Ljava9/util/DualPivotQuicksort$Merger;

    const/4 v3, 0x0

    iget-object v4, p0, Ljava9/util/DualPivotQuicksort$Sorter;->a:Ljava/lang/Object;

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v5, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v2, v5

    :goto_1
    move v5, v2

    iget-object v9, p0, Ljava9/util/DualPivotQuicksort$Sorter;->b:Ljava/lang/Object;

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    if-eqz v0, :cond_2

    iget v6, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v2, v6

    :cond_2
    move v7, v2

    if-eqz v0, :cond_3

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int v2, v1, v2

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    if-eqz v0, :cond_4

    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int v2, v1, v2

    move v10, v2

    goto :goto_3

    :cond_4
    move v10, v1

    :goto_3
    iget v2, p0, Ljava9/util/DualPivotQuicksort$Sorter;->low:I

    iget v6, p0, Ljava9/util/DualPivotQuicksort$Sorter;->size:I

    add-int/2addr v2, v6

    if-eqz v0, :cond_5

    iget v6, p0, Ljava9/util/DualPivotQuicksort$Sorter;->offset:I

    sub-int/2addr v2, v6

    :cond_5
    move v11, v2

    move-object v2, v12

    move-object v6, v9

    invoke-direct/range {v2 .. v11}, Ljava9/util/DualPivotQuicksort$Merger;-><init>(Ljava9/util/concurrent/CountedCompleter;Ljava/lang/Object;ILjava/lang/Object;IILjava/lang/Object;II)V

    .line 4054
    invoke-virtual {v12}, Ljava9/util/DualPivotQuicksort$Merger;->invoke()Ljava/lang/Object;

    .line 4056
    .end local v0    # "src":Z
    .end local v1    # "mi":I
    :cond_6
    return-void
.end method
