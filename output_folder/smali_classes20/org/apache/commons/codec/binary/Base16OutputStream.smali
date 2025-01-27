.class public Lorg/apache/commons/codec/binary/Base16OutputStream;
.super Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "Base16OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base16OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base16OutputStream;-><init>(Ljava/io/OutputStream;ZZ)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZ)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lowerCase"    # Z

    .line 65
    sget-object v0, Lorg/apache/commons/codec/CodecPolicy;->LENIENT:Lorg/apache/commons/codec/CodecPolicy;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/binary/Base16OutputStream;-><init>(Ljava/io/OutputStream;ZZLorg/apache/commons/codec/CodecPolicy;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZZLorg/apache/commons/codec/CodecPolicy;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "doEncode"    # Z
    .param p3, "lowerCase"    # Z
    .param p4, "decodingPolicy"    # Lorg/apache/commons/codec/CodecPolicy;

    .line 79
    new-instance v0, Lorg/apache/commons/codec/binary/Base16;

    invoke-direct {v0, p3, p4}, Lorg/apache/commons/codec/binary/Base16;-><init>(ZLorg/apache/commons/codec/CodecPolicy;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V

    .line 80
    return-void
.end method
