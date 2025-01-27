.class abstract Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "DbStreamVerify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/DbStreamVerify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DecoderReader"
.end annotation


# instance fields
.field protected final outStream:Ljava/io/PrintStream;

.field private final targetDbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field protected targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;"
        }
    .end annotation
.end field

.field private final targetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Lcom/sleepycat/je/log/entry/LNLogEntry<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/DbStreamVerify;Lcom/sleepycat/je/Environment;Ljava/io/PrintStream;JJLjava/lang/String;)V
    .locals 12
    .param p2, "env"    # Lcom/sleepycat/je/Environment;
    .param p3, "out"    # Ljava/io/PrintStream;
    .param p4, "startLsn"    # J
    .param p6, "endLsn"    # J
    .param p8, "dbName"    # Ljava/lang/String;

    .line 295
    move-object v11, p0

    move-object v0, p1

    iput-object v0, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->this$0:Lcom/sleepycat/je/rep/utilint/DbStreamVerify;

    .line 296
    invoke-static {p2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    const/16 v2, 0x2710

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-wide/from16 v4, p4

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 303
    move-object v0, p3

    iput-object v0, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->outStream:Ljava/io/PrintStream;

    .line 305
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetMap:Ljava/util/Map;

    .line 307
    invoke-static {}, Lcom/sleepycat/je/log/LogEntryType;->getAllTypes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/log/LogEntryType;

    .line 308
    .local v2, "entryType":Lcom/sleepycat/je/log/LogEntryType;
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->isUserLNType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    iget-object v3, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 310
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 309
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v2    # "entryType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_0
    goto :goto_0

    .line 314
    :cond_1
    new-instance v1, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 315
    .local v1, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 316
    invoke-static {v1, v2}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 317
    const/4 v2, 0x0

    move-object v3, p2

    move-object/from16 v4, p8

    invoke-virtual {p2, v2, v4, v1}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v2

    .line 318
    .local v2, "db":Lcom/sleepycat/je/Database;
    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getDbImpl(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/DatabaseImpl;->getId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v5

    iput-object v5, v11, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 319
    invoke-virtual {v2}, Lcom/sleepycat/je/Database;->close()V

    .line 320
    return-void
.end method


# virtual methods
.method protected abstract display()V
.end method

.method protected isTargetEntry()Z
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/entry/LNLogEntry;

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    .line 326
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 4
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 331
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0, v1, v2, p1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 332
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 334
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetEntry:Lcom/sleepycat/je/log/entry/LNLogEntry;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->targetDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->outStream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LSN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->getLastLsn()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/DbStreamVerify$DecoderReader;->display()V

    .line 341
    const/4 v0, 0x1

    return v0
.end method
