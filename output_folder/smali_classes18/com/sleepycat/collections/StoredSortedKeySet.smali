.class public Lcom/sleepycat/collections/StoredSortedKeySet;
.super Lcom/sleepycat/collections/StoredKeySet;
.source "StoredSortedKeySet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredKeySet<",
        "TK;>;",
        "Ljava/util/SortedSet<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/collections/DataView;)V
    .locals 0
    .param p1, "keySetView"    # Lcom/sleepycat/collections/DataView;

    .line 77
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredKeySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Z)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p3, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TK;>;Z)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p2, "keyBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TK;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredKeySet;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 73
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedKeySet;->getFirstOrLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, v1}, Lcom/sleepycat/collections/StoredSortedKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/SortedSet;
    .locals 2
    .param p2, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sleepycat/collections/StoredSortedKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredSortedKeySet;->getFirstOrLast(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/sleepycat/collections/StoredSortedKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;
    .locals 7
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    :try_start_0
    new-instance v0, Lcom/sleepycat/collections/StoredSortedKeySet;

    iget-object v1, p0, Lcom/sleepycat/collections/StoredSortedKeySet;->view:Lcom/sleepycat/collections/DataView;

    const/4 v6, 0x0

    .line 274
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/collections/DataView;->subView(Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/collections/StoredSortedKeySet;-><init>(Lcom/sleepycat/collections/DataView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/sleepycat/collections/StoredSortedKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/SortedSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/sleepycat/collections/StoredSortedKeySet;, "Lcom/sleepycat/collections/StoredSortedKeySet<TK;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/collections/StoredSortedKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
