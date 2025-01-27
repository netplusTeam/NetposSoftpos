.class public Lcom/sleepycat/je/cleaner/VerifyUtils;
.super Ljava/lang/Object;
.source "VerifyUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEquals(Ljava/lang/String;JJ)V
    .locals 2
    .param p0, "errorMessage"    # Ljava/lang/String;
    .param p1, "expect"    # J
    .param p3, "actual"    # J

    .line 309
    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 313
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " actual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static checkLsns(Lcom/sleepycat/je/Database;)V
    .locals 2
    .param p0, "db"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v1}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkLsns(Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/io/PrintStream;)V

    .line 56
    return-void
.end method

.method private static checkLsns(Lcom/sleepycat/je/dbi/DatabaseImpl;Ljava/io/PrintStream;)V
    .locals 21
    .param p0, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 69
    move-object/from16 v0, p1

    new-instance v4, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;-><init>(Lcom/sleepycat/je/cleaner/VerifyUtils$1;)V

    .line 70
    .local v4, "gatherLsns":Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getTree()Lcom/sleepycat/je/tree/Tree;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/Tree;->getRootLsn()J

    move-result-wide v8

    .line 71
    .local v8, "rootLsn":J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v5, "savedExceptions":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/DatabaseException;>;"
    new-instance v10, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sleepycat/je/dbi/DatabaseImpl;

    const/4 v11, 0x0

    aput-object p0, v2, v11

    new-array v3, v1, [J

    aput-wide v8, v3, v11

    const/4 v6, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;[JLcom/sleepycat/je/dbi/SortedLSNTreeWalker$TreeNodeProcessor;Ljava/util/List;Lcom/sleepycat/je/dbi/SortedLSNTreeWalker$ExceptionPredicate;)V

    .line 77
    .local v1, "walker":Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/SortedLSNTreeWalker;->walk()V

    .line 80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " problems seen during tree walk for checkLsns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/DatabaseException;

    .line 84
    .local v3, "savedException":Lcom/sleepycat/je/DatabaseException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    .end local v3    # "savedException":Lcom/sleepycat/je/DatabaseException;
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v4}, Lcom/sleepycat/je/cleaner/VerifyUtils$GatherLSNs;->getLsns()Ljava/util/Set;

    move-result-object v2

    .line 89
    .local v2, "lsnsInTree":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/16 v12, -0x1

    cmp-long v3, v8, v12

    if-eqz v3, :cond_1

    .line 90
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 95
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v6, "fileNums":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 98
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 99
    .local v12, "lsn":J
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v12    # "lsn":J
    goto :goto_1

    .line 103
    :cond_2
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 104
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 105
    .local v10, "obsoleteLsns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v12

    .line 106
    .local v12, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v12}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v13

    .line 108
    .local v13, "profile":Lcom/sleepycat/je/cleaner/UtilizationProfile;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 109
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 111
    .local v14, "fileNum":Ljava/lang/Long;
    invoke-virtual {v13, v14, v11, v7}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getObsoleteDetailPacked(Ljava/lang/Long;ZLjava/lang/Runnable;)Lcom/sleepycat/je/cleaner/PackedOffsets;

    move-result-object v15

    .line 113
    .local v15, "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    invoke-virtual {v15}, Lcom/sleepycat/je/cleaner/PackedOffsets;->iterator()Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;

    move-result-object v16

    .line 114
    .local v16, "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 115
    move-wide/from16 v18, v8

    .end local v8    # "rootLsn":J
    .local v18, "rootLsn":J
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;->next()J

    move-result-wide v7

    .line 116
    .local v7, "offset":J
    move-object/from16 v20, v12

    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v20, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12, v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 117
    .local v11, "oneLsn":Ljava/lang/Long;
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v7    # "offset":J
    .end local v11    # "oneLsn":Ljava/lang/Long;
    move-wide/from16 v8, v18

    move-object/from16 v12, v20

    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_3

    .line 114
    .end local v18    # "rootLsn":J
    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v8    # "rootLsn":J
    .restart local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_3
    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    .line 122
    .end local v8    # "rootLsn":J
    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v14    # "fileNum":Ljava/lang/Long;
    .end local v15    # "obsoleteOffsets":Lcom/sleepycat/je/cleaner/PackedOffsets;
    .end local v16    # "obsoleteIter":Lcom/sleepycat/je/cleaner/PackedOffsets$Iterator;
    .restart local v18    # "rootLsn":J
    .restart local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const/4 v7, 0x0

    const/4 v11, 0x0

    goto :goto_2

    .line 125
    .end local v18    # "rootLsn":J
    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v8    # "rootLsn":J
    .restart local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_4
    move-wide/from16 v18, v8

    move-object/from16 v20, v12

    .end local v8    # "rootLsn":J
    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v18    # "rootLsn":J
    .restart local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    const/4 v7, 0x0

    .line 126
    .local v7, "error":Z
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 127
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 128
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 129
    .local v8, "lsn":Ljava/lang/Long;
    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Obsolete LSN set contains valid LSN "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 131
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 130
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    const/4 v7, 0x1

    .line 134
    .end local v8    # "lsn":Ljava/lang/Long;
    :cond_5
    goto :goto_4

    .line 140
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 141
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 143
    .restart local v8    # "lsn":Ljava/lang/Long;
    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Tree contains obsolete LSN "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 145
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    const/4 v7, 0x1

    .line 148
    .end local v8    # "lsn":Ljava/lang/Long;
    :cond_7
    goto :goto_5

    .line 150
    :cond_8
    if-nez v7, :cond_a

    .line 156
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_9

    .line 161
    return-void

    .line 157
    :cond_9
    new-instance v8, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v9, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v11, "Sorted LSN Walk problem"

    move-object/from16 v12, v20

    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-direct {v8, v12, v9, v11}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v8

    .line 151
    .end local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_a
    move-object/from16 v12, v20

    .end local v20    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v12    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    new-instance v8, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v9, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const-string v11, "Lsn mismatch"

    invoke-direct {v8, v12, v9, v11}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v8
