.class public abstract Ljava9/util/Spliterators$AbstractDoubleSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava9/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDoubleSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
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

    .line 1929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    iput-wide p1, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1931
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_0

    or-int/lit16 v0, p3, 0x4000

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    .line 1934
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 1993
    iget v0, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 1981
    iget-wide v0, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->est:J

    return-wide v0
.end method

.method public trySplit()Ljava9/util/Spliterator$OfDouble;
    .locals 10

    .line 1952
    new-instance v0, Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;

    invoke-direct {v0}, Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;-><init>()V

    .line 1953
    .local v0, "holder":Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
    iget-wide v1, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1954
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_5

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1955
    iget v3, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1956
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    .line 1957
    long-to-int v3, v1

    .line 1958
    :cond_0
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_1

    .line 1959
    const/high16 v3, 0x2000000

    .line 1960
    :cond_1
    new-array v4, v3, [D

    .line 1961
    .local v4, "a":[D
    const/4 v5, 0x0

    .line 1962
    .local v5, "j":I
    :cond_2
    iget-wide v6, v0, Ljava9/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_3

    invoke-virtual {p0, v0}, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1963
    :cond_3
    iput v5, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    .line 1964
    iget-wide v6, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->est:J

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 1965
    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1966
    :cond_4
    new-instance v6, Ljava9/util/Spliterators$DoubleArraySpliterator;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->characteristics()I

    move-result v8

    invoke-direct {v6, v4, v7, v5, v8}, Ljava9/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v6

    .line 1968
    .end local v3    # "n":I
    .end local v4    # "a":[D
    .end local v5    # "j":I
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1912
    invoke-virtual {p0}, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 1912
    invoke-virtual {p0}, Ljava9/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
