.class abstract Lcom/google/common/collect/ImmutableSet$Indexed;
.super Lcom/google/common/collect/ImmutableSet$CachingAsList;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Indexed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$CachingAsList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 357
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$CachingAsList;-><init>()V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 381
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Indexed;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Indexed$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSet$Indexed$1;-><init>(Lcom/google/common/collect/ImmutableSet$Indexed;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Indexed;->size()I

    move-result v0

    .line 374
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 375
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableSet$Indexed;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 362
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Indexed;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 357
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Indexed;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 367
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Indexed;, "Lcom/google/common/collect/ImmutableSet$Indexed<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Indexed;->size()I

    move-result v0

    new-instance v1, Lcom/google/common/collect/ImmutableSet$Indexed$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/collect/ImmutableSet$Indexed$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/ImmutableSet$Indexed;)V

    const/16 v2, 0x511

    invoke-static {v0, v2, v1}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
