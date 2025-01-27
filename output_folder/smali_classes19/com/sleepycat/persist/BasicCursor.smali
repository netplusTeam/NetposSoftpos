.class Lcom/sleepycat/persist/BasicCursor;
.super Ljava/lang/Object;
.source "BasicCursor.java"

# interfaces
.implements Lcom/sleepycat/persist/EntityCursor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sleepycat/persist/EntityCursor<",
        "TV;>;"
    }
.end annotation


# instance fields
.field adapter:Lcom/sleepycat/persist/ValueAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;"
        }
    .end annotation
.end field

.field cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

.field data:Lcom/sleepycat/je/DatabaseEntry;

.field key:Lcom/sleepycat/je/DatabaseEntry;

.field pkey:Lcom/sleepycat/je/DatabaseEntry;

.field updateAllowed:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;Z)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/util/keyrange/RangeCursor;
    .param p3, "updateAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/util/keyrange/RangeCursor;",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;Z)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    .local p2, "adapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 60
    iput-object p2, p0, Lcom/sleepycat/persist/BasicCursor;->adapter:Lcom/sleepycat/persist/ValueAdapter;

    .line 61
    iput-boolean p3, p0, Lcom/sleepycat/persist/BasicCursor;->updateAllowed:Z

    .line 62
    invoke-interface {p2}, Lcom/sleepycat/persist/ValueAdapter;->initKey()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    .line 63
    invoke-interface {p2}, Lcom/sleepycat/persist/ValueAdapter;->initPKey()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    .line 64
    invoke-interface {p2}, Lcom/sleepycat/persist/ValueAdapter;->initData()Lcom/sleepycat/je/DatabaseEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 65
    return-void
.end method


# virtual methods
.method checkInitialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 363
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    return-void

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor is not initialized at a valid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->close()V

    .line 346
    return-void
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 233
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 234
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->count()I

    move-result v0

    return v0
.end method

.method public countEstimate()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 242
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->countEstimate()J

    move-result-wide v0

    return-wide v0
.end method

