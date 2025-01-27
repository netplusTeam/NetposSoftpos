.class public Lorg/apache/sshd/common/forward/SocksProxy$Socks4;
.super Lorg/apache/sshd/common/forward/SocksProxy$Proxy;
.source "SocksProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/forward/SocksProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Socks4"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/sshd/common/forward/SocksProxy;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/forward/SocksProxy;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/forward/SocksProxy;
    .param p2, "session"    # Lorg/apache/sshd/common/io/IoSession;

    .line 128
    iput-object p1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    .line 129
    invoke-direct {p0, p2}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;-><init>(Lorg/apache/sshd/common/io/IoSession;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected getNTString(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v1

    int-to-char v1, v1

    .local v1, "c":C
    :goto_0
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v2

    int-to-char v1, v2

    goto :goto_0

    .line 195
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onChannelOpened(Lorg/apache/sshd/client/future/OpenFuture;)V
    .locals 8
    .param p1, "future"    # Lorg/apache/sshd/client/future/OpenFuture;

    .line 165
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 166
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 167
    invoke-interface {p1}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 168
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 169
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v4}, Lorg/apache/sshd/common/forward/SocksProxy;->access$200(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {v4, v5}, Lorg/apache/sshd/common/session/ConnectionService;->unregisterChannel(Lorg/apache/sshd/common/channel/Channel;)V

    .line 170
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-virtual {v4, v3}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 171
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    goto :goto_0

    .line 173
    :cond_0
    const/16 v4, 0x5a

    invoke-virtual {v0, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 175
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 176
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 177
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 178
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 179
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 180
    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 182
    :try_start_0
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->session:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v4, v0}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    nop

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v5}, Lorg/apache/sshd/common/forward/SocksProxy;->access$300(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    aput-object v2, v6, v3

    const/4 v2, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v2, "Failed ({}) to send channel open packet for {}: {}"

    invoke-interface {v5, v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to send packet"

    invoke-direct {v2, v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 8
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    if-nez v0, :cond_3

    .line 136
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v0

    .line 137
    .local v0, "cmd":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 140
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v2

    .line 141
    .local v2, "port":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 142
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getNTString(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, "userId":Ljava/lang/String;
    const-string v5, "0.0.0."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->getNTString(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;

    move-result-object v3

    .line 150
    :cond_0
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v5}, Lorg/apache/sshd/common/forward/SocksProxy;->access$000(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v5

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v5}, Lorg/apache/sshd/common/forward/SocksProxy;->access$100(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    aput-object v3, v6, v1

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "Received socks4 connection request for {} to {}:{}"

    invoke-interface {v5, v1, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v1, v3, v2}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 155
    .local v1, "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    new-instance v5, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    sget-object v6, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Direct:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    iget-object v7, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->session:Lorg/apache/sshd/common/io/IoSession;

    invoke-direct {v5, v6, v7, v1}, Lorg/apache/sshd/common/forward/TcpipClientChannel;-><init>(Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    iput-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    .line 156
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v5}, Lorg/apache/sshd/common/forward/SocksProxy;->access$200(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {v5, v6}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    .line 157
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks4;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-virtual {v5}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v5

    new-instance v6, Lorg/apache/sshd/common/forward/SocksProxy$Socks4$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/apache/sshd/common/forward/SocksProxy$Socks4$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/forward/SocksProxy$Socks4;)V

    invoke-interface {v5, v6}, Lorg/apache/sshd/client/future/OpenFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 158
    .end local v0    # "cmd":I
    .end local v1    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    .end local v2    # "port":I
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "userId":Ljava/lang/String;
    goto :goto_0

    .line 138
    .restart local v0    # "cmd":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported socks command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v0    # "cmd":I
    :cond_3
    invoke-super {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 161
    :goto_0
    return-void
.end method
