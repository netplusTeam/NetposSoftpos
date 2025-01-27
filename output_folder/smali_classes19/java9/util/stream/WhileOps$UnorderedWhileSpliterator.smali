.class abstract Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;
.super Ljava/lang/Object;
.source "WhileOps.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/WhileOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "UnorderedWhileSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;,
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong;,
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt;,
        Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava9/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final CANCEL_CHECK_COUNT:I = 0x3f


# instance fields
.field final cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

.field count:I

.field final noSplitting:Z

.field final s:Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field takeOrDrop:Z


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<",
            "TT;TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 683
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "TT_SPLITR;"
    .local p2, "parent":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 684
    iput-object p1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava9/util/Spliterator;

    .line 685
    iget-boolean v0, p2, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    iput-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 686
    iget-object v0, p2, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 687
    return-void
.end method

.method constructor <init>(Ljava9/util/Spliterator;Z)V
    .locals 1
    .param p2, "noSplitting"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "Z)V"
        }
    .end annotation

    .line 677
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Ljava9/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->takeOrDrop:Z

    .line 678
    iput-object p1, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava9/util/Spliterator;

    .line 679
    iput-boolean p2, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    .line 680
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 681
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 697
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit16 v0, v0, -0x4041

    return v0
.end method

.method checkCancelOnCount()Z
    .locals 1

    .line 718
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->count:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->cancel:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 691
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 707
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 702
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method abstract makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            ")TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 713
    .local p0, "this":Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;, "Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator<TT;TT_SPLITR;>;"
    iget-boolean v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->noSplitting:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->s:Ljava9/util/Spliterator;

    invoke-interface {v0}, Ljava9/util/Spliterator;->trySplit()Ljava9/util/Spliterator;

    move-result-object v0

    .line 714
    .local v0, "ls":Ljava9/util/Spliterator;, "TT_SPLITR;"
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator;->makeSpliterator(Ljava9/util/Spliterator;)Ljava9/util/Spliterator;

    move-result-object v1

    :cond_1
    return-object v1
.end method
