.class public final Lcom/hivemq/client/internal/util/InetSocketAddressUtil;
.super Ljava/lang/Object;
.source "InetSocketAddressUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 32
    invoke-static {p0}, Lio/netty/util/NetUtil;->createByteArrayFromIpAddressString(Ljava/lang/String;)[B

    move-result-object v0

    .line 33
    .local v0, "ipAddress":[B
    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 36
    :catch_0
    move-exception v1

    .line 40
    :cond_0
    invoke-static {p0, p1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    return-object v1
.end method
