.class final Lorg/bouncycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source "ThreefishEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Threefish1024Cipher"
.end annotation


# static fields
.field private static final ROTATION_0_0:I = 0x18

.field private static final ROTATION_0_1:I = 0xd

.field private static final ROTATION_0_2:I = 0x8

.field private static final ROTATION_0_3:I = 0x2f

.field private static final ROTATION_0_4:I = 0x8

.field private static final ROTATION_0_5:I = 0x11

.field private static final ROTATION_0_6:I = 0x16

.field private static final ROTATION_0_7:I = 0x25

.field private static final ROTATION_1_0:I = 0x26

.field private static final ROTATION_1_1:I = 0x13

.field private static final ROTATION_1_2:I = 0xa

.field private static final ROTATION_1_3:I = 0x37

.field private static final ROTATION_1_4:I = 0x31

.field private static final ROTATION_1_5:I = 0x12

.field private static final ROTATION_1_6:I = 0x17

.field private static final ROTATION_1_7:I = 0x34

.field private static final ROTATION_2_0:I = 0x21

.field private static final ROTATION_2_1:I = 0x4

.field private static final ROTATION_2_2:I = 0x33

.field private static final ROTATION_2_3:I = 0xd

.field private static final ROTATION_2_4:I = 0x22

.field private static final ROTATION_2_5:I = 0x29

.field private static final ROTATION_2_6:I = 0x3b

.field private static final ROTATION_2_7:I = 0x11

.field private static final ROTATION_3_0:I = 0x5

.field private static final ROTATION_3_1:I = 0x14

.field private static final ROTATION_3_2:I = 0x30

.field private static final ROTATION_3_3:I = 0x29

.field private static final ROTATION_3_4:I = 0x2f

.field private static final ROTATION_3_5:I = 0x1c

.field private static final ROTATION_3_6:I = 0x10

.field private static final ROTATION_3_7:I = 0x19

.field private static final ROTATION_4_0:I = 0x29

.field private static final ROTATION_4_1:I = 0x9

.field private static final ROTATION_4_2:I = 0x25

.field private static final ROTATION_4_3:I = 0x1f

.field private static final ROTATION_4_4:I = 0xc

.field private static final ROTATION_4_5:I = 0x2f

.field private static final ROTATION_4_6:I = 0x2c

.field private static final ROTATION_4_7:I = 0x1e

.field private static final ROTATION_5_0:I = 0x10

.field private static final ROTATION_5_1:I = 0x22

.field private static final ROTATION_5_2:I = 0x38

.field private static final ROTATION_5_3:I = 0x33

.field private static final ROTATION_5_4:I = 0x4

.field private static final ROTATION_5_5:I = 0x35

.field private static final ROTATION_5_6:I = 0x2a

.field private static final ROTATION_5_7:I = 0x29

.field private static final ROTATION_6_0:I = 0x1f

.field private static final ROTATION_6_1:I = 0x2c

.field private static final ROTATION_6_2:I = 0x2f

.field private static final ROTATION_6_3:I = 0x2e

.field private static final ROTATION_6_4:I = 0x13

.field private static final ROTATION_6_5:I = 0x2a

.field private static final ROTATION_6_6:I = 0x2c

.field private static final ROTATION_6_7:I = 0x19

.field private static final ROTATION_7_0:I = 0x9

.field private static final ROTATION_7_1:I = 0x30

.field private static final ROTATION_7_2:I = 0x23

.field private static final ROTATION_7_3:I = 0x34

.field private static final ROTATION_7_4:I = 0x17

.field private static final ROTATION_7_5:I = 0x1f

.field private static final ROTATION_7_6:I = 0x25

.field private static final ROTATION_7_7:I = 0x14


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    return-void
.end method


