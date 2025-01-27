.class public abstract Lcom/sleepycat/je/tree/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Lcom/sleepycat/je/log/Loggable;


# static fields
.field public static final NULL_NODE_ID:J = -0x1L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public containsDuplicates()Z
    .locals 1

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public dump(I)V
    .locals 2
    .param p1, "nSpaces"    # I

    .line 143
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/tree/Node;->dumpString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method dumpString(IZ)Ljava/lang/String;
    .locals 1
    .param p1, "nSpaces"    # I
    .param p2, "dumpTags"    # Z

    .line 147
    const-string v0, ""

    return-object v0
.end method

.method public abstract getGenericLogType()Lcom/sleepycat/je/log/LogEntryType;
.end method

.method public getLevel()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getMemorySizeIncludedByParent()J
    .locals 2

    .line 131
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransactionId()J
    .locals 2

    .line 172
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract incFetchStats(Lcom/sleepycat/je/dbi/EnvironmentImpl;Z)V
.end method

.method public isBIN()Z
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public isBINDelta()Z
    .locals 1

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isBINDelta(Z)Z
    .locals 1
    .param p1, "checkLatched"    # Z

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isDBIN()Z
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public isDIN()Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isIN()Z
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public isLN()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public isUpperIN()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method abstract isValidForDelete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public latch()V
    .locals 0

    .line 45
    return-void
.end method

.method public latchShared()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public latchShared(Lcom/sleepycat/je/CacheMode;)V
    .locals 0
    .param p1, "ignore"    # Lcom/sleepycat/je/CacheMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public postFetchInit(Lcom/sleepycat/je/dbi/DatabaseImpl;J)V
    .locals 0
    .param p1, "db"    # Lcom/sleepycat/je/dbi/DatabaseImpl;
    .param p2, "sourceLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 42
    return-void
.end method

.method abstract rebuildINList(Lcom/sleepycat/je/dbi/INList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public releaseLatch()V
    .locals 0

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sleepycat/je/tree/Node;->dumpString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
