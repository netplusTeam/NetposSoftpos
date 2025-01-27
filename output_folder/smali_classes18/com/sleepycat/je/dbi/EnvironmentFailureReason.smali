.class public final enum Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
.super Ljava/lang/Enum;
.source "EnvironmentFailureReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sleepycat/je/dbi/EnvironmentFailureReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum BTREE_CORRUPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum ENV_LOCKED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum ENV_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum FOUND_COMMITTED_TXN:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum HARD_RECOVERY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum INSUFFICIENT_LOG:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum JAVA_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LATCH_ALREADY_HELD:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LATCH_NOT_HELD:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LISTENER_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_INCOMPLETE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_UNEXPECTED_FILE_DELETION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum MASTER_TO_REPLICA_TRANSITION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum MONITOR_REGISTRATION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum PROGRESS_LISTENER_HALT:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum PROTOCOL_VERSION_MISMATCH:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum ROLLBACK_PROHIBITED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum SHUTDOWN_REQUESTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum TEST_INVALIDATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum THREAD_INTERRUPTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum UNCAUGHT_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum UNEXPECTED_EXCEPTION_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum UNEXPECTED_STATE_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum VERSION_MISMATCH:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

.field public static final enum WEDGED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;


# instance fields
.field private final description:Ljava/lang/String;

.field private final envShouldExist:Z

