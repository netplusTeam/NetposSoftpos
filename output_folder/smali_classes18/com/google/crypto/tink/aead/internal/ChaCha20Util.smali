.class final Lcom/google/crypto/tink/aead/internal/ChaCha20Util;
.super Ljava/lang/Object;
.source "ChaCha20Util.java"


# static fields
.field static final BLOCK_SIZE_IN_BYTES:I = 0x40

.field static final BLOCK_SIZE_IN_INTS:I = 0x10

.field static final KEY_SIZE_IN_BYTES:I = 0x20

.field static final KEY_SIZE_IN_INTS:I = 0x8

.field private static final SIGMA:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 34
    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->toIntArray([B)[I

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->SIGMA:[I

    .line 33
    return-void

    :array_0
    .array-data 1
        0x65t
        0x78t
        0x70t
        0x61t
        0x6et
        0x64t
        0x20t
        0x33t
        0x32t
        0x2dt
        0x62t
        0x79t
        0x74t
        0x65t
        0x20t
        0x6bt
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static quarterRound([IIIII)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "a",
            "b",
            "c",
            "d"
        }
    .end annotation

    .line 70
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 71
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    .line 72
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 73
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    .line 74
    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    .line 75
    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    .line 76
    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    .line 77
    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    .line 78
    return-void
.end method

.method private static rotateLeft(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 89
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method static setSigmaAndKey([I[I)V
    .locals 3
    .param p0, "state"    # [I
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "state",
            "key"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->SIGMA:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    array-length v0, v0

    const/16 v1, 0x8

    invoke-static {p1, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method

.method static shuffleState([I)V
    .locals 16
    .param p0, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "state"
        }
    .end annotation

    .line 53
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 54
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/16 v6, 0xc

    invoke-static {v0, v3, v4, v5, v6}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 55
    const/4 v7, 0x1

    const/4 v8, 0x5

    const/16 v9, 0x9

    const/16 v10, 0xd

    invoke-static {v0, v7, v8, v9, v10}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 56
    const/4 v11, 0x2

    const/4 v12, 0x6

    const/16 v13, 0xe

    invoke-static {v0, v11, v12, v2, v13}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 57
    const/4 v14, 0x3

    const/4 v15, 0x7

    const/16 v4, 0xb

    const/16 v9, 0xf

    invoke-static {v0, v14, v15, v4, v9}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 58
    invoke-static {v0, v3, v8, v2, v9}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 59
    invoke-static {v0, v7, v12, v4, v6}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 60
    invoke-static {v0, v11, v15, v5, v10}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 61
    const/16 v2, 0x9

    const/4 v3, 0x4

    invoke-static {v0, v14, v3, v2, v13}, Lcom/google/crypto/tink/aead/internal/ChaCha20Util;->quarterRound([IIIII)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method static toIntArray([B)[I
    .locals 2
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 82
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    .line 83
    .local v0, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [I

    .line 84
    .local v1, "ret":[I
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 85
    return-object v1
.end method
