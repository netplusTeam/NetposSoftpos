.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish256Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish256Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0xe

.field private static final ROTATION_0_1:I = 0x10

.field private static final ROTATION_1_0:I = 0x34

.field private static final ROTATION_1_1:I = 0x39

.field private static final ROTATION_2_0:I = 0x17

.field private static final ROTATION_2_1:I = 0x28

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x25

.field private static final ROTATION_4_0:I = 0x19

.field private static final ROTATION_4_1:I = 0x21

.field private static final ROTATION_5_0:I = 0x2e

.field private static final ROTATION_5_1:I = 0xc

.field private static final ROTATION_6_0:I = 0x3a

.field private static final ROTATION_6_1:I = 0x16

.field private static final ROTATION_7_0:I = 0x20

.field private static final ROTATION_7_1:I = 0x20


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    .line 2
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    .line 3
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v3

    .line 4
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    .line 7
    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 11
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 16
    const/4 v5, 0x0

    aget-wide v7, p1, v5

    .line 17
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 18
    const/4 v12, 0x2

    aget-wide v13, p1, v12

    .line 19
    const/4 v15, 0x3

    aget-wide v16, p1, v15

    const/16 v18, 0x11

    move/from16 v15, v18

    :goto_0
    if-lt v15, v9, :cond_0

    .line 23
    aget v19, v3, v15

    .line 24
    aget v20, v4, v15

    add-int/lit8 v21, v19, 0x1

    .line 27
    aget-wide v22, v1, v21

    sub-long v7, v7, v22

    add-int/lit8 v22, v19, 0x2

    .line 28
    aget-wide v23, v1, v22

    add-int/lit8 v25, v20, 0x1

    aget-wide v26, v2, v25

    add-long v23, v23, v26

    sub-long v10, v10, v23

    add-int/lit8 v23, v19, 0x3

    .line 29
    aget-wide v26, v1, v23

    add-int/lit8 v24, v20, 0x2

    aget-wide v28, v2, v24

    add-long v26, v26, v28

    sub-long v13, v13, v26

    add-int/lit8 v24, v19, 0x4

    .line 30
    aget-wide v26, v1, v24

    int-to-long v5, v15

    add-long v26, v26, v5

    const-wide/16 v29, 0x1

    add-long v26, v26, v29

    move-wide/from16 v30, v10

    sub-long v9, v16, v26

    .line 34
    const/16 v11, 0x20

    invoke-static {v9, v10, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 36
    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-wide/from16 v3, v30

    invoke-static {v3, v4, v11, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v13, v3

    const/16 v11, 0x3a

    .line 39
    invoke-static {v3, v4, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v7, v3

    const/16 v11, 0x16

    .line 41
    invoke-static {v9, v10, v11, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v13, v9

    const/16 v11, 0x2e

    .line 44
    invoke-static {v9, v10, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v11, 0xc

    .line 46
    invoke-static {v3, v4, v11, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v13, v3

    const/16 v11, 0x19

    .line 49
    invoke-static {v3, v4, v11, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v7, v3

    const/16 v11, 0x21

    .line 51
    invoke-static {v9, v10, v11, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v13, v9

    .line 55
    aget-wide v16, v1, v19

    sub-long v7, v7, v16

    .line 56
    aget-wide v16, v1, v21

    aget-wide v19, v2, v20

    add-long v16, v16, v19

    sub-long v3, v3, v16

    .line 57
    aget-wide v16, v1, v22

    aget-wide v19, v2, v25

    add-long v16, v16, v19

    sub-long v13, v13, v16

    .line 58
    aget-wide v16, v1, v23

    add-long v16, v16, v5

    sub-long v9, v9, v16

    .line 61
    const/4 v5, 0x5

    invoke-static {v9, v10, v5, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v6, 0x25

    .line 63
    invoke-static {v3, v4, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v13, v3

    const/16 v6, 0x17

    .line 66
    invoke-static {v3, v4, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v7, v3

    const/16 v6, 0x28

    .line 68
    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v13, v9

    const/16 v6, 0x34

    .line 71
    invoke-static {v9, v10, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const/16 v6, 0x39

    .line 73
    invoke-static {v3, v4, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v13, v3

    const/16 v6, 0xe

    .line 76
    invoke-static {v3, v4, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v7, v3

    const/16 v6, 0x10

    .line 78
    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v16

    sub-long v13, v13, v16

    add-int/lit8 v15, v15, -0x2

    move-wide v10, v3

    move v6, v5

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_0
    nop

    .line 85
    const/4 v3, 0x0

    aget-wide v4, v1, v3

    sub-long/2addr v7, v4

    .line 86
    const/4 v4, 0x1

    aget-wide v5, v1, v4

    aget-wide v19, v2, v3

    add-long v5, v5, v19

    sub-long/2addr v10, v5

    .line 87
    aget-wide v5, v1, v12

    aget-wide v2, v2, v4

    add-long/2addr v5, v2

    sub-long/2addr v13, v5

    .line 88
    const/4 v2, 0x3

    aget-wide v5, v1, v2

    sub-long v16, v16, v5

    .line 93
    const/4 v1, 0x0

    aput-wide v7, p2, v1

    .line 94
    aput-wide v10, p2, v4

    .line 95
    aput-wide v13, p2, v12

    .line 96
    aput-wide v16, p2, v2

    return-void

    .line 97
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 98
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method encryptBlock([J[J)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    .line 2
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    .line 3
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$000()[I

    move-result-object v3

    .line 4
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    .line 7
    array-length v5, v1

    const/16 v6, 0x9

    if-ne v5, v6, :cond_2

    .line 11
    array-length v5, v2

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    .line 19
    const/4 v5, 0x0

    aget-wide v7, p1, v5

    .line 20
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 21
    const/4 v12, 0x2

    aget-wide v13, p1, v12

    .line 22
    const/4 v15, 0x3

    aget-wide v16, p1, v15

    .line 27
    aget-wide v18, v1, v5

    add-long v7, v7, v18

    .line 28
    aget-wide v18, v1, v9

    aget-wide v20, v2, v5

    add-long v18, v18, v20

    add-long v10, v10, v18

    .line 29
    aget-wide v18, v1, v12

    aget-wide v20, v2, v9

    add-long v18, v18, v20

    add-long v13, v13, v18

    .line 30
    aget-wide v18, v1, v15

    add-long v16, v16, v18

    move v15, v9

    move-wide/from16 v5, v16

    :goto_0
    const/16 v9, 0x12

    if-ge v15, v9, :cond_0

    .line 45
    aget v9, v3, v15

    .line 46
    aget v20, v4, v15

    add-long/2addr v7, v10

    const/16 v12, 0xe

    .line 54
    invoke-static {v10, v11, v12, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v13, v5

    const/16 v12, 0x10

    .line 55
    invoke-static {v5, v6, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v5

    const/16 v12, 0x34

    .line 57
    invoke-static {v5, v6, v12, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v13, v10

    const/16 v12, 0x39

    .line 58
    invoke-static {v10, v11, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v7, v10

    const/16 v12, 0x17

    .line 60
    invoke-static {v10, v11, v12, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v13, v5

    const/16 v12, 0x28

    .line 61
    invoke-static {v5, v6, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v5

    .line 63
    const/4 v12, 0x5

    invoke-static {v5, v6, v12, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v13, v10

    const/16 v12, 0x25

    .line 64
    invoke-static {v10, v11, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 69
    aget-wide v22, v1, v9

    add-long v7, v7, v22

    add-int/lit8 v12, v9, 0x1

    .line 70
    aget-wide v22, v1, v12

    aget-wide v24, v2, v20

    add-long v22, v22, v24

    add-long v10, v10, v22

    add-int/lit8 v22, v9, 0x2

    .line 71
    aget-wide v23, v1, v22

    add-int/lit8 v25, v20, 0x1

    aget-wide v26, v2, v25

    add-long v23, v23, v26

    add-long v13, v13, v23

    add-int/lit8 v23, v9, 0x3

    .line 72
    aget-wide v26, v1, v23

    move-object/from16 v24, v3

    move-object/from16 v28, v4

    int-to-long v3, v15

    add-long v26, v26, v3

    add-long v5, v5, v26

    add-long/2addr v7, v10

    const/16 v0, 0x19

    .line 77
    invoke-static {v10, v11, v0, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v13, v5

    const/16 v0, 0x21

    .line 78
    invoke-static {v5, v6, v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v5

    const/16 v0, 0x2e

    .line 80
    invoke-static {v5, v6, v0, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v13, v10

    const/16 v0, 0xc

    .line 81
    invoke-static {v10, v11, v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v7, v10

    const/16 v0, 0x3a

    .line 83
    invoke-static {v10, v11, v0, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v13, v5

    const/16 v0, 0x16

    .line 84
    invoke-static {v5, v6, v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v7, v5

    .line 86
    const/16 v0, 0x20

    invoke-static {v5, v6, v0, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    add-long/2addr v13, v10

    .line 87
    invoke-static {v10, v11, v0, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    .line 92
    aget-wide v26, v1, v12

    add-long v7, v7, v26

    .line 93
    aget-wide v26, v1, v22

    aget-wide v29, v2, v25

    add-long v26, v26, v29

    add-long v10, v10, v26

    .line 94
    aget-wide v22, v1, v23

    const/4 v0, 0x2

    add-int/lit8 v20, v20, 0x2

    aget-wide v25, v2, v20

    add-long v22, v22, v25

    add-long v13, v13, v22

    add-int/lit8 v9, v9, 0x4

    .line 95
    aget-wide v22, v1, v9

    add-long v22, v22, v3

    const-wide/16 v3, 0x1

    add-long v22, v22, v3

    add-long v5, v5, v22

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, v24

    move-object/from16 v4, v28

    const/4 v9, 0x1

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_0
    nop

    .line 101
    const/4 v0, 0x0

    aput-wide v7, p2, v0

    .line 102
    const/4 v0, 0x1

    aput-wide v10, p2, v0

    .line 103
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 104
    const/4 v0, 0x3

    aput-wide v5, p2, v0

    return-void

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
