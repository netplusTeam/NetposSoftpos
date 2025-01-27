.class public Lcom/sleepycat/je/tree/ChildReference;
.super Ljava/lang/Object;
.source "ChildReference.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private key:[B

.field private lsn:J

.field private state:B

.field private target:Lcom/sleepycat/je/tree/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v2, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/ChildReference;->init(Lcom/sleepycat/je/tree/Node;[BJI)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/tree/Node;[BJ)V
    .locals 6
    .param p1, "target"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "lsn"    # J

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/ChildReference;->init(Lcom/sleepycat/je/tree/Node;[BJI)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/tree/Node;[BJB)V
    .locals 6
    .param p1, "target"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "lsn"    # J
    .param p5, "existingState"    # B

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    or-int/lit8 v5, p5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/tree/ChildReference;->init(Lcom/sleepycat/je/tree/Node;[BJI)V

    .line 60
    return-void
.end method

.method private init(Lcom/sleepycat/je/tree/Node;[BJI)V
    .locals 1
    .param p1, "target"    # Lcom/sleepycat/je/tree/Node;
    .param p2, "key"    # [B
    .param p3, "lsn"    # J
    .param p5, "state"    # I

    .line 66
    iput-object p1, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    .line 67
    iput-object p2, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    .line 68
    iput-wide p3, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    .line 69
    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    .line 70
    return-void
.end method

.method private isDirty()Z
    .locals 1

    .line 257
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPendingDeleted()Z
    .locals 1

    .line 243
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearTarget()V
    .locals 1

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    .line 197
    return-void
.end method

.method public dumpLog(Ljava/lang/StringBuilder;Z)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "verbose"    # Z

    .line 299
    const-string v0, "<ref kd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sleepycat/je/tree/ChildReference;->isKnownDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    const-string v0, "\" pd=\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sleepycat/je/tree/ChildReference;->isPendingDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, "\">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-wide v0, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v0, "</ref>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    return-void
.end method

.method public dumpString(IZ)Ljava/lang/String;
    .locals 5
    .param p1, "nspaces"    # I
    .param p2, "dumpTags"    # Z

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 328
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string v1, "<lsn/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :cond_0
    invoke-static {v1, v2, p1}, Lcom/sleepycat/je/utilint/DbLsn;->dumpString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :goto_0
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    iget-object v2, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    if-nez v2, :cond_1

    .line 335
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v2, "<key/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 338
    :cond_1
    invoke-static {v2, p1}, Lcom/sleepycat/je/tree/Key;->dumpString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    iget-object v2, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    if-nez v2, :cond_2

    .line 342
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v2, "<target/>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/sleepycat/je/tree/Node;->dumpString(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {p1}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v1, "<knownDeleted val=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/ChildReference;->isKnownDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v1, "<pendingDeleted val=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {p0}, Lcom/sleepycat/je/tree/ChildReference;->isPendingDeleted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "<dirty val=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sleepycat/je/tree/ChildReference;->isDirty()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public fetchTarget(Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/tree/IN;)Lcom/sleepycat/je/tree/Node;
    .locals 11
    .param p1, "database"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "parent"    # Lcom/sleepycat/je/tree/IN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    if-nez v0, :cond_5

    .line 109
    iget-wide v0, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/ChildReference;->isKnownDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    return-object v1

    .line 111
    :cond_0
    iget-wide v4, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    iget-byte v6, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    const-wide/16 v7, 0x0

    .line 112
    const-string v2, "NULL_LSN without KnownDeleted"

    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JBJ)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getEnv()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 128
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    .line 129
    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/log/LogManager;->getEntryHandleNotFound(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/tree/Node;

    .line 138
    .local v2, "node":Lcom/sleepycat/je/tree/Node;
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/Node;->isIN()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    invoke-virtual {v2}, Lcom/sleepycat/je/tree/Node;->isBINDelta()Z

    move-result v3

    if-nez v3, :cond_3

    .line 141
    move-object v3, v2

    check-cast v3, Lcom/sleepycat/je/tree/IN;

    .line 143
    .local v3, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v3, p1}, Lcom/sleepycat/je/tree/IN;->latchNoUpdateLRU(Lcom/sleepycat/je/dbi/DatabaseImpl;)V

    .line 145
    iget-wide v4, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    invoke-virtual {v2, p1, v4, v5}, Lcom/sleepycat/je/tree/Node;->postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V

    .line 146
    iput-object v2, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    .line 148
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/IN;->releaseLatch()V

    .line 150
    if-eqz p2, :cond_2

    .line 151
    iget-object v4, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    invoke-virtual {p2, v1, v4}, Lcom/sleepycat/je/tree/IN;->updateMemorySize(Lcom/sleepycat/je/tree/Node;Lcom/sleepycat/je/tree/Node;)V

    .line 162
    .end local v2    # "node":Lcom/sleepycat/je/tree/Node;
    .end local v3    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_2
    goto :goto_0

    .line 139
    .restart local v2    # "node":Lcom/sleepycat/je/tree/Node;
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "parent":Lcom/sleepycat/je/tree/IN;
    throw v1

    .line 138
    .restart local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "parent":Lcom/sleepycat/je/tree/IN;
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local p1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .end local p2    # "parent":Lcom/sleepycat/je/tree/IN;
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v2    # "node":Lcom/sleepycat/je/tree/Node;
    .restart local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local p1    # "database":Lcom/sleepycat/je/dbi/DatabaseImpl;
    .restart local p2    # "parent":Lcom/sleepycat/je/tree/IN;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/sleepycat/je/EnvironmentFailureException;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    .line 160
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    iget-byte v8, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    const-wide/16 v9, 0x0

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JBJ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 153
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    iget-byte v6, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    const-wide/16 v7, 0x0

    .line 155
    move-object v3, p2

    invoke-static/range {v2 .. v8}, Lcom/sleepycat/je/tree/IN;->makeFetchErrorMsg(Ljava/lang/String;Lcom/sleepycat/je/tree/IN;JBJ)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->addErrorMessage(Ljava/lang/String;)V

    .line 156
    throw v1

    .line 165
    .end local v0    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v1    # "e":Lcom/sleepycat/je/EnvironmentFailureException;
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    return-object v0
.end method

.method public getLogSize()I
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    .line 269
    invoke-static {v0}, Lcom/sleepycat/je/log/LogUtils;->getByteArrayLogSize([B)I

    move-result v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    .line 270
    invoke-static {v1, v2}, Lcom/sleepycat/je/log/LogUtils;->getPackedLongLogSize(J)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 268
    return v0
.end method

.method public getLsn()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    return-wide v0
.end method

.method getState()B
    .locals 1

    .line 172
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    return v0
.end method

.method public getTarget()Lcom/sleepycat/je/tree/Node;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    return-object v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 311
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isKnownDeleted()Z
    .locals 2

    .line 250
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public logicalEquals(Lcom/sleepycat/je/log/Loggable;)Z
    .locals 1
    .param p1, "other"    # Lcom/sleepycat/je/log/Loggable;

    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public readFromLog(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "itemBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "entryVersion"    # I

    .line 288
    const/4 v0, 0x6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    .local v0, "unpacked":Z
    :goto_0
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readByteArray(Ljava/nio/ByteBuffer;Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    .line 290
    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    .line 292
    and-int/lit8 v1, v1, -0x3

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    .line 293
    return-void
.end method

.method setDirty()V
    .locals 1

    .line 235
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    .line 236
    return-void
.end method

.method public setKey([B)V
    .locals 0
    .param p1, "key"    # [B

    .line 83
    iput-object p1, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    .line 84
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/ChildReference;->setDirty()V

    .line 85
    return-void
.end method

.method public setLsn(J)V
    .locals 0
    .param p1, "lsn"    # J

    .line 214
    iput-wide p1, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    .line 215
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/ChildReference;->setDirty()V

    .line 216
    return-void
.end method

.method public setTarget(Lcom/sleepycat/je/tree/Node;)V
    .locals 0
    .param p1, "target"    # Lcom/sleepycat/je/tree/Node;

    .line 187
    iput-object p1, p0, Lcom/sleepycat/je/tree/ChildReference;->target:Lcom/sleepycat/je/tree/Node;

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/sleepycat/je/tree/ChildReference;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLsnAfterOptionalLog(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 2
    .param p1, "dbImpl"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "lsn"    # J

    .line 222
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DatabaseImpl;->isDeferredWriteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/sleepycat/je/tree/ChildReference;->setDirty()V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/sleepycat/je/tree/ChildReference;->setLsn(J)V

    .line 232
    :goto_0
    return-void
.end method

.method public writeToLog(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "logBuffer"    # Ljava/nio/ByteBuffer;

    .line 278
    iget-object v0, p0, Lcom/sleepycat/je/tree/ChildReference;->key:[B

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeByteArray(Ljava/nio/ByteBuffer;[B)V

    .line 279
    iget-wide v0, p0, Lcom/sleepycat/je/tree/ChildReference;->lsn:J

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/log/LogUtils;->writePackedLong(Ljava/nio/ByteBuffer;J)V

    .line 280
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 281
    iget-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    and-int/lit8 v0, v0, -0x3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/sleepycat/je/tree/ChildReference;->state:B

    .line 282
    return-void
.end method
