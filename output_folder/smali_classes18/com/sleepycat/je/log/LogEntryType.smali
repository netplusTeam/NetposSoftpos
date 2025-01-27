.class public Lcom/sleepycat/je/log/LogEntryType;
.super Ljava/lang/Object;
.source "LogEntryType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;,
        Lcom/sleepycat/je/log/LogEntryType$NodeType;,
        Lcom/sleepycat/je/log/LogEntryType$Replicable;,
        Lcom/sleepycat/je/log/LogEntryType$Marshall;,
        Lcom/sleepycat/je/log/LogEntryType$Txnal;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final FIRST_LOG_VERSION:I = 0x1

.field public static final LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_CKPT_START:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DBIN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DEL_DUPLN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DEL_DUPLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DEL_LN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DEL_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DIN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DUPCOUNTLN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_DUPCOUNTLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_EXTINCT_SCAN_LN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_EXTINCT_SCAN_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_FILESUMMARYLN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_IMMUTABLE_FILE:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_INS_LN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_INS_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_IN_DELETE_INFO:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_IN_DUPDELETE_INFO:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_MAPLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_MATCHPOINT:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_NAMELN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_OLD_DUP_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_OLD_LN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_OLD_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_RESERVED_FILE_LN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_RESTORE_REQUIRED:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_ROLLBACK_END:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_TRACE:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_TXN_PREPARE:Lcom/sleepycat/je/log/LogEntryType;

