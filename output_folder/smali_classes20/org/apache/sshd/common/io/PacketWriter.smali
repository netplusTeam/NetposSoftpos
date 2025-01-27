.class public interface abstract Lorg/apache/sshd/common/io/PacketWriter;
.super Ljava/lang/Object;
.source "PacketWriter.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# direct methods
.method public static calculatePadLength(IIZ)I
    .locals 2
    .param p0, "len"    # I
    .param p1, "blockSize"    # I
    .param p2, "etmMode"    # Z

    .line 62
    add-int/lit8 p0, p0, 0x1

    .line 63
    if-nez p2, :cond_0

    .line 64
    add-int/lit8 p0, p0, 0x4

    .line 79
    :cond_0
    neg-int v0, p0

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    .line 80
    .local v0, "pad":I
    if-ge v0, p1, :cond_1

    .line 81
    add-int/2addr v0, p1

    .line 84
    :cond_1
    return v0
.end method


# virtual methods
.method public abstract writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
