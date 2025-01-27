.class public Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;
.super Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;
.source "Nio2Connector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/io/nio2/Nio2Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectionCompletionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler<",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final context:Lorg/apache/sshd/common/AttributeRepository;

.field protected final future:Lorg/apache/sshd/common/io/IoConnectFuture;

.field protected final handler:Lorg/apache/sshd/common/io/IoHandler;

.field protected final manager:Lorg/apache/sshd/common/FactoryManager;

.field protected final socket:Ljava/nio/channels/AsynchronousSocketChannel;

.field final synthetic this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/io/nio2/Nio2Connector;Lorg/apache/sshd/common/io/IoConnectFuture;Ljava/nio/channels/AsynchronousSocketChannel;Lorg/apache/sshd/common/AttributeRepository;Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/io/nio2/Nio2Connector;
    .param p2, "future"    # Lorg/apache/sshd/common/io/IoConnectFuture;
    .param p3, "socket"    # Ljava/nio/channels/AsynchronousSocketChannel;
    .param p4, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p5, "manager"    # Lorg/apache/sshd/common/FactoryManager;
    .param p6, "handler"    # Lorg/apache/sshd/common/io/IoHandler;

    .line 131
    iput-object p1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-direct {p0}, Lorg/apache/sshd/common/io/nio2/Nio2CompletionHandler;-><init>()V

    .line 132
    iput-object p2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->future:Lorg/apache/sshd/common/io/IoConnectFuture;

    .line 133
    iput-object p3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    .line 134
    iput-object p4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->context:Lorg/apache/sshd/common/AttributeRepository;

    .line 135
    iput-object p5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->manager:Lorg/apache/sshd/common/FactoryManager;

    .line 136
    iput-object p6, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->handler:Lorg/apache/sshd/common/io/IoHandler;

    .line 137
    return-void
.end method


# virtual methods
.method protected bridge synthetic onCompleted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->onCompleted(Ljava/lang/Void;Ljava/lang/Object;)V

    return-void
.end method

