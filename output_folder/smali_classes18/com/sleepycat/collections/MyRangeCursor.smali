.class Lcom/sleepycat/collections/MyRangeCursor;
.super Lcom/sleepycat/util/keyrange/RangeCursor;
.source "MyRangeCursor.java"


# instance fields
.field private isRecnoOrQueue:Z

.field private view:Lcom/sleepycat/collections/DataView;

.field private writeCursor:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/je/CursorConfig;Lcom/sleepycat/collections/DataView;Z)V
    .locals 3
    .param p1, "range"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p2, "config"    # Lcom/sleepycat/je/CursorConfig;
    .param p3, "view"    # Lcom/sleepycat/collections/DataView;
    .param p4, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 35
    iget-object v0, p3, Lcom/sleepycat/collections/DataView;->dupsRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v1, p3, Lcom/sleepycat/collections/DataView;->dupsOrdered:Z

    .line 36
    invoke-static {p3, p2, p4}, Lcom/sleepycat/collections/MyRangeCursor;->openCursor(Lcom/sleepycat/collections/DataView;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v2

    .line 35
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;-><init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/util/keyrange/KeyRange;ZLcom/sleepycat/je/Cursor;)V

    .line 37
    iput-object p3, p0, Lcom/sleepycat/collections/MyRangeCursor;->view:Lcom/sleepycat/collections/DataView;

    .line 38
    iget-boolean v0, p3, Lcom/sleepycat/collections/DataView;->recNumAllowed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p3, Lcom/sleepycat/collections/DataView;->btreeRecNumDb:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sleepycat/collections/MyRangeCursor;->isRecnoOrQueue:Z

    .line 39
    invoke-static {p2, p4}, Lcom/sleepycat/collections/MyRangeCursor;->isWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/collections/MyRangeCursor;->writeCursor:Z

    .line 40
    return-void
.end method

.method private static isWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)Z
    .locals 1
    .param p0, "config"    # Lcom/sleepycat/je/CursorConfig;
    .param p1, "writeAllowed"    # Z

    .line 50
    invoke-static {p0}, Lcom/sleepycat/compat/DbCompat;->getWriteCursor(Lcom/sleepycat/je/CursorConfig;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sleepycat/je/CursorConfig;->DEFAULT:Lcom/sleepycat/je/CursorConfig;

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static openCursor(Lcom/sleepycat/collections/DataView;Lcom/sleepycat/je/CursorConfig;Z)Lcom/sleepycat/je/Cursor;
    .locals 4
    .param p0, "view"    # Lcom/sleepycat/collections/DataView;
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .param p2, "writeAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    iget-object v1, p0, Lcom/sleepycat/collections/DataView;->db:Lcom/sleepycat/je/Database;

    .line 60
    invoke-static {p1, p2}, Lcom/sleepycat/collections/MyRangeCursor;->isWriteCursor(Lcom/sleepycat/je/CursorConfig;Z)Z

    move-result v2

    .line 61
    invoke-virtual {p0}, Lcom/sleepycat/collections/DataView;->useTransaction()Lcom/sleepycat/je/Transaction;

    move-result-object v3

    .line 60
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sleepycat/collections/CurrentTransaction;->openCursor(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/CursorConfig;ZLcom/sleepycat/je/Transaction;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 59
    return-object v0
.end method


# virtual methods
.method protected checkRecordNumber()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/sleepycat/collections/MyRangeCursor;->isRecnoOrQueue:Z

    return v0
.end method

.method protected closeCursor(Lcom/sleepycat/je/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sleepycat/collections/MyRangeCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/CurrentTransaction;->closeCursor(Lcom/sleepycat/je/Cursor;)V

    .line 74
    return-void
.end method

.method protected dupCursor(Lcom/sleepycat/je/Cursor;Z)Lcom/sleepycat/je/Cursor;
    .locals 2
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "samePosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sleepycat/collections/MyRangeCursor;->view:Lcom/sleepycat/collections/DataView;

    iget-object v0, v0, Lcom/sleepycat/collections/DataView;->currentTxn:Lcom/sleepycat/collections/CurrentTransaction;

    iget-boolean v1, p0, Lcom/sleepycat/collections/MyRangeCursor;->writeCursor:Z

    invoke-virtual {v0, p1, v1, p2}, Lcom/sleepycat/collections/CurrentTransaction;->dupCursor(Lcom/sleepycat/je/Cursor;ZZ)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method
