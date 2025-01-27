.class public Lcom/sleepycat/collections/StoredList;
.super Lcom/sleepycat/collections/StoredCollection;
.source "StoredList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/collections/StoredList$IndexKeyBinding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/collections/StoredCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_BINDING:Lcom/sleepycat/bind/EntryBinding;


# instance fields
.field private baseIndex:I

.field private isSubList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;-><init>(ILcom/sleepycat/collections/StoredList$1;)V

    sput-object v0, Lcom/sleepycat/collections/StoredList;->DEFAULT_KEY_BINDING:Lcom/sleepycat/bind/EntryBinding;

    return-void
.end method

.method private constructor <init>(Lcom/sleepycat/collections/DataView;I)V
    .locals 1
    .param p1, "view"    # Lcom/sleepycat/collections/DataView;
    .param p2, "baseIndex"    # I

    .line 169
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    invoke-direct {p0, p1}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    .line 170
    iput p2, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    .line 171
    iput-boolean v0, p0, Lcom/sleepycat/collections/StoredList;->isSubList:Z

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntityBinding;Lcom/sleepycat/collections/PrimaryKeyAssigner;)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p3, "keyAssigner"    # Lcom/sleepycat/collections/PrimaryKeyAssigner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntityBinding<",
            "TE;>;",
            "Lcom/sleepycat/collections/PrimaryKeyAssigner;",
            ")V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "valueEntityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    sget-object v2, Lcom/sleepycat/collections/StoredList;->DEFAULT_KEY_BINDING:Lcom/sleepycat/bind/EntryBinding;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    .line 165
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

    .line 111
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "valueEntityBinding":Lcom/sleepycat/bind/EntityBinding;, "Lcom/sleepycat/bind/EntityBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    sget-object v2, Lcom/sleepycat/collections/StoredList;->DEFAULT_KEY_BINDING:Lcom/sleepycat/bind/EntryBinding;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    .line 113
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/collections/PrimaryKeyAssigner;)V
    .locals 8
    .param p1, "database"    # Lcom/sleepycat/je/Database;
    .param p3, "keyAssigner"    # Lcom/sleepycat/collections/PrimaryKeyAssigner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            "Lcom/sleepycat/bind/EntryBinding<",
            "TE;>;",
            "Lcom/sleepycat/collections/PrimaryKeyAssigner;",
            ")V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "valueBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    sget-object v2, Lcom/sleepycat/collections/StoredList;->DEFAULT_KEY_BINDING:Lcom/sleepycat/bind/EntryBinding;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    .line 139
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
            "TE;>;Z)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "valueBinding":Lcom/sleepycat/bind/EntryBinding;, "Lcom/sleepycat/bind/EntryBinding<TE;>;"
    new-instance v7, Lcom/sleepycat/collections/DataView;

    sget-object v2, Lcom/sleepycat/collections/StoredList;->DEFAULT_KEY_BINDING:Lcom/sleepycat/bind/EntryBinding;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/collections/DataView;-><init>(Lcom/sleepycat/je/Database;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntryBinding;Lcom/sleepycat/bind/EntityBinding;ZLcom/sleepycat/collections/PrimaryKeyAssigner;)V

    invoke-direct {p0, v7}, Lcom/sleepycat/collections/StoredCollection;-><init>(Lcom/sleepycat/collections/DataView;)V

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    .line 88
    return-void
.end method

