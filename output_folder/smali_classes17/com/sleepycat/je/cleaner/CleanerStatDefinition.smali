.class public Lcom/sleepycat/je/cleaner/CleanerStatDefinition;
.super Ljava/lang/Object;
.source "CleanerStatDefinition.java"


# static fields
.field public static final CLEANER_ACTIVE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_ACTIVE_LOG_SIZE_DESC:Ljava/lang/String; = "Bytes used by all active data files: files required for basic JE operation."

.field public static final CLEANER_ACTIVE_LOG_SIZE_NAME:Ljava/lang/String; = "activeLogSize"

.field public static final CLEANER_AVAILABLE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_AVAILABLE_LOG_SIZE_DESC:Ljava/lang/String; = "Bytes available for write operations when unprotected reserved files are deleted: free space + reservedLogSize - protectedLogSize."

.field public static final CLEANER_AVAILABLE_LOG_SIZE_NAME:Ljava/lang/String; = "availableLogSize"

.field public static final CLEANER_BIN_DELTAS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_BIN_DELTAS_CLEANED_DESC:Ljava/lang/String; = "Number of potentially active BIN-deltas."

.field public static final CLEANER_BIN_DELTAS_CLEANED_NAME:Ljava/lang/String; = "nBINDeltasCleaned"

.field public static final CLEANER_BIN_DELTAS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_BIN_DELTAS_DEAD_DESC:Ljava/lang/String; = "Number of BIN-deltas that were not found in the Btree."

.field public static final CLEANER_BIN_DELTAS_DEAD_NAME:Ljava/lang/String; = "nBINDeltasDead"

.field public static final CLEANER_BIN_DELTAS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_BIN_DELTAS_MIGRATED_DESC:Ljava/lang/String; = "Number of active BIN-deltas that were migrated by dirtying them."

.field public static final CLEANER_BIN_DELTAS_MIGRATED_NAME:Ljava/lang/String; = "nBINDeltasMigrated"

.field public static final CLEANER_BIN_DELTAS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_BIN_DELTAS_OBSOLETE_DESC:Ljava/lang/String; = "Number of known-obsolete BIN-deltas."

.field public static final CLEANER_BIN_DELTAS_OBSOLETE_NAME:Ljava/lang/String; = "nBINDeltasObsolete"

.field public static final CLEANER_DELETIONS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_DELETIONS_DESC:Ljava/lang/String; = "Number of cleaner file deletions."

.field public static final CLEANER_DELETIONS_NAME:Ljava/lang/String; = "nCleanerDeletions"

.field public static final CLEANER_DISK_READS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_DISK_READS_DESC:Ljava/lang/String; = "Number of disk reads by the cleaner."

.field public static final CLEANER_DISK_READS_NAME:Ljava/lang/String; = "nCleanerDisksReads"

.field public static final CLEANER_ENTRIES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_ENTRIES_READ_DESC:Ljava/lang/String; = "Number of log entries processed by the cleaner."

.field public static final CLEANER_ENTRIES_READ_NAME:Ljava/lang/String; = "nCleanerEntriesRead"

.field public static final CLEANER_INS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_INS_CLEANED_DESC:Ljava/lang/String; = "Number of potentially active INs."

.field public static final CLEANER_INS_CLEANED_NAME:Ljava/lang/String; = "nINsCleaned"

.field public static final CLEANER_INS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_INS_DEAD_DESC:Ljava/lang/String; = "Number of INs that were not found in the Btree."

.field public static final CLEANER_INS_DEAD_NAME:Ljava/lang/String; = "nINsDead"

.field public static final CLEANER_INS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_INS_MIGRATED_DESC:Ljava/lang/String; = "Number of active INs that were migrated by dirtying them."

.field public static final CLEANER_INS_MIGRATED_NAME:Ljava/lang/String; = "nINsMigrated"

.field public static final CLEANER_INS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_INS_OBSOLETE_DESC:Ljava/lang/String; = "Number of known-obsolete INs."

.field public static final CLEANER_INS_OBSOLETE_NAME:Ljava/lang/String; = "nINsObsolete"

.field public static final CLEANER_LNQUEUE_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNQUEUE_HITS_DESC:Ljava/lang/String; = "Number of potentially active LNs that did not require a separate Btree lookup."

