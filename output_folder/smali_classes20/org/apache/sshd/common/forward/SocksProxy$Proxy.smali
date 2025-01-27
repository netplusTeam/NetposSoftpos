.class public abstract Lorg/apache/sshd/common/forward/SocksProxy$Proxy;
.super Ljava/lang/Object;
.source "SocksProxy.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/forward/SocksProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Proxy"
.end annotation


# instance fields
.field protected channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

.field protected session:Lorg/apache/sshd/common/io/IoSession;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->session:Lorg/apache/sshd/common/io/IoSession;

    .line 100
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 113
    :cond_0
    return-void
.end method

.method protected getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I
    .locals 1
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 116
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v0

    return v0
.end method

.method protected getUShort(Lorg/apache/sshd/common/util/buffer/Buffer;)I
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 120
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->getUByte(Lorg/apache/sshd/common/util/buffer/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onMessage(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/apache/sshd/common/forward/SocksProxy$Proxy;->channel:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/TcpipClientChannel;->getInvertedIn()Ljava/io/OutputStream;

    move-result-object v0

    .line 104
    .local v0, "invertedIn":Ljava/io/OutputStream;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 105
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 106
    return-void
.end method
