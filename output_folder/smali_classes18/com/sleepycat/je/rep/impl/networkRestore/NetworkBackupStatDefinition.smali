.class public Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;
.super Ljava/lang/Object;
.source "NetworkBackupStatDefinition.java"


# static fields
.field public static BACKUP_FILE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition; = null

.field public static DISPOSED_COUNT:Lcom/sleepycat/je/utilint/StatDefinition; = null

.field public static EXPECTED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition; = null

.field public static FETCH_COUNT:Lcom/sleepycat/je/utilint/StatDefinition; = null

.field public static final GROUP_DESC:Ljava/lang/String; = "NetworkBackup statistics"

.field public static final GROUP_NAME:Ljava/lang/String; = "NetworkBackup"

.field public static SKIP_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static TRANSFERRED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static TRANSFER_RATE:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 28
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "backupFileCount"

    const-string v2, "The total number of files."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->BACKUP_FILE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 33
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "skipCount"

    const-string v2, "The number of files that were skipped because they were already present and current in the local environment directory."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->SKIP_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 39
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "fetchCount"

    const-string v2, "The number of files that were actually transferred from the server"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->FETCH_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 45
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "disposedCount"

    const-string v2, "The number of files that were disposed (deleted or renamed) from the local environment directory."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->DISPOSED_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 51
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "expectedBytes"

    const-string v3, "The number of bytes that are expected to be transferred."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->EXPECTED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 57
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "transferredBytes"

    const-string v3, "The number of bytes that have been transferred so far."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->TRANSFERRED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 63
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "transferRate"

    const-string v2, "The moving average of the rate, in bytes per second, at which bytes have been transferred so far."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->TRANSFER_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
