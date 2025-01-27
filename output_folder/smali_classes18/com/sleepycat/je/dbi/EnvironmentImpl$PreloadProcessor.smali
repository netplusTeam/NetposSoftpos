.class Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;
.super Ljava/lang/Object;
.source "EnvironmentImpl.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/EnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreloadProcessor"
.end annotation


# instance fields
.field private final countLNs:Z

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final maxBytes:J

.field private progressCounter:J

.field private final progressListener:Lcom/sleepycat/je/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/ProgressListener<",
            "Lcom/sleepycat/je/PreloadConfig$Phases;",
            ">;"
        }
    .end annotation
.end field

.field private final stats:Lcom/sleepycat/je/PreloadStats;

.field private final targetTime:J

.field private final useOffHeapCache:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JZJLcom/sleepycat/je/PreloadStats;Lcom/sleepycat/je/PreloadConfig;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "maxBytes"    # J
    .param p4, "useOffHeapCache"    # Z
    .param p5, "targetTime"    # J
    .param p7, "stats"    # Lcom/sleepycat/je/PreloadStats;
    .param p8, "config"    # Lcom/sleepycat/je/PreloadConfig;

    .line 3730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3723
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressCounter:J

    .line 3731
    iput-object p1, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 3732
    iput-wide p2, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->maxBytes:J

    .line 3733
    iput-boolean p4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->useOffHeapCache:Z

    .line 3734
    iput-wide p5, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->targetTime:J

    .line 3735
    iput-object p7, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    .line 3736
    invoke-virtual {p8}, Lcom/sleepycat/je/PreloadConfig;->getLoadLNs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->countLNs:Z

    .line 3737
    invoke-virtual {p8}, Lcom/sleepycat/je/PreloadConfig;->getProgressListener()Lcom/sleepycat/je/ProgressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressListener:Lcom/sleepycat/je/ProgressListener;

    .line 3738
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 3826
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressListener:Lcom/sleepycat/je/ProgressListener;

    if-eqz v0, :cond_0

    .line 3827
    sget-object v1, Lcom/sleepycat/je/PreloadConfig$Phases;->PRELOAD:Lcom/sleepycat/je/PreloadConfig$Phases;

    iget-wide v4, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressCounter:J

    move-wide v2, v4

    invoke-interface/range {v0 .. v5}, Lcom/sleepycat/je/ProgressListener;->progress(Ljava/lang/Enum;JJ)Z

    .line 3830
    :cond_0
    return-void
.end method

.method public noteMemoryExceeded()V
    .locals 1

    .line 3821
    iget-object v0, p0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v0}, Lcom/sleepycat/je/PreloadStats;->incMemoryExceeded()V

    .line 3822
    return-void
.end method

.method public processDirtyDeletedLN(JLcom/sleepycat/je/tree/LN;[B)V
    .locals 0
    .param p1, "childLsn"    # J
    .param p3, "ln"    # Lcom/sleepycat/je/tree/LN;
    .param p4, "lnKey"    # [B

    .line 3817
    return-void
.end method

.method public processLSN(JLcom/sleepycat/je/log/LogEntryType;Lcom/sleepycat/je/tree/Node;[BIZ)V
    .locals 11
    .param p1, "childLsn"    # J
    .param p3, "childType"    # Lcom/sleepycat/je/log/LogEntryType;
    .param p4, "node"    # Lcom/sleepycat/je/tree/Node;
    .param p5, "ignore2"    # [B
    .param p6, "ignore3"    # I
    .param p7, "ignore4"    # Z

    .line 3755
    move-object v0, p0

    move-object v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->targetTime:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_e

    .line 3763
    iget-object v2, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->access$200(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/MemoryBudget;->getCacheMemoryUsage()J

    move-result-wide v2

    .line 3764
    .local v2, "usedBytes":J
    iget-boolean v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->useOffHeapCache:Z

    if-eqz v4, :cond_0

    .line 3765
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->access$300(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/evictor/OffHeapCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/evictor/OffHeapCache;->getUsedMemory()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 3768
    :cond_0
    iget-wide v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->maxBytes:J

    cmp-long v4, v2, v4

    if-gtz v4, :cond_d

    .line 3772
    iget-object v5, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressListener:Lcom/sleepycat/je/ProgressListener;

    if-eqz v5, :cond_2

    .line 3773
    iget-wide v6, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressCounter:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressCounter:J

    .line 3774
    sget-object v6, Lcom/sleepycat/je/PreloadConfig$Phases;->PRELOAD:Lcom/sleepycat/je/PreloadConfig$Phases;

    iget-wide v7, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->progressCounter:J

    const-wide/16 v9, -0x1

    invoke-interface/range {v5 .. v10}, Lcom/sleepycat/je/ProgressListener;->progress(Ljava/lang/Enum;JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 3776
    :cond_1
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->access$500()Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    move-result-object v4

    throw v4

    .line 3781
    :cond_2
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    .line 3782
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incEmbeddedLNs()V

    goto/16 :goto_3

    .line 3783
    :cond_3
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN_TRANSACTIONAL:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_DUPCOUNTLN:Lcom/sleepycat/je/log/LogEntryType;

    .line 3785
    invoke-virtual {p3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 3787
    :cond_4
    invoke-virtual {p3}, Lcom/sleepycat/je/log/LogEntryType;->isLNType()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3788
    iget-boolean v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->countLNs:Z

    if-eqz v4, :cond_c

    .line 3789
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incLNsLoaded()V

    goto :goto_3

    .line 3791
    :cond_5
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_DBIN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3792
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incDBINsLoaded()V

    goto :goto_3

    .line 3793
    :cond_6
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_BIN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3794
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incBINsLoaded()V

    .line 3795
    iget-boolean v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->countLNs:Z

    if-nez v4, :cond_c

    .line 3796
    move-object v4, p4

    check-cast v4, Lcom/sleepycat/je/tree/BIN;

    .line 3797
    .local v4, "bin":Lcom/sleepycat/je/tree/BIN;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/sleepycat/je/tree/BIN;->getNEntries()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 3798
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/tree/BIN;->isEmbeddedLN(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3799
    iget-object v6, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v6}, Lcom/sleepycat/je/PreloadStats;->incEmbeddedLNs()V

    .line 3797
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3802
    .end local v4    # "bin":Lcom/sleepycat/je/tree/BIN;
    .end local v5    # "i":I
    :cond_8
    goto :goto_3

    .line 3803
    :cond_9
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_DIN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3804
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incDINsLoaded()V

    goto :goto_3

    .line 3805
    :cond_a
    sget-object v4, Lcom/sleepycat/je/log/LogEntryType;->LOG_IN:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {p3, v4}, Lcom/sleepycat/je/log/LogEntryType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3806
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incINsLoaded()V

    goto :goto_3

    .line 3786
    :cond_b
    :goto_2
    iget-object v4, v0, Lcom/sleepycat/je/dbi/EnvironmentImpl$PreloadProcessor;->stats:Lcom/sleepycat/je/PreloadStats;

    invoke-virtual {v4}, Lcom/sleepycat/je/PreloadStats;->incDupCountLNsLoaded()V

    .line 3808
    :cond_c
    :goto_3
    return-void

    .line 3769
    :cond_d
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->access$400()Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    move-result-object v4

    throw v4

    .line 3756
    .end local v2    # "usedBytes":J
    :cond_e
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->access$100()Lcom/sleepycat/je/dbi/EnvironmentImpl$HaltPreloadException;

    move-result-object v2

    throw v2
.end method
