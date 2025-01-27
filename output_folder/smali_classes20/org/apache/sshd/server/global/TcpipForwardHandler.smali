.class public Lorg/apache/sshd/server/global/TcpipForwardHandler;
.super Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;
.source "TcpipForwardHandler.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/global/TcpipForwardHandler;

.field public static final REQUEST:Ljava/lang/String; = "tcpip-forward"

.field public static final RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/sshd/common/util/Int2IntFunction;->add(I)Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/global/TcpipForwardHandler;->RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

    .line 47
    new-instance v0, Lorg/apache/sshd/server/global/TcpipForwardHandler;

    invoke-direct {v0}, Lorg/apache/sshd/server/global/TcpipForwardHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/global/TcpipForwardHandler;->INSTANCE:Lorg/apache/sshd/server/global/TcpipForwardHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p1, Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/global/TcpipForwardHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 10
    .param p1, "connectionService"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const-string/jumbo v0, "tcpip-forward"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v1

    .line 63
    .local v1, "port":I
    new-instance v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 64
    .local v2, "socketAddress":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v3

    const-string v4, "No TCP/IP forwarder"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/forward/ForwardingFilter;

    .line 65
    .local v3, "forwarder":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v3, v2}, Lorg/apache/sshd/common/forward/ForwardingFilter;->localPortForwardingRequested(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    move-result-object v4

    .line 66
    .local v4, "bound":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v5, p0, Lorg/apache/sshd/server/global/TcpipForwardHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_1

    .line 67
    iget-object v5, p0, Lorg/apache/sshd/server/global/TcpipForwardHandler;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    .line 68
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    aput-object v4, v7, v6

    .line 67
    const-string v8, "process({})[{}][want-reply-{}] {} => {}"

    invoke-interface {v5, v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_1
    if-nez v4, :cond_2

    .line 72
    sget-object v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplyFailure:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v5

    .line 75
    :cond_2
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getPort()I

    move-result v1

    .line 76
    if-eqz p3, :cond_3

    .line 77
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v5

    .line 78
    .local v5, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v7, 0x51

    invoke-interface {v5, v7, v6}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p4

    .line 79
    int-to-long v6, v1

    invoke-virtual {p4, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 80
    invoke-interface {v5, p4}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 83
    .end local v5    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_3
    sget-object v5, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v5
.end method
