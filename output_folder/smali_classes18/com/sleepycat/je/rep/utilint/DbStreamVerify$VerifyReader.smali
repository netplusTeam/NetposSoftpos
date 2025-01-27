.class Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "DbStreamVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/DbStreamVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifyReader"
.end annotation


# instance fields
.field private lastLSN:J

.field private lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final out1:Ljava/io/PrintStream;

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/io/PrintStream;JJ)V
    .locals 12
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "out"    # Ljava/io/PrintStream;
    .param p4, "startLsn"    # J
    .param p6, "endLsn"    # J

    .line 205
    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 206
    const/16 v2, 0x2710

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v4, p4

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 200
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastLSN:J

    .line 213
    move-object v0, p3

    iput-object v0, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->out1:Ljava/io/PrintStream;

    .line 214
    return-void
.end method


# virtual methods
.method displayLast()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->out1:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastVLSN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastLSN:J

    .line 275
    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method protected isTargetEntry()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v0

    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 10
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 223
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 224
    .local v0, "currentVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->getLastLsn()J

    move-result-wide v1

    .line 226
    .local v1, "currentLSN":J
    if-eqz v0, :cond_5

    .line 232
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->out1:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected LSN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 234
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->getLastLsn()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has vlsn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    const-string v4, " at lsn "

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->out1:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first VLSN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 242
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->getLastLsn()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 244
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/utilint/VLSN;->follows(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->out1:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gap of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 248
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v6

    iget-object v8, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 249
    invoke-virtual {v8}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Last="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastLSN:J

    .line 251
    invoke-static {v6, v7}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " next="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 253
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->access$000(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 259
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->out1:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VLSN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is invisible."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v3

    if-nez v3, :cond_4

    .line 265
    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 266
    iput-wide v1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->lastLSN:J

    .line 268
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VerifyReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 269
    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 268
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 270
    const/4 v3, 0x1

    return v3

    .line 227
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Should be a replicated entry"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
