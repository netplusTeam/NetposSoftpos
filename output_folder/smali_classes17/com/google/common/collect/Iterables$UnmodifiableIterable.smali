.class final Lcom/google/common/collect/Iterables$UnmodifiableIterable;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Iterables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/google/common/collect/Iterables$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # Lcom/google/common/collect/Iterables$1;

    .line 95
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/Iterables$UnmodifiableIterable;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 121
    .local p0, "this":Lcom/google/common/collect/Iterables$UnmodifiableIterable;, "Lcom/google/common/collect/Iterables$UnmodifiableIterable<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/Iterables$UnmodifiableIterable;->iterable:Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
