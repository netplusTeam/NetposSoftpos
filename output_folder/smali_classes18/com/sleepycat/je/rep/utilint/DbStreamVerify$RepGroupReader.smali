.class Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;
.super Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;
.source "DbStreamVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/DbStreamVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepGroupReader"
.end annotation


# instance fields
.field private nodeBinding:Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJ)V
    .locals 10
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .param p3, "out"    # Ljava/io/PrintStream;
    .param p4, "startLsn"    # J
    .param p6, "endLsn"    # J

    .line 396
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 397
    sget-object v0, Lcom/sleepycat/je/dbi/DbType;->REP_GROUP:Lcom/sleepycat/je/dbi/DbType;

    .line 398
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v8

    .line 397
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;-><init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJLjava/lang/String;)V

    .line 399
    return-void
.end method


# virtual methods
.method protected display()V
    .locals 7

    .line 403
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->access$200(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;)Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " VLSN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 405
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 407
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v1

    .line 408
    .local v1, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->outStream:Ljava/io/PrintStream;

    const-string v3, "<deleted>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 411
    :cond_0
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v1}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 412
    .local v2, "data":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/StringBinding;->entryToString(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "keyVal":Ljava/lang/String;
    const-string v4, "$$GROUP_KEY$$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    new-instance v4, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;

    invoke-direct {v4}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;-><init>()V

    .line 415
    invoke-virtual {v4, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$GroupBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    .line 416
    .local v4, "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    new-instance v5, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->getFormatVersion()I

    move-result v6

    invoke-direct {v5, v6}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;-><init>(I)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->nodeBinding:Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    .line 417
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->outStream:Ljava/io/PrintStream;

    const-string v6, " GroupInfo: "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->outStream:Ljava/io/PrintStream;

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 419
    .end local v4    # "group":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    goto :goto_0

    .line 420
    :cond_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->outStream:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " NodeInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 421
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->nodeBinding:Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    if-eqz v4, :cond_2

    .line 425
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->outStream:Ljava/io/PrintStream;

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$RepGroupReader;->nodeBinding:Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;

    invoke-virtual {v5, v2}, Lcom/sleepycat/je/rep/impl/RepGroupDB$NodeBinding;->entryToObject(Lcom/sleepycat/je/DatabaseEntry;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 428
    .end local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "keyVal":Ljava/lang/String;
    :goto_0
    return-void

    .line 422
    .restart local v2    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .restart local v3    # "keyVal":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Node entry before group entry"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
