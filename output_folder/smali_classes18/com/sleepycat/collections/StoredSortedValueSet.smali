.class public Lcom/sleepycat/collections/StoredSortedValueSet;
.super Lcom/sleepycat/collections/StoredValueSet;
.source "StoredSortedValueSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredValueSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "valueSetView"    # Lcom/sleepycat/collections/DataView;

    .line 81
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredValueSet;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 82
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredSortedValueSet;->checkKeyDerivation()V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntityBinding;Z)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p3, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TE;>;Z)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p2, "valueEntityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredValueSet;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 76
    invoke-direct {p0}, Lcom/sleepycat/collections/StoredSortedValueSet;->checkKeyDerivation()V

    .line 77
    return-void
.end method

.method private checkKeyDerivation()V
    .locals 2

    .line 87
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredSortedValueSet;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0}, Lcom/sleepycat/collections/DataView;->canDeriveKeyFromValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot derive key from value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedValueSet;->getFirstOrLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p1, "toValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/sleepycat/collections/StoredSortedValueSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/SortedSet;
    .locals 2
    .param p2, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p1, "toValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sleepycat/collections/StoredSortedValueSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedValueSet;->getFirstOrLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p1, "fromValue":Ljava/lang/Object;, "TE;"
    .local p2, "toValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sleepycat/collections/StoredSortedValueSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p1, "fromValue":Ljava/lang/Object;, "TE;"
    .local p3, "toValue":Ljava/lang/Object;, "TE;"
    :try_start_0
    new-instance v0, Lcom/sleepycat/collections/StoredSortedValueSet;

    iget-object v1, p0, Lcom/sleepycat/collections/StoredSortedValueSet;->view:Lcom/sleepycat/collections/DataView;

    const/4 v6, 0x0

    .line 286
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/collections/DataView;->subView(Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/collections/StoredSortedValueSet;-><init>(Lcom/sleepycat/collections/DataView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-object v0

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p1, "fromValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/collections/StoredSortedValueSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/SortedSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedValueSet;, "Lcom/sleepycat/collections/StoredSortedValueSet<TE;>;"
    .local p1, "fromValue":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/collections/StoredSortedValueSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
