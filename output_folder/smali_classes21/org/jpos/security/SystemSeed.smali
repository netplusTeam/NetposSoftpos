.class public Lorg/jpos/security/SystemSeed;
.super Ljava/lang/Object;
.source "SystemSeed.java"


# static fields
.field private static final seed:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    :try_start_0
    const-string v0, "/META-INF/q2/.seed"

    invoke-static {v0}, Lorg/jpos/security/SystemSeed;->get(Ljava/lang/String;)[B

    move-result-object v0

    .line 48
    .local v0, "_s0":[B
    const-string v1, "/META-INF/.seed"

    invoke-static {v1}, Lorg/jpos/security/SystemSeed;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 49
    .local v1, "_s1":[B
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v2

    :goto_0
    sput-object v2, Lorg/jpos/security/SystemSeed;->seed:[B

    .line 50
    if-eqz v2, :cond_1

    array-length v2, v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 54
    .end local v0    # "_s0":[B
    .end local v1    # "_s1":[B
    nop

    .line 55
    return-void

    .line 51
    .restart local v0    # "_s0":[B
    .restart local v1    # "_s1":[B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid seed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v0    # "_s0":[B
    .end local v1    # "_s1":[B
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid system configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/String;)[B
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    const-class v0, Lorg/jpos/security/SystemSeed;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 59
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 62
    .local v1, "b":[B
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 63
    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Base64;->decode([B)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 63
    return-object v2

    .line 65
    .end local v1    # "b":[B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 66
    throw v1

    .line 68
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSeed(I)[B
    .locals 1
    .param p0, "l"    # I

    .line 31
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/jpos/security/SystemSeed;->getSeed(II)[B

    move-result-object v0

    return-object v0
.end method

.method public static getSeed(II)[B
    .locals 4
    .param p0, "offset"    # I
    .param p1, "l"    # I

    .line 34
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 35
    .local v0, "buf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lorg/jpos/security/SystemSeed;->seed:[B

    array-length v2, v1

    rem-int/2addr p0, v2

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int v2, p1, v2

    array-length v3, v1

    sub-int/2addr v3, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 38
    .local v2, "i":I
    invoke-virtual {v0, v1, p0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 39
    add-int/2addr p0, v2

    .line 40
    .end local v2    # "i":I
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method