.field public static final CLEANER_LNQUEUE_HITS_NAME:Ljava/lang/String; = "nLNQueueHits"

.field public static final CLEANER_LNS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_CLEANED_DESC:Ljava/lang/String; = "Number of potentially active LNs."

.field public static final CLEANER_LNS_CLEANED_NAME:Ljava/lang/String; = "nLNsCleaned"

.field public static final CLEANER_LNS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_DEAD_DESC:Ljava/lang/String; = "Number of LNs that were not found in the Btree."

.field public static final CLEANER_LNS_DEAD_NAME:Ljava/lang/String; = "nLNsDead"

.field public static final CLEANER_LNS_EXPIRED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_EXPIRED_DESC:Ljava/lang/String; = "Number of known-obsolete LNs that were expired."

.field public static final CLEANER_LNS_EXPIRED_NAME:Ljava/lang/String; = "nLNsExpired"

.field public static final CLEANER_LNS_EXTINCT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_EXTINCT_DESC:Ljava/lang/String; = "Number of known-obsolete LNs that were extinct."

.field public static final CLEANER_LNS_EXTINCT_NAME:Ljava/lang/String; = "nLNsExtinct"

.field public static final CLEANER_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_LOCKED_DESC:Ljava/lang/String; = "Number of potentially active LNs that were added to the pending queue because they were locked."

.field public static final CLEANER_LNS_LOCKED_NAME:Ljava/lang/String; = "nLNsLocked"

.field public static final CLEANER_LNS_MARKED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_MARKED_DESC:Ljava/lang/String; = "Number of active LNs in temporary DBs that were migrated by dirtying them."

.field public static final CLEANER_LNS_MARKED_NAME:Ljava/lang/String; = "nLNsMarked"

.field public static final CLEANER_LNS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_MIGRATED_DESC:Ljava/lang/String; = "Number of active LNs that were migrated by logging them."

.field public static final CLEANER_LNS_MIGRATED_NAME:Ljava/lang/String; = "nLNsMigrated"

.field public static final CLEANER_LNS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_LNS_OBSOLETE_DESC:Ljava/lang/String; = "Number of known-obsolete LNs."

.field public static final CLEANER_LNS_OBSOLETE_NAME:Ljava/lang/String; = "nLNsObsolete"

.field public static final CLEANER_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_MAX_UTILIZATION_DESC:Ljava/lang/String; = "Upper bound for current log utilization as a percentage."

.field public static final CLEANER_MAX_UTILIZATION_NAME:Ljava/lang/String; = "maxUtilization"

.field public static final CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_MIN_UTILIZATION_DESC:Ljava/lang/String; = "Lower bound for current log utilization as a percentage."

.field public static final CLEANER_MIN_UTILIZATION_NAME:Ljava/lang/String; = "minUtilization"

.field public static final CLEANER_PENDING_DBS_INCOMPLETE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PENDING_DBS_INCOMPLETE_DESC:Ljava/lang/String; = "Number of pending DBs for which DB removal/truncation was still incomplete."

.field public static final CLEANER_PENDING_DBS_INCOMPLETE_NAME:Ljava/lang/String; = "nPendingDBsIncomplete"

.field public static final CLEANER_PENDING_DBS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PENDING_DBS_PROCESSED_DESC:Ljava/lang/String; = "Number of pending DBs that were re-processed."

.field public static final CLEANER_PENDING_DBS_PROCESSED_NAME:Ljava/lang/String; = "nPendingDBsProcessed"

.field public static final CLEANER_PENDING_DB_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PENDING_DB_QUEUE_SIZE_DESC:Ljava/lang/String; = "Number of DBs pending because DB removal/truncation was incomplete."

.field public static final CLEANER_PENDING_DB_QUEUE_SIZE_NAME:Ljava/lang/String; = "pendingDBQueueSize"

.field public static final CLEANER_PENDING_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PENDING_LNS_LOCKED_DESC:Ljava/lang/String; = "Number of pending LNs that were still locked."

.field public static final CLEANER_PENDING_LNS_LOCKED_NAME:Ljava/lang/String; = "nPendingLNsLocked"

.field public static final CLEANER_PENDING_LNS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PENDING_LNS_PROCESSED_DESC:Ljava/lang/String; = "Number of pending LNs that were re-processed."