.end method

.method private static checkTrue(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "errorMessage"    # Ljava/lang/String;
    .param p1, "checkIsTrue"    # Z

    .line 301
    if-eqz p1, :cond_0

    .line 304
    return-void

    .line 302
    :cond_0
    invoke-static {p0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public static verifyUtilization(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V
    .locals 13
    .param p0, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p1, "expectAccurateObsoleteLNCount"    # Z
    .param p2, "expectAccurateObsoleteLNSize"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/sleepycat/je/cleaner/Cleaner;->getUtilizationProfile()Lcom/sleepycat/je/cleaner/UtilizationProfile;

    move-result-object v0

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/cleaner/UtilizationProfile;->getFileSummaryMap(Z)Ljava/util/SortedMap;

    move-result-object v0

    .line 209
    .local v0, "profileMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogManager;->flushNoSync()V

    .line 212
    nop

    .line 213
    invoke-static {p0}, Lcom/sleepycat/je/log/UtilizationFileReader;->calcFileSummaryMap(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/util/Map;

    move-result-object v2

    .line 219
    .local v2, "recalcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 220
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 221
    .local v5, "file":Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, "fileStr":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 223
    .local v7, "profileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sleepycat/je/cleaner/FileSummary;

    .line 224
    .local v8, "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    if-eqz v8, :cond_0

    move v9, v1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    invoke-static {v6, v9}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkTrue(Ljava/lang/String;Z)V

    .line 252
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->totalCount:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 254
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->totalSize:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 256
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->totalINCount:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 258
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->totalINSize:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 260
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNCount:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 262
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->totalLNSize:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 280
    if-eqz p1, :cond_1

    .line 281
    iget v9, v8, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNCount:I

    int-to-long v11, v11

    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 290
    if-eqz p2, :cond_1

    .line 291
    nop

    .line 292
    invoke-virtual {v8}, Lcom/sleepycat/je/cleaner/FileSummary;->getObsoleteLNSize()I

    move-result v9

    int-to-long v9, v9

    iget v11, v7, Lcom/sleepycat/je/cleaner/FileSummary;->obsoleteLNSize:I

    int-to-long v11, v11

    .line 291
    invoke-static {v6, v9, v10, v11, v12}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkEquals(Ljava/lang/String;JJ)V

    .line 296
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/sleepycat/je/cleaner/FileSummary;>;"
    .end local v5    # "file":Ljava/lang/Long;
    .end local v6    # "fileStr":Ljava/lang/String;
    .end local v7    # "profileSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    .end local v8    # "recalcSummary":Lcom/sleepycat/je/cleaner/FileSummary;
    :cond_1
    goto/16 :goto_0

    .line 297
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sleepycat/je/cleaner/VerifyUtils;->checkTrue(Ljava/lang/String;Z)V

    .line 298
    return-void
.end method
