.class Lcom/google/common/collect/StandardTable$Row;
.super Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field backingRowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final rowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/StandardTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 319
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p2, "rowKey":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 320
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    .line 321
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 383
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 384
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    .line 388
    return-void
.end method

.method computeBackingRowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 333
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 347
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 348
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 398
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 399
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 400
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 402
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 403
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TC;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/StandardTable$Row$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/StandardTable$Row$1;-><init>(Lcom/google/common/collect/StandardTable$Row;Ljava/util/Iterator;)V

    return-object v1
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 424
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 425
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 426
    invoke-static {}, Ljava/util/Spliterators;->emptySpliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0

    .line 428
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/StandardTable$Row$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/collect/StandardTable$Row$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/StandardTable$Row;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectSpliterators;->map(Ljava/util/Spliterator;Ljava/util/function/Function;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 354
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 355
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method maintainEmptyInvariant()V
    .locals 2

    .line 338
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 339
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    .line 343
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 361
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p1, "key":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 372
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 373
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    return-object v0

    .line 376
    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 377
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    .line 378
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 392
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->updateBackingRowMapField()V

    .line 393
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method final updateBackingRowMapField()V
    .locals 2

    .line 326
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->computeBackingRowMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    .line 329
    :cond_1
    return-void
.end method

.method wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;)",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Row$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Row$2;-><init>(Lcom/google/common/collect/StandardTable$Row;Ljava/util/Map$Entry;)V

    return-object v0
.end method
