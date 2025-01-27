.class public interface abstract Ljava9/util/Spliterator;
.super Ljava/lang/Object;
.source "Spliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/Spliterator$OfDouble;,
        Ljava9/util/Spliterator$OfLong;,
        Ljava9/util/Spliterator$OfInt;,
        Ljava9/util/Spliterator$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CONCURRENT:I = 0x1000

.field public static final DISTINCT:I = 0x1

.field public static final IMMUTABLE:I = 0x400

.field public static final NONNULL:I = 0x100

.field public static final ORDERED:I = 0x10

.field public static final SIZED:I = 0x40

.field public static final SORTED:I = 0x4

.field public static final SUBSIZED:I = 0x4000


# virtual methods
.method public abstract characteristics()I
.end method

.method public abstract estimateSize()J
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 331
    .local p0, "this":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    :goto_0
    invoke-interface {p0, p1}, Ljava9/util/Spliterator;->tryAdvance(Ljava9/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    return-void

    .line 331
    :cond_0
    goto :goto_0
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

    .line 470
    .local p0, "this":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 413
    .local p0, "this":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava9/util/Spliterator;->estimateSize()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1
    .param p1, "characteristics"    # I

    .line 452
    .local p0, "this":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava9/util/Spliterator;->characteristics()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract tryAdvance(Ljava9/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract trySplit()Ljava9/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end method
