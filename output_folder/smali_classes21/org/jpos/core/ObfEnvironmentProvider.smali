.class public Lorg/jpos/core/ObfEnvironmentProvider;
.super Ljava/lang/Object;
.source "ObfEnvironmentProvider.java"

# interfaces
.implements Lorg/jpos/core/EnvironmentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "config"    # Ljava/lang/String;

    .line 35
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 37
    .local v1, "i":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 38
    .local v2, "l":I
    new-array v3, v2, [B

    .line 39
    .local v3, "b":[B
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 40
    new-instance v4, Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jpos/security/SystemSeed;->getSeed(II)[B

    move-result-object v5

    invoke-static {v3, v5}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method public prefix()Ljava/lang/String;
    .locals 1

    .line 30
    const-string v0, "obf::"

    return-object v0
.end method
