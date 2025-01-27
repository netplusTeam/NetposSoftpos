.class public Lcom/sleepycat/util/keyrange/RangeCursor;
.super Ljava/lang/Object;
.source "RangeCursor.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cursor:Lcom/sleepycat/je/Cursor;

.field private initialized:Z

.field private pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

.field private privData:Lcom/sleepycat/je/DatabaseEntry;

.field private privKey:Lcom/sleepycat/je/DatabaseEntry;

.field private privPKey:Lcom/sleepycat/je/DatabaseEntry;

.field private range:Lcom/sleepycat/util/keyrange/KeyRange;

.field private secCursor:Lcom/sleepycat/je/SecondaryCursor;

.field private sortedDups:Z


# direct methods
.method public constructor <init>(Lcom/sleepycat/util/keyrange/KeyRange;Lcom/sleepycat/util/keyrange/KeyRange;ZLcom/sleepycat/je/Cursor;)V
    .locals 1
    .param p1, "range"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p2, "pkRange"    # Lcom/sleepycat/util/keyrange/KeyRange;
    .param p3, "sortedDups"    # Z
    .param p4, "cursor"    # Lcom/sleepycat/je/Cursor;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p2, :cond_1

    iget-boolean v0, p1, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 100
    iput-object p2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    .line 101
    iput-boolean p3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->sortedDups:Z

    .line 102
    iput-object p4, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    .line 103
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->init()V

    .line 104
    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 107
    :cond_3
    :goto_1
    return-void
.end method

