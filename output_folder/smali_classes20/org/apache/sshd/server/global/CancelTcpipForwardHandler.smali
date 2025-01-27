.class public Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;
.super Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;
.source "CancelTcpipForwardHandler.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;

.field public static final REQUEST:Ljava/lang/String; = "cancel-tcpip-forward"

.field public static final RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/apache/sshd/common/util/Int2IntFunction;->add(I)Ljava/util/function/IntUnaryOperator;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;->RESPONSE_BUFFER_GROWTH_FACTOR:Ljava/util/function/IntUnaryOperator;

    .line 46
    new-instance v0, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;

    invoke-direct {v0}, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;->INSTANCE:Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;-><init>()V

    .line 50
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

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 8
    .param p1, "connectionService"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    const-string v0, "cancel-tcpip-forward"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v1

    .line 62
    .local v1, "port":I
    new-instance v2, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v2, "socketAddress":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    iget-object v3, p0, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lorg/apache/sshd/server/global/CancelTcpipForwardHandler;->log:Lorg/slf4j/Logger;

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "process({})[{}] {} reply={}"

    invoke-interface {v3, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_1
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getForwardingFilter()Lorg/apache/sshd/common/forward/ForwardingFilter;

    move-result-object v3

    const-string v5, "No TCP/IP forwarder"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/forward/ForwardingFilter;

    .line 68
    .local v3, "forwarder":Lorg/apache/sshd/common/forward/ForwardingFilter;
    invoke-interface {v3, v2}, Lorg/apache/sshd/common/forward/ForwardingFilter;->localPortForwardingCancelled(Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    .line 70
    if-eqz p3, :cond_2

    .line 71
    invoke-interface {p1}, Lorg/apache/sshd/common/session/ConnectionService;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v5

    .line 72
    .local v5, "session":Lorg/apache/sshd/common/session/Session;
    const/16 v6, 0x51

    invoke-interface {v5, v6, v4}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p4

    .line 73
    int-to-long v6, v1

    invoke-virtual {p4, v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 74
    invoke-interface {v5, p4}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 77
    .end local v5    # "session":Lorg/apache/sshd/common/session/Session;
    :cond_2
    sget-object v4, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v4
.end method