.method protected onCompleted(Ljava/lang/Void;Ljava/lang/Object;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/Void;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "sessionId":Ljava/lang/Long;
    iget-object v1, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-virtual {v1}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->getIoServiceEventListener()Lorg/apache/sshd/common/io/IoServiceEventListener;

    move-result-object v1

    .line 145
    .local v1, "listener":Lorg/apache/sshd/common/io/IoServiceEventListener;
    if-eqz v1, :cond_0

    .line 146
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/AsynchronousSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 147
    .local v2, "local":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/AsynchronousSocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v3

    .line 148
    .local v3, "remote":Ljava/net/SocketAddress;
    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->context:Lorg/apache/sshd/common/AttributeRepository;

    invoke-interface {v1, v4, v2, v5, v3}, Lorg/apache/sshd/common/io/IoServiceEventListener;->connectionEstablished(Lorg/apache/sshd/common/io/IoConnector;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)V

    .line 151
    .end local v2    # "local":Ljava/net/SocketAddress;
    .end local v3    # "remote":Ljava/net/SocketAddress;
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->manager:Lorg/apache/sshd/common/FactoryManager;

    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->handler:Lorg/apache/sshd/common/io/IoHandler;

    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->createSession(Lorg/apache/sshd/common/FactoryManager;Lorg/apache/sshd/common/io/IoHandler;Ljava/nio/channels/AsynchronousSocketChannel;)Lorg/apache/sshd/common/io/nio2/Nio2Session;

    move-result-object v2

    .line 152
    .local v2, "session":Lorg/apache/sshd/common/io/nio2/Nio2Session;
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->context:Lorg/apache/sshd/common/AttributeRepository;

    if-eqz v3, :cond_1

    .line 153
    const-class v4, Lorg/apache/sshd/common/AttributeRepository;

    invoke-virtual {v2, v4, v3}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->handler:Lorg/apache/sshd/common/io/IoHandler;

    invoke-interface {v3, v2}, Lorg/apache/sshd/common/io/IoHandler;->sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V

    .line 157
    invoke-virtual {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v0, v3

    .line 158
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    iget-object v3, v3, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->sessions:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->future:Lorg/apache/sshd/common/io/IoConnectFuture;

    invoke-interface {v3, v2}, Lorg/apache/sshd/common/io/IoConnectFuture;->setSession(Lorg/apache/sshd/common/io/IoSession;)V

    .line 160
    invoke-virtual {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->isClosing()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 162
    :try_start_1
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->handler:Lorg/apache/sshd/common/io/IoHandler;

    invoke-interface {v3, v2}, Lorg/apache/sshd/common/io/IoHandler;->sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-virtual {v3, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->unmapSession(Ljava/lang/Long;)V

    .line 165
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-virtual {v4, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->unmapSession(Ljava/lang/Long;)V

    .line 165
    nop

    .end local v0    # "sessionId":Ljava/lang/Long;
    .end local v1    # "listener":Lorg/apache/sshd/common/io/IoServiceEventListener;
    .end local p1    # "result":Ljava/lang/Void;
    .end local p2    # "attachment":Ljava/lang/Object;
    throw v3

    .line 167
    .restart local v0    # "sessionId":Ljava/lang/Long;
    .restart local v1    # "listener":Lorg/apache/sshd/common/io/IoServiceEventListener;
    .restart local p1    # "result":Ljava/lang/Void;
    .restart local p2    # "attachment":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Session;->startReading()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    .end local v2    # "session":Lorg/apache/sshd/common/io/nio2/Nio2Session;
    :goto_0
    goto/16 :goto_3

    .line 169
    :catchall_1
    move-exception v2

    move-object v8, v2

    .line 170
    .local v8, "exc":Ljava/lang/Throwable;
    invoke-static {v8}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    .line 171
    .local v9, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->access$000(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    .line 172
    .local v10, "debugEnabled":Z
    if-eqz v1, :cond_3

    .line 174
    :try_start_3
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/AsynchronousSocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v4

    .line 175
    .local v4, "localAddress":Ljava/net/SocketAddress;
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/AsynchronousSocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v6

    .line 176
    .local v6, "remoteAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    iget-object v5, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->context:Lorg/apache/sshd/common/AttributeRepository;

    move-object v2, v1

    move-object v7, v9

    invoke-interface/range {v2 .. v7}, Lorg/apache/sshd/common/io/IoServiceEventListener;->abortEstablishedConnection(Lorg/apache/sshd/common/io/IoConnector;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    .end local v4    # "localAddress":Ljava/net/SocketAddress;
    .end local v6    # "remoteAddress":Ljava/net/SocketAddress;
    goto :goto_1

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v10, :cond_3

    .line 180
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-static {v3}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->access$100(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCompleted() listener="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignoring abort event exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 186
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->access$200(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 187
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string v5, "onCompleted - failed {} to start session: {}"

    invoke-interface {v2, v5, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    :cond_4
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->access$300(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 190
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-static {v2}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->access$400(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "onCompleted - session creation failure details"

    invoke-interface {v2, v3, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :cond_5
    :try_start_4
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->socket:Ljava/nio/channels/AsynchronousSocketChannel;

    invoke-virtual {v2}, Ljava/nio/channels/AsynchronousSocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 200
    goto :goto_2

    .line 195
    :catch_1
    move-exception v2

    .line 196
    .local v2, "err":Ljava/io/IOException;
    if-eqz v10, :cond_6

    .line 197
    iget-object v3, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-static {v3}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->access$500(Lorg/apache/sshd/common/io/nio2/Nio2Connector;)Lorg/slf4j/Logger;

    move-result-object v3

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 197
    const-string v6, "onCompleted - failed {} to close socket: {}"

    invoke-interface {v3, v6, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    .end local v2    # "err":Ljava/io/IOException;
    :cond_6
    :goto_2
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->future:Lorg/apache/sshd/common/io/IoConnectFuture;

    invoke-interface {v2, v9}, Lorg/apache/sshd/common/io/IoConnectFuture;->setException(Ljava/lang/Throwable;)V

    .line 203
    iget-object v2, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->this$0:Lorg/apache/sshd/common/io/nio2/Nio2Connector;

    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector;->unmapSession(Ljava/lang/Long;)V

    .line 205
    .end local v8    # "exc":Ljava/lang/Throwable;
    .end local v9    # "t":Ljava/lang/Throwable;
    .end local v10    # "debugEnabled":Z
    :goto_3
    return-void
.end method

.method protected onFailed(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "exc"    # Ljava/lang/Throwable;
    .param p2, "attachment"    # Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lorg/apache/sshd/common/io/nio2/Nio2Connector$ConnectionCompletionHandler;->future:Lorg/apache/sshd/common/io/IoConnectFuture;

    invoke-interface {v0, p1}, Lorg/apache/sshd/common/io/IoConnectFuture;->setException(Ljava/lang/Throwable;)V

    .line 210
    return-void
.end method
