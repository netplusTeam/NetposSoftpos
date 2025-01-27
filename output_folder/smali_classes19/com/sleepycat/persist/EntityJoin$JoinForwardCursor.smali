.class Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;
.super Ljava/lang/Object;
.source "EntityJoin.java"

# interfaces
.implements Lcom/sleepycat/persist/ForwardCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/persist/EntityJoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JoinForwardCursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/ForwardCursor<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private cursors:[Lcom/sleepycat/je/Cursor;

.field private doKeys:Z

.field private joinCursor:Lcom/sleepycat/je/JoinCursor;

.field final synthetic this$0:Lcom/sleepycat/persist/EntityJoin;


# direct methods
.method constructor <init>(Lcom/sleepycat/persist/EntityJoin;Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;Z)V
    .locals 4
    .param p2, "txn"    # Lcom/sleepycat/je/Transaction;
    .param p3, "config"    # Lcom/sleepycat/je/CursorConfig;
    .param p4, "doKeys"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    iput-object p1, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->this$0:Lcom/sleepycat/persist/EntityJoin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iput-boolean p4, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->doKeys:Z

    .line 290
    :try_start_0
    invoke-static {p1}, Lcom/sleepycat/persist/EntityJoin;->access$000(Lcom/sleepycat/persist/EntityJoin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sleepycat/je/Cursor;

    iput-object v0, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->cursors:[Lcom/sleepycat/je/Cursor;

    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->cursors:[Lcom/sleepycat/je/Cursor;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 292
    invoke-static {p1}, Lcom/sleepycat/persist/EntityJoin;->access$000(Lcom/sleepycat/persist/EntityJoin;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/persist/EntityJoin$Condition;

    .line 293
    .local v1, "cond":Lcom/sleepycat/persist/EntityJoin$Condition;
    invoke-virtual {v1, p2, p3}, Lcom/sleepycat/persist/EntityJoin$Condition;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    .line 294
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    if-nez v3, :cond_0

    .line 296
    invoke-direct {p0, v2}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->doClose(Lcom/sleepycat/je/DatabaseException;)V

    .line 297
    return-void

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->cursors:[Lcom/sleepycat/je/Cursor;

    aput-object v3, v2, v0

    .line 291
    .end local v1    # "cond":Lcom/sleepycat/persist/EntityJoin$Condition;
    .end local v3    # "cursor":Lcom/sleepycat/je/Cursor;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "i":I
    :cond_1
    invoke-static {p1}, Lcom/sleepycat/persist/EntityJoin;->access$100(Lcom/sleepycat/persist/EntityJoin;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/persist/PrimaryIndex;->getDatabase()Lcom/sleepycat/je/Database;

    move-result-object p1

    iget-object v0, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->cursors:[Lcom/sleepycat/je/Cursor;

    invoke-virtual {p1, v0, v2}, Lcom/sleepycat/je/Database;->join([Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/JoinConfig;)Lcom/sleepycat/je/JoinCursor;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_1

    .line 302
    :catch_0
    move-exception p1

    .line 304
    .local p1, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, p1}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->doClose(Lcom/sleepycat/je/DatabaseException;)V

    .line 306
    .end local p1    # "e":Lcom/sleepycat/je/DatabaseException;
    :goto_1
    return-void
.end method

.method private doClose(Lcom/sleepycat/je/DatabaseException;)V
    .locals 4
    .param p1, "firstException"    # Lcom/sleepycat/je/DatabaseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 359
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/JoinCursor;->close()V

    .line 360
    iput-object v1, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez p1, :cond_0

    .line 363
    move-object p1, v0

    .line 367
    .end local v0    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->cursors:[Lcom/sleepycat/je/Cursor;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 368
    aget-object v2, v2, v0

    .line 369
    .local v2, "cursor":Lcom/sleepycat/je/Cursor;
    if-eqz v2, :cond_1

    .line 371
    :try_start_1
    invoke-virtual {v2}, Lcom/sleepycat/je/Cursor;->close()V

    .line 372
    iget-object v3, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->cursors:[Lcom/sleepycat/je/Cursor;

    aput-object v1, v3, v0
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    goto :goto_2

    .line 373
    :catch_1
    move-exception v3

    .line 374
    .local v3, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez p1, :cond_1

    .line 375
    move-object p1, v3

    .line 367
    .end local v2    # "cursor":Lcom/sleepycat/je/Cursor;
    .end local v3    # "e":Lcom/sleepycat/je/DatabaseException;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "i":I
    :cond_2
    if-nez p1, :cond_3

    .line 383
    return-void

    .line 381
    :cond_3
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->doClose(Lcom/sleepycat/je/DatabaseException;)V

    .line 352
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 341
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->iterator(Lcom/sleepycat/je/LockMode;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lcom/sleepycat/je/LockMode;)Ljava/util/Iterator;
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/LockMode;",
            ")",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    new-instance v0, Lcom/sleepycat/persist/BasicIterator;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/persist/BasicIterator;-><init>(Lcom/sleepycat/persist/ForwardCursor;Lcom/sleepycat/je/LockMode;)V

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 311
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->next(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public next(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 5
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/LockMode;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;, "Lcom/sleepycat/persist/EntityJoin<TPK;TE;>.JoinForwardCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    return-object v1

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->doKeys:Z

    if-eqz v0, :cond_2

    .line 321
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 322
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v2, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    invoke-virtual {v2, v0, p1}, Lcom/sleepycat/je/JoinCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v2

    .line 323
    .local v2, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v3, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v2, v3, :cond_1

    .line 324
    iget-object v1, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->this$0:Lcom/sleepycat/persist/EntityJoin;

    invoke-static {v1}, Lcom/sleepycat/persist/EntityJoin;->access$100(Lcom/sleepycat/persist/EntityJoin;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/persist/PrimaryIndex;->getKeyBinding()Lcom/sleepycat/bind/EntryBinding;

    move-result-object v1

    .line 325
    .local v1, "binding":Lcom/sleepycat/bind/EntryBinding;
    invoke-interface {v1, v0}, Lcom/sleepycat/bind/EntryBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 327
    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "binding":Lcom/sleepycat/bind/EntryBinding;
    .end local v2    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_1
    goto :goto_0

    .line 328
    :cond_2
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 329
    .restart local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 330
    .local v2, "data":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v3, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->joinCursor:Lcom/sleepycat/je/JoinCursor;

    .line 331
    invoke-virtual {v3, v0, v2, p1}, Lcom/sleepycat/je/JoinCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v3

    .line 332
    .local v3, "status":Lcom/sleepycat/je/OperationStatus;
    sget-object v4, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v3, v4, :cond_3

    .line 333
    iget-object v1, p0, Lcom/sleepycat/persist/EntityJoin$JoinForwardCursor;->this$0:Lcom/sleepycat/persist/EntityJoin;

    invoke-static {v1}, Lcom/sleepycat/persist/EntityJoin;->access$100(Lcom/sleepycat/persist/EntityJoin;)Lcom/sleepycat/persist/PrimaryIndex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/persist/PrimaryIndex;->getEntityBinding()Lcom/sleepycat/bind/EntityBinding;

    move-result-object v1

    .line 334
    .local v1, "binding":Lcom/sleepycat/bind/EntityBinding;
    invoke-interface {v1, v0, v2}, Lcom/sleepycat/bind/EntityBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 337
    .end local v0    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v1    # "binding":Lcom/sleepycat/bind/EntityBinding;
    .end local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "status":Lcom/sleepycat/je/OperationStatus;
    :cond_3
    :goto_0
    return-object v1
.end method
