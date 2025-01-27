.class Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;
.super Ljava/lang/Object;
.source "LDiffService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/util/ldiff/LDiffService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LDiffServiceRunnable"
.end annotation


# instance fields
.field final channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field private dbConfig:Lcom/sleepycat/je/DatabaseConfig;

.field private env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

.field final synthetic this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/util/ldiff/LDiffService;
    .param p2, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 92
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->dbConfig:Lcom/sleepycat/je/DatabaseConfig;

    .line 93
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 94
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->dbConfig:Lcom/sleepycat/je/DatabaseConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/DatabaseConfig;->setAllowCreate(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 96
    return-void
.end method

.method private runDiffAnalysis(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    .locals 4
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 148
    .local v0, "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_DIFF_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_0

    .line 149
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;

    invoke-direct {p0, p1, v1, p2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->sendDiffArea(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    .line 157
    .end local v0    # "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    goto :goto_0

    .line 151
    .restart local v0    # "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-eq v1, v2, :cond_1

    .line 152
    new-instance v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 158
    .end local v0    # "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_1
    return-void
.end method

.method private sendDiffArea(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    .locals 5
    .param p1, "cursor"    # Lcom/sleepycat/je/Cursor;
    .param p2, "request"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 169
    .local v0, "records":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sleepycat/je/rep/util/ldiff/Record;>;"
    :try_start_0
    invoke-static {p1, p2}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->getDiffArea(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;)Ljava/util/HashSet;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 173
    nop

    .line 176
    new-instance v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaStart;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p3}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaStart;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p3, v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 177
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/util/ldiff/Record;

    .line 178
    .local v2, "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    new-instance v3, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p3, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteRecord;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/util/ldiff/Record;)V

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p3, v3, v4}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 179
    .end local v2    # "record":Lcom/sleepycat/je/rep/util/ldiff/Record;
    goto :goto_0

    .line 180
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p3}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DiffAreaEnd;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p3, v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 181
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Error;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Error;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p3, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 172
    new-instance v2, Lcom/sleepycat/je/rep/util/ldiff/LDiffRecordRequestException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffRecordRequestException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 194
    const-string v0, "Service is not busy"

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->ensureChannelBlocking(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 196
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->access$000(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->makeEnvironment()Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 197
    new-instance v3, Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    new-instance v4, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const-string v5, "Ldiff"

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    invoke-static {v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->access$000(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 199
    .local v3, "protocol":Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v4

    .line 200
    .local v4, "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DB_BLOCKS:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v5, v6, :cond_0

    .line 201
    move-object v5, v4

    check-cast v5, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;

    invoke-virtual {p0, v5, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->runLDiff(Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->ENV_DIFF:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v5, v6, :cond_1

    .line 203
    move-object v5, v4

    check-cast v5, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;

    invoke-virtual {p0, v5, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->runEnvDiff(Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    :try_end_1
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .end local v4    # "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_1
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v4}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 205
    :catch_0
    move-exception v4

    .line 207
    .local v4, "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_3
    new-instance v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v3, v5, v6}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    .end local v4    # "e":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_4
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v4}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    :goto_1
    invoke-interface {v4}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    if-eqz v4, :cond_3

    .line 223
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 225
    :cond_3
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    invoke-static {v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->access$100(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    .line 226
    :cond_4
    nop

    .line 227
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 211
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 212
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    :cond_5
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 222
    .end local v3    # "protocol":Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    if-eqz v4, :cond_6

    .line 223
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 225
    :cond_6
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    invoke-static {v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->access$100(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_7

    .line 226
    nop

    .line 227
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    :cond_7
    throw v3

    .line 215
    :catch_1
    move-exception v3

    .line 222
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    if-eqz v3, :cond_8

    .line 223
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 225
    :cond_8
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->this$0:Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    invoke-static {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->access$100(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 230
    :goto_3
    return-void

    .line 226
    :cond_9
    nop

    .line 227
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public runEnvDiff(Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    .locals 2
    .param p1, "request"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 187
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getDatabaseNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;I)V

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 186
    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 188
    return-void
.end method

.method public runLDiff(Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V
    .locals 9
    .param p1, "request"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "db":Lcom/sleepycat/je/Database;
    const/4 v1, 0x0

    .line 104
    .local v1, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->env:Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    .line 105
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->getDbName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->dbConfig:Lcom/sleepycat/je/DatabaseConfig;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v2

    move-object v0, v2

    .line 106
    new-instance v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListStart;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListStart;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 107
    new-instance v2, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;-><init>()V

    .line 108
    .local v2, "cfg":Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;->getBlockSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setBlockSize(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    .line 109
    new-instance v3, Lcom/sleepycat/je/rep/util/ldiff/LDiff;

    invoke-direct {v3, v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;-><init>(Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;)V

    .line 111
    .local v3, "ldf":Lcom/sleepycat/je/rep/util/ldiff/LDiff;
    invoke-virtual {v3, v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->iterator(Lcom/sleepycat/je/Database;)Ljava/util/Iterator;

    move-result-object v4

    .line 112
    .local v4, "blocks":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 113
    new-instance v6, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-direct {v6, p2, v7}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/util/ldiff/Block;)V

    iget-object v7, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v6, v7}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v6, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListEnd;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    iget-object v7, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v6, v7}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 119
    iget-object v6, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v6}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v6

    .line 120
    .local v6, "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v7

    sget-object v8, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->REMOTE_DIFF_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v7, v8, :cond_1

    .line 121
    invoke-virtual {v0, v5, v5}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v5

    move-object v1, v5

    .line 122
    move-object v5, v6

    check-cast v5, Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;

    invoke-direct {p0, v1, v5, p2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->sendDiffArea(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol$RemoteDiffRequest;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    .line 123
    invoke-direct {p0, v1, p2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->runDiffAnalysis(Lcom/sleepycat/je/Cursor;Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v5

    sget-object v7, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->DONE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-eq v5, v7, :cond_2

    .line 125
    new-instance v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, p2, v7}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolError;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v5, v7}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v2    # "cfg":Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .end local v3    # "ldf":Lcom/sleepycat/je/rep/util/ldiff/LDiff;
    .end local v4    # "blocks":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    .end local v6    # "msg":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 133
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 135
    :cond_3
    if-eqz v0, :cond_5

    .line 136
    :goto_2
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    goto :goto_3

    .line 132
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    :try_start_1
    new-instance v3, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/sleepycat/je/DatabaseNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbMismatch;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {p2, v3, v4}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v2    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 135
    :cond_4
    if-eqz v0, :cond_5

    .line 136
    goto :goto_2

    .line 139
    :cond_5
    :goto_3
    return-void

    .line 132
    :goto_4
    if-eqz v1, :cond_6

    .line 133
    invoke-virtual {v1}, Lcom/sleepycat/je/Cursor;->close()V

    .line 135
    :cond_6
    if-eqz v0, :cond_7

    .line 136
    invoke-virtual {v0}, Lcom/sleepycat/je/Database;->close()V

    :cond_7
    throw v2
.end method
