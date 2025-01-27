.class Lcom/sleepycat/persist/SubIndexCursor;
.super Lcom/sleepycat/persist/BasicCursor;
.source "SubIndexCursor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sleepycat/persist/BasicCursor<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/util/keyrange/RangeCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/util/keyrange/RangeCursor;",
            "Lcom/sleepycat/persist/ValueAdapter<",
            "TV;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    .local p2, "adapter":Lcom/sleepycat/persist/ValueAdapter;, "Lcom/sleepycat/persist/ValueAdapter<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/persist/BasicCursor;-><init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public dup()Lcom/sleepycat/persist/EntityCursor;
    .locals 3
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

    .line 44
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    new-instance v0, Lcom/sleepycat/persist/SubIndexCursor;

    iget-object v1, p0, Lcom/sleepycat/persist/SubIndexCursor;->cursor:Lcom/sleepycat/util/keyrange/RangeCursor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->dup(Z)Lcom/sleepycat/util/keyrange/RangeCursor;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/persist/SubIndexCursor;->adapter:Lcom/sleepycat/persist/ValueAdapter;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/persist/SubIndexCursor;-><init>(Lcom/sleepycat/util/keyrange/RangeCursor;Lcom/sleepycat/persist/ValueAdapter;)V

    return-object v0
.end method

.method public get(Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;
    .locals 2
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

    .line 77
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    sget-object v0, Lcom/sleepycat/persist/SubIndexCursor$1;->$SwitchMap$com$sleepycat$je$Get:[I

    invoke-virtual {p1}, Lcom/sleepycat/je/Get;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-super {p0, p1, p2}, Lcom/sleepycat/persist/BasicCursor;->get(Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_0
    sget-object v0, Lcom/sleepycat/je/Get;->PREV:Lcom/sleepycat/je/Get;

    invoke-super {p0, v0, p2}, Lcom/sleepycat/persist/BasicCursor;->get(Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    return-object v0

    .line 83
    :pswitch_1
    return-object v1

    .line 81
    :pswitch_2
    sget-object v0, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    invoke-super {p0, v0, p2}, Lcom/sleepycat/persist/BasicCursor;->get(Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/persist/EntityResult;

    move-result-object v0

    return-object v0

    .line 79
    :pswitch_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nextDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/LockMode;",
            ")TV;"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/SubIndexCursor;->checkInitialized()V

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public nextNoDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 1
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

    .line 57
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/SubIndexCursor;->next(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public prevDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 1
    .param p1, "lockMode"    # Lcom/sleepycat/je/LockMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/LockMode;",
            ")TV;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    invoke-virtual {p0}, Lcom/sleepycat/persist/SubIndexCursor;->checkInitialized()V

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public prevNoDup(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;
    .locals 1
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

    .line 70
    .local p0, "this":Lcom/sleepycat/persist/SubIndexCursor;, "Lcom/sleepycat/persist/SubIndexCursor<TV;>;"
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/SubIndexCursor;->prev(Lcom/sleepycat/je/LockMode;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