.field private final invalidates:Z


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 21
    new-instance v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v1, "ENV_LOCKED"

    const/4 v2, 0x0

    const-string v3, "The je.lck file could not be locked."

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->ENV_LOCKED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 24
    new-instance v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v3, "ENV_NOT_FOUND"

    const/4 v4, 0x1

    const-string v5, "EnvironmentConfig.setAllowCreate is false so environment creation is not permitted, but there are no log files in the environment directory."

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->ENV_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 29
    new-instance v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v5, "FOUND_COMMITTED_TXN"

    const/4 v6, 0x2

    const-string v7, "One committed transaction has been found after a corrupted log entry. The recovery process has been stopped, and the user may need to run DbTruncateLog to truncate the log. Some valid data may be lost if the log file is truncated for recovery."

    invoke-direct {v3, v5, v6, v4, v7}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->FOUND_COMMITTED_TXN:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 35
    new-instance v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v7, "HANDSHAKE_ERROR"

    const/4 v8, 0x3

    const-string v9, "Error during the handshake between two nodes. Some validity or compatibility check failed, preventing further communication between the nodes."

    invoke-direct {v5, v7, v8, v4, v9}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HANDSHAKE_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 40
    new-instance v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v9, "HARD_RECOVERY"

    const/4 v10, 0x4

    const-string v11, "Rolled back past transaction commit or abort. Must run recovery by re-opening Environment handles"

    invoke-direct {v7, v9, v10, v4, v11}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v7, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->HARD_RECOVERY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 44
    new-instance v9, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v11, "JAVA_ERROR"

    const/4 v12, 0x5

    const-string v13, "Java Error occurred, recovery may not be possible."

    invoke-direct {v9, v11, v12, v4, v13}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v9, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->JAVA_ERROR:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 47
    new-instance v11, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v13, "LATCH_ALREADY_HELD"

    const/4 v14, 0x6

    const-string v15, "Attempt to acquire a latch that is already held, may cause a hard deadlock."

    invoke-direct {v11, v13, v14, v2, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v11, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LATCH_ALREADY_HELD:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 51
    new-instance v13, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LATCH_NOT_HELD"

    const/4 v14, 0x7

    const-string v12, "Attempt to release a latch that is not currently not held, may indicate a thread safety problem."

    invoke-direct {v13, v15, v14, v2, v12}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v13, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LATCH_NOT_HELD:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 55
    new-instance v12, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LISTENER_EXCEPTION"

    const/16 v14, 0x8

    const-string v10, "An exception was thrown from an application supplied Listener."

    invoke-direct {v12, v15, v14, v4, v10}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v12, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LISTENER_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 58
    new-instance v10, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "BTREE_CORRUPTION"

    const/16 v14, 0x9

    const-string v8, "Btree corruption is detected, log is likely invalid."

    invoke-direct {v10, v15, v14, v4, v8}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v10, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->BTREE_CORRUPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 61
    new-instance v8, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LOG_CHECKSUM"

    const/16 v14, 0xa

    const-string v6, "Checksum invalid on read, log is likely invalid."

    invoke-direct {v8, v15, v14, v4, v6}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v8, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 64
    new-instance v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LOG_FILE_NOT_FOUND"

    const/16 v14, 0xb

    const-string v2, "Log file missing, log is likely invalid."

    invoke-direct {v6, v15, v14, v4, v2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 67
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LOG_UNEXPECTED_FILE_DELETION"

    const/16 v14, 0xc

    move-object/from16 v16, v6

    const-string v6, "A log file was unexpectedly deleted, log is likely invalid."

    invoke-direct {v2, v15, v14, v4, v6}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_UNEXPECTED_FILE_DELETION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 70
    new-instance v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LOG_INCOMPLETE"

    const/16 v14, 0xd

    move-object/from16 v17, v2

    const-string v2, "Transaction logging is incomplete, replica is invalid."

    invoke-direct {v6, v15, v14, v4, v2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INCOMPLETE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 73
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v15, "LOG_INTEGRITY"

    const/16 v14, 0xe

    const-string v4, "Log information is incorrect, problem is likely persistent."

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-direct {v2, v15, v14, v6, v4}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 76
    new-instance v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "LOG_READ"

    const/16 v15, 0xf

    const-string v14, "IOException on read, log is likely invalid."

    move-object/from16 v19, v2

    const/4 v2, 0x1

    invoke-direct {v4, v6, v15, v2, v14}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_READ:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 79
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v21, "INSUFFICIENT_LOG"

    const/16 v22, 0x10

    const/16 v23, 0x1

    const-string v24, "Log files at this node are obsolete."

    const/16 v25, 0x0

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v25}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;Z)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->INSUFFICIENT_LOG:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 84
    new-instance v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "LOG_WRITE"

    const/16 v15, 0x11

    move-object/from16 v21, v2

    const-string v2, "IOException on write, log is likely incomplete."

    move-object/from16 v22, v4

    const/4 v4, 0x1

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_WRITE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 87
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "MASTER_TO_REPLICA_TRANSITION"

    const/16 v15, 0x12

    move-object/from16 v24, v6

    const-string v6, "This node was a master and must reinitialize internal state to become a replica. The application must close and reopen all Environment handles."

    invoke-direct {v2, v14, v15, v4, v6}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->MASTER_TO_REPLICA_TRANSITION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 92
    new-instance v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "MONITOR_REGISTRATION"

    const/16 v14, 0x13

    const-string v15, "JMX JE monitor could not be registered."

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-direct {v4, v6, v14, v2, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->MONITOR_REGISTRATION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 95
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "PROGRESS_LISTENER_HALT"

    const/16 v15, 0x14

    const-string v14, "A ProgressListener registered with this environment returned false from a call to ProgressListener.progress(), indicating that the environment should be closed"

    move-object/from16 v27, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v15, v4, v14}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->PROGRESS_LISTENER_HALT:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 100
    new-instance v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "PROTOCOL_VERSION_MISMATCH"

    const/16 v15, 0x15

    move-object/from16 v28, v2

    const-string v2, "Two communicating nodes could not agree on a common protocol version."

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->PROTOCOL_VERSION_MISMATCH:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 104
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "ROLLBACK_PROHIBITED"

    const/16 v15, 0x16

    move-object/from16 v29, v6

    const-string v6, "Node would like to roll back past committed transactions, but would exceed the limit specified by je.rep.txnRollbackLimit. Manual intervention required."

    invoke-direct {v2, v14, v15, v4, v6}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->ROLLBACK_PROHIBITED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 109
    new-instance v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "SHUTDOWN_REQUESTED"

    const/16 v15, 0x17

    move-object/from16 v30, v2

    const-string v2, "The Replica was shutdown via a remote shutdown request."

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->SHUTDOWN_REQUESTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 112
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "TEST_INVALIDATE"

    const/16 v15, 0x18

    move-object/from16 v31, v6

    const-string v6, "Test program invalidated the environment."

    invoke-direct {v2, v14, v15, v4, v6}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->TEST_INVALIDATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 115
    new-instance v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "THREAD_INTERRUPTED"

    const/16 v15, 0x19

    move-object/from16 v32, v2

    const-string v2, "InterruptedException may cause incorrect internal state, unable to continue."

    invoke-direct {v6, v14, v15, v4, v2}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->THREAD_INTERRUPTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 119
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v14, "UNCAUGHT_EXCEPTION"

    const/16 v15, 0x1a

    move-object/from16 v33, v6

    const-string v6, "Uncaught Exception in internal thread, unable to continue."

    invoke-direct {v2, v14, v15, v4, v6}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNCAUGHT_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 122
    new-instance v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "UNEXPECTED_EXCEPTION"

    const/16 v14, 0x1b

    const-string v15, "Unexpected internal Exception, may have side effects."

    move-object/from16 v34, v2

    const/4 v2, 0x0

    invoke-direct {v4, v6, v14, v2, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 125
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "UNEXPECTED_EXCEPTION_FATAL"

    const/16 v14, 0x1c

    const-string v15, "Unexpected internal Exception, unable to continue."

    move-object/from16 v35, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v14, v4, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_EXCEPTION_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 128
    new-instance v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "UNEXPECTED_STATE"

    const/16 v14, 0x1d

    const-string v15, "Unexpected internal state, may have side effects."

    move-object/from16 v36, v2

    const/4 v2, 0x0

    invoke-direct {v4, v6, v14, v2, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 131
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "UNEXPECTED_STATE_FATAL"

    const/16 v14, 0x1e

    const-string v15, "Unexpected internal state, unable to continue."

    move-object/from16 v37, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v14, v4, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->UNEXPECTED_STATE_FATAL:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 134
    new-instance v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "VERSION_MISMATCH"

    const/16 v14, 0x1f

    const-string v15, "The existing log was written with a version of JE that is later than the running version of JE, the log cannot be read."

    move-object/from16 v38, v2

    const/4 v2, 0x0

    invoke-direct {v4, v6, v14, v2, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->VERSION_MISMATCH:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 138
    new-instance v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v6, "WEDGED"

    const/16 v14, 0x20

    const-string v15, "An internal thread could not be stopped. The current process must be shut down and restarted before re-opening the Environment. A full thread dump has been logged."

    move-object/from16 v39, v4

    const/4 v4, 0x1

    invoke-direct {v2, v6, v14, v4, v15}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;)V

    sput-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->WEDGED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 19
    const/16 v6, 0x21

    new-array v6, v6, [Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v14, 0x0

    aput-object v0, v6, v14

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    const/16 v0, 0xa

    aput-object v8, v6, v0

    const/16 v0, 0xb

    aput-object v16, v6, v0

    const/16 v0, 0xc

    aput-object v17, v6, v0

    const/16 v0, 0xd

    aput-object v18, v6, v0

    const/16 v0, 0xe

    aput-object v19, v6, v0

    const/16 v0, 0xf

    aput-object v22, v6, v0

    const/16 v0, 0x10

    aput-object v21, v6, v0

    const/16 v0, 0x11

    aput-object v24, v6, v0

    const/16 v0, 0x12

    aput-object v26, v6, v0

    const/16 v0, 0x13

    aput-object v27, v6, v0

    const/16 v0, 0x14

    aput-object v28, v6, v0

    const/16 v0, 0x15

    aput-object v29, v6, v0

    const/16 v0, 0x16

    aput-object v30, v6, v0

    const/16 v0, 0x17

    aput-object v31, v6, v0

    const/16 v0, 0x18

    aput-object v32, v6, v0

    const/16 v0, 0x19

    aput-object v33, v6, v0

    const/16 v0, 0x1a

    aput-object v34, v6, v0

    const/16 v0, 0x1b

    aput-object v35, v6, v0

    const/16 v0, 0x1c

    aput-object v36, v6, v0

    const/16 v0, 0x1d

    aput-object v37, v6, v0

    const/16 v0, 0x1e

    aput-object v38, v6, v0

    const/16 v0, 0x1f

    aput-object v39, v6, v0

    const/16 v0, 0x20

    aput-object v2, v6, v0

    sput-object v6, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->$VALUES:[Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .param p3, "invalidates"    # Z
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 158
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;-><init>(Ljava/lang/String;IZLjava/lang/String;Z)V

    .line 159
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 0
    .param p3, "invalidates"    # Z
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "envShouldExist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 164
    iput-boolean p3, p0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->invalidates:Z

    .line 165
    iput-object p4, p0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->description:Ljava/lang/String;

    .line 166
    iput-boolean p5, p0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->envShouldExist:Z

    .line 167
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 19
    const-class v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/je/dbi/EnvironmentFailureReason;
    .locals 1

    .line 19
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->$VALUES:[Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-virtual {v0}, [Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    return-object v0
.end method


# virtual methods
.method public envShouldExist()Z
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->envShouldExist:Z

    return v0
.end method

.method public invalidatesEnvironment()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->invalidates:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
