.class public Lorg/apache/sshd/server/channel/ChannelSession;
.super Lorg/apache/sshd/server/channel/AbstractServerChannel;
.source "ChannelSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;
    }
.end annotation


# static fields
.field public static final DEFAULT_HANDLERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/channel/ChannelRequestHandler;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAX_EXTDATA_BUFSIZE:I = 0x0

.field public static final MAX_EXTDATA_BUFSIZE:Ljava/lang/String; = "channel-session-max-extdata-bufsize"


# instance fields
.field protected asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

.field protected asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

.field protected final commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

.field protected commandInstance:Lorg/apache/sshd/server/command/Command;

.field protected final commandStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final env:Lorg/apache/sshd/server/StandardEnvironment;

.field protected err:Ljava/io/OutputStream;

.field protected extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

.field protected extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

.field protected out:Ljava/io/OutputStream;

.field protected receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

.field protected receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

.field protected type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    sget-object v0, Lorg/apache/sshd/server/channel/PuttyRequestHandler;->INSTANCE:Lorg/apache/sshd/server/channel/PuttyRequestHandler;

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/channel/ChannelSession;->DEFAULT_HANDLERS:Ljava/util/List;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    sget-object v0, Lorg/apache/sshd/server/channel/ChannelSession;->DEFAULT_HANDLERS:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/channel/ChannelSession;-><init>(Ljava/util/Collection;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/channel/RequestHandler<",
            "Lorg/apache/sshd/common/channel/Channel;",
            ">;>;)V"
        }
    .end annotation

    .line 118
    .local p1, "handlers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/channel/RequestHandler<Lorg/apache/sshd/common/channel/Channel;>;>;"
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Lorg/apache/sshd/server/StandardEnvironment;

    invoke-direct {v0}, Lorg/apache/sshd/server/StandardEnvironment;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->env:Lorg/apache/sshd/server/StandardEnvironment;

    .line 120
    new-instance v0, Lorg/apache/sshd/common/future/DefaultCloseFuture;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->futureLock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/future/DefaultCloseFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    .line 121
    return-void
.end method