.field private static LOG_TYPES:[Lcom/sleepycat/je/log/LogEntryType; = null

.field public static final LOG_UPD_LN:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_UPD_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

.field public static final LOG_VERSION:I = 0x11

.field public static final LOG_VERSION_DURABLE_VLSN:I = 0xd

.field public static final LOG_VERSION_EXPIRE_INFO:I = 0xc

.field public static final LOG_VERSION_HIGHEST_REPLICABLE:I = 0x10

.field public static final LOG_VERSION_REPLICATE_OLDER:I = 0x9

.field private static final MAX_TYPE_NUM:I = 0x2b

.field public static final UNKNOWN_FILE_HEADER_VERSION:I = -0x1


# instance fields
.field private final displayName:Ljava/lang/String;

.field private isTransactional:Lcom/sleepycat/je/log/LogEntryType$Txnal;

.field private final logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private marshallBehavior:Lcom/sleepycat/je/log/LogEntryType$Marshall;

.field private nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

.field private replicationPossible:Lcom/sleepycat/je/log/LogEntryType$Replicable;

.field private final typeNum:B


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 71
    nop

    .line 284
    const/16 v0, 0x2b

    new-array v0, v0, [Lcom/sleepycat/je/log/LogEntryType;

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TYPES:[Lcom/sleepycat/je/log/LogEntryType;

    .line 309
    const/4 v1, 0x1

    const-class v0, Lcom/sleepycat/je/tree/LN;

    .line 312
    invoke-static {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 310
    const-string v2, "LN_TX"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 322
    const/4 v1, 0x2

    const-class v0, Lcom/sleepycat/je/tree/LN;

    .line 325
    invoke-static {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 323
    const-string v2, "LN"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 334
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/4 v2, 0x3

    const-class v1, Lcom/sleepycat/je/tree/MapLN;

    .line 337
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "MapLN_TX"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 342
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/4 v9, 0x4

    const-class v1, Lcom/sleepycat/je/tree/MapLN;

    .line 345
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "MapLN"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_MAPLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 350
    const/4 v1, 0x5

    new-instance v3, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;-><init>()V

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 351
    const-string v2, "NameLN_TX"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 359
    const/4 v1, 0x6

    new-instance v3, Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;-><init>()V

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 360
    const-string v2, "NameLN"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_NAMELN:Lcom/sleepycat/je/log/LogEntryType;

    .line 369
    const/4 v1, 0x7

    new-instance v3, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;-><init>()V

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 370
    const-string v2, "DelDupLN_TX"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DEL_DUPLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 379
    const/16 v1, 0x8

    new-instance v3, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/log/entry/DeletedDupLNLogEntry;-><init>()V

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 380
    const-string v2, "DelDupLN"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DEL_DUPLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 389
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x9

    const-class v1, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;

    .line 392
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "DupCountLN_TX"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 398
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0xa

    const-class v1, Lcom/sleepycat/je/tree/dupConvert/DupCountLN;

    .line 401
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "DupCountLN"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 406
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0xb

    const-class v1, Lcom/sleepycat/je/tree/FileSummaryLN;

    .line 409
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "FileSummaryLN"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILESUMMARYLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 414
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0xc

    const-class v1, Lcom/sleepycat/je/tree/IN;

    .line 417
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/INLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->IN:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "IN"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    .line 422
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0xd

    const-class v1, Lcom/sleepycat/je/tree/BIN;

    .line 425
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/INLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->IN:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "BIN"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    .line 431
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0xe

    const-class v1, Lcom/sleepycat/je/tree/dupConvert/DIN;

    .line 434
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/INLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "DIN"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DIN:Lcom/sleepycat/je/log/LogEntryType;

    .line 440
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0xf

    const-class v1, Lcom/sleepycat/je/tree/dupConvert/DBIN;

    .line 443
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/INLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/INLogEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "DBIN"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBIN:Lcom/sleepycat/je/log/LogEntryType;

    .line 452
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x10

    const-class v1, Lcom/sleepycat/je/dbi/DbTree;

    .line 455
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "DbTree"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBTREE:Lcom/sleepycat/je/log/LogEntryType;

    .line 462
    const/16 v1, 0x11

    new-instance v3, Lcom/sleepycat/je/log/entry/CommitLogEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/log/entry/CommitLogEntry;-><init>()V

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 463
    const-string v2, "Commit"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    .line 471
    const/16 v1, 0x12

    new-instance v3, Lcom/sleepycat/je/log/entry/AbortLogEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/log/entry/AbortLogEntry;-><init>()V

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Marshall;->INSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 472
    const-string v2, "Abort"

    invoke-static/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    .line 480
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x13

    const-class v1, Lcom/sleepycat/je/recovery/CheckpointStart;

    .line 483
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "CkptStart"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_START:Lcom/sleepycat/je/log/LogEntryType;

    .line 489
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x14

    const-class v1, Lcom/sleepycat/je/recovery/CheckpointEnd;

    .line 492
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "CkptEnd"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_CKPT_END:Lcom/sleepycat/je/log/LogEntryType;

    .line 499
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x15

    const-class v1, Lcom/sleepycat/je/tree/dupConvert/INDeleteInfo;

    .line 502
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "INDelete"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN_DELETE_INFO:Lcom/sleepycat/je/log/LogEntryType;

    .line 509
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x16

    new-instance v11, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;

    const-class v1, Lcom/sleepycat/je/tree/OldBINDelta;

    invoke-direct {v11, v1}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;-><init>(Ljava/lang/Class;)V

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "BINDelta"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 519
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x17

    new-instance v4, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;

    const-class v1, Lcom/sleepycat/je/tree/OldBINDelta;

    invoke-direct {v4, v1}, Lcom/sleepycat/je/log/entry/OldBINDeltaLogEntry;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "DupBINDelta"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_OLD_DUP_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 529
    const/16 v8, 0x18

    new-instance v10, Lcom/sleepycat/je/log/entry/TraceLogEntry;

    invoke-direct {v10}, Lcom/sleepycat/je/log/entry/TraceLogEntry;-><init>()V

    sget-object v11, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 530
    const-string v9, "Trace"

    invoke-static/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TRACE:Lcom/sleepycat/je/log/LogEntryType;

    .line 539
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x19

    new-instance v4, Lcom/sleepycat/je/log/entry/FileHeaderEntry;

    const-class v1, Lcom/sleepycat/je/log/FileHeader;

    invoke-direct {v4, v1}, Lcom/sleepycat/je/log/entry/FileHeaderEntry;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "FileHeader"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    .line 549
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x1a

    const-class v1, Lcom/sleepycat/je/tree/dupConvert/INDupDeleteInfo;

    .line 552
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "INDupDelete"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN_DUPDELETE_INFO:Lcom/sleepycat/je/log/LogEntryType;

    .line 558
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x1b

    const-class v1, Lcom/sleepycat/je/txn/TxnPrepare;

    .line 561
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "Prepare"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_PREPARE:Lcom/sleepycat/je/log/LogEntryType;

    .line 567
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x1c

    const-class v1, Lcom/sleepycat/je/txn/RollbackStart;

    .line 570
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "RollbackStart"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_START:Lcom/sleepycat/je/log/LogEntryType;

    .line 576
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x1d

    const-class v1, Lcom/sleepycat/je/txn/RollbackEnd;

    .line 579
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "RollbackEnd"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_ROLLBACK_END:Lcom/sleepycat/je/log/LogEntryType;

    .line 585
    const/16 v8, 0x1e

    new-instance v10, Lcom/sleepycat/je/log/entry/MatchpointLogEntry;

    invoke-direct {v10}, Lcom/sleepycat/je/log/entry/MatchpointLogEntry;-><init>()V

    sget-object v11, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 586
    const-string v9, "Matchpoint"

    invoke-static/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;->createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_MATCHPOINT:Lcom/sleepycat/je/log/LogEntryType;

    .line 594
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;

    const/16 v1, 0x1f

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v3, "DEL_LN_TX"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DEL_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 597
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;

    const/16 v1, 0x20

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v3, "DEL_LN"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_DEL_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 600
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;

    const/16 v1, 0x21

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v3, "INS_LN_TX"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 603
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;

    const/16 v1, 0x22

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v3, "INS_LN"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_INS_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 606
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;

    const/16 v1, 0x23

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v3, "UPD_LN_TX"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_UPD_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 609
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;

    const/16 v1, 0x24

    sget-object v2, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    const-string v3, "UPD_LN"

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/log/LogEntryType$UserLNLogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/LogEntryType$Txnal;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_UPD_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 612
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v5, 0x25

    new-instance v7, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;

    const-class v1, Lcom/sleepycat/je/tree/BIN;

    invoke-direct {v7, v1}, Lcom/sleepycat/je/log/entry/BINDeltaLogEntry;-><init>(Ljava/lang/Class;)V

    sget-object v8, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v9, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v10, Lcom/sleepycat/je/log/LogEntryType$NodeType;->IN:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v6, "NewBINDelta"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN_DELTA:Lcom/sleepycat/je/log/LogEntryType;

    .line 620
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v12, 0x26

    const-class v1, Lcom/sleepycat/je/log/entry/EmptyLogEntry;

    .line 623
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v14

    sget-object v15, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v16, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v17, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v13, "ImmutableFile"

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_IMMUTABLE_FILE:Lcom/sleepycat/je/log/LogEntryType;

    .line 629
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x27

    const-class v1, Lcom/sleepycat/je/log/entry/RestoreRequired;

    .line 632
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/SingleItemEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/SingleItemEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "RestoreRequired"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_RESTORE_REQUIRED:Lcom/sleepycat/je/log/LogEntryType;

    .line 638
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x28

    const-class v1, Lcom/sleepycat/je/tree/LN;

    .line 641
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "ReservedFileLN"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_RESERVED_FILE_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 646
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x29

    const-class v1, Lcom/sleepycat/je/tree/LN;

    .line 649
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "ExtinctScanLN"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN:Lcom/sleepycat/je/log/LogEntryType;

    .line 654
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v9, 0x2a

    const-class v1, Lcom/sleepycat/je/tree/LN;

    .line 657
    invoke-static {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->create(Ljava/lang/Class;)Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-result-object v11

    sget-object v12, Lcom/sleepycat/je/log/LogEntryType$Txnal;->TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v13, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v14, Lcom/sleepycat/je/log/LogEntryType$Replicable;->REPLICABLE_NO_MATCH:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    sget-object v15, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v10, "ExtinctScanLN_TX"

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_EXTINCT_SCAN_LN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    .line 663
    new-instance v0, Lcom/sleepycat/je/log/LogEntryType;

    const/16 v2, 0x2b

    new-instance v4, Lcom/sleepycat/je/log/entry/ErasedLogEntry;

    invoke-direct {v4}, Lcom/sleepycat/je/log/entry/ErasedLogEntry;-><init>()V

    sget-object v5, Lcom/sleepycat/je/log/LogEntryType$Txnal;->NON_TXNAL:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Marshall;->OUTSIDE_LATCH:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    sget-object v7, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    const-string v3, "Erased"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    sput-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_ERASED:Lcom/sleepycat/je/log/LogEntryType;

    return-void
.end method

.method constructor <init>(B)V
    .locals 1
    .param p1, "typeNum"    # B

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-byte p1, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->displayName:Ljava/lang/String;

    .line 713
    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 714
    return-void
.end method

.method constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "typeNum"    # B
    .param p2, "displayName"    # Ljava/lang/String;

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/16 v0, 0x2b

    if-le p1, v0, :cond_0

    .line 721
    iput-byte p1, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    .line 722
    iput-object p2, p0, Lcom/sleepycat/je/log/LogEntryType;->displayName:Ljava/lang/String;

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 724
    return-void

    .line 720
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V
    .locals 8
    .param p1, "typeNum"    # B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "logEntry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p4, "isTransactional"    # Lcom/sleepycat/je/log/LogEntryType$Txnal;
    .param p5, "marshallBehavior"    # Lcom/sleepycat/je/log/LogEntryType$Marshall;
    .param p6, "nodeType"    # Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 744
    sget-object v6, Lcom/sleepycat/je/log/LogEntryType$Replicable;->LOCAL:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    .line 746
    return-void
.end method

.method private constructor <init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V
    .locals 2
    .param p1, "typeNum"    # B
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "logEntry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p4, "isTransactional"    # Lcom/sleepycat/je/log/LogEntryType$Txnal;
    .param p5, "marshallBehavior"    # Lcom/sleepycat/je/log/LogEntryType$Marshall;
    .param p6, "replicationPossible"    # Lcom/sleepycat/je/log/LogEntryType$Replicable;
    .param p7, "nodeType"    # Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-byte p1, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    .line 785
    iput-object p2, p0, Lcom/sleepycat/je/log/LogEntryType;->displayName:Ljava/lang/String;

    .line 786
    iput-object p3, p0, Lcom/sleepycat/je/log/LogEntryType;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 787
    iput-object p4, p0, Lcom/sleepycat/je/log/LogEntryType;->isTransactional:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    .line 788
    iput-object p5, p0, Lcom/sleepycat/je/log/LogEntryType;->marshallBehavior:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    .line 789
    iput-object p6, p0, Lcom/sleepycat/je/log/LogEntryType;->replicationPossible:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    .line 790
    iput-object p7, p0, Lcom/sleepycat/je/log/LogEntryType;->nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 791
    invoke-interface {p3, p0}, Lcom/sleepycat/je/log/entry/LogEntry;->setLogType(Lcom/sleepycat/je/log/LogEntryType;)V

    .line 792
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TYPES:[Lcom/sleepycat/je/log/LogEntryType;

    add-int/lit8 v1, p1, -0x1

    aput-object p0, v0, v1

    .line 794
    if-eqz p3, :cond_2

    if-eqz p6, :cond_2

    .line 795
    invoke-virtual {p6}, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isReplicable()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/sleepycat/je/log/entry/ReplicableLogEntry;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Replicable log types must have replicable log entries"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 798
    :cond_1
    :goto_0
    return-void

    .line 794
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;Lcom/sleepycat/je/log/LogEntryType$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p4, "x3"    # Lcom/sleepycat/je/log/LogEntryType$Txnal;
    .param p5, "x4"    # Lcom/sleepycat/je/log/LogEntryType$Marshall;
    .param p6, "x5"    # Lcom/sleepycat/je/log/LogEntryType$Replicable;
    .param p7, "x6"    # Lcom/sleepycat/je/log/LogEntryType$NodeType;
    .param p8, "x7"    # Lcom/sleepycat/je/log/LogEntryType$1;

    .line 71
    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    return-void
.end method

.method public static compareTypeAndVersion(IBIB)Z
    .locals 2
    .param p0, "versionA"    # I
    .param p1, "typeA"    # B
    .param p2, "versionB"    # I
    .param p3, "typeB"    # B

    .line 1053
    invoke-static {p1}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    .line 1054
    .local v0, "entryA":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v0, p0, p2, p3}, Lcom/sleepycat/je/log/LogEntryType;->compareTypeAndVersion(IIB)Z

    move-result v1

    return v1
.end method

.method private static createReplicableLogEntryType(BLjava/lang/String;Lcom/sleepycat/je/log/entry/ReplicableLogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)Lcom/sleepycat/je/log/LogEntryType;
    .locals 9
    .param p0, "typeNum"    # B
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "logEntry"    # Lcom/sleepycat/je/log/entry/ReplicableLogEntry;
    .param p3, "isTransactional"    # Lcom/sleepycat/je/log/LogEntryType$Txnal;
    .param p4, "marshallBehavior"    # Lcom/sleepycat/je/log/LogEntryType$Marshall;
    .param p5, "replicationPossible"    # Lcom/sleepycat/je/log/LogEntryType$Replicable;
    .param p6, "nodeType"    # Lcom/sleepycat/je/log/LogEntryType$NodeType;

    .line 767
    new-instance v8, Lcom/sleepycat/je/log/LogEntryType;

    move-object v0, v8

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/log/LogEntryType;-><init>(BLjava/lang/String;Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/LogEntryType$Txnal;Lcom/sleepycat/je/log/LogEntryType$Marshall;Lcom/sleepycat/je/log/LogEntryType$Replicable;Lcom/sleepycat/je/log/LogEntryType$NodeType;)V

    return-object v8
.end method

.method public static findType(B)Lcom/sleepycat/je/log/LogEntryType;
    .locals 2
    .param p0, "typeNum"    # B

    .line 804
    if-lez p0, :cond_1

    const/16 v0, 0x2b

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_TYPES:[Lcom/sleepycat/je/log/LogEntryType;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0

    .line 805
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAllTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/log/LogEntryType;",
            ">;"
        }
    .end annotation

    .line 814
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 816
    .local v0, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/log/LogEntryType;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x2b

    if-ge v1, v2, :cond_0

    .line 817
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_TYPES:[Lcom/sleepycat/je/log/LogEntryType;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 816
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static isSyncPoint(B)Z
    .locals 1
    .param p0, "entryType"    # B

    .line 1002
    invoke-static {p0}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->isSyncPoint()Z

    move-result v0

    return v0
.end method

.method static isValidType(B)Z
    .locals 1
    .param p0, "typeNum"    # B

    .line 846
    if-lez p0, :cond_0

    const/16 v0, 0x2b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTypeAndVersion(IIB)Z
    .locals 1
    .param p1, "versionA"    # I
    .param p2, "versionB"    # I
    .param p3, "typeB"    # B

    .line 949
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 872
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 873
    return v0

    .line 877
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/log/LogEntryType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 878
    return v2

    .line 881
    :cond_1
    iget-byte v1, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    move-object v3, p1

    check-cast v3, Lcom/sleepycat/je/log/LogEntryType;

    iget-byte v3, v3, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public equalsType(B)Z
    .locals 1
    .param p1, "type"    # B

    .line 862
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    invoke-interface {v0}, Lcom/sleepycat/je/log/entry/LogEntry;->clone()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1

    .line 826
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->logEntry:Lcom/sleepycat/je/log/entry/LogEntry;

    return-object v0
.end method

.method public getTypeNum()B
    .locals 1

    .line 839
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 889
    iget-byte v0, p0, Lcom/sleepycat/je/log/LogEntryType;->typeNum:B

    return v0
.end method

.method public isINType()Z
    .locals 2

    .line 1037
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;->IN:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLNType()Z
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_INTERNAL:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isNodeType()Z
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;->NONE:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOldDupType()Z
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;->OLD_DUP:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplicationPossible()Z
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->replicationPossible:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isReplicable()Z

    move-result v0

    return v0
.end method

.method public isSyncPoint()Z
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->replicationPossible:Lcom/sleepycat/je/log/LogEntryType$Replicable;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType$Replicable;->isMatchable()Z

    move-result v0

    return v0
.end method

.method public isTransactional()Z
    .locals 1

    .line 912
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->isTransactional:Lcom/sleepycat/je/log/LogEntryType$Txnal;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType$Txnal;->isTransactional()Z

    move-result v0

    return v0
.end method

.method public isUserLNType()Z
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->nodeType:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    sget-object v1, Lcom/sleepycat/je/log/LogEntryType$NodeType;->LN_USER:Lcom/sleepycat/je/log/LogEntryType$NodeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshallOutsideLatch()Z
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->marshallBehavior:Lcom/sleepycat/je/log/LogEntryType$Marshall;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType$Marshall;->marshallOutsideLatch()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public toStringNoVersion()Ljava/lang/String;
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/sleepycat/je/log/LogEntryType;->displayName:Ljava/lang/String;

    return-object v0
.end method
