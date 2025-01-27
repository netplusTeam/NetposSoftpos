.class public final Lcom/hivemq/client/internal/util/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# static fields
.field private static final EMPTY_BYTE_ARRAY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/hivemq/client/internal/util/ByteBufferUtil;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(IZ)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "capacity"    # I
    .param p1, "direct"    # Z

    .line 33
    if-eqz p1, :cond_0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static copyBytes(Ljava/nio/ByteBuffer;)[B
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 59
    if-nez p0, :cond_0

    .line 60
    sget-object v0, Lcom/hivemq/client/internal/util/ByteBufferUtil;->EMPTY_BYTE_ARRAY:[B

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 63
    .local v0, "binary":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 64
    return-object v0
.end method

.method public static getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 3
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 51
    .local v0, "array":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    if-nez v1, :cond_0

    array-length v1, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 52
    return-object v0

    .line 55
    .end local v0    # "array":[B
    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->copyBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public static optionalReadOnly(Ljava/nio/ByteBuffer;)Ljava/util/Optional;
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 45
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static slice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 41
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "binary"    # [B

    .line 37
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0
.end method
