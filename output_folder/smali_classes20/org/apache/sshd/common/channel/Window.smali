.class public Lorg/apache/sshd/common/channel/Window;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "Window.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Lorg/apache/sshd/common/channel/ChannelHolder;


# static fields
.field public static final SPACE_AVAILABLE_PREDICATE:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lorg/apache/sshd/common/channel/Window;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelInstance:Lorg/apache/sshd/common/channel/AbstractChannel;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lock:Ljava/lang/Object;

.field private maxSize:J

.field private packetSize:J

.field private size:J

.field private final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/sshd/common/channel/Window$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/Window$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/channel/Window;->SPACE_AVAILABLE_PREDICATE:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/Object;ZZ)V
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/AbstractChannel;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "client"    # Z
    .param p4, "local"    # Z

    .line 63
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/Window;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/Window;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    const-string v0, "No channel provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/AbstractChannel;

    iput-object v0, p0, Lorg/apache/sshd/common/channel/Window;->channelInstance:Lorg/apache/sshd/common/channel/AbstractChannel;

    .line 65
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_1

    const-string v1, "client"

    goto :goto_1

    :cond_1
    const-string v1, "server"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p4, :cond_2

    const-string v1, "local"

    goto :goto_2

    :cond_2
    const-string v1, "remote"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/channel/Window;->suffix:Ljava/lang/String;

    .line 67
    return-void
.end method