.method private beginOperation()Lcom/sleepycat/je/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    .line 189
    .local v0, "oldCursor":Lcom/sleepycat/je/Cursor;
    iget-boolean v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sleepycat/util/keyrange/RangeCursor;->dupCursor(Lcom/sleepycat/je/Cursor;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    .line 191
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v2, :cond_0

    .line 192
    check-cast v1, Lcom/sleepycat/je/SecondaryCursor;

    iput-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    .line 197
    :cond_0
    return-object v0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    return-object v1
.end method

.method private doGetFirst(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1095
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1096
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1095
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->FIRST:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1108
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1107
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetLast(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1124
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->LAST:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1136
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1135
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetNext(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1151
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1152
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->NEXT:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1164
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1163
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1179
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->NEXT_DUP:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1180
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1179
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->NEXT_DUP:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1192
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1191
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetNextNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->NEXT_NO_DUP:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1208
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1207
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->NEXT_NO_DUP:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1220
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1219
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetPrev(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1233
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->PREV:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1237
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1236
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->PREV:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1249
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1248
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1261
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1264
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->PREV_DUP:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1265
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1264
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->PREV_DUP:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1277
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1276
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetPrevNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 6
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v2, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v4, Lcom/sleepycat/je/Get;->PREV_NO_DUP:Lcom/sleepycat/je/Get;

    iget-object v5, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1293
    invoke-virtual/range {v0 .. v5}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1292
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->PREV_NO_DUP:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1305
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1304
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetSearchBoth(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1381
    invoke-virtual {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->checkRecordNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1382
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    return-object v0

    .line 1384
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v3, :cond_1

    .line 1387
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    iget-object v6, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1388
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1387
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1399
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->SEARCH_BOTH:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1400
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1399
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetSearchBothRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1414
    invoke-virtual {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->checkRecordNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1415
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    return-object v0

    .line 1417
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v3, :cond_1

    .line 1420
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH_BOTH_GTE:Lcom/sleepycat/je/Get;

    iget-object v6, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1421
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1420
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1432
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->SEARCH_BOTH_GTE:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1433
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1432
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1318
    invoke-virtual {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->checkRecordNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1319
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    return-object v0

    .line 1321
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v3, :cond_1

    .line 1324
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    iget-object v6, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1325
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1324
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->SEARCH:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1337
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1336
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetSearchKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1349
    invoke-virtual {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->checkRecordNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1350
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    return-object v0

    .line 1352
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v3, :cond_1

    .line 1355
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v5, Lcom/sleepycat/je/Get;->SEARCH_GTE:Lcom/sleepycat/je/Get;

    iget-object v6, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1356
    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    sget-object v3, Lcom/sleepycat/je/Get;->SEARCH_GTE:Lcom/sleepycat/je/Get;

    iget-object v4, p1, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1368
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1367
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private doGetSearchRecordNumber(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 5
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat;->getRecordNumber(Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 1448
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    return-object v0

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v1, :cond_1

    .line 1451
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    .line 1454
    invoke-virtual {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v4

    .line 1452
    invoke-static {v0, v2, v1, v3, v4}, Lcom/sleepycat/compat/DbCompat;->getSearchRecordNumber(Lcom/sleepycat/je/SecondaryCursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 1451
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationStatus;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1456
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    .line 1458
    invoke-virtual {p1}, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->getLockMode()Lcom/sleepycat/je/LockMode;

    move-result-object v3

    .line 1457
    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/compat/DbCompat;->getSearchRecordNumber(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    .line 1456
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationStatus;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0
.end method

.method private endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 1
    .param p1, "oldCursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "result"    # Lcom/sleepycat/compat/DbCompat$OpResult;
    .param p3, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p5, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 215
    invoke-virtual {p2}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    if-eq p1, v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->closeCursor(Lcom/sleepycat/je/Cursor;)V

    .line 219
    :cond_0
    if-eqz p3, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p3, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->swapData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 222
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p4, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->swapData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 225
    :cond_2
    if-eqz p5, :cond_3

    .line 226
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p5, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->swapData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 228
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    goto :goto_0

    .line 230
    :cond_4
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    if-eq p1, v0, :cond_5

    .line 231
    invoke-virtual {p0, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->closeCursor(Lcom/sleepycat/je/Cursor;)V

    .line 232
    iput-object p1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    .line 233
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_5

    .line 234
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/SecondaryCursor;

    iput-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    .line 238
    :cond_5
    :goto_0
    return-void
.end method

.method private getLastInKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 4
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetLast(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 408
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 409
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 411
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 414
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, v1, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 415
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v1

    if-nez v1, :cond_3

    .line 419
    iget-boolean v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->sortedDups:Z

    if-nez v1, :cond_1

    .line 421
    return-object v0

    .line 431
    :cond_1
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrev(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    goto :goto_1

    .line 445
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetLast(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    goto :goto_1

    .line 454
    :cond_3
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrev(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    goto :goto_1

    .line 462
    :cond_4
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetLast(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 465
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_5

    .line 466
    return-object v0

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 476
    goto :goto_0

    .line 479
    :cond_6
    return-object v0
.end method

.method private getLastInPKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 5
    .param p1, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->isSingleKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 495
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 496
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBoth(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->sortedDups:Z

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 505
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 514
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 516
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 517
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 518
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBothRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 520
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 523
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v2, v2, Lcom/sleepycat/util/keyrange/KeyRange;->endInclusive:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v3, v2, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v4, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 524
    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    :cond_2
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_3

    .line 534
    return-object v0

    .line 537
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 544
    goto :goto_0

    .line 549
    :cond_4
    return-object v0

    .line 562
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_5
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 563
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 565
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_6

    .line 566
    return-object v0

    .line 576
    :cond_6
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 578
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 584
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrev(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    goto :goto_1

    .line 591
    :cond_7
    invoke-direct {p0, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetLast(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 594
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_8

    .line 595
    return-object v0

    .line 598
    :cond_8
    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_9

    .line 605
    goto/16 :goto_0

    .line 608
    :cond_9
    return-object v0
.end method

.method private init()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    instance-of v1, v0, Lcom/sleepycat/je/SecondaryCursor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 133
    check-cast v0, Lcom/sleepycat/je/SecondaryCursor;

    iput-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    goto :goto_0

    .line 135
    :cond_0
    iput-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 140
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 141
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    goto :goto_1

    .line 143
    :cond_1
    iput-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 144
    iput-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 145
    iput-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    .line 147
    :goto_1
    return-void
.end method

.method private setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 0
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 171
    iput-object p1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 172
    iput-object p2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 173
    iput-object p3, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    .line 174
    return-void
.end method

.method private static shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 3
    .param p0, "from"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "to"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 262
    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 265
    :cond_0
    return-void
.end method

.method private static swapData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 6
    .param p0, "e1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "e2"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 246
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 247
    .local v0, "d1":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v1

    .line 248
    .local v1, "o1":I
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v2

    .line 250
    .local v2, "s1":I
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v4

    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 251
    invoke-virtual {p1, v0, v1, v2}, Lcom/sleepycat/je/DatabaseEntry;->setData([BII)V

    .line 252
    return-void
.end method


# virtual methods
.method protected checkRecordNumber()Z
    .locals 1

    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {p0, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->closeCursor(Lcom/sleepycat/je/Cursor;)V

    .line 1038
    return-void
.end method

.method protected closeCursor(Lcom/sleepycat/je/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1482
    invoke-virtual {p1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 1483
    return-void
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->count()I

    move-result v0

    return v0
.end method

.method public delete()Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1049
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->delete()Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public dup(Z)Lcom/sleepycat/util/keyrange/RangeCursor;
    .locals 2
    .param p1, "samePosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 118
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/util/keyrange/RangeCursor;

    .line 119
    .local v0, "c":Lcom/sleepycat/util/keyrange/RangeCursor;
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {p0, v1, p1}, Lcom/sleepycat/util/keyrange/RangeCursor;->dupCursor(Lcom/sleepycat/je/Cursor;Z)Lcom/sleepycat/je/Cursor;

    move-result-object v1

    iput-object v1, v0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    .line 120
    invoke-direct {v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->init()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-object v0

    .line 122
    .end local v0    # "c":Lcom/sleepycat/util/keyrange/RangeCursor;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "neverHappens":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected dupCursor(Lcom/sleepycat/je/Cursor;Z)Lcom/sleepycat/je/Cursor;
    .locals 1
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "samePosition"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1473
    invoke-virtual {p1, p2}, Lcom/sleepycat/je/Cursor;->dup(Z)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrent(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1005
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-eqz v0, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1011
    sget-object v5, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    iget-object v6, p4, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1012
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/SecondaryCursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1011
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    sget-object v1, Lcom/sleepycat/je/Get;->CURRENT:Lcom/sleepycat/je/Get;

    iget-object v2, p4, Lcom/sleepycat/compat/DbCompat$OpReadOptions;->jeOptions:Lcom/sleepycat/je/ReadOptions;

    .line 1022
    invoke-virtual {v0, p1, p3, v1, v2}, Lcom/sleepycat/je/Cursor;->get(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/Get;Lcom/sleepycat/je/ReadOptions;)Lcom/sleepycat/je/OperationResult;

    move-result-object v0

    .line 1021
    invoke-static {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->make(Lcom/sleepycat/je/OperationResult;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 1006
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCursor()Lcom/sleepycat/je/Cursor;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    return-object v0
.end method

.method public getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 276
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetFirst(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 277
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 278
    return-object v0

    .line 280
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->isSingleKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 282
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 283
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBoth(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 284
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 285
    return-object v0

    .line 287
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 289
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 290
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 292
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->sortedDups:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 295
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 296
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBothRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 297
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 299
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v1

    if-nez v1, :cond_4

    .line 300
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 293
    :cond_3
    :goto_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 303
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 304
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 305
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 308
    :cond_5
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 309
    nop

    .line 310
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    goto/16 :goto_3

    .line 308
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8

    .line 310
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :cond_6
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_7

    .line 311
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v0, v1}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 312
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 313
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_3

    .line 315
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_7
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 316
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 318
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v1, :cond_8

    .line 319
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetFirst(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 321
    :cond_8
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->copy(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 322
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 323
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v1, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginInclusive:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    iget-object v3, v1, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 325
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->compare(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)I

    move-result v1

    if-nez v1, :cond_9

    .line 326
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 329
    :cond_9
    :goto_2
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 330
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 331
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 334
    :cond_a
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 335
    nop

    .line 337
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :goto_3
    return-object v0

    .line 334
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8
.end method

.method public getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 355
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 357
    .local v1, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 359
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetLast(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 360
    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 361
    return-object v0

    .line 364
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 366
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_2

    .line 367
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLastInPKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    move-object v1, v0

    .line 370
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 371
    invoke-virtual {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    :cond_1
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    move-object v1, v0

    goto :goto_0

    .line 375
    :cond_2
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLastInKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    move-object v1, v0

    .line 378
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 379
    invoke-virtual {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 380
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 384
    :cond_3
    move-object v0, v1

    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :goto_0
    nop

    .line 386
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 384
    return-object v0

    .line 386
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8
.end method

.method public getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 619
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-nez v0, :cond_0

    .line 620
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 624
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNext(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 625
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 626
    return-object v0

    .line 628
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_4

    .line 629
    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v0, :cond_2

    .line 630
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 631
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto/16 :goto_0

    .line 633
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_2
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 634
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 636
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 637
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x1

    .line 638
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 639
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 642
    :cond_3
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 643
    nop

    .line 644
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_0

    .line 642
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8

    .line 645
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_5

    .line 646
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 647
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 649
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_5
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 650
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 652
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNext(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 653
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 654
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 655
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 658
    :cond_6
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 659
    nop

    .line 661
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    return-object v0

    .line 658
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8
.end method

.method public getNextDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 939
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 945
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 946
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 947
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->endKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v0, :cond_2

    .line 948
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 949
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 951
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 952
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x1

    .line 953
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->checkEnd(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 954
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 957
    :cond_1
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 958
    nop

    .line 959
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_0

    .line 957
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8

    .line 960
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :cond_2
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 961
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 963
    :goto_0
    return-object v0

    .line 940
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 671
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-nez v0, :cond_0

    .line 672
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getFirst(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 676
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 677
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 678
    return-object v0

    .line 680
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_2

    .line 681
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    goto :goto_0

    .line 683
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_2
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 684
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 686
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetNextNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 687
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 688
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 689
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 692
    :cond_3
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 693
    nop

    .line 695
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    return-object v0

    .line 692
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8
.end method

.method public getPrev(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 705
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-nez v0, :cond_0

    .line 706
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 709
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 710
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrev(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 711
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 712
    return-object v0

    .line 714
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_4

    .line 715
    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    if-nez v0, :cond_2

    .line 716
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 717
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto/16 :goto_0

    .line 719
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_2
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 720
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 722
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 723
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x1

    .line 724
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->checkBegin(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 725
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 728
    :cond_3
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 729
    nop

    .line 730
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_0

    .line 728
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8

    .line 731
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :cond_4
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_5

    .line 732
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 733
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 735
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_5
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 736
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 738
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_1
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrev(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 739
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 740
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 741
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 744
    :cond_6
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 745
    nop

    .line 747
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    return-object v0

    .line 744
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8
.end method

.method public getPrevDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 972
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-eqz v0, :cond_3

    .line 976
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 977
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 978
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 979
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 980
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->beginKey:Lcom/sleepycat/je/DatabaseEntry;

    if-eqz v0, :cond_2

    .line 981
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 982
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 984
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 985
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    const/4 v3, 0x1

    .line 986
    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/util/keyrange/KeyRange;->checkBegin(Lcom/sleepycat/je/DatabaseEntry;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 987
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 990
    :cond_1
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 991
    nop

    .line 992
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_0

    .line 990
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8

    .line 993
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :cond_2
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 994
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 996
    :goto_0
    return-object v0

    .line 973
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cursor not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrevNoDup(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 757
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->getLast(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    return-object v0

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 762
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 763
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 764
    return-object v0

    .line 766
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-boolean v0, v0, Lcom/sleepycat/util/keyrange/KeyRange;->singleKey:Z

    if-eqz v0, :cond_2

    .line 767
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    goto :goto_0

    .line 769
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_2
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 770
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 772
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetPrevNoDup(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 773
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 774
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 775
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 778
    :cond_3
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 779
    nop

    .line 781
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :goto_0
    return-object v0

    .line 778
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8
.end method

.method public getSearchBoth(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 827
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 829
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBoth(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 830
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 831
    return-object v0

    .line 833
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0, p1}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {v0, p2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p1, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 838
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p2, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_0

    .line 841
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p3, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 843
    :goto_0
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBoth(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 844
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    goto :goto_2

    .line 835
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_3
    :goto_1
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 846
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :goto_2
    return-object v0
.end method

.method public getSearchBothRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 14
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 883
    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 884
    .local v1, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    invoke-direct/range {p0 .. p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 886
    invoke-direct {p0, v9}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBothRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 887
    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 888
    return-object v0

    .line 890
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v10

    .line 892
    .local v10, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v11, p1

    :try_start_1
    invoke-static {p1, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 893
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->secCursor:Lcom/sleepycat/je/SecondaryCursor;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {v8, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    move-object/from16 v12, p3

    goto :goto_0

    .line 896
    :cond_1
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->privData:Lcom/sleepycat/je/DatabaseEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v12, p3

    :try_start_2
    invoke-static {v12, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 898
    :goto_0
    invoke-direct {p0, v9}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchBothRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    move-object v1, v0

    .line 899
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 900
    invoke-virtual {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_3

    .line 901
    invoke-virtual {v0, v8}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 902
    :cond_2
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_1

    .line 905
    :cond_3
    move-object v0, v1

    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :goto_1
    move-object v1, p0

    move-object v2, v10

    move-object v3, v0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 906
    nop

    .line 907
    return-object v0

    .line 905
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v11, p1

    :goto_2
    move-object/from16 v12, p3

    :goto_3
    move-object v13, v0

    move-object v0, v1

    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    move-object v1, p0

    move-object v2, v10

    move-object v3, v0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v13
.end method

.method public getSearchKey(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 9
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 793
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 794
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 795
    return-object v0

    .line 797
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0, p1}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    goto/16 :goto_0

    .line 799
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    if-eqz v0, :cond_3

    .line 800
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 801
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v7

    .line 803
    .local v7, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p1, v1}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 804
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v1

    move-object v0, v1

    .line 805
    invoke-virtual {v0}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privPKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 806
    invoke-virtual {v1, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 807
    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 810
    :cond_2
    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 811
    nop

    .line 812
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    goto :goto_0

    .line 810
    .restart local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v8

    .line 813
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .end local v7    # "oldCursor":Lcom/sleepycat/je/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p1, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 814
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKey(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 815
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 817
    :goto_0
    return-object v0
.end method

.method public getSearchKeyRange(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 13
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 855
    move-object v7, p0

    move-object/from16 v8, p4

    sget-object v1, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .line 856
    .local v1, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 857
    invoke-direct/range {p0 .. p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 858
    invoke-direct {p0, v8}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 859
    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 860
    return-object v0

    .line 862
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/util/keyrange/RangeCursor;->beginOperation()Lcom/sleepycat/je/Cursor;

    move-result-object v9

    .line 864
    .local v9, "oldCursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v10, p1

    :try_start_1
    invoke-static {p1, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 865
    invoke-direct {p0, v8}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchKeyRange(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    move-object v1, v0

    .line 866
    invoke-virtual {v1}, Lcom/sleepycat/compat/DbCompat$OpResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    iget-object v2, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    .line 867
    invoke-virtual {v0, v2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/sleepycat/util/keyrange/RangeCursor;->pkRange:Lcom/sleepycat/util/keyrange/KeyRange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 868
    move-object v11, p2

    :try_start_2
    invoke-virtual {v0, p2}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 867
    :cond_1
    move-object v11, p2

    goto :goto_1

    :cond_2
    move-object v11, p2

    .line 869
    :goto_0
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_2

    .line 872
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 866
    :cond_3
    move-object v11, p2

    .line 872
    :cond_4
    :goto_1
    move-object v0, v1

    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :goto_2
    move-object v1, p0

    move-object v2, v9

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 873
    nop

    .line 874
    return-object v0

    .line 872
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v10, p1

    :goto_3
    move-object v11, p2

    :goto_4
    move-object v12, v0

    move-object v0, v1

    .end local v1    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    move-object v1, p0

    move-object v2, v9

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    throw v12
.end method

.method public getSearchRecordNumber(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;
    .locals 7
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "pKey"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p3, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p4, "options"    # Lcom/sleepycat/compat/DbCompat$OpReadOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0}, Lcom/sleepycat/util/keyrange/KeyRange;->hasBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/util/keyrange/RangeCursor;->setParams(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 919
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchRecordNumber(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 920
    .local v0, "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 921
    return-object v0

    .line 923
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->range:Lcom/sleepycat/util/keyrange/KeyRange;

    invoke-virtual {v0, p1}, Lcom/sleepycat/util/keyrange/KeyRange;->check(Lcom/sleepycat/je/DatabaseEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 924
    sget-object v0, Lcom/sleepycat/compat/DbCompat$OpResult;->FAILURE:Lcom/sleepycat/compat/DbCompat$OpResult;

    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    goto :goto_0

    .line 926
    .end local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->privKey:Lcom/sleepycat/je/DatabaseEntry;

    invoke-static {p1, v0}, Lcom/sleepycat/util/keyrange/RangeCursor;->shareData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 927
    invoke-direct {p0, p4}, Lcom/sleepycat/util/keyrange/RangeCursor;->doGetSearchRecordNumber(Lcom/sleepycat/compat/DbCompat$OpReadOptions;)Lcom/sleepycat/compat/DbCompat$OpResult;

    move-result-object v0

    .line 928
    .restart local v0    # "result":Lcom/sleepycat/compat/DbCompat$OpResult;
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/util/keyrange/RangeCursor;->endOperation(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/compat/DbCompat$OpResult;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)V

    .line 930
    :goto_0
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->initialized:Z

    return v0
.end method

.method public put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/Cursor;->put(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public putAfter(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/compat/DbCompat;->putAfter(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public putBefore(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1086
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/compat/DbCompat;->putBefore(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1074
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/Cursor;->putCurrent(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public putNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/Cursor;->putNoDupData(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method

.method public putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;
    .locals 1
    .param p1, "key"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p2, "data"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lcom/sleepycat/util/keyrange/RangeCursor;->cursor:Lcom/sleepycat/je/Cursor;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/Cursor;->putNoOverwrite(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v0

    return-object v0
.end method
