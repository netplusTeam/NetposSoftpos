.class Lcom/google/common/collect/Iterables$1;
.super Lcom/google/common/collect/FluentIterable;
.source "Iterables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->cycle(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$iterable:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/google/common/collect/Iterables$1;->val$iterable:Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method

.method static synthetic lambda$spliterator$0(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 0
    .param p0, "iterable"    # Ljava/lang/Iterable;

    .line 388
    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/google/common/collect/Iterables$1;->val$iterable:Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->cycle(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/common/collect/Iterables$1;->val$iterable:Ljava/lang/Iterable;

    new-instance v1, Lcom/google/common/collect/Iterables$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Iterables$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v1}, Ljava/util/stream/Stream;->generate(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Iterables$1$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/common/collect/Iterables$1$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/google/common/collect/Iterables$1;->val$iterable:Ljava/lang/Iterable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " (cycled)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
