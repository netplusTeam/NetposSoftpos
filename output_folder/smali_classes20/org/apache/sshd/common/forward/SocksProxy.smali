.class public Lorg/apache/sshd/common/forward/SocksProxy;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "SocksProxy.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/forward/SocksProxy$Socks5;,
        Lorg/apache/sshd/common/forward/SocksProxy$Socks4;,
        Lorg/apache/sshd/common/forward/SocksProxy$Proxy;
    }
.end annotation


# instance fields
.field private final proxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/io/IoSession;",
            "Lorg/apache/sshd/common/forward/SocksProxy$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private final service:Lorg/apache/sshd/common/session/ConnectionService;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/ConnectionService;)V
    .locals 1
    .param p1, "service"    # Lorg/apache/sshd/common/session/ConnectionService;

    .line 48
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->proxies:Ljava/util/Map;

    .line 49
    iput-object p1, p0, Lorg/apache/sshd/common/forward/SocksProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/apache/sshd/common/session/ConnectionService;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->service:Lorg/apache/sshd/common/session/ConnectionService;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/forward/SocksProxy;

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->log:Lorg/slf4j/Logger;

    const-string v1, "Exception caught, closing socks proxy"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/io/IoSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 92
    return-void
.end method

.method public messageReceived(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/Readable;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "message"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-interface {p2}, Lorg/apache/sshd/common/util/Readable;->available()I

    move-result v1

    add-int/lit8 v1, v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 70
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBuffer(Lorg/apache/sshd/common/util/Readable;)V

    .line 71
    iget-object v1, p0, Lorg/apache/sshd/common/forward/SocksProxy;->proxies:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;

    .line 72
    .local v1, "proxy":Lorg/apache/sshd/common/forward/SocksProxy$Proxy;
    if-nez v1, :cond_2

    .line 73
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v2

    .line 74
    .local v2, "version":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 75
    new-instance v3, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;

    invoke-direct {v3, p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;-><init>(Lorg/apache/sshd/common/forward/SocksProxy;Lorg/apache/sshd/common/io/IoSession;)V

    move-object v1, v3

    goto :goto_0

    .line 76
    :cond_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 77
    new-instance v3, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;

    invoke-direct {v3, p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;-><init>(Lorg/apache/sshd/common/forward/SocksProxy;Lorg/apache/sshd/common/io/IoSession;)V

    move-object v1, v3

    .line 81
    :goto_0
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 82
    iget-object v3, p0, Lorg/apache/sshd/common/forward/SocksProxy;->proxies:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v2    # "version":I
    goto :goto_1

    .line 79
    .restart local v2    # "version":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 84
    .end local v2    # "version":I
    :cond_2
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 86
    :goto_1
    return-void
.end method

.method public sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy;->proxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;

    .line 62
    .local v0, "proxy":Lorg/apache/sshd/common/forward/SocksProxy$Proxy;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/apache/sshd/common/forward/SocksProxy;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "SocksProxy is closing or closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