.method static synthetic lambda$static$0(Lorg/apache/sshd/common/channel/Window;)Z
    .locals 4
    .param p0, "input"    # Lorg/apache/sshd/common/channel/Window;

    .line 50
    iget-wide v0, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$waitAndConsume$1(JLorg/apache/sshd/common/channel/Window;)Z
    .locals 2
    .param p0, "len"    # J
    .param p2, "input"    # Lorg/apache/sshd/common/channel/Window;

    .line 226
    iget-wide v0, p2, Lorg/apache/sshd/common/channel/Window;->size:J

    cmp-long v0, v0, p0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public check(J)V
    .locals 8
    .param p1, "maxFree"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const-string v0, "Invalid check size: %d"

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateUint32Value(JLjava/lang/String;)J

    .line 186
    const-string v0, "check"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/Window;->checkInitialized(Ljava/lang/String;)V

    .line 188
    const-wide/16 v0, -0x1

    .line 189
    .local v0, "adjustSize":J
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/Window;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v2

    .line 190
    .local v2, "channel":Lorg/apache/sshd/common/channel/AbstractChannel;
    iget-object v3, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 192
    :try_start_0
    iget-wide v4, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    .line 193
    .local v4, "size":J
    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 194
    sub-long v0, p1, v4

    .line 195
    invoke-virtual {v2, v0, v1}, Lorg/apache/sshd/common/channel/AbstractChannel;->sendWindowAdjust(J)V

    .line 196
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/Window;->updateSize(J)V

    .line 198
    .end local v4    # "size":J
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_1

    .line 201
    iget-object v3, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    iget-object v3, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v4, "Increase {} by {} up to {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    :cond_1
    return-void

    .line 198
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected checkInitialized(Ljava/lang/String;)V
    .locals 3
    .param p1, "location"    # Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - window not initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v1, "Closing {}"

    invoke-interface {v0, v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public consume(J)V
    .locals 7
    .param p1, "len"    # J

    .line 150
    const-string v0, "Invalid consumption length: %d"

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateUint32Value(JLjava/lang/String;)J

    .line 151
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/Window;->checkInitialized(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-wide v1, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    sub-long/2addr v1, p1

    .line 156
    .local v1, "remainLen":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 157
    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/channel/Window;->updateSize(J)V

    .line 159
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    cmp-long v0, v1, v3

    if-ltz v0, :cond_2

    .line 165
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v3, "Consume {} by {} down to {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_1
    return-void

    .line 162
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consume("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") required length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") above available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-long v4, v1, p1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    .end local v1    # "remainLen":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public consumeAndCheck(J)V
    .locals 5
    .param p1, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/Window;->consume(J)V

    .line 174
    iget-wide v1, p0, Lorg/apache/sshd/common/channel/Window;->maxSize:J

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/common/channel/Window;->check(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    nop

    .line 181
    :try_start_1
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/io/StreamCorruptedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeAndCheck("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to consume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    .end local p1    # "len":J
    throw v2

    .line 181
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .restart local p1    # "len":J
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public expand(I)V
    .locals 9
    .param p1, "window"    # I

    .line 122
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Negative window size: %d"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 123
    const-string v2, "expand"

    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/channel/Window;->checkInitialized(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-wide v3, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    .line 135
    .local v3, "expandedSize":J
    const-wide v5, 0xffffffffL

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    .line 136
    invoke-virtual {p0, v5, v6}, Lorg/apache/sshd/common/channel/Window;->updateSize(J)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p0, v3, v4}, Lorg/apache/sshd/common/channel/Window;->updateSize(J)V

    .line 140
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    const-wide/32 v5, 0x7fffffff

    cmp-long v2, v3, v5

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-lez v2, :cond_2

    .line 143
    iget-object v2, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v7, "expand({}) window={} - truncated expanded size ({}) to {}"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v6

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v5

    invoke-interface {v2, v7, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 144
    :cond_2
    iget-object v2, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 145
    iget-object v2, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v7, "Increase {} by {} up to {}"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-interface {v2, v7, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_3
    :goto_2
    return-void

    .line 140
    .end local v3    # "expandedSize":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->channelInstance:Lorg/apache/sshd/common/channel/AbstractChannel;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lorg/apache/sshd/common/channel/Channel;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/Window;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lorg/apache/sshd/common/channel/Window;->maxSize:J

    return-wide v0
.end method

.method public getPacketSize()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lorg/apache/sshd/common/channel/Window;->packetSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 3

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_0
    iget-wide v1, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    monitor-exit v0

    return-wide v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(JJLorg/apache/sshd/common/PropertyResolver;)V
    .locals 10
    .param p1, "size"    # J
    .param p3, "packetSize"    # J
    .param p5, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 95
    const-string v0, "Illegal initial size: %d"

    invoke-static {p1, p2, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateUint32Value(JLjava/lang/String;)J

    .line 96
    const-string v0, "Illegal packet size: %d"

    invoke-static {p3, p4, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateUint32Value(JLjava/lang/String;)J

    .line 97
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Packet size must be positive: %d"

    invoke-static {v0, v3, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 98
    const-string v0, "max-packet-size"

    const-wide/32 v3, 0x1fffffff

    invoke-interface {p5, v0, v3, v4}, Lorg/apache/sshd/common/PropertyResolver;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v3

    .line 99
    .local v3, "limitPacketSize":J
    cmp-long v0, p3, v3

    if-gtz v0, :cond_3

    .line 103
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    iput-wide p1, p0, Lorg/apache/sshd/common/channel/Window;->maxSize:J

    .line 105
    iput-wide p3, p0, Lorg/apache/sshd/common/channel/Window;->packetSize:J

    .line 106
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/Window;->updateSize(J)V

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 110
    .local v0, "debugEnabled":Z
    iget-object v5, p0, Lorg/apache/sshd/common/channel/Window;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v5, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v6, "init({}) re-initializing"

    invoke-interface {v5, v6, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_1
    if-eqz v0, :cond_2

    .line 117
    iget-object v5, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string v6, "init({}) size={}, max={}, packet={}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/Window;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/Window;->getMaxSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/Window;->getPacketSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_2
    return-void

    .line 107
    .end local v0    # "debugEnabled":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 100
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested packet size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeds max. allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/apache/sshd/common/PropertyResolver;)V
    .locals 9
    .param p1, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 89
    const-string/jumbo v0, "window-size"

    const-wide/32 v1, 0x200000

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolver;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v4

    .line 90
    const-string v0, "packet-size"

    const-wide/32 v1, 0x8000

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/sshd/common/PropertyResolver;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v6

    .line 89
    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lorg/apache/sshd/common/channel/Window;->init(JJLorg/apache/sshd/common/PropertyResolver;)V

    .line 92
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/Window;->suffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/Window;->getChannel()Lorg/apache/sshd/common/channel/AbstractChannel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateSize(J)V
    .locals 2
    .param p1, "size"    # J

    .line 309
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Invalid updated size: %d"

    invoke-static {p1, p2, v1, v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateUint32Value(JLjava/lang/String;Ljava/lang/Object;)J

    .line 310
    iput-wide p1, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    .line 311
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 312
    return-void
.end method

.method public waitAndConsume(JJ)V
    .locals 8
    .param p1, "len"    # J
    .param p3, "maxWaitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/sshd/common/channel/WindowClosedException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 219
    const-string v0, "Invalid wait consume length: %d"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->validateUint32Value(JLjava/lang/String;Ljava/lang/Object;)J

    .line 220
    const-string/jumbo v0, "waitAndConsume"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/Window;->checkInitialized(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 223
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    new-instance v2, Lorg/apache/sshd/common/channel/Window$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lorg/apache/sshd/common/channel/Window$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-virtual {p0, v2, p3, p4}, Lorg/apache/sshd/common/channel/Window;->waitForCondition(Ljava/util/function/Predicate;J)V

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v2, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "waitAndConsume({}) - requested={}, available={}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/channel/Window;->consume(J)V

    .line 234
    monitor-exit v1

    .line 235
    return-void

    .line 234
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected waitForCondition(Ljava/util/function/Predicate;J)V
    .locals 18
    .param p2, "maxWaitTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Lorg/apache/sshd/common/channel/Window;",
            ">;J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/channel/WindowClosedException;,
            Ljava/lang/InterruptedException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 278
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Lorg/apache/sshd/common/channel/Window;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "No condition"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "Non-positive max. wait time: %d"

    invoke-static {v6, v7, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 281
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 282
    .local v6, "maxWaitNanos":J
    move-wide v8, v6

    .line 284
    .local v8, "remWaitNanos":J
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/Window;->isOpen()Z

    move-result v10

    if-eqz v10, :cond_3

    cmp-long v10, v8, v4

    if-lez v10, :cond_3

    .line 285
    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 286
    return-void

    .line 289
    :cond_1
    sget-object v10, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 290
    .local v10, "curWaitMillis":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 291
    .local v12, "nanoWaitStart":J
    cmp-long v14, v10, v4

    if-lez v14, :cond_2

    .line 292
    iget-object v14, v0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    invoke-virtual {v14, v10, v11}, Ljava/lang/Object;->wait(J)V

    goto :goto_2

    .line 294
    :cond_2
    iget-object v14, v0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    long-to-int v15, v8

    invoke-virtual {v14, v4, v5, v15}, Ljava/lang/Object;->wait(JI)V

    .line 296
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 297
    .local v14, "nanoWaitEnd":J
    sub-long v16, v14, v12

    .line 298
    .local v16, "nanoWaitDuration":J
    sub-long v8, v8, v16

    .line 299
    .end local v10    # "curWaitMillis":J
    .end local v12    # "nanoWaitStart":J
    .end local v14    # "nanoWaitEnd":J
    .end local v16    # "nanoWaitDuration":J
    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/Window;->isOpen()Z

    move-result v4

    if-nez v4, :cond_4

    .line 302
    new-instance v4, Lorg/apache/sshd/common/channel/WindowClosedException;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/channel/Window;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/sshd/common/channel/WindowClosedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_4
    new-instance v4, Ljava/net/SocketTimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "waitForCondition("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ") timeout exceeded: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public waitForSpace(J)J
    .locals 5
    .param p1, "maxWaitTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/sshd/common/channel/WindowClosedException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .line 248
    const-string/jumbo v0, "waitForSpace"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/channel/Window;->checkInitialized(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_0
    sget-object v1, Lorg/apache/sshd/common/channel/Window;->SPACE_AVAILABLE_PREDICATE:Ljava/util/function/Predicate;

    invoke-virtual {p0, v1, p1, p2}, Lorg/apache/sshd/common/channel/Window;->waitForCondition(Ljava/util/function/Predicate;J)V

    .line 253
    iget-wide v1, p0, Lorg/apache/sshd/common/channel/Window;->size:J

    .line 254
    .local v1, "available":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/apache/sshd/common/channel/Window;->log:Lorg/slf4j/Logger;

    const-string/jumbo v3, "waitForSpace({}) available: {}"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, p0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 260
    :cond_0
    return-wide v1

    .line 254
    .end local v1    # "available":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