# virtual methods
.method decryptBlock([J[J)V
    .locals 75

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    .line 2
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    .line 3
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v3

    .line 4
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    .line 7
    array-length v5, v1

    const/16 v6, 0x21

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

    .line 20
    const/4 v15, 0x4

    aget-wide v18, p1, v15

    .line 21
    aget-wide v20, p1, v6

    .line 22
    const/16 v22, 0x6

    aget-wide v23, p1, v22

    .line 23
    const/16 v25, 0x7

    aget-wide v26, p1, v25

    .line 24
    const/16 v12, 0x8

    aget-wide v28, p1, v12

    .line 25
    const/16 v5, 0x9

    aget-wide v30, p1, v5

    .line 26
    const/16 v12, 0xa

    aget-wide v32, p1, v12

    .line 27
    const/16 v34, 0xb

    aget-wide v35, p1, v34

    .line 28
    const/16 v12, 0xc

    aget-wide v37, p1, v12

    .line 29
    const/16 v6, 0xd

    aget-wide v39, p1, v6

    .line 30
    const/16 v41, 0xe

    aget-wide v42, p1, v41

    .line 31
    const/16 v44, 0xf

    aget-wide v45, p1, v44

    const/16 v12, 0x13

    :goto_0
    if-lt v12, v9, :cond_0

    .line 35
    aget v47, v3, v12

    .line 36
    aget v48, v4, v12

    add-int/lit8 v49, v47, 0x1

    .line 39
    aget-wide v50, v1, v49

    sub-long v7, v7, v50

    add-int/lit8 v50, v47, 0x2

    .line 40
    aget-wide v51, v1, v50

    sub-long v10, v10, v51

    add-int/lit8 v51, v47, 0x3

    .line 41
    aget-wide v52, v1, v51

    sub-long v13, v13, v52

    add-int/lit8 v52, v47, 0x4

    .line 42
    aget-wide v53, v1, v52

    move-wide/from16 v55, v10

    sub-long v9, v16, v53

    add-int/lit8 v11, v47, 0x5

    .line 43
    aget-wide v16, v1, v11

    sub-long v5, v18, v16

    add-int/lit8 v16, v47, 0x6

    .line 44
    aget-wide v18, v1, v16

    move-object/from16 v54, v3

    move-object/from16 v57, v4

    sub-long v3, v20, v18

    add-int/lit8 v17, v47, 0x7

    .line 45
    aget-wide v18, v1, v17

    move-wide/from16 v58, v9

    sub-long v9, v23, v18

    add-int/lit8 v18, v47, 0x8

    .line 46
    aget-wide v19, v1, v18

    move-wide/from16 v60, v3

    sub-long v3, v26, v19

    add-int/lit8 v19, v47, 0x9

    .line 47
    aget-wide v20, v1, v19

    move-wide/from16 v23, v3

    sub-long v3, v28, v20

    add-int/lit8 v20, v47, 0xa

    .line 48
    aget-wide v26, v1, v20

    move-wide/from16 v28, v3

    sub-long v3, v30, v26

    add-int/lit8 v21, v47, 0xb

    .line 49
    aget-wide v26, v1, v21

    move-wide/from16 v30, v3

    sub-long v3, v32, v26

    add-int/lit8 v26, v47, 0xc

    .line 50
    aget-wide v32, v1, v26

    move-wide/from16 v62, v3

    sub-long v3, v35, v32

    add-int/lit8 v27, v47, 0xd

    .line 51
    aget-wide v32, v1, v27

    move-wide/from16 v64, v5

    sub-long v5, v37, v32

    add-int/lit8 v32, v47, 0xe

    .line 52
    aget-wide v35, v1, v32

    add-int/lit8 v33, v48, 0x1

    aget-wide v37, v2, v33

    add-long v35, v35, v37

    move-wide/from16 v37, v5

    sub-long v5, v39, v35

    add-int/lit8 v35, v47, 0xf

    .line 53
    aget-wide v39, v1, v35

    add-int/lit8 v36, v48, 0x2

    aget-wide v66, v2, v36

    add-long v39, v39, v66

    move-wide/from16 v66, v5

    sub-long v5, v42, v39

    add-int/lit8 v36, v47, 0x10

    .line 54
    aget-wide v39, v1, v36

    move-object/from16 v68, v1

    int-to-long v0, v12

    add-long v39, v39, v0

    const-wide/16 v42, 0x1

    add-long v39, v39, v42

    move-wide/from16 v42, v0

    sub-long v0, v45, v39

    .line 57
    const/16 v15, 0x9

    invoke-static {v0, v1, v15, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v15, 0x30

    .line 59
    invoke-static {v3, v4, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v3

    sub-long/2addr v13, v3

    const/16 v15, 0x23

    .line 61
    move/from16 v70, v11

    move/from16 v69, v12

    move-wide/from16 v11, v66

    invoke-static {v11, v12, v15, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const/16 v15, 0x34

    .line 63
    move-object/from16 v66, v2

    move-wide/from16 v39, v3

    move-wide/from16 v2, v64

    move-wide/from16 v73, v11

    move-wide/from16 v11, v30

    move-wide/from16 v30, v73

    invoke-static {v11, v12, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    const/16 v4, 0x17

    .line 65
    move-wide/from16 v45, v11

    move-wide/from16 v11, v55

    invoke-static {v11, v12, v4, v5, v6}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v5, v11

    .line 67
    const/16 v4, 0x1f

    move-wide/from16 v55, v5

    move-wide/from16 v5, v60

    move-wide/from16 v73, v0

    move-wide/from16 v0, v28

    move-wide/from16 v28, v73

    invoke-static {v5, v6, v4, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v5

    sub-long/2addr v0, v5

    .line 69
    const/16 v15, 0x25

    move-wide/from16 v60, v5

    move-wide/from16 v4, v58

    move-wide/from16 v58, v0

    move-wide/from16 v0, v62

    invoke-static {v4, v5, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x14

    .line 71
    move-wide/from16 v62, v0

    move-wide/from16 v0, v23

    move-wide/from16 v23, v9

    move-wide/from16 v9, v37

    invoke-static {v0, v1, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    .line 74
    const/16 v6, 0x1f

    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    const/16 v6, 0x2c

    .line 76
    move-wide/from16 v37, v0

    move-wide/from16 v0, v60

    invoke-static {v0, v1, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    .line 78
    const/16 v6, 0x2f

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x2e

    .line 80
    move-wide/from16 v64, v0

    move-wide/from16 v0, v23

    invoke-static {v11, v12, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v0, v11

    .line 82
    move-wide/from16 v23, v11

    move-wide/from16 v11, v28

    const/16 v6, 0x13

    invoke-static {v11, v12, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const/16 v6, 0x2a

    .line 84
    move-wide/from16 v28, v4

    move-wide/from16 v4, v30

    move-wide/from16 v30, v9

    move-wide/from16 v9, v55

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x2c

    .line 86
    move-wide/from16 v55, v9

    move-wide/from16 v9, v39

    move-wide/from16 v39, v2

    move-wide/from16 v2, v58

    invoke-static {v9, v10, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v2, v9

    const/16 v6, 0x19

    .line 88
    move-wide/from16 v58, v2

    move-wide/from16 v2, v45

    move-wide/from16 v45, v11

    move-wide/from16 v11, v62

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    .line 91
    const/16 v6, 0x10

    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    const/16 v6, 0x22

    .line 93
    invoke-static {v4, v5, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    const/16 v6, 0x38

    .line 95
    invoke-static {v9, v10, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v0, v9

    const/16 v6, 0x33

    .line 97
    move-wide/from16 v62, v4

    move-wide/from16 v4, v39

    move-wide/from16 v39, v9

    move-wide/from16 v9, v45

    invoke-static {v9, v10, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v4, v9

    .line 99
    move-wide/from16 v45, v9

    move-wide/from16 v9, v37

    const/4 v6, 0x4

    invoke-static {v9, v10, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v11, v9

    const/16 v6, 0x35

    .line 101
    move-wide/from16 v37, v11

    move-wide/from16 v11, v28

    move-wide/from16 v28, v2

    move-wide/from16 v2, v30

    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    const/16 v6, 0x2a

    .line 103
    move-wide/from16 v30, v2

    move-wide/from16 v2, v64

    move-wide/from16 v73, v0

    move-wide/from16 v0, v55

    move-wide/from16 v55, v73

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 105
    const/16 v6, 0x29

    move-wide/from16 v64, v0

    move-wide/from16 v0, v23

    move-wide/from16 v23, v9

    move-wide/from16 v9, v58

    invoke-static {v0, v1, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v9, v0

    .line 108
    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    .line 110
    const/16 v6, 0x9

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v13, v11

    .line 112
    invoke-static {v2, v3, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    .line 114
    move-wide/from16 v71, v2

    move-wide/from16 v2, v55

    const/16 v6, 0x1f

    move-wide/from16 v73, v4

    move-wide/from16 v4, v23

    move-wide/from16 v23, v73

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 116
    move-wide/from16 v55, v4

    move-wide/from16 v4, v28

    const/16 v6, 0xc

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    .line 118
    move-wide/from16 v28, v4

    move-wide/from16 v4, v39

    const/16 v6, 0x2f

    move-wide/from16 v73, v9

    move-wide/from16 v9, v37

    move-wide/from16 v37, v73

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x2c

    .line 120
    move-wide/from16 v39, v4

    move-wide/from16 v4, v62

    move-wide/from16 v73, v9

    move-wide/from16 v9, v30

    move-wide/from16 v30, v73

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x1e

    .line 122
    move-wide/from16 v62, v4

    move-wide/from16 v4, v45

    move-wide/from16 v45, v9

    move-wide/from16 v9, v64

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    .line 126
    aget-wide v64, v68, v47

    sub-long v7, v7, v64

    .line 127
    aget-wide v64, v68, v49

    sub-long v0, v0, v64

    .line 128
    aget-wide v49, v68, v50

    sub-long v13, v13, v49

    .line 129
    aget-wide v49, v68, v51

    sub-long v11, v11, v49

    .line 130
    aget-wide v49, v68, v52

    move-wide/from16 v51, v11

    sub-long v11, v23, v49

    .line 131
    aget-wide v23, v68, v70

    move-wide/from16 v49, v0

    sub-long v0, v71, v23

    .line 132
    aget-wide v23, v68, v16

    sub-long v2, v2, v23

    .line 133
    aget-wide v16, v68, v17

    move-wide/from16 v23, v0

    sub-long v0, v55, v16

    .line 134
    aget-wide v16, v68, v18

    move-wide/from16 v55, v0

    sub-long v0, v37, v16

    .line 135
    aget-wide v16, v68, v19

    move-wide/from16 v18, v0

    sub-long v0, v28, v16

    .line 136
    aget-wide v16, v68, v20

    move-wide/from16 v28, v0

    sub-long v0, v30, v16

    .line 137
    aget-wide v16, v68, v21

    move-wide/from16 v20, v0

    sub-long v0, v39, v16

    .line 138
    aget-wide v16, v68, v26

    move-wide/from16 v30, v11

    sub-long v11, v45, v16

    .line 139
    aget-wide v16, v68, v27

    aget-wide v26, v66, v48

    add-long v16, v16, v26

    move-wide/from16 v26, v11

    sub-long v11, v62, v16

    .line 140
    aget-wide v16, v68, v32

    aget-wide v32, v66, v33

    add-long v16, v16, v32

    sub-long v9, v9, v16

    .line 141
    aget-wide v16, v68, v35

    add-long v16, v16, v42

    sub-long v4, v4, v16

    .line 144
    const/4 v6, 0x5

    invoke-static {v4, v5, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v7, v4

    const/16 v6, 0x14

    .line 146
    invoke-static {v0, v1, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v13, v0

    const/16 v6, 0x30

    .line 148
    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    .line 150
    move-wide/from16 v16, v0

    move-wide/from16 v0, v30

    const/16 v6, 0x29

    move-wide/from16 v73, v11

    move-wide/from16 v11, v28

    move-wide/from16 v28, v73

    invoke-static {v11, v12, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v0, v11

    .line 152
    move-wide/from16 v30, v11

    move-wide/from16 v11, v49

    const/16 v6, 0x2f

    invoke-static {v11, v12, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v9, v11

    const/16 v6, 0x1c

    .line 154
    move-wide/from16 v32, v9

    move-wide/from16 v9, v23

    move-wide/from16 v73, v4

    move-wide/from16 v4, v18

    move-wide/from16 v18, v73

    invoke-static {v9, v10, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v4, v9

    .line 156
    move-wide/from16 v23, v4

    move-wide/from16 v4, v51

    const/16 v6, 0x10

    move-wide/from16 v73, v2

    move-wide/from16 v2, v20

    move-wide/from16 v20, v73

    invoke-static {v4, v5, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v6, 0x19

    .line 158
    move-wide/from16 v35, v2

    move-wide/from16 v2, v55

    move-wide/from16 v73, v11

    move-wide/from16 v11, v26

    move-wide/from16 v26, v73

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v6, 0x21

    .line 161
    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    .line 163
    const/4 v6, 0x4

    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v9

    sub-long/2addr v13, v9

    const/16 v6, 0x33

    .line 165
    invoke-static {v4, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 167
    move-wide/from16 v37, v9

    move-wide/from16 v9, v20

    const/16 v6, 0xd

    move-wide/from16 v20, v4

    move-wide/from16 v4, v26

    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v9, v4

    const/16 v6, 0x22

    .line 169
    move-wide/from16 v26, v4

    move-wide/from16 v4, v18

    invoke-static {v4, v5, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v11, v4

    .line 171
    move-wide/from16 v18, v11

    move-wide/from16 v11, v28

    const/16 v6, 0x29

    move-wide/from16 v28, v2

    move-wide/from16 v2, v32

    invoke-static {v11, v12, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v2, v11

    const/16 v6, 0x3b

    .line 173
    move-wide/from16 v32, v2

    move-wide/from16 v2, v16

    move-wide/from16 v16, v0

    move-wide/from16 v0, v23

    invoke-static {v2, v3, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v6, 0x11

    .line 175
    move-wide/from16 v23, v0

    move-wide/from16 v0, v30

    move-wide/from16 v30, v4

    move-wide/from16 v4, v35

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    const/16 v6, 0x26

    .line 178
    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v7, v0

    .line 180
    const/16 v6, 0x13

    invoke-static {v11, v12, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v11

    sub-long/2addr v13, v11

    .line 182
    const/16 v6, 0xa

    invoke-static {v2, v3, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v6, 0x37

    .line 184
    move-wide/from16 v35, v11

    move-wide/from16 v11, v16

    move-wide/from16 v16, v2

    move-wide/from16 v2, v30

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v11, v2

    const/16 v6, 0x31

    .line 186
    move-wide/from16 v30, v2

    move-wide/from16 v2, v28

    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v4, v2

    const/16 v6, 0x12

    .line 188
    move-wide/from16 v28, v4

    move-wide/from16 v4, v20

    move-wide/from16 v73, v0

    move-wide/from16 v0, v18

    move-wide/from16 v18, v73

    invoke-static {v4, v5, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const/16 v6, 0x17

    .line 190
    move-wide/from16 v20, v0

    move-wide/from16 v0, v37

    move-wide/from16 v73, v2

    move-wide/from16 v2, v32

    move-wide/from16 v32, v73

    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v6, 0x34

    .line 192
    move-wide/from16 v37, v2

    move-wide/from16 v2, v26

    move-wide/from16 v73, v9

    move-wide/from16 v9, v23

    move-wide/from16 v23, v73

    invoke-static {v2, v3, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v9, v2

    const/16 v6, 0x18

    .line 195
    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v2

    sub-long/2addr v7, v2

    .line 197
    const/16 v6, 0xd

    invoke-static {v4, v5, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v4

    sub-long/2addr v13, v4

    .line 199
    const/16 v6, 0x8

    invoke-static {v0, v1, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v11, v0

    .line 201
    move-wide/from16 v26, v7

    move-wide/from16 v6, v23

    const/16 v8, 0x2f

    move-wide/from16 v23, v0

    move-wide/from16 v0, v32

    invoke-static {v0, v1, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v6, v0

    .line 203
    move-wide/from16 v32, v0

    move-wide/from16 v0, v18

    const/16 v8, 0x8

    invoke-static {v0, v1, v8, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long v8, v9, v0

    const/16 v10, 0x11

    .line 205
    move-wide/from16 v18, v0

    move-wide/from16 v0, v16

    move-wide/from16 v16, v2

    move-wide/from16 v2, v28

    invoke-static {v0, v1, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v0

    sub-long/2addr v2, v0

    const/16 v10, 0x16

    .line 207
    move-wide/from16 v28, v0

    move-wide/from16 v0, v35

    move-wide/from16 v73, v2

    move-wide/from16 v2, v20

    move-wide/from16 v20, v73

    invoke-static {v0, v1, v10, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v39

    sub-long v0, v2, v39

    .line 209
    move-wide/from16 v2, v30

    move-wide/from16 v30, v0

    move-wide/from16 v0, v37

    invoke-static {v2, v3, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->xorRotr(JIJ)J

    move-result-wide v45

    sub-long v42, v0, v45

    add-int/lit8 v0, v69, -0x2

    move-wide/from16 v35, v28

    move-wide/from16 v37, v30

    move-object/from16 v3, v54

    move-object/from16 v2, v66

    move-object/from16 v1, v68

    const/4 v15, 0x4

    move-wide/from16 v28, v8

    move-wide/from16 v30, v18

    const/4 v9, 0x1

    move-wide/from16 v18, v11

    move-wide/from16 v10, v16

    move v12, v0

    move-wide/from16 v16, v4

    move-object/from16 v4, v57

    const/16 v5, 0x9

    move-object/from16 v0, p0

    move-wide/from16 v73, v26

    move-wide/from16 v26, v32

    move-wide/from16 v32, v20

    move-wide/from16 v20, v23

    move-wide/from16 v23, v6

    move-wide/from16 v7, v73

    goto/16 :goto_0

    :cond_0
    move-object/from16 v68, v1

    move-object/from16 v66, v2

    .line 216
    const/4 v0, 0x0

    aget-wide v1, v68, v0

    sub-long/2addr v7, v1

    .line 217
    const/4 v0, 0x1

    aget-wide v1, v68, v0

    sub-long/2addr v10, v1

    .line 218
    const/4 v0, 0x2

    aget-wide v1, v68, v0

    sub-long/2addr v13, v1

    .line 219
    const/4 v0, 0x3

    aget-wide v1, v68, v0

    sub-long v16, v16, v1

    .line 220
    const/4 v0, 0x4

    aget-wide v1, v68, v0

    sub-long v18, v18, v1

    .line 221
    const/4 v0, 0x5

    aget-wide v1, v68, v0

    sub-long v20, v20, v1

    .line 222
    aget-wide v0, v68, v22

    sub-long v23, v23, v0

    .line 223
    aget-wide v0, v68, v25

    sub-long v26, v26, v0

    .line 224
    const/16 v0, 0x8

    aget-wide v1, v68, v0

    sub-long v28, v28, v1

    .line 225
    const/16 v0, 0x9

    aget-wide v1, v68, v0

    sub-long v30, v30, v1

    .line 226
    const/16 v0, 0xa

    aget-wide v1, v68, v0

    sub-long v32, v32, v1

    .line 227
    aget-wide v0, v68, v34

    sub-long v35, v35, v0

    .line 228
    const/16 v0, 0xc

    aget-wide v1, v68, v0

    sub-long v37, v37, v1

    .line 229
    const/16 v0, 0xd

    aget-wide v1, v68, v0

    const/4 v0, 0x0

    aget-wide v3, v66, v0

    add-long/2addr v1, v3

    sub-long v39, v39, v1

    .line 230
    aget-wide v0, v68, v41

    const/4 v2, 0x1

    aget-wide v3, v66, v2

    add-long/2addr v0, v3

    sub-long v42, v42, v0

    .line 231
    aget-wide v0, v68, v44

    sub-long v45, v45, v0

    .line 236
    const/4 v0, 0x0

    aput-wide v7, p2, v0

    .line 237
    aput-wide v10, p2, v2

    .line 238
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 239
    const/4 v0, 0x3

    aput-wide v16, p2, v0

    .line 240
    const/4 v0, 0x4

    aput-wide v18, p2, v0

    .line 241
    const/4 v0, 0x5

    aput-wide v20, p2, v0

    .line 242
    aput-wide v23, p2, v22

    .line 243
    aput-wide v26, p2, v25

    .line 244
    const/16 v0, 0x8

    aput-wide v28, p2, v0

    .line 245
    const/16 v0, 0x9

    aput-wide v30, p2, v0

    .line 246
    const/16 v0, 0xa

    aput-wide v32, p2, v0

    .line 247
    aput-wide v35, p2, v34

    .line 248
    const/16 v0, 0xc

    aput-wide v37, p2, v0

    .line 249
    const/16 v0, 0xd

    aput-wide v39, p2, v0

    .line 250
    aput-wide v42, p2, v41

    .line 251
    aput-wide v45, p2, v44

    return-void

    .line 252
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 253
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method encryptBlock([J[J)V
    .locals 82

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->kw:[J

    .line 2
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/ThreefishEngine$ThreefishCipher;->t:[J

    .line 3
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$300()[I

    move-result-object v3

    .line 4
    invoke-static {}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->access$100()[I

    move-result-object v4

    .line 7
    array-length v5, v1

    const/16 v6, 0x21

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

    .line 23
    const/4 v15, 0x4

    aget-wide v19, p1, v15

    .line 24
    aget-wide v21, p1, v6

    .line 25
    const/16 v23, 0x6

    aget-wide v24, p1, v23

    .line 26
    const/16 v26, 0x7

    aget-wide v27, p1, v26

    .line 27
    const/16 v6, 0x8

    aget-wide v30, p1, v6

    .line 28
    const/16 v6, 0x9

    aget-wide v33, p1, v6

    .line 29
    const/16 v6, 0xa

    aget-wide v36, p1, v6

    .line 30
    const/16 v38, 0xb

    aget-wide v39, p1, v38

    .line 31
    const/16 v6, 0xc

    aget-wide v42, p1, v6

    .line 32
    const/16 v6, 0xd

    aget-wide v45, p1, v6

    .line 33
    const/16 v47, 0xe

    aget-wide v48, p1, v47

    .line 34
    const/16 v50, 0xf

    aget-wide v51, p1, v50

    .line 39
    aget-wide v53, v1, v5

    add-long v7, v7, v53

    .line 40
    aget-wide v53, v1, v9

    add-long v10, v10, v53

    .line 41
    aget-wide v53, v1, v12

    add-long v13, v13, v53

    .line 42
    const/16 v18, 0x3

    aget-wide v53, v1, v18

    add-long v16, v16, v53

    .line 43
    aget-wide v53, v1, v15

    add-long v19, v19, v53

    .line 44
    const/16 v29, 0x5

    aget-wide v53, v1, v29

    add-long v21, v21, v53

    .line 45
    aget-wide v53, v1, v23

    add-long v24, v24, v53

    .line 46
    aget-wide v53, v1, v26

    add-long v27, v27, v53

    .line 47
    const/16 v32, 0x8

    aget-wide v53, v1, v32

    add-long v30, v30, v53

    .line 48
    const/16 v35, 0x9

    aget-wide v53, v1, v35

    add-long v33, v33, v53

    .line 49
    const/16 v41, 0xa

    aget-wide v53, v1, v41

    add-long v36, v36, v53

    .line 50
    aget-wide v53, v1, v38

    add-long v39, v39, v53

    .line 51
    const/16 v44, 0xc

    aget-wide v53, v1, v44

    add-long v42, v42, v53

    .line 52
    aget-wide v53, v1, v6

    aget-wide v55, v2, v5

    add-long v53, v53, v55

    add-long v45, v45, v53

    .line 53
    aget-wide v53, v1, v47

    aget-wide v55, v2, v9

    add-long v53, v53, v55

    add-long v48, v48, v53

    .line 54
    aget-wide v53, v1, v50

    add-long v51, v51, v53

    move-wide/from16 v5, v16

    move-wide/from16 v57, v21

    move-wide/from16 v59, v27

    move-wide/from16 v61, v33

    move-wide/from16 v63, v39

    move-wide/from16 v65, v45

    move-wide/from16 v67, v51

    :goto_0
    const/16 v12, 0x14

    if-ge v9, v12, :cond_0

    .line 69
    aget v27, v3, v9

    .line 70
    aget v28, v4, v9

    add-long/2addr v7, v10

    const/16 v12, 0x18

    .line 78
    invoke-static {v10, v11, v12, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long/2addr v13, v5

    .line 79
    const/16 v12, 0xd

    invoke-static {v5, v6, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v5

    move-object v12, v1

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move-wide/from16 v3, v57

    add-long v0, v19, v3

    .line 80
    const/16 v15, 0x8

    invoke-static {v3, v4, v15, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v3

    move/from16 v40, v9

    move-wide/from16 v45, v10

    move-object/from16 v51, v12

    move-wide/from16 v9, v59

    add-long v11, v24, v9

    .line 81
    const/16 v15, 0x2f

    invoke-static {v9, v10, v15, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-object/from16 v52, v2

    move-wide/from16 v19, v3

    move-wide/from16 v53, v5

    move-wide/from16 v2, v61

    add-long v4, v30, v2

    .line 82
    const/16 v6, 0x8

    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v24, v4

    move-wide/from16 v55, v9

    move-wide/from16 v4, v63

    add-long v9, v36, v4

    const/16 v6, 0x11

    .line 83
    invoke-static {v4, v5, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v57, v0

    move-wide/from16 v30, v9

    move-wide/from16 v9, v65

    add-long v0, v42, v9

    const/16 v6, 0x16

    .line 84
    invoke-static {v9, v10, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v36, v0

    move-wide/from16 v59, v4

    move-wide/from16 v0, v67

    add-long v4, v48, v0

    .line 85
    const/16 v6, 0x25

    invoke-static {v0, v1, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v7, v2

    const/16 v6, 0x26

    .line 87
    invoke-static {v2, v3, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v13, v9

    const/16 v6, 0x13

    .line 88
    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    add-long v11, v11, v59

    .line 89
    move-wide/from16 v48, v2

    move-wide/from16 v2, v59

    const/16 v6, 0xa

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v59, v2

    add-long v2, v57, v0

    const/16 v6, 0x37

    .line 90
    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v57, v9

    add-long v9, v30, v55

    const/16 v6, 0x31

    .line 91
    move-wide/from16 v30, v0

    move-wide/from16 v0, v55

    invoke-static {v0, v1, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v55, v9

    add-long v9, v36, v53

    const/16 v6, 0x12

    .line 92
    move-wide/from16 v36, v11

    move-wide/from16 v11, v53

    invoke-static {v11, v12, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    add-long v4, v4, v19

    const/16 v6, 0x17

    .line 93
    move-wide/from16 v53, v9

    move-wide/from16 v9, v19

    invoke-static {v9, v10, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v19, v4

    add-long v4, v24, v45

    const/16 v6, 0x34

    .line 94
    move-wide/from16 v24, v2

    move-wide/from16 v2, v45

    invoke-static {v2, v3, v6, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long/2addr v7, v0

    const/16 v6, 0x21

    .line 96
    invoke-static {v0, v1, v6, v7, v8}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v13, v9

    .line 97
    const/4 v6, 0x4

    invoke-static {v9, v10, v6, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v45, v0

    add-long v0, v24, v11

    const/16 v6, 0x33

    .line 98
    invoke-static {v11, v12, v6, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v24, v11

    add-long v11, v36, v2

    .line 99
    const/16 v6, 0xd

    invoke-static {v2, v3, v6, v11, v12}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v36, v9

    add-long v9, v53, v30

    const/16 v6, 0x22

    .line 100
    move-wide/from16 v53, v2

    move-wide/from16 v2, v30

    invoke-static {v2, v3, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    move-wide/from16 v30, v9

    add-long v9, v19, v57

    .line 101
    const/16 v6, 0x29

    move-wide/from16 v19, v0

    move-wide/from16 v0, v57

    invoke-static {v0, v1, v6, v9, v10}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v4, v4, v59

    const/16 v15, 0x3b

    .line 102
    move-wide/from16 v61, v7

    move-wide/from16 v6, v59

    invoke-static {v6, v7, v15, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v58, v9

    add-long v8, v55, v48

    const/16 v15, 0x11

    .line 103
    move-wide/from16 v55, v11

    move-wide/from16 v10, v48

    invoke-static {v10, v11, v15, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide/from16 v48, v13

    add-long v12, v61, v2

    .line 105
    const/4 v15, 0x5

    invoke-static {v2, v3, v15, v12, v13}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v2

    add-long v14, v48, v6

    .line 106
    move-wide/from16 v48, v2

    const/16 v2, 0x14

    invoke-static {v6, v7, v2, v14, v15}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long v2, v55, v0

    move-wide/from16 v55, v6

    const/16 v6, 0x30

    .line 107
    invoke-static {v0, v1, v6, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v6, v19, v10

    .line 108
    move-wide/from16 v19, v0

    const/16 v0, 0x29

    invoke-static {v10, v11, v0, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v0, v58, v53

    .line 109
    move-wide/from16 v58, v10

    move-wide/from16 v10, v53

    move-wide/from16 v53, v2

    const/16 v2, 0x2f

    invoke-static {v10, v11, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v4, v4, v36

    const/16 v2, 0x1c

    .line 110
    move-wide/from16 v60, v0

    move-wide/from16 v0, v36

    invoke-static {v0, v1, v2, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v8, v8, v24

    .line 111
    const/16 v2, 0x10

    move-wide/from16 v36, v4

    move-wide/from16 v3, v24

    invoke-static {v3, v4, v2, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v3

    move-wide/from16 v24, v3

    add-long v2, v30, v45

    const/16 v4, 0x19

    .line 112
    move-wide/from16 v30, v6

    move-wide/from16 v5, v45

    invoke-static {v5, v6, v4, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    .line 117
    aget-wide v45, v51, v27

    add-long v12, v12, v45

    add-int/lit8 v6, v27, 0x1

    .line 118
    aget-wide v45, v51, v6

    add-long v10, v10, v45

    add-int/lit8 v45, v27, 0x2

    .line 119
    aget-wide v62, v51, v45

    add-long v14, v14, v62

    add-int/lit8 v46, v27, 0x3

    .line 120
    aget-wide v62, v51, v46

    move-wide/from16 v64, v8

    add-long v7, v24, v62

    add-int/lit8 v24, v27, 0x4

    .line 121
    aget-wide v62, v51, v24

    add-long v30, v30, v62

    add-int/lit8 v25, v27, 0x5

    .line 122
    aget-wide v62, v51, v25

    add-long v0, v0, v62

    add-int/lit8 v62, v27, 0x6

    .line 123
    aget-wide v66, v51, v62

    add-long v53, v53, v66

    add-int/lit8 v63, v27, 0x7

    .line 124
    aget-wide v66, v51, v63

    add-long v4, v4, v66

    add-int/lit8 v66, v27, 0x8

    .line 125
    aget-wide v67, v51, v66

    add-long v36, v36, v67

    add-int/lit8 v67, v27, 0x9

    .line 126
    aget-wide v68, v51, v67

    move-wide/from16 v70, v10

    add-long v9, v58, v68

    add-int/lit8 v58, v27, 0xa

    .line 127
    aget-wide v68, v51, v58

    add-long v64, v64, v68

    add-int/lit8 v59, v27, 0xb

    .line 128
    aget-wide v68, v51, v59

    move-wide/from16 v72, v12

    add-long v11, v55, v68

    add-int/lit8 v55, v27, 0xc

    .line 129
    aget-wide v68, v51, v55

    add-long v2, v2, v68

    add-int/lit8 v56, v27, 0xd

    .line 130
    aget-wide v68, v51, v56

    aget-wide v74, v52, v28

    add-long v68, v68, v74

    move-wide/from16 v74, v14

    add-long v13, v19, v68

    add-int/lit8 v19, v27, 0xe

    .line 131
    aget-wide v68, v51, v19

    add-int/lit8 v20, v28, 0x1

    aget-wide v76, v52, v20

    add-long v68, v68, v76

    add-long v60, v60, v68

    add-int/lit8 v68, v27, 0xf

    .line 132
    aget-wide v76, v51, v68

    move-wide/from16 v78, v2

    move/from16 v15, v40

    int-to-long v2, v15

    add-long v76, v76, v2

    move-wide/from16 v80, v2

    add-long v2, v48, v76

    move-wide/from16 v48, v2

    add-long v2, v72, v70

    .line 137
    move-wide/from16 v72, v13

    move-wide/from16 v13, v70

    const/16 v15, 0x29

    invoke-static {v13, v14, v15, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v13

    move-wide/from16 v70, v13

    add-long v13, v74, v7

    .line 138
    const/16 v15, 0x9

    invoke-static {v7, v8, v15, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v7

    move v15, v6

    move-wide/from16 v74, v7

    add-long v6, v30, v0

    .line 139
    const/16 v8, 0x25

    invoke-static {v0, v1, v8, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v30, v0

    add-long v0, v53, v4

    .line 140
    const/16 v8, 0x1f

    invoke-static {v4, v5, v8, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v4

    move-wide/from16 v53, v4

    add-long v4, v36, v9

    .line 141
    const/16 v8, 0xc

    invoke-static {v9, v10, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v76, v4

    add-long v4, v64, v11

    .line 142
    const/16 v8, 0x2f

    invoke-static {v11, v12, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v11

    move-wide/from16 v64, v4

    add-long v4, v78, v72

    const/16 v8, 0x2c

    .line 143
    move-wide/from16 v78, v6

    move-wide/from16 v6, v72

    invoke-static {v6, v7, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v72, v4

    add-long v4, v60, v48

    const/16 v8, 0x1e

    .line 144
    move-wide/from16 v60, v0

    move-wide/from16 v0, v48

    invoke-static {v0, v1, v8, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long/2addr v2, v9

    .line 146
    const/16 v8, 0x10

    invoke-static {v9, v10, v8, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v9

    move-wide/from16 v48, v9

    move-wide/from16 v8, v53

    add-long/2addr v13, v6

    const/16 v10, 0x22

    .line 147
    invoke-static {v6, v7, v10, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v53, v6

    add-long v6, v60, v11

    const/16 v10, 0x38

    .line 148
    invoke-static {v11, v12, v10, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide/from16 v60, v10

    add-long v10, v78, v0

    const/16 v12, 0x33

    .line 149
    invoke-static {v0, v1, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v78, v0

    add-long v0, v64, v8

    .line 150
    const/4 v12, 0x4

    invoke-static {v8, v9, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v64, v0

    add-long v0, v72, v74

    const/16 v12, 0x35

    .line 151
    move-wide/from16 v72, v6

    move-wide/from16 v6, v74

    invoke-static {v6, v7, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long v4, v4, v30

    const/16 v12, 0x2a

    .line 152
    move-wide/from16 v74, v0

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v30, v4

    add-long v4, v76, v70

    .line 153
    move-wide/from16 v76, v6

    move-wide/from16 v6, v70

    const/16 v12, 0x29

    invoke-static {v6, v7, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long/2addr v2, v8

    .line 155
    const/16 v12, 0x1f

    invoke-static {v8, v9, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v13, v0

    const/16 v12, 0x2c

    .line 156
    invoke-static {v0, v1, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    add-long v10, v10, v76

    .line 157
    move-wide/from16 v70, v8

    move-wide/from16 v8, v76

    const/16 v12, 0x2f

    invoke-static {v8, v9, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v76, v8

    add-long v8, v72, v6

    const/16 v12, 0x2e

    .line 158
    invoke-static {v6, v7, v12, v8, v9}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v72, v0

    add-long v0, v74, v78

    const/16 v12, 0x13

    .line 159
    move-wide/from16 v74, v6

    move-wide/from16 v6, v78

    invoke-static {v6, v7, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    move-wide/from16 v78, v0

    add-long v0, v30, v53

    const/16 v12, 0x2a

    .line 160
    move-wide/from16 v30, v10

    move-wide/from16 v10, v53

    invoke-static {v10, v11, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    add-long v4, v4, v60

    const/16 v12, 0x2c

    .line 161
    move-wide/from16 v53, v0

    move-wide/from16 v0, v60

    invoke-static {v0, v1, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v60, v4

    add-long v4, v64, v48

    const/16 v12, 0x19

    .line 162
    move-wide/from16 v64, v8

    move-wide/from16 v8, v48

    invoke-static {v8, v9, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    add-long/2addr v2, v6

    .line 164
    const/16 v12, 0x9

    invoke-static {v6, v7, v12, v2, v3}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long/2addr v13, v0

    const/16 v12, 0x30

    .line 165
    invoke-static {v0, v1, v12, v13, v14}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v48, v6

    add-long v6, v64, v10

    const/16 v12, 0x23

    .line 166
    invoke-static {v10, v11, v12, v6, v7}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v10

    move-wide/from16 v64, v10

    add-long v10, v30, v8

    const/16 v12, 0x34

    .line 167
    invoke-static {v8, v9, v12, v10, v11}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v30, v0

    add-long v0, v53, v74

    const/16 v12, 0x17

    .line 168
    move-wide/from16 v53, v8

    move-wide/from16 v8, v74

    invoke-static {v8, v9, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v8

    move-wide/from16 v74, v0

    add-long v0, v60, v72

    .line 169
    move-wide/from16 v60, v6

    move-wide/from16 v6, v72

    const/16 v12, 0x1f

    invoke-static {v6, v7, v12, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    add-long v4, v4, v76

    .line 170
    move-wide/from16 v36, v0

    move-wide/from16 v0, v76

    const/16 v12, 0x25

    invoke-static {v0, v1, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v0

    move-wide/from16 v42, v4

    add-long v4, v78, v70

    .line 171
    move-wide/from16 v72, v6

    move-wide/from16 v6, v70

    const/16 v12, 0x14

    invoke-static {v6, v7, v12, v4, v5}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->rotlXor(JIJ)J

    move-result-wide v6

    .line 176
    aget-wide v70, v51, v15

    add-long v2, v2, v70

    .line 177
    aget-wide v70, v51, v45

    add-long v8, v8, v70

    .line 178
    aget-wide v45, v51, v46

    add-long v13, v13, v45

    .line 179
    aget-wide v45, v51, v24

    add-long v0, v0, v45

    .line 180
    aget-wide v24, v51, v25

    add-long v10, v10, v24

    .line 181
    aget-wide v24, v51, v62

    add-long v24, v72, v24

    .line 182
    aget-wide v45, v51, v63

    add-long v45, v60, v45

    .line 183
    aget-wide v60, v51, v66

    add-long v6, v6, v60

    .line 184
    aget-wide v60, v51, v67

    add-long v36, v36, v60

    .line 185
    aget-wide v57, v51, v58

    add-long v61, v53, v57

    .line 186
    aget-wide v53, v51, v59

    add-long v42, v42, v53

    .line 187
    aget-wide v53, v51, v55

    add-long v30, v30, v53

    .line 188
    aget-wide v53, v51, v56

    add-long v4, v4, v53

    .line 189
    aget-wide v53, v51, v19

    aget-wide v19, v52, v20

    add-long v53, v53, v19

    add-long v65, v64, v53

    .line 190
    aget-wide v19, v51, v68

    const/4 v12, 0x2

    add-int/lit8 v28, v28, 0x2

    aget-wide v53, v52, v28

    add-long v19, v19, v53

    add-long v19, v74, v19

    const/16 v12, 0x10

    add-int/lit8 v27, v27, 0x10

    .line 191
    aget-wide v27, v51, v27

    add-long v27, v27, v80

    const-wide/16 v53, 0x1

    add-long v27, v27, v53

    add-long v67, v48, v27

    add-int/lit8 v12, v40, 0x2

    move-wide/from16 v59, v6

    move-wide/from16 v48, v19

    move-wide/from16 v57, v24

    move-wide/from16 v63, v30

    move-wide/from16 v30, v36

    move-wide/from16 v36, v42

    move-wide/from16 v24, v45

    const/4 v15, 0x4

    move-wide/from16 v42, v4

    move-wide/from16 v19, v10

    move-object/from16 v4, v34

    move-wide v5, v0

    move-wide v10, v8

    move v9, v12

    move-object/from16 v1, v51

    const/4 v12, 0x2

    move-object/from16 v0, p0

    move-wide v7, v2

    move-object/from16 v3, v33

    move-object/from16 v2, v52

    goto/16 :goto_0

    :cond_0
    move-wide/from16 v27, v5

    move-wide v11, v10

    move-wide/from16 v45, v57

    move-wide/from16 v53, v59

    move-wide/from16 v2, v61

    move-wide/from16 v4, v63

    move-wide/from16 v9, v65

    move-wide/from16 v0, v67

    .line 198
    const/4 v6, 0x0

    aput-wide v7, p2, v6

    .line 199
    const/4 v6, 0x1

    aput-wide v11, p2, v6

    .line 200
    const/4 v6, 0x2

    aput-wide v13, p2, v6

    .line 201
    const/4 v6, 0x3

    aput-wide v27, p2, v6

    .line 202
    const/4 v6, 0x4

    aput-wide v19, p2, v6

    .line 203
    const/4 v6, 0x5

    aput-wide v45, p2, v6

    .line 204
    aput-wide v24, p2, v23

    .line 205
    aput-wide v53, p2, v26

    .line 206
    const/16 v6, 0x8

    aput-wide v30, p2, v6

    .line 207
    const/16 v6, 0x9

    aput-wide v2, p2, v6

    .line 208
    const/16 v2, 0xa

    aput-wide v36, p2, v2

    .line 209
    aput-wide v4, p2, v38

    .line 210
    const/16 v2, 0xc

    aput-wide v42, p2, v2

    .line 211
    const/16 v2, 0xd

    aput-wide v9, p2, v2

    .line 212
    aput-wide v48, p2, v47

    .line 213
    aput-wide v0, p2, v50

    return-void

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 215
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