.method public current()Ljava/lang/Object;
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

    .line 178
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->current(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public current(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 184
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 185
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 186
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 185
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 1
    .param p1, "options"    # Lcom/sleepycat/je/WriteOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 331
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 332
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/Cursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 319
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->delete(Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dup()Lcom/sleepycat/persist/EntityCursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sleepycat/persist/EntityCursor<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    new-instance v0, Lcom/sleepycat/persist/BasicCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->dup(Z)Lcom/sleepycat/util/keyrange/RangeCursor;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->adapter:Lcom/sleepycat/persist/ValueAdapter;

    iget-boolean v3, p0, Lcom/sleepycat/persist/BasicCursor;->updateAllowed:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/persist/BasicCursor;-><init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;Z)V

    return-object v0
.end method

.method public first()Ljava/lang/Object;
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

    .line 70
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->first(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public first(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 76
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 77
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 76
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .locals 5
    .param p1, "getType"    # Lcom/sleepycat/je/Get;
    .param p2, "options"    # Lcom/sleepycat/je/ReadOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Get;",
            "Lcom/sleepycat/je/ReadOptions;",
            ")",
            "Lcom/sleepycat/persist/EntityResult<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-static {p2}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v0

    .line 195
    .local v0, "opOptions":Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    sget-object v1, Lcom/sleepycat/persist/BasicCursor$1;->$SwitchMap$com$sleepycat$je$Get:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/Get;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType not allowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 222
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 221
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 218
    :pswitch_1
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 219
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 218
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 215
    :pswitch_2
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 216
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 215
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 212
    :pswitch_3
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 213
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 212
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 209
    :pswitch_4
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 210
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 209
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 206
    :pswitch_5
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 207
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 203
    :pswitch_6
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 204
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 203
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 200
    :pswitch_7
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 201
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 200
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    .line 197
    :pswitch_8
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 198
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    .line 197
    invoke-virtual {p0, v1}, Lcom/sleepycat/persist/BasicCursor;->returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCacheMode()Lcom/sleepycat/je/CacheMode;
    .locals 1

    .line 356
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->getCacheMode()Lcom/sleepycat/je/CacheMode;

    move-result-object v0

    return-object v0
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

    .line 273
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->iterator(Lcom/sleepycat/je/LockMode;)Ljava/util/Iterator;

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

    .line 277
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    new-instance v0, Lcom/sleepycat/persist/BasicIterator;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/persist/BasicIterator;-><init>(Lcom/sleepycat/persist/EntityCursor;Lcom/sleepycat/je/LockMode;)V

    return-object v0
.end method

.method public last()Ljava/lang/Object;
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

    .line 83
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->last(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 89
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 90
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

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

    .line 96
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->next(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

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

    .line 102
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 103
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextDup()Ljava/lang/Object;
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

    .line 109
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->nextDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 115
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 116
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 117
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextNoDup()Ljava/lang/Object;
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

    .line 123
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->nextNoDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextNoDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 129
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 131
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 130
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prev()Ljava/lang/Object;
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

    .line 137
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->prev(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prev(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 143
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 144
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prevDup()Ljava/lang/Object;
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

    .line 150
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->prevDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prevDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 156
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 157
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 158
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prevNoDup()Ljava/lang/Object;
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

    .line 164
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->prevNoDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prevNoDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
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

    .line 170
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    .line 172
    invoke-static {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->make(Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/compat/DbCompat$OpReadOptions;

    move-result-object v4

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method returnResult(Lcom/sleepycat/compat/DbCompat$OpResult;)Lcom/sleepycat/persist/EntityResult;
    .locals 3
    .param p1, "opResult"    # Lcom/sleepycat/compat/DbCompat$OpResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/compat/DbCompat$OpResult;",
            ")",
            "Lcom/sleepycat/persist/EntityResult<",
            "TV;>;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/BasicCursor;->returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    new-instance v1, Lcom/sleepycat/persist/EntityResult;

    iget-object v2, p1, Lcom/sleepycat/compat/DbCompat$OpResult;->jeResult:Lcom/sleepycat/je/OperationResult;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/persist/EntityResult;-><init>(Ljava/lang/Object;Lcom/sleepycat/je/OperationResult;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method returnValue(Lcom/sleepycat/compat/DbCompat$OpResult;)Ljava/lang/Object;
    .locals 5
    .param p1, "opResult"    # Lcom/sleepycat/compat/DbCompat$OpResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/compat/DbCompat$OpResult;",
            ")TV;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    invoke-virtual {p1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->adapter:Lcom/sleepycat/persist/ValueAdapter;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    invoke-interface {v0, v1, v2, v3}, Lcom/sleepycat/persist/ValueAdapter;->entryToValue(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 374
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    const/4 v0, 0x0

    .line 377
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->adapter:Lcom/sleepycat/persist/ValueAdapter;

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->key:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/persist/BasicCursor;->pkey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    invoke-interface {v1, v2, v3, v4}, Lcom/sleepycat/persist/ValueAdapter;->clearEntries(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 378
    return-object v0
.end method

.method public setCacheMode(Lcom/sleepycat/je/CacheMode;)V
    .locals 1
    .param p1, "cacheMode"    # Lcom/sleepycat/je/CacheMode;

    .line 350
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/Cursor;->setCacheMode(Lcom/sleepycat/je/CacheMode;)V

    .line 351
    return-void
.end method

.method public update(Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;
    .locals 4
    .param p2, "options"    # Lcom/sleepycat/je/WriteOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/sleepycat/je/WriteOptions;",
            ")",
            "Lcom/sleepycat/je/OperationResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 303
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    .local p1, "entity":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Lcom/sleepycat/persist/BasicCursor;->updateAllowed:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/sleepycat/persist/BasicCursor;->checkInitialized()V

    .line 308
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->adapter:Lcom/sleepycat/persist/ValueAdapter;

    iget-object v1, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    invoke-interface {v0, p1, v1}, Lcom/sleepycat/persist/ValueAdapter;->valueToData(Ljava/lang/Object;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 310
    iget-object v0, p0, Lcom/sleepycat/persist/BasicCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->getCursor()Lcom/sleepycat/je/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/persist/BasicCursor;->data:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Put;->CURRENT:Lcom/sleepycat/je/Put;

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Put;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Update not allowed on a secondary index"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/sleepycat/persist/BasicCursor;, "Lcom/sleepycat/persist/BasicCursor<TV;>;"
    .local p1, "entity":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/persist/BasicCursor;->update(Ljava/lang/Object;Lcom/sleepycat/je/WriteOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
