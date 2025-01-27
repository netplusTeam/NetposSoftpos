.class public Lcom/sleepycat/je/latch/LatchSupport;
.super Ljava/lang/Object;
.source "LatchSupport.java"


# static fields
.field static final CAPTURE_OWNER:Z

.field public static final DUMMY_LATCH_CONTEXT:Lcom/sleepycat/je/latch/LatchContext;

.field static final INTERRUPTIBLE_WITH_TIMEOUT:Z = true

.field public static final TRACK_LATCHES:Z

.field public static final btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

.field public static final otherLatchTable:Lcom/sleepycat/je/latch/LatchTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    sget-boolean v0, Lcom/sleepycat/je/utilint/DatabaseUtil;->TEST:Z

    sput-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    .line 43
    nop

    .line 44
    const-string v1, "JE_CAPTURE_LATCH_OWNER"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sleepycat/je/latch/LatchSupport;->CAPTURE_OWNER:Z

    .line 55
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/sleepycat/je/latch/LatchTable;

    invoke-direct {v2}, Lcom/sleepycat/je/latch/LatchTable;-><init>()V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    .line 59
    if-eqz v0, :cond_1

    new-instance v1, Lcom/sleepycat/je/latch/LatchTable;

    invoke-direct {v1}, Lcom/sleepycat/je/latch/LatchTable;-><init>()V

    :cond_1
    sput-object v1, Lcom/sleepycat/je/latch/LatchSupport;->otherLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    .line 67
    new-instance v0, Lcom/sleepycat/je/latch/LatchSupport$1;

    invoke-direct {v0}, Lcom/sleepycat/je/latch/LatchSupport$1;-><init>()V

    sput-object v0, Lcom/sleepycat/je/latch/LatchSupport;->DUMMY_LATCH_CONTEXT:Lcom/sleepycat/je/latch/LatchContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btreeLatchesHeldToString()Ljava/lang/String;
    .locals 1

    .line 106
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    invoke-virtual {v0}, Lcom/sleepycat/je/latch/LatchTable;->latchesHeldToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clear()V
    .locals 1

    .line 114
    sget-boolean v0, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    invoke-virtual {v0}, Lcom/sleepycat/je/latch/LatchTable;->clear()V

    .line 116
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->otherLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    invoke-virtual {v0}, Lcom/sleepycat/je/latch/LatchTable;->clear()V

    .line 118
    :cond_0
    return-void
.end method

.method static debugString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "latch"    # Lcom/sleepycat/je/latch/Latch;
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;
    .param p2, "lastOwnerInfo"    # Lcom/sleepycat/je/latch/OwnerInfo;

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " currentThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, " currentTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    sget-boolean v1, Lcom/sleepycat/je/latch/LatchSupport;->TRACK_LATCHES:Z

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTable()Lcom/sleepycat/je/latch/LatchTable;

    move-result-object v1

    .line 176
    .local v1, "latchTable":Lcom/sleepycat/je/latch/LatchTable;
    if-eqz v1, :cond_0

    .line 177
    const-string v2, " allLatchesHeld: ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Lcom/sleepycat/je/latch/LatchTable;->latchesHeldToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .end local v1    # "latchTable":Lcom/sleepycat/je/latch/LatchTable;
    :cond_0
    const-string v1, " exclusiveOwner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {p0}, Lcom/sleepycat/je/latch/Latch;->getExclusiveOwner()Ljava/lang/Thread;

    move-result-object v1

    .line 185
    .local v1, "ownerThread":Ljava/lang/Thread;
    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/latch/OwnerInfo;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 191
    :cond_1
    const-string v2, "-none-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static dumpBtreeLatchesHeld()V
    .locals 2

    .line 102
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchesHeldToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public static expectBtreeLatchesHeld(I)V
    .locals 1
    .param p0, "expectNLatches"    # I

    .line 63
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/sleepycat/je/latch/LatchSupport;->expectBtreeLatchesHeld(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public static expectBtreeLatchesHeld(ILjava/lang/String;)V
    .locals 4
    .param p0, "expectNLatches"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 88
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    invoke-virtual {v0}, Lcom/sleepycat/je/latch/LatchTable;->nLatchesHeld()I

    move-result v0

    .line 89
    .local v0, "nHeld":I
    if-ne v0, p0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 94
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    invoke-static {}, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchesHeldToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 92
    const-string v2, "Expected %d Btree latches held but got %d. %s\nLatch table: %s\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method static handleTimeout(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 6
    .param p0, "latch"    # Lcom/sleepycat/je/latch/Latch;
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 201
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getEnvImplForFatalException()Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 202
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v1

    .line 203
    .local v1, "logger":Ljava/util/logging/Logger;
    invoke-interface {p0}, Lcom/sleepycat/je/latch/Latch;->debugString()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "msg":Ljava/lang/String;
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread dump follows for latch timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 209
    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v1, v0, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->fullThreadDump(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Level;)V

    .line 211
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latch timeout. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    return-object v3
.end method

.method public static nBtreeLatchesHeld()I
    .locals 1

    .line 98
    sget-object v0, Lcom/sleepycat/je/latch/LatchSupport;->btreeLatchTable:Lcom/sleepycat/je/latch/LatchTable;

    invoke-virtual {v0}, Lcom/sleepycat/je/latch/LatchTable;->nLatchesHeld()I

    move-result v0

    return v0
.end method

.method static toString(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;Lcom/sleepycat/je/latch/OwnerInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "latch"    # Lcom/sleepycat/je/latch/Latch;
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;
    .param p2, "lastOwnerInfo"    # Lcom/sleepycat/je/latch/OwnerInfo;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    const-string v2, " exclusiveOwner: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-interface {p0}, Lcom/sleepycat/je/latch/Latch;->getExclusiveOwner()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    if-eqz p2, :cond_0

    .line 158
    invoke-virtual {p2, v0}, Lcom/sleepycat/je/latch/OwnerInfo;->toString(Ljava/lang/StringBuilder;)V

    .line 160
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static trackAcquire(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V
    .locals 3
    .param p0, "latch"    # Lcom/sleepycat/je/latch/Latch;
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 125
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTable()Lcom/sleepycat/je/latch/LatchTable;

    move-result-object v0

    .line 126
    .local v0, "latchTable":Lcom/sleepycat/je/latch/LatchTable;
    if-nez v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/latch/LatchTable;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    return-void

    .line 130
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch already held."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    invoke-interface {p0}, Lcom/sleepycat/je/latch/Latch;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method static trackRelease(Lcom/sleepycat/je/latch/Latch;Lcom/sleepycat/je/latch/LatchContext;)V
    .locals 3
    .param p0, "latch"    # Lcom/sleepycat/je/latch/Latch;
    .param p1, "context"    # Lcom/sleepycat/je/latch/LatchContext;

    .line 140
    invoke-interface {p1}, Lcom/sleepycat/je/latch/LatchContext;->getLatchTable()Lcom/sleepycat/je/latch/LatchTable;

    move-result-object v0

    .line 141
    .local v0, "latchTable":Lcom/sleepycat/je/latch/LatchTable;
    if-nez v0, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sleepycat/je/latch/LatchTable;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    return-void

    .line 145
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latch not held."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-interface {p0}, Lcom/sleepycat/je/latch/Latch;->debugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method