.field public static final CLEANER_PENDING_LNS_PROCESSED_NAME:Ljava/lang/String; = "nPendingLNsProcessed"

.field public static final CLEANER_PENDING_LN_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PENDING_LN_QUEUE_SIZE_DESC:Ljava/lang/String; = "Number of LNs pending because they were locked."

.field public static final CLEANER_PENDING_LN_QUEUE_SIZE_NAME:Ljava/lang/String; = "pendingLNQueueSize"

.field public static final CLEANER_PREDICTED_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PREDICTED_MAX_UTILIZATION_DESC:Ljava/lang/String; = "Upper bound for predicted log utilization as a percentage."

.field public static final CLEANER_PREDICTED_MAX_UTILIZATION_NAME:Ljava/lang/String; = "maxPredictedUtilization"

.field public static final CLEANER_PREDICTED_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PREDICTED_MIN_UTILIZATION_DESC:Ljava/lang/String; = "Lower bound for predicted log utilization as a percentage."

.field public static final CLEANER_PREDICTED_MIN_UTILIZATION_NAME:Ljava/lang/String; = "minPredictedUtilization"

.field public static final CLEANER_PROTECTED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PROTECTED_LOG_SIZE_DESC:Ljava/lang/String; = "Bytes used by all protected data files: the subset of reserved files that are temporarily protected and cannot be deleted."

.field public static final CLEANER_PROTECTED_LOG_SIZE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_PROTECTED_LOG_SIZE_MAP_DESC:Ljava/lang/String; = "A breakdown of protectedLogSize as a map of protecting entity name to protected size in bytes."

.field public static final CLEANER_PROTECTED_LOG_SIZE_MAP_NAME:Ljava/lang/String; = "protectedLogSizeMap"

.field public static final CLEANER_PROTECTED_LOG_SIZE_NAME:Ljava/lang/String; = "protectedLogSize"

.field public static final CLEANER_RESERVED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_RESERVED_LOG_SIZE_DESC:Ljava/lang/String; = "Bytes used by all reserved data files: files that have been cleaned and can be deleted if they are not protected."

.field public static final CLEANER_RESERVED_LOG_SIZE_NAME:Ljava/lang/String; = "reservedLogSize"

.field public static final CLEANER_REVISAL_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_REVISAL_RUNS_DESC:Ljava/lang/String; = "Number of potential cleaner runs that revised expiration info, but did result in any cleaning."

.field public static final CLEANER_REVISAL_RUNS_NAME:Ljava/lang/String; = "nRevisalRuns"

.field public static final CLEANER_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_RUNS_DESC:Ljava/lang/String; = "Number of files processed by the cleaner, including two-pass runs."

.field public static final CLEANER_RUNS_NAME:Ljava/lang/String; = "nCleanerRuns"

.field public static final CLEANER_TOTAL_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_TOTAL_LOG_SIZE_DESC:Ljava/lang/String; = "Total bytes used by data files on disk: activeLogSize + reservedLogSize."

.field public static final CLEANER_TOTAL_LOG_SIZE_NAME:Ljava/lang/String; = "totalLogSize"

.field public static final CLEANER_TWO_PASS_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CLEANER_TWO_PASS_RUNS_DESC:Ljava/lang/String; = "Number of cleaner runs that resulted in two-pass runs."

.field public static final CLEANER_TWO_PASS_RUNS_NAME:Ljava/lang/String; = "nTwoPassRuns"

.field public static final GROUP_DESC:Ljava/lang/String; = "Log cleaning involves garbage collection of data files in the append-only storage system."

