.class public final Lio/netty/util/internal/SocketUtils;
.super Ljava/lang/Object;
.source "SocketUtils.java"


# static fields
.field private static final EMPTY:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/SocketUtils;->EMPTY:Ljava/util/Enumeration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static accept(Ljava/nio/channels/ServerSocketChannel;)Ljava/nio/channels/SocketChannel;
    .locals 2
    .param p0, "serverSocketChannel"    # Ljava/nio/channels/ServerSocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$5;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$5;-><init>(Ljava/nio/channels/ServerSocketChannel;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static addressByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 153
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$8;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/UnknownHostException;

    throw v1
.end method

.method public static addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;
    .locals 2
    .param p0, "intf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/NetworkInterface;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Lio/netty/util/internal/SocketUtils$11;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$11;-><init>(Ljava/net/NetworkInterface;)V

    .line 188
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Enumeration;

    .line 197
    .local v0, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lio/netty/util/internal/SocketUtils;->empty()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1

    .line 200
    :cond_0
    return-object v0
.end method

.method public static allAddressesByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 166
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$9;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$9;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/UnknownHostException;

    throw v1
.end method

.method public static bind(Ljava/net/Socket;Ljava/net/SocketAddress;)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "bindpoint"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$2;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$2;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    nop

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static bind(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V
    .locals 2
    .param p0, "networkChannel"    # Ljava/nio/channels/DatagramChannel;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$6;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$6;-><init>(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static bind(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V
    .locals 2
    .param p0, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$4;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$4;-><init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
    .locals 2
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/util/internal/SocketUtils$1;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    nop

    .line 69
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method public static connect(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)Z
    .locals 2
    .param p0, "socketChannel"    # Ljava/nio/channels/SocketChannel;
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$3;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$3;-><init>(Ljava/nio/channels/SocketChannel;Ljava/net/SocketAddress;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    throw v1
.end method

.method private static empty()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Enumeration<",
            "TT;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lio/netty/util/internal/SocketUtils;->EMPTY:Ljava/util/Enumeration;

    return-object v0
.end method

.method public static hardwareAddressFromNetworkInterface(Ljava/net/NetworkInterface;)[B
    .locals 2
    .param p0, "intf"    # Ljava/net/NetworkInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 222
    :try_start_0
    new-instance v0, Lio/netty/util/internal/SocketUtils$13;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$13;-><init>(Ljava/net/NetworkInterface;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/security/PrivilegedActionException;
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/net/SocketException;

    throw v1
.end method

.method public static localSocketAddress(Ljava/net/ServerSocket;)Ljava/net/SocketAddress;
    .locals 1
    .param p0, "socket"    # Ljava/net/ServerSocket;

    .line 143
    new-instance v0, Lio/netty/util/internal/SocketUtils$7;

    invoke-direct {v0, p0}, Lio/netty/util/internal/SocketUtils$7;-><init>(Ljava/net/ServerSocket;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method public static loopbackAddress()Ljava/net/InetAddress;
    .locals 1

    .line 205
    new-instance v0, Lio/netty/util/internal/SocketUtils$12;

    invoke-direct {v0}, Lio/netty/util/internal/SocketUtils$12;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method

.method public static socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "hostname"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 178
    new-instance v0, Lio/netty/util/internal/SocketUtils$10;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/SocketUtils$10;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method