# virtual methods
.method protected addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 908
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v0

    .line 909
    .local v0, "e":Lorg/apache/sshd/server/StandardEnvironment;
    invoke-virtual {v0, p1, p2}, Lorg/apache/sshd/server/StandardEnvironment;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method protected closeImmediately0()V
    .locals 11

    .line 212
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 213
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 215
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v1, p0}, Lorg/apache/sshd/server/command/Command;->destroy(Lorg/apache/sshd/server/channel/ChannelSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    :goto_0
    iput-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    .line 224
    goto :goto_1

    .line 216
    :catchall_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v8, "doCloseImmediately({}) failed ({}) to destroy command: {}"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object p0, v9, v5

    .line 218
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 217
    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    if-eqz v0, :cond_0

    .line 220
    iget-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doCloseImmediately("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") command destruction failure details"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    iput-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    .line 224
    throw v1

    .line 227
    :cond_1
    :goto_1
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/io/Closeable;

    .line 228
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v6

    aput-object v6, v1, v5

    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->out:Ljava/io/OutputStream;

    aput-object v6, v1, v4

    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->err:Ljava/io/OutputStream;

    aput-object v6, v1, v3

    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    aput-object v6, v1, v2

    const/4 v6, 0x4

    iget-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    aput-object v7, v1, v6

    invoke-static {v1}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    move-result-object v1

    .line 229
    .local v1, "e":Ljava/io/IOException;
    if-eqz v1, :cond_3

    .line 230
    if-eqz v0, :cond_2

    .line 231
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 231
    const-string v3, "doCloseImmediately({}) failed ({}) to close resources: {}"

    invoke-interface {v6, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    :cond_2
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->getSuppressed()[Ljava/lang/Throwable;

    move-result-object v2

    .line 237
    .local v2, "suppressed":[Ljava/lang/Throwable;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_3

    .line 238
    array-length v3, v2

    :goto_2
    if-ge v5, v3, :cond_3

    aget-object v4, v2, v5

    .line 239
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suppressed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") while close immediately resource(s) of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 241
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 238
    .end local v4    # "t":Ljava/lang/Throwable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 246
    .end local v2    # "suppressed":[Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method protected closeShell(I)V
    .locals 3
    .param p1, "exitValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "closeShell({}) exit code={}"

    invoke-interface {v0, v2, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 921
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->isClosing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 922
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 923
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 925
    :cond_1
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->sendEof()V

    .line 926
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/channel/ChannelSession;->sendExitStatus(I)V

    .line 927
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 928
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/channel/ChannelSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    goto :goto_0

    .line 930
    :cond_2
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandExitFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->setClosed()V

    .line 932
    :goto_0
    return-void
.end method

.method protected doWriteData([BIJ)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Data length exceeds int boundaries: %d"

    invoke-static {v0, v3, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 274
    long-to-int v0, p3

    .line 275
    .local v0, "reqLen":I
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    if-eqz v3, :cond_3

    .line 276
    invoke-interface {v3, p0, p1, p2, v0}, Lorg/apache/sshd/server/channel/ChannelDataReceiver;->data(Lorg/apache/sshd/server/channel/ChannelSession;[BII)I

    move-result v1

    .line 277
    .local v1, "r":I
    if-lez v1, :cond_2

    .line 278
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v2

    .line 279
    .local v2, "wLocal":Lorg/apache/sshd/common/channel/Window;
    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/sshd/common/channel/Window;->consumeAndCheck(J)V

    .line 281
    .end local v1    # "r":I
    .end local v2    # "wLocal":Lorg/apache/sshd/common/channel/Window;
    :cond_2
    goto :goto_2

    .line 282
    :cond_3
    const-wide/32 v3, 0x7fffffbf

    cmp-long v3, p3, v3

    if-gtz v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    const-string v3, "Temporary data length exceeds int boundaries: %d"

    invoke-static {v1, v3, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 284
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    if-nez v1, :cond_5

    .line 285
    new-instance v1, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    add-int/lit8 v3, v0, 0x40

    invoke-direct {v1, v3, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    iput-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 287
    :cond_5
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 289
    :goto_2
    return-void
.end method

.method protected doWriteExtendedData([BIJ)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    const-wide/32 v0, 0x7fffffbf

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "Extended data length exceeds int boundaries: %d"

    invoke-static {v0, v2, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 296
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    if-eqz v0, :cond_1

    .line 297
    long-to-int v1, p3

    invoke-interface {v0, p0, p1, p2, v1}, Lorg/apache/sshd/server/channel/ChannelDataReceiver;->data(Lorg/apache/sshd/server/channel/ChannelSession;[BII)I

    .line 298
    return-void

    .line 301
    :cond_1
    long-to-int v0, p3

    .line 302
    .local v0, "reqSize":I
    const-string v2, "channel-session-max-extdata-bufsize"

    invoke-virtual {p0, v2, v1}, Lorg/apache/sshd/server/channel/ChannelSession;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    .line 303
    .local v2, "maxBufSize":I
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    .line 304
    .local v3, "curBufSize":I
    :goto_1
    add-int v4, v3, v0

    .line 305
    .local v4, "totalSize":I
    if-le v4, v2, :cond_4

    .line 306
    if-gtz v3, :cond_3

    if-gtz v2, :cond_3

    .line 307
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Session channel does not support extended data"

    invoke-direct {v1, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extended data buffer size ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") exceeded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_4
    iget-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    if-nez v5, :cond_5

    .line 314
    new-instance v5, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    add-int/lit8 v6, v4, 0x40

    invoke-direct {v5, v6, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    iput-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 316
    :cond_5
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v1, p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 317
    return-void
.end method

.method public getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;
    .locals 1

    .line 913
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->env:Lorg/apache/sshd/server/StandardEnvironment;

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 6

    .line 138
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lorg/apache/sshd/common/Closeable;

    new-instance v3, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;

    invoke-direct {v3, p0}, Lorg/apache/sshd/server/channel/ChannelSession$CommandCloseable;-><init>(Lorg/apache/sshd/server/channel/ChannelSession;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 139
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getInnerCloseable()Lorg/apache/sshd/common/Closeable;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    new-array v1, v1, [Lorg/apache/sshd/common/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    aput-object v2, v1, v5

    .line 140
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/server/channel/ChannelSession;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method protected getPtyModeValue(Lorg/apache/sshd/common/channel/PtyMode;)I
    .locals 2
    .param p1, "mode"    # Lorg/apache/sshd/common/channel/PtyMode;

    .line 808
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/sshd/server/StandardEnvironment;->getPtyModes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 809
    .local v0, "v":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 125
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method

.method protected handleAgentForwarding(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 11
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 816
    .local v0, "session":Lorg/apache/sshd/server/session/ServerSession;
    const-string v1, "agent-fw-auth-type"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/PropertyResolverUtils;->updateProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    nop

    .line 820
    invoke-interface {v0}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v1

    const-string v2, "No session factory manager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/FactoryManager;

    .line 821
    .local v1, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v1}, Lorg/apache/sshd/common/FactoryManager;->getAgentForwardingFilter()Lorg/apache/sshd/server/forward/AgentForwardingFilter;

    move-result-object v2

    .line 822
    .local v2, "filter":Lorg/apache/sshd/server/forward/AgentForwardingFilter;
    invoke-interface {v1}, Lorg/apache/sshd/common/FactoryManager;->getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;

    move-result-object v3

    .line 823
    .local v3, "factory":Lorg/apache/sshd/agent/SshAgentFactory;
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    .line 825
    .local v4, "debugEnabled":Z
    const-string v5, "handleAgentForwarding("

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :try_start_0
    invoke-interface {v2, v0, p1}, Lorg/apache/sshd/server/forward/AgentForwardingFilter;->canForwardAgent(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v8, :cond_0

    goto :goto_0

    .line 839
    :cond_0
    nop

    .line 841
    iget-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v5}, Lorg/apache/sshd/common/session/ConnectionService;->getAgentForwardSupport()Lorg/apache/sshd/agent/common/AgentForwardSupport;

    move-result-object v5

    .line 842
    .local v5, "agentForward":Lorg/apache/sshd/agent/common/AgentForwardSupport;
    if-nez v5, :cond_2

    .line 843
    if-eqz v4, :cond_1

    .line 844
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v7, "handleAgentForwarding() no agent forward support"

    invoke-interface {v6, v7, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 846
    :cond_1
    sget-object v6, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v6

    .line 849
    :cond_2
    invoke-interface {v5}, Lorg/apache/sshd/agent/common/AgentForwardSupport;->initialize()Ljava/lang/String;

    move-result-object v6

    .line 850
    .local v6, "authSocket":Ljava/lang/String;
    const-string v7, "SSH_AUTH_SOCK"

    invoke-virtual {p0, v7, v6}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    sget-object v7, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v7

    .line 826
    .end local v5    # "agentForward":Lorg/apache/sshd/agent/common/AgentForwardSupport;
    .end local v6    # "authSocket":Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz v4, :cond_6

    .line 827
    :try_start_1
    iget-object v8, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")[haveFactory="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_4

    move v10, v6

    goto :goto_1

    :cond_4
    move v10, v7

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",haveFilter="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v7

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] filtered out request="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 830
    :cond_6
    sget-object v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    .line 832
    :catch_0
    move-exception v8

    .line 833
    .local v8, "e":Ljava/lang/Error;
    iget-object v9, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v7

    .line 834
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    const/4 v6, 0x2

    aput-object p1, v10, v6

    const/4 v6, 0x3

    invoke-virtual {v8}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v6

    .line 833
    const-string v6, "handleAgentForwarding({}) failed ({}) to consult forwarding filter for \'{}\': {}"

    invoke-interface {v9, v6, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    if-eqz v4, :cond_7

    .line 836
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] filter consultation failure details"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 838
    :cond_7
    new-instance v5, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v5, v8}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected handleBreak(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUInt()J

    move-result-wide v0

    .line 523
    .local v0, "breakLength":J
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "handleBreak({}) length={}"

    invoke-interface {v2, v4, p0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 527
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v2

    .line 528
    .local v2, "environ":Lorg/apache/sshd/server/StandardEnvironment;
    sget-object v3, Lorg/apache/sshd/server/Signal;->INT:Lorg/apache/sshd/server/Signal;

    invoke-virtual {v2, p0, v3}, Lorg/apache/sshd/server/StandardEnvironment;->signal(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/server/Signal;)V

    .line 529
    sget-object v3, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v3
.end method

.method protected handleEnv(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v4, "handleEnv({}): {} = {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_0
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2
.end method

.method public handleEof()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-super {p0}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->handleEof()V

    .line 252
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/io/Closeable;

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/apache/sshd/common/util/io/IoUtils;->closeQuietly([Ljava/io/Closeable;)Ljava/io/IOException;

    move-result-object v1

    .line 253
    .local v1, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 254
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    .line 256
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    .line 255
    const-string v0, "handleEof({}) failed ({}) to close receiver(s): {}"

    invoke-interface {v2, v0, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEof("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") receiver close failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_1
    return-void
.end method

.method protected handleExec(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 10
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 584
    :cond_0
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "commandLine":Ljava/lang/String;
    nop

    .line 586
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v1

    const-string v2, "No server session"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/session/ServerSession;

    .line 587
    .local v1, "cmdSession":Lorg/apache/sshd/server/session/ServerSession;
    nop

    .line 588
    invoke-interface {v1}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v2

    const-string v3, "No server factory manager"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/server/ServerFactoryManager;

    .line 589
    .local v2, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    invoke-interface {v2}, Lorg/apache/sshd/server/ServerFactoryManager;->getCommandFactory()Lorg/apache/sshd/server/command/CommandFactory;

    move-result-object v3

    .line 590
    .local v3, "factory":Lorg/apache/sshd/server/command/CommandFactory;
    if-nez v3, :cond_1

    .line 591
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v5, "handleExec({}) No command factory for command: {}"

    invoke-interface {v4, v5, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 592
    sget-object v4, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v4

    .line 595
    :cond_1
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    .line 596
    .local v4, "debugEnabled":Z
    if-eqz v4, :cond_2

    .line 597
    iget-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v6, "handleExec({}) Executing command: {}"

    invoke-interface {v5, v6, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    :cond_2
    :try_start_0
    invoke-interface {v3, p0, v0}, Lorg/apache/sshd/server/command/CommandFactory;->createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    nop

    .line 612
    if-nez v5, :cond_3

    .line 613
    iget-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v6, "handleExec({}) Unsupported command: {}"

    invoke-interface {v5, v6, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    sget-object v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v5

    .line 617
    :cond_3
    invoke-virtual {p0, p1, v5}, Lorg/apache/sshd/server/channel/ChannelSession;->prepareChannelCommand(Ljava/lang/String;Lorg/apache/sshd/server/command/Command;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v5

    return-object v5

    .line 602
    :catch_0
    move-exception v5

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v5

    .line 603
    .local v5, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    .line 604
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 603
    const-string v8, "handleExec({}) Failed ({}) to create command for {}: {}"

    invoke-interface {v6, v8, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    if-eqz v4, :cond_4

    .line 606
    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleExec("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") command="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " creation failure details"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 609
    :cond_4
    sget-object v6, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v6
.end method

.method protected handleInternalRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 7
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "wantReply"    # Z
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "auth-agent-req@openssh.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v0, "x11-req"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "subsystem"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "auth-agent-req"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_4
    const-string v0, "shell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "break"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_6
    const-string v0, "exec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "env"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_8
    const-string/jumbo v0, "window-change"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_9
    const-string v0, "pty-req"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_a
    const-string v0, "signal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v6, "handleInternalRequest({})[want-reply={}] type already set for request={}: {}"

    packed-switch v0, :pswitch_data_0

    .line 385
    invoke-super {p0, p1, p2, p3}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->handleInternalRequest(Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 383
    :pswitch_0
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleX11Forwarding(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 381
    :pswitch_1
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleAgentForwarding(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 365
    :pswitch_2
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 366
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleSubsystem(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    .line 367
    .local v0, "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 368
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    :cond_1
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    .line 371
    :cond_2
    return-object v0

    .line 373
    .end local v0    # "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :cond_3
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 375
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 374
    invoke-interface {v0, v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_4
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 350
    :pswitch_3
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 351
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleExec(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    .line 352
    .restart local v0    # "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 353
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    :cond_5
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    .line 356
    :cond_6
    return-object v0

    .line 358
    .end local v0    # "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :cond_7
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 359
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 360
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 359
    invoke-interface {v0, v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :cond_8
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 335
    :pswitch_4
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 336
    invoke-virtual {p0, p1, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleShell(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    .line 337
    .restart local v0    # "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    .line 338
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 339
    :cond_9
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    .line 341
    :cond_a
    return-object v0

    .line 343
    .end local v0    # "r":Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :cond_b
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 344
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 345
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    aput-object p1, v1, v3

    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 344
    invoke-interface {v0, v6, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_c
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 333
    :pswitch_5
    invoke-virtual {p0, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleBreak(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 331
    :pswitch_6
    invoke-virtual {p0, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleSignal(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 329
    :pswitch_7
    invoke-virtual {p0, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleWindowChange(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 327
    :pswitch_8
    invoke-virtual {p0, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handlePtyReq(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 325
    :pswitch_9
    invoke-virtual {p0, p3, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->handleEnv(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x35ca9158 -> :sswitch_a
        -0xe94a23a -> :sswitch_9
        -0x39eabd3 -> :sswitch_8
        0x188ed -> :sswitch_7
        0x2fb891 -> :sswitch_6
        0x59a58ff -> :sswitch_5
        0x6855e30 -> :sswitch_4
        0x1bc633f1 -> :sswitch_3
        0x1fe6806f -> :sswitch_2
        0x2251e9e9 -> :sswitch_1
        0x515a2142 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handlePtyReq(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 19
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "term":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v2

    .line 444
    .local v2, "tColumns":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v3

    .line 445
    .local v3, "tRows":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v4

    .line 446
    .local v4, "tWidth":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v5

    .line 447
    .local v5, "tHeight":I
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v6

    .line 448
    .local v6, "modes":[B
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v7

    .line 449
    .local v7, "environment":Lorg/apache/sshd/server/Environment;
    invoke-interface {v7}, Lorg/apache/sshd/server/Environment;->getPtyModes()Ljava/util/Map;

    move-result-object v8

    .line 451
    .local v8, "ptyModes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v6

    const/4 v11, 0x3

    const/4 v13, 0x0

    if-ge v9, v10, :cond_2

    aget-byte v10, v6, v9

    if-eqz v10, :cond_2

    .line 452
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    aget-byte v9, v6, v9

    const/16 v15, 0xff

    and-int/2addr v9, v15

    .line 458
    .local v9, "opcode":I
    const/16 v12, 0xa0

    if-lt v9, v12, :cond_0

    if-gt v9, v15, :cond_0

    .line 459
    iget-object v12, v0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "handlePtyReq({}) unknown reserved pty opcode value: {}"

    invoke-interface {v12, v14, v0, v15}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    goto :goto_2

    .line 463
    :cond_0
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "i":I
    .local v12, "i":I
    aget-byte v10, v6, v10

    shl-int/lit8 v10, v10, 0x18

    const/high16 v14, -0x1000000

    and-int/2addr v10, v14

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .local v14, "i":I
    aget-byte v12, v6, v12

    shl-int/lit8 v12, v12, 0x10

    const/high16 v18, 0xff0000

    and-int v12, v12, v18

    or-int/2addr v10, v12

    add-int/lit8 v12, v14, 0x1

    .end local v14    # "i":I
    .restart local v12    # "i":I
    aget-byte v14, v6, v14

    shl-int/lit8 v14, v14, 0x8

    const v18, 0xff00

    and-int v14, v14, v18

    or-int/2addr v10, v14

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .restart local v14    # "i":I
    aget-byte v12, v6, v12

    and-int/2addr v12, v15

    or-int/2addr v10, v12

    .line 467
    .local v10, "val":I
    invoke-static {v9}, Lorg/apache/sshd/common/channel/PtyMode;->fromInt(I)Lorg/apache/sshd/common/channel/PtyMode;

    move-result-object v12

    .line 468
    .local v12, "mode":Lorg/apache/sshd/common/channel/PtyMode;
    if-nez v12, :cond_1

    .line 469
    iget-object v15, v0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x1

    aput-object v13, v11, v17

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v16, 0x2

    aput-object v13, v11, v16

    const-string v13, "handlePtyReq({}) unsupported pty opcode value: {}={}"

    invoke-interface {v15, v13, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 471
    :cond_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .end local v9    # "opcode":I
    .end local v10    # "val":I
    .end local v12    # "mode":Lorg/apache/sshd/common/channel/PtyMode;
    :goto_1
    move v9, v14

    goto :goto_0

    .line 475
    .end local v14    # "i":I
    :cond_2
    :goto_2
    iget-object v9, v0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 476
    iget-object v9, v0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v13

    const/4 v12, 0x1

    aput-object v1, v10, v12

    .line 477
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v10, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    aput-object v8, v10, v11

    .line 476
    const-string v11, "handlePtyReq({}): term={}, size=({} - {}), pixels=({}, {}), modes=[{}]"

    invoke-interface {v9, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    :cond_3
    const-string v9, "TERM"

    invoke-virtual {v0, v9, v1}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "COLUMNS"

    invoke-virtual {v0, v10, v9}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "LINES"

    invoke-virtual {v0, v10, v9}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v9, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v9
.end method

.method protected handleShell(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 8
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->isClosing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v1, "handleShell({}) - closing"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0

    .line 543
    :cond_1
    nop

    .line 544
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    const-string v1, "No server session"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    .line 545
    .local v0, "shellSession":Lorg/apache/sshd/server/session/ServerSession;
    nop

    .line 546
    invoke-interface {v0}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v1

    const-string v2, "No server factory manager"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/ServerFactoryManager;

    .line 547
    .local v1, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    invoke-interface {v1}, Lorg/apache/sshd/server/ServerFactoryManager;->getShellFactory()Lorg/apache/sshd/server/shell/ShellFactory;

    move-result-object v2

    .line 548
    .local v2, "factory":Lorg/apache/sshd/server/shell/ShellFactory;
    if-nez v2, :cond_3

    .line 549
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 550
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v4, "handleShell({}) - no shell factory"

    invoke-interface {v3, v4, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    :cond_2
    sget-object v3, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v3

    .line 556
    :cond_3
    :try_start_0
    invoke-interface {v2, p0}, Lorg/apache/sshd/server/shell/ShellFactory;->createShell(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    nop

    .line 566
    if-nez v3, :cond_5

    .line 567
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 568
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v4, "handleShell({}) - no shell command"

    invoke-interface {v3, v4, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    :cond_4
    sget-object v3, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v3

    .line 573
    :cond_5
    invoke-virtual {p0, p1, v3}, Lorg/apache/sshd/server/channel/ChannelSession;->prepareChannelCommand(Ljava/lang/String;Lorg/apache/sshd/server/command/Command;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v3

    return-object v3

    .line 557
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    .line 558
    .local v3, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    .line 559
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 558
    const-string v6, "handleShell({}) Failed ({}) to create shell: {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 561
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShell("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") shell creation failure details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 563
    :cond_6
    sget-object v4, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v4
.end method

.method protected handleSignal(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 505
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v2, "handleSignal({}): {}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 510
    :cond_0
    invoke-static {v0}, Lorg/apache/sshd/server/Signal;->get(Ljava/lang/String;)Lorg/apache/sshd/server/Signal;

    move-result-object v1

    .line 511
    .local v1, "signal":Lorg/apache/sshd/server/Signal;
    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v2

    .line 513
    .local v2, "environ":Lorg/apache/sshd/server/StandardEnvironment;
    invoke-virtual {v2, p0, v1}, Lorg/apache/sshd/server/StandardEnvironment;->signal(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/server/Signal;)V

    .line 514
    .end local v2    # "environ":Lorg/apache/sshd/server/StandardEnvironment;
    goto :goto_0

    .line 515
    :cond_1
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v3, "handleSignal({}) unknown signal received: {}"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    :goto_0
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2
.end method

.method protected handleSubsystem(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 10
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, "subsystem":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_0

    .line 625
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object v0, v6, v2

    const-string v7, "handleSubsystem({})[want-reply={}] subsystem={}"

    invoke-interface {v1, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    :cond_0
    nop

    .line 629
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v1

    const-string v6, "No server session"

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/session/ServerSession;

    invoke-interface {v1}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v1

    .line 630
    .local v1, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    nop

    .line 631
    const-string v6, "No server factory manager"

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/server/ServerFactoryManager;

    invoke-interface {v6}, Lorg/apache/sshd/server/ServerFactoryManager;->getSubsystemFactories()Ljava/util/List;

    move-result-object v6

    .line 632
    .local v6, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/server/subsystem/SubsystemFactory;>;"
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 633
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v3, "handleSubsystem({}) No factories for subsystem: {}"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 634
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2

    .line 638
    :cond_1
    :try_start_0
    invoke-static {p0, v6, v0}, Lorg/apache/sshd/server/subsystem/SubsystemFactory;->createSubsystem(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    nop

    .line 648
    if-nez v7, :cond_2

    .line 649
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v3, "handleSubsystem({}) Unsupported subsystem: {}"

    invoke-interface {v2, v3, p0, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 650
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2

    .line 653
    :cond_2
    invoke-virtual {p0, p1, v7}, Lorg/apache/sshd/server/channel/ChannelSession;->prepareChannelCommand(Ljava/lang/String;Lorg/apache/sshd/server/command/Command;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v2

    return-object v2

    .line 639
    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v7

    .line 640
    .local v7, "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v8, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v4

    .line 641
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    aput-object v0, v9, v2

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v5

    .line 640
    const-string v2, "handleSubsystem({}) Failed ({}) to create command for subsystem={}: {}"

    invoke-interface {v8, v2, v9}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 643
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSubsystem("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") subsystem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " creation failure details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    :cond_3
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2
.end method

.method public handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-super {p0, p1}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->handleWindowAdjust(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 131
    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;->onWindowExpanded()V

    .line 134
    :cond_0
    return-void
.end method

.method protected handleWindowChange(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 8
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 487
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v0

    .line 488
    .local v0, "tColumns":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v1

    .line 489
    .local v1, "tRows":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v2

    .line 490
    .local v2, "tWidth":I
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v3

    .line 491
    .local v3, "tHeight":I
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    .line 493
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 492
    const-string v6, "handleWindowChange({}): ({} - {}), ({}, {})"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v4

    .line 497
    .local v4, "e":Lorg/apache/sshd/server/StandardEnvironment;
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "COLUMNS"

    invoke-virtual {v4, v6, v5}, Lorg/apache/sshd/server/StandardEnvironment;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "LINES"

    invoke-virtual {v4, v6, v5}, Lorg/apache/sshd/server/StandardEnvironment;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    sget-object v5, Lorg/apache/sshd/server/Signal;->WINCH:Lorg/apache/sshd/server/Signal;

    invoke-virtual {v4, p0, v5}, Lorg/apache/sshd/server/StandardEnvironment;->signal(Lorg/apache/sshd/common/channel/Channel;Lorg/apache/sshd/server/Signal;)V

    .line 500
    sget-object v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v5
.end method

.method protected handleX11Forwarding(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;Z)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 18
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 857
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v3

    .line 858
    .local v3, "session":Lorg/apache/sshd/server/session/ServerSession;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v4

    .line 859
    .local v4, "singleConnection":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, "authProtocol":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v6

    .line 861
    .local v6, "authCookie":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v7

    .line 863
    .local v7, "screenId":I
    nop

    .line 864
    invoke-interface {v3}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    const-string v8, "No factory manager"

    invoke-static {v0, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/apache/sshd/common/FactoryManager;

    .line 865
    .local v8, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v8}, Lorg/apache/sshd/common/FactoryManager;->getX11ForwardingFilter()Lorg/apache/sshd/server/forward/X11ForwardingFilter;

    move-result-object v9

    .line 866
    .local v9, "filter":Lorg/apache/sshd/server/forward/X11ForwardingFilter;
    iget-object v0, v1, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    .line 868
    .local v10, "debugEnabled":Z
    const/4 v11, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v9, :cond_5

    :try_start_0
    invoke-interface {v9, v3, v2}, Lorg/apache/sshd/server/forward/X11ForwardingFilter;->canForwardX11(Lorg/apache/sshd/common/session/Session;Ljava/lang/String;)Z

    move-result v16
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v16, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    nop

    .line 884
    iget-object v0, v1, Lorg/apache/sshd/server/channel/ChannelSession;->service:Lorg/apache/sshd/common/session/ConnectionService;

    invoke-interface {v0}, Lorg/apache/sshd/common/session/ConnectionService;->getX11ForwardSupport()Lorg/apache/sshd/server/x11/X11ForwardSupport;

    move-result-object v0

    .line 885
    .local v0, "x11Forward":Lorg/apache/sshd/server/x11/X11ForwardSupport;
    if-nez v0, :cond_2

    .line 886
    if-eqz v10, :cond_1

    .line 887
    iget-object v12, v1, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v1, v11, v15

    .line 888
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v11, v14

    aput-object v5, v11, v13

    const/4 v13, 0x3

    aput-object v6, v11, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x4

    aput-object v13, v11, v14

    .line 887
    const-string v13, "handleX11Forwarding({}) single={}, protocol={}, cookie={}, screen={} - no forwarder\'"

    invoke-interface {v12, v13, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    :cond_1
    sget-object v11, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v11

    .line 893
    :cond_2
    nop

    .line 894
    invoke-interface {v0, v4, v5, v6, v7}, Lorg/apache/sshd/server/x11/X11ForwardSupport;->createDisplay(ZLjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 895
    .local v12, "display":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 896
    iget-object v11, v1, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v15

    .line 897
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v5, v13, v14

    const/4 v14, 0x3

    aput-object v6, v13, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v13, v15

    const/4 v14, 0x5

    aput-object v12, v13, v14

    .line 896
    const-string v14, "handleX11Forwarding({}) single={}, protocol={}, cookie={}, screen={} - display=\'{}\'"

    invoke-interface {v11, v14, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    :cond_3
    invoke-static {v12}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 900
    sget-object v11, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v11

    .line 903
    :cond_4
    const-string v11, "DISPLAY"

    invoke-virtual {v1, v11, v12}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    sget-object v11, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v11

    .line 875
    .end local v0    # "x11Forward":Lorg/apache/sshd/server/x11/X11ForwardSupport;
    .end local v12    # "display":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 869
    :cond_5
    :goto_0
    if-eqz v10, :cond_6

    .line 870
    :try_start_1
    iget-object v0, v1, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v11, "handleX11Forwarding({}) single={}, protocol={}, cookie={}, screen={}, filter={}: filtered request={}"

    const/4 v12, 0x7

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v15

    .line 871
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x2

    aput-object v5, v12, v13

    const/4 v13, 0x3

    aput-object v6, v12, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v17, 0x4

    aput-object v13, v12, v17

    const/4 v13, 0x5

    aput-object v9, v12, v13

    const/4 v13, 0x6

    aput-object v2, v12, v13

    .line 870
    invoke-interface {v0, v11, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    :cond_6
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 876
    .local v0, "e":Ljava/lang/Error;
    :goto_1
    iget-object v11, v1, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v1, v12, v15

    .line 877
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v14

    const/4 v13, 0x2

    aput-object v2, v12, v13

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    .line 876
    const-string v13, "handleX11Forwarding({}) failed ({}) to consult forwarding filter for \'{}\': {}"

    invoke-interface {v11, v13, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 878
    if-eqz v10, :cond_7

    .line 879
    iget-object v11, v1, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "handleX11Forwarding("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] filter consultation failure details"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 881
    :cond_7
    new-instance v11, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v11, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v11
.end method

.method synthetic lambda$prepareCommand$0$org-apache-sshd-server-channel-ChannelSession(ILjava/lang/String;)V
    .locals 8
    .param p1, "exitValue"    # I
    .param p2, "exitMessage"    # Ljava/lang/String;

    .line 793
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/channel/ChannelSession;->closeShell(I)V

    .line 794
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v5, "onExit({}) code={} message=\'{}\' shell closed"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p0, v6, v3

    .line 796
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p2, v6, v1

    .line 795
    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_0
    goto :goto_0

    .line 798
    :catch_0
    move-exception v4

    .line 799
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v3

    .line 800
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    aput-object p2, v6, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x4

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 799
    const-string v0, "onExit({}) code={} message=\'{}\' {} closing shell: {}"

    invoke-interface {v5, v0, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method protected prepareChannelCommand(Ljava/lang/String;Lorg/apache/sshd/server/command/Command;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 4
    .param p1, "request"    # Ljava/lang/String;
    .param p2, "cmd"    # Lorg/apache/sshd/server/command/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->prepareCommand(Ljava/lang/String;Lorg/apache/sshd/server/command/Command;)Lorg/apache/sshd/server/command/Command;

    move-result-object v0

    .line 658
    .local v0, "command":Lorg/apache/sshd/server/command/Command;
    if-nez v0, :cond_0

    .line 659
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v2, "prepareChannelCommand({})[{}] no command prepared"

    invoke-interface {v1, v2, p0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 660
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v1

    .line 663
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 664
    .local v1, "debugEnabled":Z
    if-eq v0, p2, :cond_2

    .line 665
    if-eqz v1, :cond_1

    .line 666
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v3, "prepareChannelCommand({})[{}] replaced original command"

    invoke-interface {v2, v3, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 668
    :cond_1
    iput-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    .line 671
    :cond_2
    if-eqz v1, :cond_3

    .line 672
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v3, "prepareChannelCommand({})[{}] prepared command"

    invoke-interface {v2, v3, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 674
    :cond_3
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2
.end method

.method protected prepareCommand(Ljava/lang/String;Lorg/apache/sshd/server/command/Command;)Lorg/apache/sshd/server/command/Command;
    .locals 10
    .param p1, "requestType"    # Ljava/lang/String;
    .param p2, "command"    # Lorg/apache/sshd/server/command/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 721
    return-object v0

    .line 724
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v1

    .line 725
    .local v1, "session":Lorg/apache/sshd/common/session/Session;
    invoke-interface {v1}, Lorg/apache/sshd/common/session/Session;->getUsername()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USER"

    invoke-virtual {p0, v3, v2}, Lorg/apache/sshd/server/channel/ChannelSession;->addEnvVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    instance-of v2, p2, Lorg/apache/sshd/server/SessionAware;

    if-eqz v2, :cond_1

    .line 728
    move-object v2, p2

    check-cast v2, Lorg/apache/sshd/server/SessionAware;

    move-object v3, v1

    check-cast v3, Lorg/apache/sshd/server/session/ServerSession;

    invoke-interface {v2, v3}, Lorg/apache/sshd/server/SessionAware;->setSession(Lorg/apache/sshd/server/session/ServerSession;)V

    .line 730
    :cond_1
    instance-of v2, p2, Lorg/apache/sshd/server/ChannelSessionAware;

    if-eqz v2, :cond_2

    .line 731
    move-object v2, p2

    check-cast v2, Lorg/apache/sshd/server/ChannelSessionAware;

    invoke-interface {v2, p0}, Lorg/apache/sshd/server/ChannelSessionAware;->setChannelSession(Lorg/apache/sshd/server/channel/ChannelSession;)V

    .line 734
    :cond_2
    instance-of v2, p2, Lorg/apache/sshd/common/file/FileSystemAware;

    if-eqz v2, :cond_3

    .line 735
    move-object v2, v1

    check-cast v2, Lorg/apache/sshd/server/session/ServerSession;

    invoke-interface {v2}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v2

    .line 736
    .local v2, "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    invoke-interface {v2}, Lorg/apache/sshd/server/ServerFactoryManager;->getFileSystemFactory()Lorg/apache/sshd/common/file/FileSystemFactory;

    move-result-object v3

    .line 737
    .local v3, "factory":Lorg/apache/sshd/common/file/FileSystemFactory;
    move-object v4, p2

    check-cast v4, Lorg/apache/sshd/common/file/FileSystemAware;

    invoke-interface {v3, v1}, Lorg/apache/sshd/common/file/FileSystemFactory;->createFileSystem(Lorg/apache/sshd/common/session/Session;)Ljava/nio/file/FileSystem;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/sshd/common/file/FileSystemAware;->setFileSystem(Ljava/nio/file/FileSystem;)V

    .line 740
    .end local v2    # "manager":Lorg/apache/sshd/server/ServerFactoryManager;
    .end local v3    # "factory":Lorg/apache/sshd/common/file/FileSystemFactory;
    :cond_3
    instance-of v2, p2, Lorg/apache/sshd/server/command/AsyncCommand;

    if-eqz v2, :cond_4

    .line 741
    new-instance v2, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    const/16 v3, 0x5e

    invoke-direct {v2, p0, v3}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;B)V

    iput-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 742
    new-instance v2, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    const/16 v3, 0x5f

    invoke-direct {v2, p0, v3}, Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;-><init>(Lorg/apache/sshd/common/channel/Channel;B)V

    iput-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    .line 743
    move-object v2, p2

    check-cast v2, Lorg/apache/sshd/server/command/AsyncCommand;

    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncOut:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-interface {v2, v3}, Lorg/apache/sshd/server/command/AsyncCommand;->setIoOutputStream(Lorg/apache/sshd/common/io/IoOutputStream;)V

    .line 744
    move-object v2, p2

    check-cast v2, Lorg/apache/sshd/server/command/AsyncCommand;

    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->asyncErr:Lorg/apache/sshd/common/channel/ChannelAsyncOutputStream;

    invoke-interface {v2, v3}, Lorg/apache/sshd/server/command/AsyncCommand;->setIoErrorStream(Lorg/apache/sshd/common/io/IoOutputStream;)V

    goto/16 :goto_0

    .line 746
    :cond_4
    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getRemoteWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v2

    .line 747
    .local v2, "wRemote":Lorg/apache/sshd/common/channel/Window;
    new-instance v3, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    iget-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/16 v8, 0x5e

    const/4 v9, 0x0

    move-object v4, v3

    move-object v5, p0

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->out:Ljava/io/OutputStream;

    .line 749
    new-instance v3, Lorg/apache/sshd/common/channel/ChannelOutputStream;

    iget-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/16 v8, 0x5f

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lorg/apache/sshd/common/channel/ChannelOutputStream;-><init>(Lorg/apache/sshd/common/channel/AbstractChannel;Lorg/apache/sshd/common/channel/Window;Lorg/slf4j/Logger;BZ)V

    iput-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->err:Ljava/io/OutputStream;

    .line 751
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 753
    new-instance v3, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;

    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->out:Ljava/io/OutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OUT("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-direct {v3, v4, v5, v7, p0}, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/slf4j/Logger;Lorg/apache/sshd/common/PropertyResolver;)V

    iput-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->out:Ljava/io/OutputStream;

    .line 754
    new-instance v3, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;

    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->err:Ljava/io/OutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERR("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-direct {v3, v4, v5, v6, p0}, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/slf4j/Logger;Lorg/apache/sshd/common/PropertyResolver;)V

    iput-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->err:Ljava/io/OutputStream;

    .line 756
    :cond_5
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->out:Ljava/io/OutputStream;

    invoke-interface {p2, v3}, Lorg/apache/sshd/server/command/Command;->setOutputStream(Ljava/io/OutputStream;)V

    .line 757
    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->err:Ljava/io/OutputStream;

    invoke-interface {p2, v3}, Lorg/apache/sshd/server/command/Command;->setErrorStream(Ljava/io/OutputStream;)V

    .line 760
    .end local v2    # "wRemote":Lorg/apache/sshd/common/channel/Window;
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    if-nez v2, :cond_7

    .line 763
    instance-of v2, p2, Lorg/apache/sshd/server/command/AsyncCommand;

    if-eqz v2, :cond_6

    .line 764
    new-instance v2, Lorg/apache/sshd/server/channel/AsyncDataReceiver;

    invoke-direct {v2, p0}, Lorg/apache/sshd/server/channel/AsyncDataReceiver;-><init>(Lorg/apache/sshd/common/channel/Channel;)V

    .line 765
    .local v2, "recv":Lorg/apache/sshd/server/channel/AsyncDataReceiver;
    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/channel/ChannelSession;->setDataReceiver(Lorg/apache/sshd/server/channel/ChannelDataReceiver;)V

    .line 766
    move-object v3, p2

    check-cast v3, Lorg/apache/sshd/server/command/AsyncCommand;

    invoke-virtual {v2}, Lorg/apache/sshd/server/channel/AsyncDataReceiver;->getIn()Lorg/apache/sshd/common/io/IoInputStream;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/sshd/server/command/AsyncCommand;->setIoInputStream(Lorg/apache/sshd/common/io/IoInputStream;)V

    .line 767
    .end local v2    # "recv":Lorg/apache/sshd/server/channel/AsyncDataReceiver;
    goto :goto_1

    .line 768
    :cond_6
    new-instance v2, Lorg/apache/sshd/server/channel/PipeDataReceiver;

    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getLocalWindow()Lorg/apache/sshd/common/channel/Window;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/apache/sshd/server/channel/PipeDataReceiver;-><init>(Lorg/apache/sshd/common/PropertyResolver;Lorg/apache/sshd/common/channel/Window;)V

    .line 769
    .local v2, "recv":Lorg/apache/sshd/server/channel/PipeDataReceiver;
    invoke-virtual {p0, v2}, Lorg/apache/sshd/server/channel/ChannelSession;->setDataReceiver(Lorg/apache/sshd/server/channel/ChannelDataReceiver;)V

    .line 770
    invoke-virtual {v2}, Lorg/apache/sshd/server/channel/PipeDataReceiver;->getIn()Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/apache/sshd/server/command/Command;->setInputStream(Ljava/io/InputStream;)V

    .line 774
    .end local v2    # "recv":Lorg/apache/sshd/server/channel/PipeDataReceiver;
    :cond_7
    :goto_1
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    if-eqz v2, :cond_8

    .line 775
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 776
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iput-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiverBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 777
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/sshd/server/channel/ChannelSession;->doWriteData([BIJ)V

    .line 780
    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_8
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    if-eqz v2, :cond_a

    .line 781
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    if-eqz v2, :cond_9

    .line 786
    iget-object v2, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 787
    .restart local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iput-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 788
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0, v0, v3, v4, v5}, Lorg/apache/sshd/server/channel/ChannelSession;->doWriteExtendedData([BIJ)V

    goto :goto_2

    .line 782
    .end local v2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No extended data writer available though "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataBuffer:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 783
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes accumulated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :cond_a
    :goto_2
    new-instance v0, Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/server/channel/ChannelSession;)V

    invoke-interface {p2, v0}, Lorg/apache/sshd/server/command/Command;->setExitCallback(Lorg/apache/sshd/server/ExitCallback;)V

    .line 804
    return-object p2
.end method

.method protected sendResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 5
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "req"    # Ljava/lang/String;
    .param p3, "result"    # Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .param p4, "wantReply"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/channel/AbstractServerChannel;->sendResponse(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/String;Lorg/apache/sshd/common/channel/RequestHandler$Result;Z)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v0

    .line 394
    .local v0, "future":Lorg/apache/sshd/common/io/IoWriteFuture;
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    invoke-virtual {v1, p3}, Lorg/apache/sshd/common/channel/RequestHandler$Result;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    return-object v0

    .line 398
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    if-nez v1, :cond_2

    .line 399
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v2, "sendResponse({}) request={} no pending command"

    invoke-interface {v1, v2, p0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    :cond_1
    return-object v0

    .line 405
    :cond_2
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 406
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    aput-object p2, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/apache/sshd/server/channel/ChannelSession;->type:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v2, "sendResponse({}) request={} mismatched channel type: {}"

    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_3
    return-object v0

    .line 412
    :cond_4
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 413
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 414
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v2, "sendResponse({}) request={} pending command already started"

    invoke-interface {v1, v2, p0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 416
    :cond_5
    return-object v0

    .line 424
    :cond_6
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 425
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->log:Lorg/slf4j/Logger;

    const-string v2, "sendResponse({}) request={} activate command"

    invoke-interface {v1, v2, p0, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    :cond_7
    iget-object v1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->commandInstance:Lorg/apache/sshd/server/command/Command;

    invoke-virtual {p0}, Lorg/apache/sshd/server/channel/ChannelSession;->getEnvironment()Lorg/apache/sshd/server/StandardEnvironment;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lorg/apache/sshd/server/command/Command;->start(Lorg/apache/sshd/server/channel/ChannelSession;Lorg/apache/sshd/server/Environment;)V

    .line 428
    return-object v0
.end method

.method public setDataReceiver(Lorg/apache/sshd/server/channel/ChannelDataReceiver;)V
    .locals 0
    .param p1, "receiver"    # Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    .line 688
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->receiver:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    .line 689
    return-void
.end method

.method public setExtendedDataWriter(Lorg/apache/sshd/server/channel/ChannelDataReceiver;)V
    .locals 0
    .param p1, "extendedDataWriter"    # Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    .line 703
    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession;->extendedDataWriter:Lorg/apache/sshd/server/channel/ChannelDataReceiver;

    .line 704
    return-void
.end method