.field public static final GROUP_NAME:Ljava/lang/String; = "Cleaning"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCleanerRuns"

    const-string v2, "Number of files processed by the cleaner, including two-pass runs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 42
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nTwoPassRuns"

    const-string v2, "Number of cleaner runs that resulted in two-pass runs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TWO_PASS_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 52
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nRevisalRuns"

    const-string v2, "Number of potential cleaner runs that revised expiration info, but did result in any cleaning."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_REVISAL_RUNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 61
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCleanerDeletions"

    const-string v2, "Number of cleaner file deletions."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DELETIONS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 70
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "pendingLNQueueSize"

    const-string v3, "Number of LNs pending because they were locked."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LN_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 81
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "pendingDBQueueSize"

    const-string v3, "Number of DBs pending because DB removal/truncation was incomplete."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DB_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 91
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nINsObsolete"

    const-string v2, "Number of known-obsolete INs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 100
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nINsCleaned"

    const-string v2, "Number of potentially active INs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 109
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nINsDead"

    const-string v2, "Number of INs that were not found in the Btree."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 118
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nINsMigrated"

    const-string v2, "Number of active INs that were migrated by dirtying them."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_INS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 127
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINDeltasObsolete"

    const-string v2, "Number of known-obsolete BIN-deltas."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 136
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINDeltasCleaned"

    const-string v2, "Number of potentially active BIN-deltas."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 145
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINDeltasDead"

    const-string v2, "Number of BIN-deltas that were not found in the Btree."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 154
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBINDeltasMigrated"

    const-string v2, "Number of active BIN-deltas that were migrated by dirtying them."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_BIN_DELTAS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 163
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsObsolete"

    const-string v2, "Number of known-obsolete LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_OBSOLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 172
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsExpired"

    const-string v2, "Number of known-obsolete LNs that were expired."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXPIRED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 181
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsExtinct"

    const-string v2, "Number of known-obsolete LNs that were extinct."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_EXTINCT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 190
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsCleaned"

    const-string v2, "Number of potentially active LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_CLEANED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 199
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsDead"

    const-string v2, "Number of LNs that were not found in the Btree."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_DEAD:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 209
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsLocked"

    const-string v2, "Number of potentially active LNs that were added to the pending queue because they were locked."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 218
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsMigrated"

    const-string v2, "Number of active LNs that were migrated by logging them."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MIGRATED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 228
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNsMarked"

    const-string v2, "Number of active LNs in temporary DBs that were migrated by dirtying them."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNS_MARKED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 238
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNQueueHits"

    const-string v2, "Number of potentially active LNs that did not require a separate Btree lookup."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_LNQUEUE_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 247
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nPendingLNsProcessed"

    const-string v2, "Number of pending LNs that were re-processed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 256
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nPendingLNsLocked"

    const-string v2, "Number of pending LNs that were still locked."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_LNS_LOCKED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 265
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nPendingDBsProcessed"

    const-string v2, "Number of pending DBs that were re-processed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 275
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nPendingDBsIncomplete"

    const-string v2, "Number of pending DBs for which DB removal/truncation was still incomplete."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PENDING_DBS_INCOMPLETE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 284
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCleanerEntriesRead"

    const-string v2, "Number of log entries processed by the cleaner."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ENTRIES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 293
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCleanerDisksReads"

    const-string v2, "Number of disk reads by the cleaner."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_DISK_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 303
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "activeLogSize"

    const-string v3, "Bytes used by all active data files: files required for basic JE operation."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_ACTIVE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 314
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "reservedLogSize"

    const-string v3, "Bytes used by all reserved data files: files that have been cleaned and can be deleted if they are not protected."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_RESERVED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 325
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "protectedLogSize"

    const-string v3, "Bytes used by all protected data files: the subset of reserved files that are temporarily protected and cannot be deleted."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 336
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "protectedLogSizeMap"

    const-string v3, "A breakdown of protectedLogSize as a map of protecting entity name to protected size in bytes."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PROTECTED_LOG_SIZE_MAP:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 348
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "availableLogSize"

    const-string v3, "Bytes available for write operations when unprotected reserved files are deleted: free space + reservedLogSize - protectedLogSize."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_AVAILABLE_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 359
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "totalLogSize"

    const-string v3, "Total bytes used by data files on disk: activeLogSize + reservedLogSize."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_TOTAL_LOG_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 369
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "minUtilization"

    const-string v3, "Lower bound for current log utilization as a percentage."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 379
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "maxUtilization"

    const-string v3, "Upper bound for current log utilization as a percentage."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 389
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "minPredictedUtilization"

    const-string v3, "Lower bound for predicted log utilization as a percentage."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MIN_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 399
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "maxPredictedUtilization"

    const-string v3, "Upper bound for predicted log utilization as a percentage."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/CleanerStatDefinition;->CLEANER_PREDICTED_MAX_UTILIZATION:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
