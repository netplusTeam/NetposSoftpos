.class public abstract Ljava9/util/Spliterators$AbstractSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 1
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1586
    .local p0, "this":Ljava9/util/Spliterators$AbstractSpliterator;, "Ljava9/util/Spliterators$AbstractSpliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1587
    iput-wide p1, p0, Ljava9/util/Spliterators$AbstractSpliterator;->est:J

    .line 1588
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    or-int/lit16 v0, p3, 0x4000

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$AbstractSpliterator;->characteristics:I

    .line 1591
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1663
    .local p0, "this":Ljava9/util/Spliterators$AbstractSpliterator;, "Ljava9/util/Spliterators$AbstractSpliterator<TT;>;"
    iget v0, p0, Ljava9/util/Spliterators$AbstractSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1651
    .local p0, "this":Ljava9/util/Spliterators$AbstractSpliterator;, "Ljava9/util/Spliterators$AbstractSpliterator<TT;>;"
    iget-wide v0, p0, Ljava9/util/Spliterators$AbstractSpliterator;->est:J

    return-wide v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 1622
    .local p0, "this":Ljava9/util/Spliterators$AbstractSpliterator;, "Ljava9/util/Spliterators$AbstractSpliterator<TT;>;"
    new-instance v0, Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;

    invoke-direct {v0}, Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;-><init>()V

    .line 1623
    .local v0, "holder":Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;, "Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer<TT;>;"
    iget-wide v1, p0, Ljava9/util/Spliterators$AbstractSpliterator;->est:J

    .line 1624
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1625
    iget v3, p0, Ljava9/util/Spliterators$AbstractSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1626
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 1627
    long-to-int v3, v1

    .line 1628
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 1629
    const/high16 v3, 0x2000000

    .line 1630
    :cond_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 1631
    .local v4, "a":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 1632
    .local v5, "j":I
    :cond_2
    iget-object v6, v0, Ljava9/util/Spliterators$AbstractSpliterator$HoldingConsumer;->value:Ljava/lang/Object;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$AbstractSpliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1633
    :cond_3
    iput v5, p0, Ljava9/util/Spliterators$AbstractSpliterator;->batch:I

    .line 1634
    iget-wide v6, p0, Ljava9/util/Spliterators$AbstractSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 1635
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava9/util/Spliterators$AbstractSpliterator;->est:J

    .line 1636
    :cond_4
    new-instance v6, Ljava9/util/Spliterators$ArraySpliterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava9/util/Spliterators$AbstractSpliterator;->characteristics()I

    move-result v8

    invoke-direct {v6, v4, v7, v5, v8}, Ljava9/util/Spliterators$ArraySpliterator;-><init>([Ljava/lang/Object;III)V

    return-object v6

    .line 1638
    .end local v3    # "n":I
    .end local v4    # "a":[Ljava/lang/Object;
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method
