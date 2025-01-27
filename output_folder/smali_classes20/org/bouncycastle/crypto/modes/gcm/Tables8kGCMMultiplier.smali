.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;
.source "Tables8kGCMMultiplier.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    if-nez v0, :cond_0

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 10
    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    const/4 p1, 0x0

    :goto_1
    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    .line 14
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v1, v0, p1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v3, v1, v2

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    .line 22
    aget-object v0, v1, v2

    invoke-static {v0, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP3([J[J)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, p1, -0x1

    .line 27
    aget-object v0, v0, v3

    aget-object v0, v0, v2

    aget-object v3, v1, v2

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP4([J[J)V

    :goto_2
    const/4 v0, 0x2

    :goto_3
    const/16 v3, 0x10

    if-ge v0, v3, :cond_3

    shr-int/lit8 v3, v0, 0x1

    .line 33
    aget-object v3, v1, v3

    aget-object v4, v1, v0

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    .line 36
    aget-object v3, v1, v0

    aget-object v4, v1, v2

    add-int/lit8 v5, v0, 0x1

    aget-object v5, v1, v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    return-void

    :array_0
    .array-data 4
        0x20
        0x10
        0x2
    .end array-data
.end method

.method public multiplyH([B)V
    .locals 13

    const/16 v0, 0xf

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    const/4 v5, 0x0

    if-ltz v0, :cond_0

    .line 1
    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v7, v0, v0

    add-int/lit8 v8, v7, 0x1

    aget-object v8, v6, v8

    aget-byte v9, p1, v0

    and-int/lit8 v10, v9, 0xf

    aget-object v8, v8, v10

    .line 2
    aget-object v6, v6, v7

    and-int/lit16 v7, v9, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    aget-object v6, v6, v7

    .line 4
    aget-wide v9, v8, v5

    aget-wide v11, v6, v5

    xor-long/2addr v9, v11

    xor-long/2addr v3, v9

    .line 5
    const/4 v5, 0x1

    aget-wide v7, v8, v5

    aget-wide v5, v6, v5

    xor-long/2addr v5, v7

    xor-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    nop

    .line 8
    invoke-static {v3, v4, p1, v5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v0, 0x8

    .line 9
    invoke-static {v1, v2, p1, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
