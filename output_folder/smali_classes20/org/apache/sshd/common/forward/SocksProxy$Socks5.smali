.class public Lorg/apache/sshd/common/forward/SocksProxy$Socks5;
.super Lorg/apache/sshd/common/forward/SocksProxy$Proxy;
.source "SocksProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/forward/SocksProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Socks5"
.end annotation


# instance fields
.field private authMethods:[B

.field private response:Lorg/apache/sshd/common/util/buffer/Buffer;

.field final synthetic this$0:Lorg/apache/sshd/common/forward/SocksProxy;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/forward/SocksProxy;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/sshd/common/forward/SocksProxy;
    .param p2, "session"    # Lorg/apache/sshd/common/io/IoSession;

    .line 206
    iput-object p1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    .line 207
    invoke-direct {p0, p2}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;-><init>(Lorg/apache/sshd/common/io/IoSession;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected getBLString(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 308
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v0

    .line 309
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 310
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 311
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected onChannelOpened(Lorg/apache/sshd/client/future/OpenFuture;)V
    .locals 8
    .param p1, "future"    # Lorg/apache/sshd/client/future/OpenFuture;

    .line 287
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 288
    .local v0, "wpos":I
    iget-object v1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 289
    iget-object v1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 290
    invoke-interface {p1}, Lorg/apache/sshd/client/future/OpenFuture;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 291
    .local v1, "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 292
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v4}, Lorg/apache/sshd/common/forward/SocksProxy;->access$200(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {v4, v5}, Lorg/apache/sshd/common/session/ConnectionService;->unregisterChannel(Lorg/apache/sshd/common/channel/Channel;)V

    .line 293
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-virtual {v4, v3}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 294
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 298
    :goto_0
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-virtual {v4, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 300
    :try_start_0
    iget-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->session:Lorg/apache/sshd/common/io/IoSession;

    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    invoke-interface {v4, v5}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    nop

    .line 305
    return-void

    .line 301
    :catch_0
    move-exception v4

    .line 302
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v5}, Lorg/apache/sshd/common/forward/SocksProxy;->access$900(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    iget-object v2, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    aput-object v2, v6, v3

    const/4 v2, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const-string v2, "Failed ({}) to send channel open response for {}: {}"

    invoke-interface {v5, v2, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to send packet"

    invoke-direct {v2, v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 11
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v0}, Lorg/apache/sshd/common/forward/SocksProxy;->access$400(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 214
    .local v0, "debugEnabled":Z
    iget-object v1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->authMethods:[B

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 215
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v1

    .line 216
    .local v1, "nbAuthMethods":I
    new-array v4, v1, [B

    iput-object v4, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->authMethods:[B

    .line 217
    invoke-virtual {p1, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawBytes([B)V

    .line 218
    const/4 v4, 0x0

    .line 219
    .local v4, "foundNoAuth":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v1, :cond_1

    .line 220
    iget-object v7, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->authMethods:[B

    aget-byte v7, v7, v5

    if-nez v7, :cond_0

    move v6, v3

    :cond_0
    or-int/2addr v4, v6

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 222
    .end local v5    # "i":I
    :cond_1
    new-instance v3, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    const/16 v5, 0x8

    invoke-direct {v3, v5, v6}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    move-object p1, v3

    .line 223
    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 224
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0xff

    :goto_1
    int-to-byte v2, v6

    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 225
    iget-object v2, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->session:Lorg/apache/sshd/common/io/IoSession;

    invoke-interface {v2, p1}, Lorg/apache/sshd/common/io/IoSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 226
    if-eqz v4, :cond_4

    .line 228
    if-eqz v0, :cond_3

    .line 229
    iget-object v2, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v2}, Lorg/apache/sshd/common/forward/SocksProxy;->access$500(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Received socks5 greeting"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 231
    .end local v1    # "nbAuthMethods":I
    .end local v4    # "foundNoAuth":Z
    :cond_3
    goto/16 :goto_3

    .line 227
    .restart local v1    # "nbAuthMethods":I
    .restart local v4    # "foundNoAuth":Z
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Received socks5 greeting without NoAuth method"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    .end local v1    # "nbAuthMethods":I
    .end local v4    # "foundNoAuth":Z
    :cond_5
    iget-object v1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    if-nez v1, :cond_d

    .line 232
    iput-object p1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->response:Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v1

    .line 234
    .local v1, "version":I
    if-ne v1, v2, :cond_c

    .line 237
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v2

    .line 238
    .local v2, "cmd":I
    if-ne v2, v3, :cond_b

    .line 241
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v4

    .line 242
    .local v4, "res":I
    if-eqz v4, :cond_6

    .line 243
    if-eqz v0, :cond_6

    .line 244
    iget-object v5, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v5}, Lorg/apache/sshd/common/forward/SocksProxy;->access$600(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "No zero reserved value: {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 248
    :cond_6
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v5

    .line 250
    .local v5, "type":I
    if-ne v5, v3, :cond_7

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 252
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 253
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "host":Ljava/lang/String;
    goto/16 :goto_2

    .line 255
    .end local v3    # "host":Ljava/lang/String;
    :cond_7
    const/4 v3, 0x3

    if-ne v5, v3, :cond_8

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getBLString(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "host":Ljava/lang/String;
    goto/16 :goto_2

    .line 257
    .end local v3    # "host":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x4

    if-ne v5, v3, :cond_a

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 260
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 262
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 263
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    .restart local v3    # "host":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v6

    .line 270
    .local v6, "port":I
    if-eqz v0, :cond_9

    .line 271
    iget-object v7, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v7}, Lorg/apache/sshd/common/forward/SocksProxy;->access$700(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Received socks5 connection request to {}:{}"

    invoke-interface {v7, v9, v3, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    :cond_9
    new-instance v7, Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    invoke-direct {v7, v3, v6}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 274
    .local v7, "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    new-instance v8, Lorg/apache/sshd/common/forward/TcpipClientChannel;

    sget-object v9, Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;->Direct:Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;

    iget-object v10, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->session:Lorg/apache/sshd/common/io/IoSession;

    invoke-direct {v8, v9, v10, v7}, Lorg/apache/sshd/common/forward/TcpipClientChannel;-><init>(Lorg/apache/sshd/common/forward/TcpipClientChannel$Type;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/net/SshdSocketAddress;)V

    iput-object v8, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    .line 275
    iget-object v8, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v8}, Lorg/apache/sshd/common/forward/SocksProxy;->access$200(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/apache/sshd/common/session/ConnectionService;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-interface {v8, v9}, Lorg/apache/sshd/common/session/ConnectionService;->registerChannel(Lorg/apache/sshd/common/channel/Channel;)I

    .line 276
    iget-object v8, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-virtual {v8}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->open()Lorg/apache/sshd/client/future/OpenFuture;

    move-result-object v8

    new-instance v9, Lorg/apache/sshd/common/forward/SocksProxy$Socks5$$ExternalSyntheticLambda0;

    invoke-direct {v9, p0}, Lorg/apache/sshd/common/forward/SocksProxy$Socks5$$ExternalSyntheticLambda0;-><init>(Lorg/apache/sshd/common/forward/SocksProxy$Socks5;)V

    invoke-interface {v8, v9}, Lorg/apache/sshd/client/future/OpenFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 277
    .end local v1    # "version":I
    .end local v2    # "cmd":I
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "res":I
    .end local v5    # "type":I
    .end local v6    # "port":I
    .end local v7    # "remote":Lorg/apache/sshd/common/util/net/SshdSocketAddress;
    goto :goto_3

    .line 267
    .restart local v1    # "version":I
    .restart local v2    # "cmd":I
    .restart local v4    # "res":I
    .restart local v5    # "type":I
    :cond_a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported address type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    .end local v4    # "res":I
    .end local v5    # "type":I
    :cond_b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported socks command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    .end local v2    # "cmd":I
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    .end local v1    # "version":I
    :cond_d
    if-eqz v0, :cond_e

    .line 279
    iget-object v1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Socks5;->this$0:Lorg/apache/sshd/common/forward/SocksProxy;

    invoke-static {v1}, Lorg/apache/sshd/common/forward/SocksProxy;->access$800(Lorg/apache/sshd/common/forward/SocksProxy;)Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Received socks5 connection message"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 281
    :cond_e
    invoke-super {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 283
    :goto_3
    return-void
.end method