.method private indexOf(Ljava/lang/Object;Z)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "findFirst"    # Z

    .line 453
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    const/4 v0, 0x0

    .line 455
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    :try_start_0
    new-instance v1, Lcom/sleepycat/collections/DataCursor;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v1

    .line 456
    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/collections/DataCursor;->findValue(Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v1

    .line 457
    .local v1, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v2, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v1, v2, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/sleepycat/collections/DataCursor;->getCurrentRecordNumber()I

    move-result v2

    iget v3, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 463
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 457
    return v2

    .line 463
    .end local v1    # "status":Lcom/sleepycat/je/OperationStatus;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .end local p1    # "value":Ljava/lang/Object;
    .end local p2    # "findFirst":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cursor":Lcom/sleepycat/collections/DataCursor;
    .restart local p1    # "value":Ljava/lang/Object;
    .restart local p2    # "findFirst":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    throw v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->checkIterAddAllowed()V

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->beginAutoCommit()Z

    move-result v1

    .line 201
    .local v1, "doAutoCommit":Z
    :try_start_0
    new-instance v2, Lcom/sleepycat/collections/DataCursor;

    iget-object v3, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v2

    .line 202
    int-to-long v2, p1

    .line 203
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 204
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_0

    .line 205
    invoke-virtual {v0, p2}, Lcom/sleepycat/collections/DataCursor;->putBefore(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 206
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    iget-object v3, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v3, p2, v4, v4}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 212
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sleepycat/collections/StoredList;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    nop

    .line 217
    return-void

    .line 213
    :catch_0
    move-exception v2

    .line 214
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 215
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/collections/StoredList;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 242
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->checkIterAddAllowed()V

    .line 243
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->beginAutoCommit()Z

    move-result v0

    .line 245
    .local v0, "doAutoCommit":Z
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 246
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    const/4 v1, 0x1

    return v1

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/collections/StoredList;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->checkIterAddAllowed()V

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "cursor":Lcom/sleepycat/collections/DataCursor;
    const/4 v1, 0x0

    .line 334
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->beginAutoCommit()Z

    move-result v2

    .line 336
    .local v2, "doAutoCommit":Z
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sleepycat/collections/StoredList;->storedOrExternalIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 338
    return v4

    .line 340
    :cond_0
    new-instance v3, Lcom/sleepycat/collections/DataCursor;

    iget-object v5, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Lcom/sleepycat/collections/DataCursor;-><init>(Lcom/sleepycat/collections/DataView;Z)V

    move-object v0, v3

    .line 341
    int-to-long v7, p1

    .line 342
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lcom/sleepycat/collections/DataCursor;->getSearchKey(Ljava/lang/Object;Ljava/lang/Object;Z)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 343
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v4, :cond_2

    .line 344
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sleepycat/collections/DataCursor;->putBefore(Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    goto :goto_0

    .line 347
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    goto :goto_2

    .line 349
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 350
    const/4 v0, 0x0

    .line 351
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    iget-object v4, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7, v5, v5}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    goto :goto_1

    .line 355
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 356
    invoke-virtual {p0, v2}, Lcom/sleepycat/collections/StoredList;->commitAutoCommit(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    return v6

    .line 358
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :catch_0
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->closeCursor(Lcom/sleepycat/collections/DataCursor;)V

    .line 360
    invoke-static {v1}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 361
    invoke-virtual {p0, v3, v2}, Lcom/sleepycat/collections/StoredList;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public append(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 284
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->beginAutoCommit()Z

    move-result v0

    .line 286
    .local v0, "doAutoCommit":Z
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 287
    .local v1, "key":[Ljava/lang/Object;
    iget-object v2, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lcom/sleepycat/collections/DataView;->append(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/sleepycat/je/OperationStatus;

    .line 288
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->commitAutoCommit(Z)V

    .line 289
    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 290
    .end local v1    # "key":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/collections/StoredList;->handleException(Ljava/lang/Exception;Z)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method checkIterAddAllowed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 298
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    iget-boolean v0, p0, Lcom/sleepycat/collections/StoredList;->isSubList:Z

    if-nez v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    iget-boolean v0, v0, Lcom/sleepycat/collections/DataView;->keysRenumbered:Z

    if-eqz v0, :cond_0

    .line 305
    return-void

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Requires renumbered keys"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add to subList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 383
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredList;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 656
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 657
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .line 658
    .local v0, "otherList":Ljava/util/List;
    const/4 v2, 0x0

    .line 659
    .local v2, "i1":Lcom/sleepycat/collections/StoredIterator;
    const/4 v3, 0x0

    .line 661
    .local v3, "i2":Ljava/util/ListIterator;
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v4

    move-object v2, v4

    .line 662
    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->storedOrExternalListIterator(Ljava/util/List;)Ljava/util/ListIterator;

    move-result-object v4

    move-object v3, v4

    .line 663
    :goto_0
    invoke-virtual {v2}, Lcom/sleepycat/collections/StoredIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 664
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 665
    nop

    .line 684
    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 685
    invoke-static {v3}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 665
    return v1

    .line 667
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/collections/StoredIterator;->nextIndex()I

    move-result v4

    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v4, v5, :cond_2

    .line 668
    nop

    .line 684
    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 685
    invoke-static {v3}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 668
    return v1

    .line 670
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lcom/sleepycat/collections/StoredIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 671
    .local v4, "o1":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 672
    .local v5, "o2":Ljava/lang/Object;
    if-nez v4, :cond_3

    .line 673
    if-eqz v5, :cond_4

    .line 674
    nop

    .line 684
    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 685
    invoke-static {v3}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 674
    return v1

    .line 677
    :cond_3
    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_4

    .line 678
    nop

    .line 684
    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 685
    invoke-static {v3}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 678
    return v1

    .line 681
    .end local v4    # "o1":Ljava/lang/Object;
    .end local v5    # "o2":Ljava/lang/Object;
    :cond_4
    goto :goto_0

    .line 682
    :cond_5
    :try_start_4
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 684
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 685
    invoke-static {v3}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 682
    return v1

    .line 684
    :catchall_0
    move-exception v1

    invoke-static {v2}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    .line 685
    invoke-static {v3}, Lcom/sleepycat/collections/StoredIterator;->close(Ljava/util/Iterator;)V

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 404
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/collections/StoredList;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getIndexOffset()I
    .locals 1

    .line 469
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    iget v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    return v0
.end method

.method hasValues()Z
    .locals 1

    .line 721
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 708
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    invoke-super {p0}, Lcom/sleepycat/collections/StoredCollection;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 426
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/collections/StoredList;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 448
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/collections/StoredList;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->blockIterator()Lcom/sleepycat/collections/BlockIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 511
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    invoke-virtual {p0}, Lcom/sleepycat/collections/StoredList;->blockIterator()Lcom/sleepycat/collections/BlockIterator;

    move-result-object v0

    .line 512
    .local v0, "i":Lcom/sleepycat/collections/BlockIterator;
    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/BlockIterator;->moveToIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    return-object v0

    .line 515
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method makeIteratorData(Lcom/sleepycat/collections/BaseIterator;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;
    .locals 1
    .param p1, "iterator"    # Lcom/sleepycat/collections/BaseIterator;
    .param p2, "keyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "priKeyEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "valueEntry"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/collections/BaseIterator;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            ")TE;"
        }
    .end annotation

    .line 716
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    iget-object v0, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    invoke-virtual {v0, p3, p4}, Lcom/sleepycat/collections/DataView;->makeValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 543
    .local v0, "oldVal":[Ljava/lang/Object;
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sleepycat/collections/StoredList;->removeKey(Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 544
    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 545
    .end local v0    # "oldVal":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 572
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/collections/StoredList;->removeValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sleepycat/collections/StoredList;->putKeyValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final storedOrExternalListIterator(Ljava/util/List;)Ljava/util/ListIterator;
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .line 696
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    instance-of v0, p1, Lcom/sleepycat/collections/StoredCollection;

    if-eqz v0, :cond_0

    .line 697
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/collections/StoredCollection;

    invoke-virtual {v0}, Lcom/sleepycat/collections/StoredCollection;->storedIterator()Lcom/sleepycat/collections/StoredIterator;

    move-result-object v0

    return-object v0

    .line 699
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 619
    .local p0, "this":Lcom/sleepycat/collections/StoredList;, "Lcom/sleepycat/collections/StoredList<TE;>;"
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 623
    :try_start_0
    iget v0, p0, Lcom/sleepycat/collections/StoredList;->baseIndex:I

    add-int/2addr v0, p1

    .line 624
    .local v0, "newBaseIndex":I
    new-instance v1, Lcom/sleepycat/collections/StoredList;

    iget-object v2, p0, Lcom/sleepycat/collections/StoredList;->view:Lcom/sleepycat/collections/DataView;

    int-to-long v3, p1

    .line 625
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    int-to-long v5, p2

    .line 626
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/sleepycat/collections/StoredList$IndexKeyBinding;-><init>(ILcom/sleepycat/collections/StoredList$1;)V

    .line 625
    invoke-virtual/range {v2 .. v7}, Lcom/sleepycat/collections/DataView;->subView(Ljava/lang/Object;ZLjava/lang/Object;ZLcom/sleepycat/bind/EntryBinding;)Lcom/sleepycat/collections/DataView;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/collections/StoredList;-><init>(Lcom/sleepycat/collections/DataView;I)V
    :try_end_0
    .catch Lcom/sleepycat/util/keyrange/KeyRangeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    return-object v1

    .line 631
    .end local v0    # "newBaseIndex":I
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sleepycat/collections/StoredContainer;->convertException(Ljava/lang/Exception;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 629
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 630
    .local v0, "e":Lcom/sleepycat/util/keyrange/KeyRangeException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRangeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 620
    .end local v0    # "e":Lcom/sleepycat/util/keyrange/KeyRangeException;
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
