.class public final Lcom/danbamitale/epmslib/comms/SocketRequest;
.super Ljava/lang/Object;
.source "SocketRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cJ\u0016\u0010\u000e\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010J\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/comms/SocketRequest;",
        "",
        "connectionData",
        "Lcom/danbamitale/epmslib/entities/ConnectionData;",
        "(Lcom/danbamitale/epmslib/entities/ConnectionData;)V",
        "getConnection",
        "Ljavax/net/ssl/SSLSocket;",
        "context",
        "Landroid/content/Context;",
        "ip",
        "",
        "port",
        "",
        "certFileResId",
        "send",
        "isoStream",
        "",
        "socket",
        "Ljava/net/Socket;",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;


# direct methods
.method public constructor <init>(Lcom/danbamitale/epmslib/entities/ConnectionData;)V
    .locals 1
    .param p1, "connectionData"    # Lcom/danbamitale/epmslib/entities/ConnectionData;

    const-string v0, "connectionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    .line 14
    return-void
.end method

.method private final send([BLjava/net/Socket;)Ljava/lang/String;
    .locals 9
    .param p1, "isoStream"    # [B
    .param p2, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    const-string v0, "Connection timed out, failed to receive response from remote server"

    const/4 v1, 0x0

    .local v1, "responseArray":Ljava/lang/Object;
    const/4 v2, 0x0

    new-array v1, v2, [B

    .line 61
    nop

    .line 62
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 63
    .local v3, "dataOut":Ljava/io/DataOutputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v4, "dataIn":Ljava/io/DataInputStream;
    const-string v5, "OutData"

    invoke-static {v5}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, p1, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 69
    move-object v2, v4

    check-cast v2, Ljava/io/InputStream;

    const/16 v5, 0x2000

    instance-of v6, v2, Ljava/io/BufferedInputStream;

    if-eqz v6, :cond_0

    check-cast v2, Ljava/io/BufferedInputStream;

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v6

    :goto_0
    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/PortUnreachableException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    :try_start_1
    move-object v6, v2

    check-cast v6, Ljava/io/BufferedInputStream;

    .local v6, "it":Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 70
    .local v7, "$i$a$-use-SocketRequest$send$1":I
    move-object v8, v6

    check-cast v8, Ljava/io/InputStream;

    invoke-static {v8}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v8

    move-object v1, v8

    .line 71
    nop

    .end local v6    # "it":Ljava/io/BufferedInputStream;
    .end local v7    # "$i$a$-use-SocketRequest$send$1":I
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/NoRouteToHostException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/net/PortUnreachableException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/BindException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 95
    .end local v3    # "dataOut":Ljava/io/DataOutputStream;
    .end local v4    # "dataIn":Ljava/io/DataInputStream;
    nop

    .line 96
    :try_start_3
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 98
    new-instance v0, Ljava/lang/String;

    .line 102
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 69
    .restart local v3    # "dataOut":Ljava/io/DataOutputStream;
    .restart local v4    # "dataIn":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v5

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local v3    # "dataOut":Ljava/io/DataOutputStream;
    .end local v4    # "dataIn":Ljava/io/DataInputStream;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local v3    # "dataOut":Ljava/io/DataOutputStream;
    .restart local v4    # "dataIn":Ljava/io/DataInputStream;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catchall_1
    move-exception v6

    :try_start_5
    invoke-static {v2, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v6
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/net/NoRouteToHostException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/net/PortUnreachableException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/BindException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/UnknownServiceException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    .end local v3    # "dataOut":Ljava/io/DataOutputStream;
    .end local v4    # "dataIn":Ljava/io/DataInputStream;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catchall_2
    move-exception v0

    goto :goto_2

    .line 92
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_2
    move-exception v0

    .line 91
    .local v0, "e":Ljava/net/UnknownServiceException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown service, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 88
    .end local v0    # "e":Ljava/net/UnknownServiceException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 89
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Host address could not be recognized, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 86
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v0

    .line 87
    .local v0, "e":Ljava/net/SocketException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create socket, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 84
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_5
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/BindException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not bind socket to local address or port, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 82
    .end local v0    # "e":Ljava/net/BindException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_6
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Malformed url, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 80
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_7
    move-exception v0

    .line 81
    .local v0, "e":Ljava/net/PortUnreachableException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not connect with remote server, port is unreachable, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 78
    .end local v0    # "e":Ljava/net/PortUnreachableException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_8
    move-exception v0

    .line 79
    .local v0, "e":Ljava/net/NoRouteToHostException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not connect with remote server, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 76
    .end local v0    # "e":Ljava/net/NoRouteToHostException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_9
    move-exception v0

    .line 77
    .local v0, "e":Ljava/net/ConnectException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not connect to the internet, check your connection settings and try again"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v2

    .line 74
    .end local v0    # "e":Ljava/net/ConnectException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_a
    move-exception v2

    .line 75
    .local v2, "e":Ljava/net/SocketTimeoutException;
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v3

    .line 72
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :catch_b
    move-exception v2

    .line 73
    .local v2, "_":Ljava/io/EOFException;
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .end local v1    # "responseArray":Ljava/lang/Object;
    .end local p1    # "isoStream":[B
    .end local p2    # "socket":Ljava/net/Socket;
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 96
    .end local v2    # "_":Ljava/io/EOFException;
    .restart local v1    # "responseArray":Ljava/lang/Object;
    .restart local p1    # "isoStream":[B
    .restart local p2    # "socket":Ljava/net/Socket;
    :goto_2
    :try_start_7
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    goto :goto_3

    .line 97
    :catch_c
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    throw v0
.end method


# virtual methods
.method public final getConnection(Landroid/content/Context;Ljava/lang/String;II)Ljavax/net/ssl/SSLSocket;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ip"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "certFileResId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ip"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/comms/SSLManager;->getTrustySSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 119
    .local v0, "sslFactory":Ljavax/net/ssl/SSLSocketFactory;
    sget-object v1, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-virtual {v1, v0, p2, p3}, Lcom/danbamitale/epmslib/comms/SSLManager;->createSocket(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    return-object v1
.end method

.method public final send(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isoStream"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isoStream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/ConnectionData;->isSSL()Z

    move-result v0

    const v1, 0xea60

    if-eqz v0, :cond_0

    .line 32
    nop

    .line 33
    nop

    .line 34
    iget-object v0, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/ConnectionData;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v2, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/ConnectionData;->getIpPort()I

    move-result v2

    .line 36
    iget-object v3, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/ConnectionData;->getCertFileResId()I

    move-result v3

    .line 32
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/danbamitale/epmslib/comms/SocketRequest;->getConnection(Landroid/content/Context;Ljava/lang/String;II)Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    .line 38
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 39
    move-object v1, v0

    check-cast v1, Ljava/net/Socket;

    invoke-direct {p0, p2, v1}, Lcom/danbamitale/epmslib/comms/SocketRequest;->send([BLjava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .line 42
    .local v0, "socket":Ljava/net/Socket;
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/ConnectionData;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/danbamitale/epmslib/comms/SocketRequest;->connectionData:Lcom/danbamitale/epmslib/entities/ConnectionData;

    invoke-virtual {v4}, Lcom/danbamitale/epmslib/entities/ConnectionData;->getIpPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 43
    .local v2, "sockAddress":Ljava/net/InetSocketAddress;
    move-object v3, v2

    check-cast v3, Ljava/net/SocketAddress;

    invoke-virtual {v0, v3, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 44
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 46
    invoke-direct {p0, p2, v0}, Lcom/danbamitale/epmslib/comms/SocketRequest;->send([BLjava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
