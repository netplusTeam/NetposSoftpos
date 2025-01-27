.class final Lio/netty/handler/codec/http/websocketx/WebSocketUtil;
.super Ljava/lang/Object;
.source "WebSocketUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MD5:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHA1:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 34
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketUtil$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->MD5:Lio/netty/util/concurrent/FastThreadLocal;

    .line 47
    new-instance v0, Lio/netty/handler/codec/http/websocketx/WebSocketUtil$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->SHA1:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method static base64([B)Ljava/lang/String;
    .locals 3
    .param p0, "data"    # [B

    .line 96
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_0
    invoke-static {p0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 100
    .local v0, "encodedData":Lio/netty/buffer/ByteBuf;
    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 101
    .local v1, "encoded":Lio/netty/buffer/ByteBuf;
    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "encodedString":Ljava/lang/String;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 103
    return-object v2
.end method

.method private static digest(Lio/netty/util/concurrent/FastThreadLocal;[B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;[B)[B"
        }
    .end annotation

    .line 83
    .local p0, "digestFastThreadLocal":Lio/netty/util/concurrent/FastThreadLocal;, "Lio/netty/util/concurrent/FastThreadLocal<Ljava/security/MessageDigest;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 84
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 85
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method static md5([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 68
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->MD5:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-static {v0, p0}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->digest(Lio/netty/util/concurrent/FastThreadLocal;[B)[B

    move-result-object v0

    return-object v0
.end method

.method static randomBytes(I)[B
    .locals 2
    .param p0, "size"    # I

    .line 113
    new-array v0, p0, [B

    .line 114
    .local v0, "bytes":[B
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 115
    return-object v0
.end method

.method static randomNumber(II)I
    .locals 6
    .param p0, "minimum"    # I
    .param p1, "maximum"    # I

    .line 126
    if-ge p0, p1, :cond_0

    .line 127
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    .line 148
    .local v0, "fraction":D
    int-to-double v2, p0

    sub-int v4, p1, p0

    int-to-double v4, v4

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    .line 126
    .end local v0    # "fraction":D
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static sha1([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 79
    sget-object v0, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->SHA1:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-static {v0, p0}, Lio/netty/handler/codec/http/websocketx/WebSocketUtil;->digest(Lio/netty/util/concurrent/FastThreadLocal;[B)[B

    move-result-object v0

    return-object v0
.end method
