.class Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;
.super Ljava/lang/Object;
.source "ExtinctionScanner.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/cleaner/ExtinctionScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObsoleteProcessor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

.field private final id:J

.field private final isLnImmediatelyObsolete:Z

.field private scannedRecords:J

.field final synthetic this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

.field private final tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2087
    const-class v0, Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/cleaner/ExtinctionScanner;Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;J)V
    .locals 0
    .param p2, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p3, "tracker"    # Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;
    .param p4, "id"    # J

    .line 2098
    iput-object p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2099
    iput-object p2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2100
    iput-object p3, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 2101
    iput-wide p4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->id:J

    .line 2102
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isLNImmediatelyObsolete()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->isLnImmediatelyObsolete:Z

    .line 2103
    return-void
.end method

.method static synthetic access$1900(Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;)J
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;

    .line 2087
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->scannedRecords:J

    return-wide v0
.end method

.method private noteScanned()V
    .locals 6

    .line 2152
    iget-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->scannedRecords:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->scannedRecords:J

    .line 2153
    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1400(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2154
    return-void

    .line 2156
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1100(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 2157
    return-void

    .line 2160
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$1100(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    nop

    .line 2169
    return-void

    .line 2161
    :catch_0
    move-exception v0

    .line 2162
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    .line 2163
    invoke-static {v1}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$700(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB remove/truncate scan interrupted, id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2165
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dbName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->dbImpl:Lcom/sleepycat/je/dbi/DatabaseImpl;

    .line 2166
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2162
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 2167
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->this$0:Lcom/sleepycat/je/cleaner/ExtinctionScanner;

    invoke-static {v2}, Lcom/sleepycat/je/cleaner/ExtinctionScanner;->access$200(Lcom/sleepycat/je/cleaner/ExtinctionScanner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public noteMemoryExceeded()V
    .locals 0

    .line 2174
    return-void
.end method

.method public processDirtyDeletedLN(JLcom/sleepycat/je/tree/LN;[B)V
    .locals 3
    .param p1, "childLsn"    # J
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "lnKey"    # [B

    .line 2139
    if-eqz p3, :cond_0

    .line 2145
    iget-object v0, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    .line 2146
    invoke-virtual {p3}, Lcom/sleepycat/je/tree/LN;->getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v1

    const/4 v2, 0x0

    .line 2145
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 2148
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->noteScanned()V

    .line 2149
    return-void

    .line 2139
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public processLSN(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V
    .locals 2
    .param p1, "childLsn"    # J
    .param p3, "childType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p5, "lnKey"    # [B
    .param p6, "lastLoggedSize"    # I
    .param p7, "isEmbedded"    # Z

    .line 2113
    if-nez p7, :cond_3

    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->isTransientOrNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2121
    :cond_0
    const/4 v0, 0x0

    .line 2122
    .local v0, "size":I
    if-eqz p5, :cond_2

    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2123
    iget-boolean v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->isLnImmediatelyObsolete:Z

    if-eqz v1, :cond_1

    .line 2124
    return-void

    .line 2126
    :cond_1
    move v0, p6

    .line 2129
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->tracker:Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/sleepycat/je/cleaner/LocalUtilizationTracker;->countObsoleteNodeInexact(JLcom/sleepycat/je/log/LogEntryType;I)V

    .line 2131
    invoke-direct {p0}, Lcom/sleepycat/je/cleaner/ExtinctionScanner$ObsoleteProcessor;->noteScanned()V

    .line 2132
    return-void

    .line 2114
    .end local v0    # "size":I
    :cond_3
    :goto_0
    return-void
.end method
