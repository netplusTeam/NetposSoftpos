.class Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;
.super Ljava/lang/Object;
.source "DefaultForwardingFilter.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/forward/DefaultForwardingFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaticIoHandler"
.end annotation


# instance fields
.field private final debugEnabled:Z

.field private final messagesCounter:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

.field private final traceEnabled:Z


# direct methods
.method constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V
    .locals 3
    .param p1, "this$0"    # Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 1002
    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->messagesCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 999
    invoke-static {p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$000(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->debugEnabled:Z

    .line 1000
    invoke-static {p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$100(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->traceEnabled:Z

    .line 1004
    return-void
.end method

.method static synthetic lambda$sessionClosed$1(Lorg/apache/sshd/common/forward/TcpipClientChannel;ZLorg/apache/sshd/client/future/OpenFuture;)V
    .locals 2
    .param p0, "channel"    # Lorg/apache/sshd/common/forward/TcpipClientChannel;
    .param p1, "immediately"    # Z
    .param p2, "f"    # Lorg/apache/sshd/client/future/OpenFuture;

    .line 1091
    invoke-interface {p2}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1092
    .local v0, "thrown":Ljava/lang/Throwable;
    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 1093
    return-void
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1131
    const-class v0, Lorg/apache/sshd/common/forward/TcpipForwardingExceptionMarker;

    invoke-interface {p1, v0, p2}, Lorg/apache/sshd/common/io/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    iget-boolean v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->debugEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$1100(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "exceptionCaught({}) {}: {}"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    :cond_0
    iget-boolean v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->traceEnabled:Z

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$1200(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exceptionCaught("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") caught exception details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1138
    :cond_1
    invoke-interface {p1, v1}, Lorg/apache/sshd/common/io/IoSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 1139
    return-void
.end method

.method synthetic lambda$messageReceived$2$org-apache-sshd-common-forward-DefaultForwardingFilter$StaticIoHandler(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/forward/TcpipClientChannel;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "channel"    # Lorg/apache/sshd/common/forward/TcpipClientChannel;
    .param p3, "e"    # Ljava/lang/Throwable;

    .line 1114
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    goto :goto_0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "err":Ljava/lang/Exception;
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$1300(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 1118
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p2, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1116
    const-string v3, "messageReceived({}) failed ({}) to signal {}[{}] on channel={}: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method synthetic lambda$sessionCreated$0$org-apache-sshd-common-forward-DefaultForwardingFilter$StaticIoHandler(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/forward/TcpipClientChannel;Lorg/apache/sshd/client/future/OpenFuture;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "channel"    # Lorg/apache/sshd/common/forward/TcpipClientChannel;
    .param p3, "future"    # Lorg/apache/sshd/client/future/OpenFuture;

    .line 1046
    invoke-interface {p3}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 1047
    .local v0, "t":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 1048
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$1400(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 1048
    const-string v3, "Failed ({}) to open channel for session={}: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-boolean v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->debugEnabled:Z

    if-eqz v1, :cond_0

    .line 1051
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$1500(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionCreated("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") channel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " open failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1053
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$700(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/apache/sshd/common/session/ConnectionService;->unregisterChannel(Lorg/apache/sshd/common/channel/Channel;)V

    .line 1054
    invoke-virtual {p2, v4}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 1056
    :cond_1
    return-void
.end method

.method public messageReceived(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/Readable;)V
    .locals 13
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "message"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1100
    const-class v0, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/io/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    .line 1101
    .local v0, "channel":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->messagesCounter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 1102
    .local v1, "totalMessages":J
    new-instance v3, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-interface {p2}, Lorg/apache/sshd/common/util/Readable;->available()I

    move-result v4

    add-int/lit8 v4, v4, 0x40

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 1103
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 1105
    iget-boolean v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->traceEnabled:Z

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    .line 1106
    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v4}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$900(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v4

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v5

    aput-object v0, v9, v8

    .line 1107
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-interface {p2}, Lorg/apache/sshd/common/util/Readable;->available()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 1106
    const-string v10, "messageReceived({}) channel={}, count={}, handle len={}"

    invoke-interface {v4, v10, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    :cond_0
    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getPendingMessagesQueue()Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    move-result-object v4

    .line 1111
    .local v4, "messagesQueue":Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;
    invoke-virtual {v4}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v9

    .line 1112
    .local v9, "future":Lorg/apache/sshd/client/future/OpenFuture;
    invoke-interface {v9}, Lorg/apache/sshd/client/future/OpenFuture;->isOpened()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    :cond_1
    new-instance v10, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, p1, v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/forward/TcpipClientChannel;)V

    .line 1122
    .local v10, "errHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Throwable;>;"
    :goto_0
    invoke-virtual {v4, v3, v10}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->handleIncomingMessage(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/function/Consumer;)I

    move-result v11

    .line 1123
    .local v11, "pendCount":I
    iget-boolean v12, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->traceEnabled:Z

    if-eqz v12, :cond_2

    .line 1124
    iget-object v12, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v12}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$1000(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v12

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    aput-object v0, v6, v8

    .line 1125
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v7

    .line 1124
    const-string v5, "messageReceived({}) channel={} pend count={} after processing message"

    invoke-interface {v12, v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    :cond_2
    return-void
.end method

.method public sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 8
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1061
    const-class v0, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/io/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    .line 1062
    .local v0, "channel":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    const-class v1, Lorg/apache/sshd/common/forward/TcpipForwardingExceptionMarker;

    invoke-interface {p1, v1}, Lorg/apache/sshd/common/io/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 1063
    .local v1, "cause":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->debugEnabled:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 1064
    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v2}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$800(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v2

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object v0, v5, v4

    const/4 v6, 0x2

    iget-object v7, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->messagesCounter:Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    if-nez v1, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    .line 1065
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    :goto_0
    aput-object v7, v5, v6

    .line 1064
    const-string v6, "sessionClosed({}) closing channel={} after {} messages - cause={}"

    invoke-interface {v2, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :cond_1
    if-nez v0, :cond_2

    .line 1068
    return-void

    .line 1071
    :cond_2
    if-eqz v1, :cond_3

    .line 1073
    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    goto :goto_1

    .line 1079
    :cond_3
    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getOpenFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v2

    .line 1080
    .local v2, "openFuture":Lorg/apache/sshd/client/future/OpenFuture;
    invoke-interface {v2}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v5

    .line 1081
    .local v5, "err":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getPendingMessagesQueue()Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;

    move-result-object v6

    .line 1082
    .local v6, "queue":Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;
    invoke-virtual {v6}, Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;->getCompletedFuture()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v7

    .line 1083
    .local v7, "completedFuture":Lorg/apache/sshd/client/future/OpenFuture;
    if-nez v5, :cond_4

    .line 1084
    invoke-interface {v7}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v5

    .line 1086
    :cond_4
    if-eqz v5, :cond_5

    move v3, v4

    .line 1087
    .local v3, "immediately":Z
    :cond_5
    if-eqz v3, :cond_6

    .line 1088
    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    goto :goto_1

    .line 1090
    :cond_6
    new-instance v4, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0, v3}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/common/forward/TcpipClientChannel;Z)V

    invoke-interface {v7, v4}, Lorg/apache/sshd/client/future/OpenFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 1096
    .end local v2    # "openFuture":Lorg/apache/sshd/client/future/OpenFuture;
    .end local v3    # "immediately":Z
    .end local v5    # "err":Ljava/lang/Throwable;
    .end local v6    # "queue":Lorg/apache/sshd/client/channel/ClientChannelPendingMessagesQueue;
    .end local v7    # "completedFuture":Lorg/apache/sshd/client/future/OpenFuture;
    :goto_1
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 16
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1008
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/common/io/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/net/InetSocketAddress;

    .line 1009
    .local v3, "local":Ljava/net/InetSocketAddress;
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    .line 1010
    .local v4, "localPort":I
    iget-object v0, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$200(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    .line 1011
    .local v5, "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    if-nez v5, :cond_0

    sget-object v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Forwarded:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Direct:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    :goto_0
    move-object v6, v0

    .line 1014
    .local v6, "channelType":Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;
    new-instance v0, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-direct {v0, v6, v2, v5}, Lorg/apache/sshd/common/forward/TcpipClientChannel;-><init>(Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    move-object v7, v0

    .line 1015
    .local v7, "channel":Lorg/apache/sshd/common/forward/TcpipClientChannel;
    const-class v0, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {v2, v0, v7}, Lorg/apache/sshd/common/io/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    sget-object v0, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Forwarded:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    if-ne v6, v0, :cond_4

    .line 1019
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/common/io/IoSession;->getAcceptanceAddress()Ljava/net/SocketAddress;

    move-result-object v12

    .line 1020
    .local v12, "accepted":Ljava/net/SocketAddress;
    const/4 v13, 0x0

    .line 1021
    .local v13, "localEntry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    instance-of v0, v12, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$300(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Ljava/util/Set;

    move-result-object v14

    monitor-enter v14

    .line 1023
    :try_start_0
    move-object v0, v12

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 1024
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    iget-object v15, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v15}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$300(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Ljava/util/Set;

    move-result-object v15

    .line 1023
    invoke-static {v0, v4, v15}, Lorg/apache/sshd/common/forward/LocalForwardingEntry;->findMatchingEntry(Ljava/lang/String;ILjava/util/Collection;)Lorg/apache/sshd/common/forward/LocalForwardingEntry;

    move-result-object v0

    move-object v13, v0

    .line 1025
    monitor-exit v14

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1028
    :cond_1
    :goto_1
    if-eqz v13, :cond_3

    .line 1029
    iget-boolean v14, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->debugEnabled:Z

    if-eqz v14, :cond_2

    .line 1030
    iget-object v14, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v14}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$400(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v14

    const-string v15, "sessionCreated({})[local={}, remote={}, accepted={}] localEntry={}"

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v10

    aput-object v3, v0, v9

    aput-object v5, v0, v8

    aput-object v12, v0, v11

    const/4 v8, 0x4

    aput-object v13, v0, v8

    invoke-interface {v14, v15, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    :cond_2
    invoke-virtual {v7, v13}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->updateLocalForwardingEntry(Lorg/apache/sshd/common/forward/LocalForwardingEntry;)V

    goto :goto_2

    .line 1035
    :cond_3
    iget-object v0, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$500(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v14, "sessionCreated({})[local={}, remote={}] cannot locate original local entry for accepted={}"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v2, v15, v10

    aput-object v3, v15, v9

    aput-object v5, v15, v8

    aput-object v12, v15, v11

    invoke-interface {v0, v14, v15}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    .end local v12    # "accepted":Ljava/net/SocketAddress;
    .end local v13    # "localEntry":Lorg/apache/sshd/common/forward/LocalForwardingEntry;
    :goto_2
    goto :goto_3

    .line 1039
    :cond_4
    iget-boolean v0, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->debugEnabled:Z

    if-eqz v0, :cond_5

    .line 1040
    iget-object v0, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$600(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v12, "sessionCreated({}) local={}, remote={}"

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v2, v11, v10

    aput-object v3, v11, v9

    aput-object v5, v11, v8

    invoke-interface {v0, v12, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    :cond_5
    :goto_3
    iget-object v0, v1, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->this$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->access$700(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    .line 1045
    invoke-virtual {v7}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v0

    new-instance v8, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1, v2, v7}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/forward/TcpipClientChannel;)V

    invoke-interface {v0, v8}, Lorg/apache/sshd/client/future/OpenFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 1057
    return-void
.end method
