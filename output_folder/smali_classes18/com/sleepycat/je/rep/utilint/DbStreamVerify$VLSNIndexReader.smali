.class Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;
.super Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;
.source "DbStreamVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/DbStreamVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VLSNIndexReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJ)V
    .locals 10
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .param p3, "out"    # Ljava/io/PrintStream;
    .param p4, "startLsn"    # J
    .param p6, "endLsn"    # J

    .line 356
    move-object v9, p0

    move-object v1, p1

    iput-object v1, v9, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 357
    sget-object v0, Lcom/sleepycat/je/dbi/DbType;->VLSN_MAP:Lcom/sleepycat/je/dbi/DbType;

    .line 358
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DbType;->getInternalName()Ljava/lang/String;

    move-result-object v8

    .line 357
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;-><init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJLjava/lang/String;)V

    .line 359
    return-void
.end method


# virtual methods
.method protected display()V
    .locals 9

    .line 363
    new-instance v0, Lcom/sleepycat/je/DatabaseEntry;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 364
    .local v0, "key":Lcom/sleepycat/je/DatabaseEntry;
    invoke-static {v0}, Lcom/sleepycat/bind/tuple/LongBinding;->entryToLong(Lcom/sleepycat/je/DatabaseEntry;)J

    move-result-wide v1

    .line 365
    .local v1, "keyVal":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v3

    .line 366
    .local v3, "ln":Lcom/sleepycat/je/tree/LN;
    invoke-virtual {v3}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <deleted>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :cond_0
    new-instance v4, Lcom/sleepycat/je/DatabaseEntry;

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/LN;->getData()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/DatabaseEntry;-><init>([B)V

    .line 371
    .local v4, "data":Lcom/sleepycat/je/DatabaseEntry;
    const-wide/16 v5, -0x1

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    .line 372
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    const-string v6, " range: "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 373
    invoke-static {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v5

    .line 374
    .local v5, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 375
    .end local v5    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    goto :goto_0

    .line 376
    :cond_1
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 377
    invoke-static {v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->readFromDatabase(Lcom/sleepycat/je/DatabaseEntry;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v5

    .line 378
    .local v5, "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    invoke-static {v6}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify;->access$100(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 380
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    const-string v7, "-------------------------------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->dump(Ljava/io/PrintStream;)V

    .line 382
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$VLSNIndexReader;->outStream:Ljava/io/PrintStream;

    const-string v7, "-------------------------------\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 386
    .end local v4    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v5    # "bucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_2
    :goto_0
    return-void
.end method
