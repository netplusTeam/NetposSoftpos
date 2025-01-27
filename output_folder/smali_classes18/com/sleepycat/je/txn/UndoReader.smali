.class public Lcom/sleepycat/je/txn/UndoReader;
.super Ljava/lang/Object;
.source "UndoReader.java"


# instance fields
.field public final db:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field public final ln:Lcom/sleepycat/je/tree/LN;

.field public final logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;"
        }
    .end annotation
.end field

.field public final logEntrySize:I

.field private final lsn:J


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/tree/LN;JILcom/sleepycat/je/dbi/DatabaseImpl;)V
    .locals 0
    .param p2, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p3, "lsn"    # J
    .param p5, "logEntrySize"    # I
    .param p6, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;",
            "Lcom/sleepycat/je/tree/LN;",
            "JI",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ")V"
        }
    .end annotation

    .line 46
    .local p1, "logEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/txn/UndoReader;->logEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 48
    iput-object p2, p0, Lcom/sleepycat/je/txn/UndoReader;->ln:Lcom/sleepycat/je/tree/LN;

    .line 49
    iput-wide p3, p0, Lcom/sleepycat/je/txn/UndoReader;->lsn:J

    .line 50
    iput p5, p0, Lcom/sleepycat/je/txn/UndoReader;->logEntrySize:I

    .line 51
    iput-object p6, p0, Lcom/sleepycat/je/txn/UndoReader;->db:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 52
    return-void
.end method

.method public static create(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/util/Map;)Lcom/sleepycat/je/txn/UndoReader;
    .locals 17
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "undoLsn"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "J",
            "Ljava/util/Map<",
            "Lcom/sleepycat/je/dbi/DatabaseId;",
            "Lcom/sleepycat/je/dbi/DatabaseImpl;",
            ">;)",
            "Lcom/sleepycat/je/txn/UndoReader;"
        }
    .end annotation

    .line 66
    .local p3, "undoDatabases":Ljava/util/Map;, "Ljava/util/Map<Lcom/sleepycat/je/dbi/DatabaseId;Lcom/sleepycat/je/dbi/DatabaseImpl;>;"
    move-wide/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v7, v8}, Lcom/sleepycat/je/log/LogManager;->getWholeLogEntryHandleNotFound(J)Lcom/sleepycat/je/log/WholeEntry;

    move-result-object v9

    .line 68
    .local v9, "wholeEntry":Lcom/sleepycat/je/log/WholeEntry;
    invoke-virtual {v9}, Lcom/sleepycat/je/log/WholeEntry;->getHeader()Lcom/sleepycat/je/log/LogEntryHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v10

    .line 69
    .local v10, "logEntrySize":I
    invoke-virtual {v9}, Lcom/sleepycat/je/log/WholeEntry;->getEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 70
    .local v11, "logEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v11}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v12

    .line 71
    .local v12, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move-object/from16 v13, p3

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 72
    .local v14, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-eqz v14, :cond_0

    .line 77
    invoke-virtual {v11, v14}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 78
    invoke-virtual {v11}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v15

    .line 79
    .local v15, "ln":Lcom/sleepycat/je/tree/LN;
    move-wide/from16 v3, p1

    .line 80
    .local v3, "lsn":J
    invoke-virtual {v15, v14, v7, v8}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 82
    new-instance v16, Lcom/sleepycat/je/txn/UndoReader;

    move-object/from16 v0, v16

    move-object v1, v11

    move-object v2, v15

    move v5, v10

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/txn/UndoReader;-><init>(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/tree/LN;JILcom/sleepycat/je/dbi/DatabaseImpl;)V

    return-object v16

    .line 73
    .end local v3    # "lsn":J
    .end local v15    # "ln":Lcom/sleepycat/je/tree/LN;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB not found during non-recovery undo/rollback, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static createForRecovery(Lcom/sleepycat/je/log/LNFileReader;Lcom/sleepycat/je/dbi/DbTree;)Lcom/sleepycat/je/txn/UndoReader;
    .locals 16
    .param p0, "reader"    # Lcom/sleepycat/je/log/LNFileReader;
    .param p1, "dbMapTree"    # Lcom/sleepycat/je/dbi/DbTree;

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/LNFileReader;->getLNLogEntry()Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v7

    .line 97
    .local v7, "logEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    invoke-virtual {v7}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v8

    .line 98
    .local v8, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Lcom/sleepycat/je/dbi/DbTree;->getDb(Lcom/sleepycat/je/dbi/DatabaseId;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v10

    .line 99
    .local v10, "db":Lcom/sleepycat/je/dbi/DatabaseImpl;
    if-nez v10, :cond_0

    .line 100
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v7, v10}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 103
    invoke-virtual {v7}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v11

    .line 104
    .local v11, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/LNFileReader;->getLastLsn()J

    move-result-wide v12

    .line 105
    .local v12, "lsn":J
    invoke-virtual {v11, v10, v12, v13}, Lcom/sleepycat/je/tree/LN;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/log/LNFileReader;->getLastEntrySize()I

    move-result v14

    .line 108
    .local v14, "logEntrySize":I
    new-instance v15, Lcom/sleepycat/je/txn/UndoReader;

    move-object v0, v15

    move-object v1, v7

    move-object v2, v11

    move-wide v3, v12

    move v5, v14

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/txn/UndoReader;-><init>(Lcom/sleepycat/je/log/entry/LNLogEntry;Lcom/sleepycat/je/tree/LN;JILcom/sleepycat/je/dbi/DatabaseImpl;)V

    return-object v15
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/txn/UndoReader;->ln:Lcom/sleepycat/je/tree/LN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lsn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/txn/UndoReader;->lsn:J

    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
