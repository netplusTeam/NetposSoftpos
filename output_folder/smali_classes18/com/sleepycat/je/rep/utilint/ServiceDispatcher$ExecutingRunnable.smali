.class public abstract Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;
.super Ljava/lang/Object;
.source "ServiceDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExecutingRunnable"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field protected final expectResponse:Z

.field protected final protocol:Lcom/sleepycat/je/rep/impl/TextProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1223
    const-class v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol;Z)V
    .locals 0
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p2, "protocol"    # Lcom/sleepycat/je/rep/impl/TextProtocol;
    .param p3, "expectResponse"    # Z

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1231
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1232
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->protocol:Lcom/sleepycat/je/rep/impl/TextProtocol;

    .line 1233
    iput-boolean p3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->expectResponse:Z

    .line 1234
    return-void
.end method


# virtual methods
.method protected abstract getResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract logMessage(Ljava/lang/String;)V
.end method

.method public run()V
    .locals 6

    .line 1239
    const-string v0, "IO error on socket close: "

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;->ensureChannelBlocking(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 1242
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->protocol:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/TextProtocol;->getRequestMessage(Lcom/sleepycat/je/rep/net/DataChannel;)Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1243
    .local v1, "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    if-nez v1, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1261
    :try_start_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1266
    goto :goto_0

    .line 1262
    :catch_0
    move-exception v2

    .line 1263
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1264
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->logMessage(Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1244
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void

    .line 1246
    :cond_1
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->getResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v2

    .line 1247
    .local v2, "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    iget-boolean v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->expectResponse:Z

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1248
    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1249
    invoke-static {v4}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 1250
    .local v3, "out":Ljava/io/PrintWriter;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->wireFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1251
    .end local v3    # "out":Ljava/io/PrintWriter;
    goto :goto_1

    .line 1252
    :cond_2
    if-nez v2, :cond_4

    .line 1259
    .end local v1    # "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v2    # "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    :goto_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1261
    :try_start_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1266
    goto :goto_2

    .line 1262
    :catch_1
    move-exception v1

    .line 1263
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1264
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->logMessage(Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1269
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    return-void

    .line 1252
    .local v1, "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .restart local v2    # "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    :cond_4
    :try_start_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1259
    .end local v1    # "request":Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .end local v2    # "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 1254
    :catch_2
    move-exception v1

    .line 1255
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error on socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1256
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->logMessage(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1259
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1261
    :try_start_6
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1266
    goto :goto_3

    .line 1262
    :catch_3
    move-exception v2

    .line 1263
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1264
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->logMessage(Ljava/lang/String;)V

    .line 1265
    return-void

    .line 1257
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    return-void

    .line 1259
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1261
    :try_start_7
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1266
    goto :goto_5

    .line 1262
    :catch_4
    move-exception v1

    .line 1263
    .restart local v1    # "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1264
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;->logMessage(Ljava/lang/String;)V

    .line 1265
    return-void

    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    throw v1
.end method
