.class final Ljava9/util/DelegatingSpliterator;
.super Ljava/lang/Object;
.source "DelegatingSpliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/DelegatingSpliterator$ConsumerDelegate;
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


# instance fields
.field private final spliter:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    .local p1, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    .line 25
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 48
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 43
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    new-instance v1, Ljava9/util/DelegatingSpliterator$ConsumerDelegate;

    invoke-direct {v1, p1}, Ljava9/util/DelegatingSpliterator$ConsumerDelegate;-><init>(Ljava9/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 54
    return-void
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

    .line 68
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 58
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1
    .param p1, "characteristics"    # I

    .line 63
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result v0

    return v0
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 29
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    new-instance v1, Ljava9/util/DelegatingSpliterator$ConsumerDelegate;

    invoke-direct {v1, p1}, Ljava9/util/DelegatingSpliterator$ConsumerDelegate;-><init>(Ljava9/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Ljava9/util/DelegatingSpliterator;, "Ljava9/util/DelegatingSpliterator<TT;>;"
    iget-object v0, p0, Ljava9/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    .line 35
    .local v0, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TT;>;"
    if-nez v0, :cond_0

    .line 36
    const/4 v1, 0x0

    return-object v1

    .line 38
    :cond_0
    new-instance v1, Ljava9/util/DelegatingSpliterator;

    invoke-direct {v1, v0}, Ljava9/util/DelegatingSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v1
.end method
