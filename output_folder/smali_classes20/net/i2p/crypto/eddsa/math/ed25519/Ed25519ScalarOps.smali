.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519ScalarOps;
.super Ljava/lang/Object;
.source "Ed25519ScalarOps.java"

# interfaces
.implements Lnet/i2p/crypto/eddsa/math/ScalarOps;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiplyAndAdd([B[B[B)[B
    .locals 194
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .param p3, "c"    # [B

    .line 342
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v4

    const v5, 0x1fffff

    and-int/2addr v4, v5

    int-to-long v6, v4

    .line 343
    .local v6, "a0":J
    const/4 v4, 0x2

    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v8

    const/4 v10, 0x5

    shr-long/2addr v8, v10

    const-wide/32 v11, 0x1fffff

    and-long/2addr v8, v11

    .line 344
    .local v8, "a1":J
    invoke-static {v0, v10}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    shr-int/2addr v13, v4

    and-int/2addr v13, v5

    int-to-long v13, v13

    .line 345
    .local v13, "a2":J
    const/4 v15, 0x7

    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    shr-long v16, v16, v15

    and-long v16, v16, v11

    .line 346
    .local v16, "a3":J
    const/16 v3, 0xa

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v19

    const/16 v21, 0x4

    shr-long v19, v19, v21

    and-long v19, v19, v11

    .line 347
    .local v19, "a4":J
    const/16 v3, 0xd

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v23

    const/16 v24, 0x1

    shr-int/lit8 v23, v23, 0x1

    and-int v3, v23, v5

    int-to-long v4, v3

    .line 348
    .local v4, "a5":J
    const/16 v3, 0xf

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v26

    const/16 v28, 0x6

    shr-long v26, v26, v28

    and-long v26, v26, v11

    .line 349
    .local v26, "a6":J
    const/16 v3, 0x12

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v29

    const/16 v30, 0x3

    shr-int/lit8 v29, v29, 0x3

    const v23, 0x1fffff

    and-int v3, v29, v23

    int-to-long v11, v3

    .line 350
    .local v11, "a7":J
    const/16 v3, 0x15

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v29

    and-int v3, v29, v23

    move-wide/from16 v33, v11

    .end local v11    # "a7":J
    .local v33, "a7":J
    int-to-long v10, v3

    .line 351
    .local v10, "a8":J
    const/16 v3, 0x17

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v35

    const/4 v3, 0x5

    shr-long v35, v35, v3

    const-wide/32 v31, 0x1fffff

    and-long v35, v35, v31

    .line 352
    .local v35, "a9":J
    const/16 v3, 0x1a

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v3

    const/4 v12, 0x2

    shr-int/2addr v3, v12

    and-int v3, v3, v23

    move-wide/from16 v37, v10

    .end local v10    # "a8":J
    .local v37, "a8":J
    int-to-long v10, v3

    .line 353
    .local v10, "a10":J
    const/16 v3, 0x1c

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v39

    shr-long v39, v39, v15

    .line 354
    .local v39, "a11":J
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v12

    and-int v3, v12, v23

    move-wide/from16 v41, v10

    .end local v10    # "a10":J
    .local v41, "a10":J
    int-to-long v10, v3

    .line 355
    .local v10, "b0":J
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v43

    const/4 v12, 0x5

    shr-long v43, v43, v12

    const-wide/32 v31, 0x1fffff

    and-long v43, v43, v31

    .line 356
    .local v43, "b1":J
    invoke-static {v1, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v25

    shr-int/lit8 v12, v25, 0x2

    and-int v3, v12, v23

    move-wide/from16 v45, v4

    .end local v4    # "a5":J
    .local v45, "a5":J
    int-to-long v3, v3

    .line 357
    .local v3, "b2":J
    invoke-static {v1, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v47

    shr-long v47, v47, v15

    and-long v47, v47, v31

    .line 358
    .local v47, "b3":J
    const/16 v5, 0xa

    invoke-static {v1, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v49

    shr-long v49, v49, v21

    and-long v49, v49, v31

    .line 359
    .local v49, "b4":J
    const/16 v5, 0xd

    invoke-static {v1, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v12

    shr-int/lit8 v5, v12, 0x1

    const v12, 0x1fffff

    and-int/2addr v5, v12

    move-wide/from16 v51, v13

    .end local v13    # "a2":J
    .local v51, "a2":J
    int-to-long v12, v5

    .line 360
    .local v12, "b5":J
    const/16 v5, 0xf

    invoke-static {v1, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v53

    shr-long v53, v53, v28

    and-long v53, v53, v31

    .line 361
    .local v53, "b6":J
    const/16 v5, 0x12

    invoke-static {v1, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v5, v14, 0x3

    const v14, 0x1fffff

    and-int/2addr v5, v14

    int-to-long v14, v5

    .line 362
    .local v14, "b7":J
    const/16 v5, 0x15

    invoke-static {v1, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v55

    const v5, 0x1fffff

    and-int v0, v55, v5

    move-wide/from16 v55, v6

    .end local v6    # "a0":J
    .local v55, "a0":J
    int-to-long v5, v0

    .line 363
    .local v5, "b8":J
    const/16 v0, 0x17

    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v57

    const/4 v0, 0x5

    shr-long v57, v57, v0

    const-wide/32 v31, 0x1fffff

    and-long v57, v57, v31

    .line 364
    .local v57, "b9":J
    const/16 v0, 0x1a

    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v0

    const/4 v7, 0x2

    shr-int/2addr v0, v7

    const v7, 0x1fffff

    and-int/2addr v0, v7

    move-wide/from16 v59, v8

    .end local v8    # "a1":J
    .local v59, "a1":J
    int-to-long v7, v0

    .line 365
    .local v7, "b10":J
    const/16 v0, 0x1c

    invoke-static {v1, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v61

    const/4 v0, 0x7

    shr-long v61, v61, v0

    .line 366
    .local v61, "b11":J
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const v0, 0x1fffff

    and-int/2addr v9, v0

    int-to-long v0, v9

    .line 367
    .local v0, "c0":J
    const/4 v9, 0x2

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v63

    const/4 v9, 0x5

    shr-long v63, v63, v9

    const-wide/32 v31, 0x1fffff

    and-long v63, v63, v31

    .line 368
    .local v63, "c1":J
    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v65

    const/4 v9, 0x2

    shr-int/lit8 v65, v65, 0x2

    move-wide/from16 v66, v7

    const v9, 0x1fffff

    .end local v7    # "b10":J
    .local v66, "b10":J
    and-int v7, v65, v9

    int-to-long v7, v7

    .line 369
    .local v7, "c2":J
    const/4 v9, 0x7

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v68

    shr-long v68, v68, v9

    and-long v68, v68, v31

    .line 370
    .local v68, "c3":J
    const/16 v9, 0xa

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v70

    shr-long v70, v70, v21

    and-long v70, v70, v31

    .line 371
    .local v70, "c4":J
    const/16 v9, 0xd

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v65

    shr-int/lit8 v9, v65, 0x1

    const v23, 0x1fffff

    and-int v9, v9, v23

    move-wide/from16 v72, v5

    .end local v5    # "b8":J
    .local v72, "b8":J
    int-to-long v5, v9

    .line 372
    .local v5, "c5":J
    const/16 v9, 0xf

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v74

    shr-long v74, v74, v28

    and-long v74, v74, v31

    .line 373
    .local v74, "c6":J
    const/16 v9, 0x12

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v65

    shr-int/lit8 v9, v65, 0x3

    and-int v9, v9, v23

    move-wide/from16 v76, v14

    .end local v14    # "b7":J
    .local v76, "b7":J
    int-to-long v14, v9

    .line 374
    .local v14, "c7":J
    const/16 v9, 0x15

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v65

    and-int v9, v65, v23

    move-wide/from16 v78, v14

    .end local v14    # "c7":J
    .local v78, "c7":J
    int-to-long v14, v9

    .line 375
    .local v14, "c8":J
    const/16 v9, 0x17

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v80

    const/4 v9, 0x5

    shr-long v80, v80, v9

    const-wide/32 v31, 0x1fffff

    and-long v31, v80, v31

    .line 376
    .local v31, "c9":J
    const/16 v9, 0x1a

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const/16 v25, 0x2

    shr-int/lit8 v9, v9, 0x2

    and-int v9, v9, v23

    move-wide/from16 v80, v14

    .end local v14    # "c8":J
    .local v80, "c8":J
    int-to-long v14, v9

    .line 377
    .local v14, "c10":J
    const/16 v9, 0x1c

    invoke-static {v2, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v82

    const/4 v9, 0x7

    shr-long v82, v82, v9

    .line 426
    .local v82, "c11":J
    mul-long v84, v55, v10

    add-long v84, v0, v84

    .line 427
    .local v84, "s0":J
    mul-long v86, v55, v43

    add-long v86, v63, v86

    mul-long v88, v59, v10

    add-long v86, v86, v88

    .line 428
    .local v86, "s1":J
    mul-long v88, v55, v3

    add-long v88, v7, v88

    mul-long v90, v59, v43

    add-long v88, v88, v90

    mul-long v90, v51, v10

    add-long v88, v88, v90

    .line 429
    .local v88, "s2":J
    mul-long v90, v55, v47

    add-long v90, v68, v90

    mul-long v92, v59, v3

    add-long v90, v90, v92

    mul-long v92, v51, v43

    add-long v90, v90, v92

    mul-long v92, v16, v10

    add-long v90, v90, v92

    .line 430
    .local v90, "s3":J
    mul-long v92, v55, v49

    add-long v92, v70, v92

    mul-long v94, v59, v47

    add-long v92, v92, v94

    mul-long v94, v51, v3

    add-long v92, v92, v94

    mul-long v94, v16, v43

    add-long v92, v92, v94

    mul-long v94, v19, v10

    add-long v92, v92, v94

    .line 431
    .local v92, "s4":J
    mul-long v94, v55, v12

    add-long v94, v5, v94

    mul-long v96, v59, v49

    add-long v94, v94, v96

    mul-long v96, v51, v47

    add-long v94, v94, v96

    mul-long v96, v16, v3

    add-long v94, v94, v96

    mul-long v96, v19, v43

    add-long v94, v94, v96

    mul-long v96, v45, v10

    add-long v94, v94, v96

    .line 432
    .local v94, "s5":J
    mul-long v96, v55, v53

    add-long v96, v74, v96

    mul-long v98, v59, v12

    add-long v96, v96, v98

    mul-long v98, v51, v49

    add-long v96, v96, v98

    mul-long v98, v16, v47

    add-long v96, v96, v98

    mul-long v98, v19, v3

    add-long v96, v96, v98

    mul-long v98, v45, v43

    add-long v96, v96, v98

    mul-long v98, v26, v10

    add-long v96, v96, v98

    .line 433
    .local v96, "s6":J
    mul-long v98, v55, v76

    add-long v98, v78, v98

    mul-long v100, v59, v53

    add-long v98, v98, v100

    mul-long v100, v51, v12

    add-long v98, v98, v100

    mul-long v100, v16, v49

    add-long v98, v98, v100

    mul-long v100, v19, v47

    add-long v98, v98, v100

    mul-long v100, v45, v3

    add-long v98, v98, v100

    mul-long v100, v26, v43

    add-long v98, v98, v100

    mul-long v100, v33, v10

    add-long v98, v98, v100

    .line 434
    .local v98, "s7":J
    mul-long v100, v55, v72

    add-long v100, v80, v100

    mul-long v102, v59, v76

    add-long v100, v100, v102

    mul-long v102, v51, v53

    add-long v100, v100, v102

    mul-long v102, v16, v12

    add-long v100, v100, v102

    mul-long v102, v19, v49

    add-long v100, v100, v102

    mul-long v102, v45, v47

    add-long v100, v100, v102

    mul-long v102, v26, v3

    add-long v100, v100, v102

    mul-long v102, v33, v43

    add-long v100, v100, v102

    mul-long v102, v37, v10

    add-long v100, v100, v102

    .line 435
    .local v100, "s8":J
    mul-long v102, v55, v57

    add-long v102, v31, v102

    mul-long v104, v59, v72

    add-long v102, v102, v104

    mul-long v104, v51, v76

    add-long v102, v102, v104

    mul-long v104, v16, v53

    add-long v102, v102, v104

    mul-long v104, v19, v12

    add-long v102, v102, v104

    mul-long v104, v45, v49

    add-long v102, v102, v104

    mul-long v104, v26, v47

    add-long v102, v102, v104

    mul-long v104, v33, v3

    add-long v102, v102, v104

    mul-long v104, v37, v43

    add-long v102, v102, v104

    mul-long v104, v35, v10

    add-long v102, v102, v104

    .line 436
    .local v102, "s9":J
    mul-long v104, v55, v66

    add-long v104, v14, v104

    mul-long v106, v59, v57

    add-long v104, v104, v106

    mul-long v106, v51, v72

    add-long v104, v104, v106

    mul-long v106, v16, v76

    add-long v104, v104, v106

    mul-long v106, v19, v53

    add-long v104, v104, v106

    mul-long v106, v45, v12

    add-long v104, v104, v106

    mul-long v106, v26, v49

    add-long v104, v104, v106

    mul-long v106, v33, v47

    add-long v104, v104, v106

    mul-long v106, v37, v3

    add-long v104, v104, v106

    mul-long v106, v35, v43

    add-long v104, v104, v106

    mul-long v106, v41, v10

    add-long v104, v104, v106

    .line 437
    .local v104, "s10":J
    mul-long v106, v55, v61

    add-long v106, v82, v106

    mul-long v108, v59, v66

    add-long v106, v106, v108

    mul-long v108, v51, v57

    add-long v106, v106, v108

    mul-long v108, v16, v72

    add-long v106, v106, v108

    mul-long v108, v19, v76

    add-long v106, v106, v108

    mul-long v108, v45, v53

    add-long v106, v106, v108

    mul-long v108, v26, v12

    add-long v106, v106, v108

    mul-long v108, v33, v49

    add-long v106, v106, v108

    mul-long v108, v37, v47

    add-long v106, v106, v108

    mul-long v108, v35, v3

    add-long v106, v106, v108

    mul-long v108, v41, v43

    add-long v106, v106, v108

    mul-long v108, v39, v10

    add-long v106, v106, v108

    .line 438
    .local v106, "s11":J
    mul-long v108, v59, v61

    mul-long v110, v51, v66

    add-long v108, v108, v110

    mul-long v110, v16, v57

    add-long v108, v108, v110

    mul-long v110, v19, v72

    add-long v108, v108, v110

    mul-long v110, v45, v76

    add-long v108, v108, v110

    mul-long v110, v26, v53

    add-long v108, v108, v110

    mul-long v110, v33, v12

    add-long v108, v108, v110

    mul-long v110, v37, v49

    add-long v108, v108, v110

    mul-long v110, v35, v47

    add-long v108, v108, v110

    mul-long v110, v41, v3

    add-long v108, v108, v110

    mul-long v110, v39, v43

    add-long v108, v108, v110

    .line 439
    .local v108, "s12":J
    mul-long v110, v51, v61

    mul-long v112, v16, v66

    add-long v110, v110, v112

    mul-long v112, v19, v57

    add-long v110, v110, v112

    mul-long v112, v45, v72

    add-long v110, v110, v112

    mul-long v112, v26, v76

    add-long v110, v110, v112

    mul-long v112, v33, v53

    add-long v110, v110, v112

    mul-long v112, v37, v12

    add-long v110, v110, v112

    mul-long v112, v35, v49

    add-long v110, v110, v112

    mul-long v112, v41, v47

    add-long v110, v110, v112

    mul-long v112, v39, v3

    add-long v110, v110, v112

    .line 440
    .local v110, "s13":J
    mul-long v112, v16, v61

    mul-long v114, v19, v66

    add-long v112, v112, v114

    mul-long v114, v45, v57

    add-long v112, v112, v114

    mul-long v114, v26, v72

    add-long v112, v112, v114

    mul-long v114, v33, v76

    add-long v112, v112, v114

    mul-long v114, v37, v53

    add-long v112, v112, v114

    mul-long v114, v35, v12

    add-long v112, v112, v114

    mul-long v114, v41, v49

    add-long v112, v112, v114

    mul-long v114, v39, v47

    add-long v112, v112, v114

    .line 441
    .local v112, "s14":J
    mul-long v114, v19, v61

    mul-long v116, v45, v66

    add-long v114, v114, v116

    mul-long v116, v26, v57

    add-long v114, v114, v116

    mul-long v116, v33, v72

    add-long v114, v114, v116

    mul-long v116, v37, v76

    add-long v114, v114, v116

    mul-long v116, v35, v53

    add-long v114, v114, v116

    mul-long v116, v41, v12

    add-long v114, v114, v116

    mul-long v116, v39, v49

    add-long v114, v114, v116

    .line 442
    .local v114, "s15":J
    mul-long v116, v45, v61

    mul-long v118, v26, v66

    add-long v116, v116, v118

    mul-long v118, v33, v57

    add-long v116, v116, v118

    mul-long v118, v37, v72

    add-long v116, v116, v118

    mul-long v118, v35, v76

    add-long v116, v116, v118

    mul-long v118, v41, v53

    add-long v116, v116, v118

    mul-long v118, v39, v12

    add-long v116, v116, v118

    .line 443
    .local v116, "s16":J
    mul-long v118, v26, v61

    mul-long v120, v33, v66

    add-long v118, v118, v120

    mul-long v120, v37, v57

    add-long v118, v118, v120

    mul-long v120, v35, v72

    add-long v118, v118, v120

    mul-long v120, v41, v76

    add-long v118, v118, v120

    mul-long v120, v39, v53

    add-long v118, v118, v120

    .line 444
    .local v118, "s17":J
    mul-long v120, v33, v61

    mul-long v122, v37, v66

    add-long v120, v120, v122

    mul-long v122, v35, v57

    add-long v120, v120, v122

    mul-long v122, v41, v72

    add-long v120, v120, v122

    mul-long v122, v39, v76

    add-long v120, v120, v122

    .line 445
    .local v120, "s18":J
    mul-long v122, v37, v61

    mul-long v124, v35, v66

    add-long v122, v122, v124

    mul-long v124, v41, v57

    add-long v122, v122, v124

    mul-long v124, v39, v72

    add-long v122, v122, v124

    .line 446
    .local v122, "s19":J
    mul-long v124, v35, v61

    mul-long v126, v41, v66

    add-long v124, v124, v126

    mul-long v126, v39, v57

    add-long v124, v124, v126

    .line 447
    .local v124, "s20":J
    mul-long v126, v41, v61

    mul-long v128, v39, v66

    add-long v126, v126, v128

    .line 448
    .local v126, "s21":J
    mul-long v128, v39, v61

    .line 452
    .local v128, "s22":J
    const-wide/32 v130, 0x100000

    add-long v132, v84, v130

    const/16 v9, 0x15

    shr-long v132, v132, v9

    .local v132, "carry0":J
    add-long v86, v86, v132

    shl-long v134, v132, v9

    sub-long v84, v84, v134

    .line 453
    add-long v134, v88, v130

    shr-long v134, v134, v9

    .local v134, "carry2":J
    add-long v90, v90, v134

    shl-long v136, v134, v9

    sub-long v88, v88, v136

    .line 454
    add-long v136, v92, v130

    shr-long v136, v136, v9

    .local v136, "carry4":J
    add-long v94, v94, v136

    shl-long v138, v136, v9

    sub-long v92, v92, v138

    .line 455
    add-long v138, v96, v130

    shr-long v138, v138, v9

    .local v138, "carry6":J
    add-long v98, v98, v138

    shl-long v140, v138, v9

    sub-long v96, v96, v140

    .line 456
    add-long v140, v100, v130

    shr-long v140, v140, v9

    .local v140, "carry8":J
    add-long v102, v102, v140

    shl-long v142, v140, v9

    sub-long v100, v100, v142

    .line 457
    add-long v142, v104, v130

    shr-long v142, v142, v9

    .local v142, "carry10":J
    add-long v106, v106, v142

    shl-long v144, v142, v9

    sub-long v104, v104, v144

    .line 458
    add-long v144, v108, v130

    shr-long v144, v144, v9

    .local v144, "carry12":J
    add-long v110, v110, v144

    shl-long v146, v144, v9

    sub-long v108, v108, v146

    .line 459
    add-long v146, v112, v130

    shr-long v146, v146, v9

    .local v146, "carry14":J
    add-long v114, v114, v146

    shl-long v148, v146, v9

    sub-long v112, v112, v148

    .line 460
    add-long v148, v116, v130

    shr-long v148, v148, v9

    .local v148, "carry16":J
    add-long v118, v118, v148

    shl-long v150, v148, v9

    sub-long v116, v116, v150

    .line 461
    add-long v150, v120, v130

    shr-long v150, v150, v9

    .local v150, "carry18":J
    add-long v122, v122, v150

    shl-long v152, v150, v9

    sub-long v120, v120, v152

    .line 462
    add-long v152, v124, v130

    shr-long v152, v152, v9

    .local v152, "carry20":J
    add-long v126, v126, v152

    shl-long v154, v152, v9

    sub-long v124, v124, v154

    .line 464
    add-long v154, v128, v130

    shr-long v154, v154, v9

    .local v154, "carry22":J
    move-wide/from16 v156, v154

    .local v156, "s23":J
    shl-long v158, v154, v9

    sub-long v128, v128, v158

    .line 466
    add-long v158, v86, v130

    shr-long v158, v158, v9

    .local v158, "carry1":J
    add-long v88, v88, v158

    shl-long v160, v158, v9

    sub-long v86, v86, v160

    .line 467
    add-long v160, v90, v130

    shr-long v160, v160, v9

    .local v160, "carry3":J
    add-long v92, v92, v160

    shl-long v162, v160, v9

    sub-long v90, v90, v162

    .line 468
    add-long v162, v94, v130

    shr-long v162, v162, v9

    .local v162, "carry5":J
    add-long v96, v96, v162

    shl-long v164, v162, v9

    sub-long v94, v94, v164

    .line 469
    add-long v164, v98, v130

    shr-long v164, v164, v9

    .local v164, "carry7":J
    add-long v100, v100, v164

    shl-long v166, v164, v9

    sub-long v98, v98, v166

    .line 470
    add-long v166, v102, v130

    shr-long v166, v166, v9

    .local v166, "carry9":J
    add-long v104, v104, v166

    shl-long v168, v166, v9

    sub-long v102, v102, v168

    .line 471
    add-long v168, v106, v130

    shr-long v168, v168, v9

    .local v168, "carry11":J
    add-long v108, v108, v168

    shl-long v170, v168, v9

    sub-long v106, v106, v170

    .line 472
    add-long v170, v110, v130

    shr-long v170, v170, v9

    .local v170, "carry13":J
    add-long v112, v112, v170

    shl-long v172, v170, v9

    sub-long v110, v110, v172

    .line 473
    add-long v172, v114, v130

    shr-long v172, v172, v9

    .local v172, "carry15":J
    add-long v116, v116, v172

    shl-long v174, v172, v9

    sub-long v114, v114, v174

    .line 474
    add-long v174, v118, v130

    shr-long v174, v174, v9

    .local v174, "carry17":J
    add-long v120, v120, v174

    shl-long v176, v174, v9

    sub-long v118, v118, v176

    .line 475
    add-long v176, v122, v130

    shr-long v176, v176, v9

    .local v176, "carry19":J
    add-long v124, v124, v176

    shl-long v178, v176, v9

    sub-long v122, v122, v178

    .line 476
    add-long v178, v126, v130

    shr-long v178, v178, v9

    .local v178, "carry21":J
    add-long v128, v128, v178

    shl-long v180, v178, v9

    sub-long v126, v126, v180

    .line 478
    const-wide/32 v180, 0xa2c13

    mul-long v182, v156, v180

    add-long v106, v106, v182

    .line 479
    const-wide/32 v182, 0x72d18

    mul-long v184, v156, v182

    add-long v108, v108, v184

    .line 480
    const-wide/32 v184, 0x9fb67

    mul-long v186, v156, v184

    add-long v110, v110, v186

    .line 481
    const-wide/32 v186, 0xf39ad

    mul-long v188, v156, v186

    sub-long v112, v112, v188

    .line 482
    const-wide/32 v188, 0x215d1

    mul-long v190, v156, v188

    add-long v114, v114, v190

    .line 483
    const-wide/32 v190, 0xa6f7d

    mul-long v192, v156, v190

    sub-long v116, v116, v192

    .line 487
    mul-long v192, v128, v180

    add-long v104, v104, v192

    .line 488
    mul-long v192, v128, v182

    add-long v106, v106, v192

    .line 489
    mul-long v192, v128, v184

    add-long v108, v108, v192

    .line 490
    mul-long v192, v128, v186

    sub-long v110, v110, v192

    .line 491
    mul-long v192, v128, v188

    add-long v112, v112, v192

    .line 492
    mul-long v192, v128, v190

    sub-long v114, v114, v192

    .line 496
    mul-long v192, v126, v180

    add-long v102, v102, v192

    .line 497
    mul-long v192, v126, v182

    add-long v104, v104, v192

    .line 498
    mul-long v192, v126, v184

    add-long v106, v106, v192

    .line 499
    mul-long v192, v126, v186

    sub-long v108, v108, v192

    .line 500
    mul-long v192, v126, v188

    add-long v110, v110, v192

    .line 501
    mul-long v192, v126, v190

    sub-long v112, v112, v192

    .line 505
    mul-long v192, v124, v180

    add-long v100, v100, v192

    .line 506
    mul-long v192, v124, v182

    add-long v102, v102, v192

    .line 507
    mul-long v192, v124, v184

    add-long v104, v104, v192

    .line 508
    mul-long v192, v124, v186

    sub-long v106, v106, v192

    .line 509
    mul-long v192, v124, v188

    add-long v108, v108, v192

    .line 510
    mul-long v192, v124, v190

    sub-long v110, v110, v192

    .line 514
    mul-long v192, v122, v180

    add-long v98, v98, v192

    .line 515
    mul-long v192, v122, v182

    add-long v100, v100, v192

    .line 516
    mul-long v192, v122, v184

    add-long v102, v102, v192

    .line 517
    mul-long v192, v122, v186

    sub-long v104, v104, v192

    .line 518
    mul-long v192, v122, v188

    add-long v106, v106, v192

    .line 519
    mul-long v192, v122, v190

    sub-long v108, v108, v192

    .line 523
    mul-long v192, v120, v180

    add-long v96, v96, v192

    .line 524
    mul-long v192, v120, v182

    add-long v98, v98, v192

    .line 525
    mul-long v192, v120, v184

    add-long v100, v100, v192

    .line 526
    mul-long v192, v120, v186

    sub-long v102, v102, v192

    .line 527
    mul-long v192, v120, v188

    add-long v104, v104, v192

    .line 528
    mul-long v192, v120, v190

    sub-long v106, v106, v192

    .line 532
    add-long v192, v96, v130

    const/16 v9, 0x15

    shr-long v138, v192, v9

    add-long v98, v98, v138

    shl-long v192, v138, v9

    sub-long v96, v96, v192

    .line 533
    add-long v192, v100, v130

    shr-long v140, v192, v9

    add-long v102, v102, v140

    shl-long v192, v140, v9

    sub-long v100, v100, v192

    .line 534
    add-long v192, v104, v130

    shr-long v142, v192, v9

    add-long v106, v106, v142

    shl-long v192, v142, v9

    sub-long v104, v104, v192

    .line 535
    add-long v192, v108, v130

    shr-long v144, v192, v9

    add-long v110, v110, v144

    shl-long v192, v144, v9

    sub-long v108, v108, v192

    .line 536
    add-long v192, v112, v130

    shr-long v146, v192, v9

    add-long v114, v114, v146

    shl-long v192, v146, v9

    sub-long v112, v112, v192

    .line 537
    add-long v192, v116, v130

    shr-long v148, v192, v9

    add-long v118, v118, v148

    shl-long v192, v148, v9

    sub-long v116, v116, v192

    .line 539
    add-long v192, v98, v130

    shr-long v164, v192, v9

    add-long v100, v100, v164

    shl-long v192, v164, v9

    sub-long v98, v98, v192

    .line 540
    add-long v192, v102, v130

    shr-long v166, v192, v9

    add-long v104, v104, v166

    shl-long v192, v166, v9

    sub-long v102, v102, v192

    .line 541
    add-long v192, v106, v130

    shr-long v168, v192, v9

    add-long v108, v108, v168

    shl-long v192, v168, v9

    sub-long v106, v106, v192

    .line 542
    add-long v192, v110, v130

    shr-long v170, v192, v9

    add-long v112, v112, v170

    shl-long v192, v170, v9

    sub-long v110, v110, v192

    .line 543
    add-long v192, v114, v130

    shr-long v172, v192, v9

    add-long v116, v116, v172

    shl-long v192, v172, v9

    sub-long v114, v114, v192

    .line 545
    mul-long v192, v118, v180

    add-long v94, v94, v192

    .line 546
    mul-long v192, v118, v182

    add-long v96, v96, v192

    .line 547
    mul-long v192, v118, v184

    add-long v98, v98, v192

    .line 548
    mul-long v192, v118, v186

    sub-long v100, v100, v192

    .line 549
    mul-long v192, v118, v188

    add-long v102, v102, v192

    .line 550
    mul-long v192, v118, v190

    sub-long v104, v104, v192

    .line 554
    mul-long v192, v116, v180

    add-long v92, v92, v192

    .line 555
    mul-long v192, v116, v182

    add-long v94, v94, v192

    .line 556
    mul-long v192, v116, v184

    add-long v96, v96, v192

    .line 557
    mul-long v192, v116, v186

    sub-long v98, v98, v192

    .line 558
    mul-long v192, v116, v188

    add-long v100, v100, v192

    .line 559
    mul-long v192, v116, v190

    sub-long v102, v102, v192

    .line 563
    mul-long v192, v114, v180

    add-long v90, v90, v192

    .line 564
    mul-long v192, v114, v182

    add-long v92, v92, v192

    .line 565
    mul-long v192, v114, v184

    add-long v94, v94, v192

    .line 566
    mul-long v192, v114, v186

    sub-long v96, v96, v192

    .line 567
    mul-long v192, v114, v188

    add-long v98, v98, v192

    .line 568
    mul-long v192, v114, v190

    sub-long v100, v100, v192

    .line 572
    mul-long v192, v112, v180

    add-long v88, v88, v192

    .line 573
    mul-long v192, v112, v182

    add-long v90, v90, v192

    .line 574
    mul-long v192, v112, v184

    add-long v92, v92, v192

    .line 575
    mul-long v192, v112, v186

    sub-long v94, v94, v192

    .line 576
    mul-long v192, v112, v188

    add-long v96, v96, v192

    .line 577
    mul-long v192, v112, v190

    sub-long v98, v98, v192

    .line 581
    mul-long v192, v110, v180

    add-long v86, v86, v192

    .line 582
    mul-long v192, v110, v182

    add-long v88, v88, v192

    .line 583
    mul-long v192, v110, v184

    add-long v90, v90, v192

    .line 584
    mul-long v192, v110, v186

    sub-long v92, v92, v192

    .line 585
    mul-long v192, v110, v188

    add-long v94, v94, v192

    .line 586
    mul-long v192, v110, v190

    sub-long v96, v96, v192

    .line 590
    mul-long v192, v108, v180

    add-long v84, v84, v192

    .line 591
    mul-long v192, v108, v182

    add-long v86, v86, v192

    .line 592
    mul-long v192, v108, v184

    add-long v88, v88, v192

    .line 593
    mul-long v192, v108, v186

    sub-long v90, v90, v192

    .line 594
    mul-long v192, v108, v188

    add-long v92, v92, v192

    .line 595
    mul-long v192, v108, v190

    sub-long v94, v94, v192

    .line 599
    add-long v192, v84, v130

    const/16 v9, 0x15

    shr-long v132, v192, v9

    add-long v86, v86, v132

    shl-long v192, v132, v9

    sub-long v84, v84, v192

    .line 600
    add-long v192, v88, v130

    shr-long v134, v192, v9

    add-long v90, v90, v134

    shl-long v192, v134, v9

    sub-long v88, v88, v192

    .line 601
    add-long v192, v92, v130

    shr-long v136, v192, v9

    add-long v94, v94, v136

    shl-long v192, v136, v9

    sub-long v92, v92, v192

    .line 602
    add-long v192, v96, v130

    shr-long v138, v192, v9

    add-long v98, v98, v138

    shl-long v192, v138, v9

    sub-long v96, v96, v192

    .line 603
    add-long v192, v100, v130

    shr-long v140, v192, v9

    add-long v102, v102, v140

    shl-long v192, v140, v9

    sub-long v100, v100, v192

    .line 604
    add-long v192, v104, v130

    shr-long v142, v192, v9

    add-long v106, v106, v142

    shl-long v192, v142, v9

    sub-long v104, v104, v192

    .line 606
    add-long v192, v86, v130

    shr-long v158, v192, v9

    add-long v88, v88, v158

    shl-long v192, v158, v9

    sub-long v86, v86, v192

    .line 607
    add-long v192, v90, v130

    shr-long v160, v192, v9

    add-long v92, v92, v160

    shl-long v192, v160, v9

    sub-long v90, v90, v192

    .line 608
    add-long v192, v94, v130

    shr-long v162, v192, v9

    add-long v96, v96, v162

    shl-long v192, v162, v9

    sub-long v94, v94, v192

    .line 609
    add-long v192, v98, v130

    shr-long v164, v192, v9

    add-long v100, v100, v164

    shl-long v192, v164, v9

    sub-long v98, v98, v192

    .line 610
    add-long v192, v102, v130

    shr-long v166, v192, v9

    add-long v104, v104, v166

    shl-long v192, v166, v9

    sub-long v102, v102, v192

    .line 612
    add-long v130, v106, v130

    shr-long v130, v130, v9

    .end local v168    # "carry11":J
    .local v130, "carry11":J
    move-wide/from16 v108, v130

    shl-long v168, v130, v9

    sub-long v106, v106, v168

    .line 614
    mul-long v168, v108, v180

    add-long v84, v84, v168

    .line 615
    mul-long v168, v108, v182

    add-long v86, v86, v168

    .line 616
    mul-long v168, v108, v184

    add-long v88, v88, v168

    .line 617
    mul-long v168, v108, v186

    sub-long v90, v90, v168

    .line 618
    mul-long v168, v108, v188

    add-long v92, v92, v168

    .line 619
    mul-long v168, v108, v190

    sub-long v94, v94, v168

    .line 623
    const/16 v9, 0x15

    shr-long v132, v84, v9

    add-long v86, v86, v132

    shl-long v168, v132, v9

    sub-long v84, v84, v168

    .line 624
    shr-long v158, v86, v9

    add-long v88, v88, v158

    shl-long v168, v158, v9

    sub-long v86, v86, v168

    .line 625
    shr-long v134, v88, v9

    add-long v90, v90, v134

    shl-long v168, v134, v9

    sub-long v88, v88, v168

    .line 626
    shr-long v160, v90, v9

    add-long v92, v92, v160

    shl-long v168, v160, v9

    sub-long v90, v90, v168

    .line 627
    shr-long v136, v92, v9

    add-long v94, v94, v136

    shl-long v168, v136, v9

    sub-long v92, v92, v168

    .line 628
    shr-long v162, v94, v9

    add-long v96, v96, v162

    shl-long v168, v162, v9

    sub-long v94, v94, v168

    .line 629
    shr-long v138, v96, v9

    add-long v98, v98, v138

    shl-long v168, v138, v9

    sub-long v96, v96, v168

    .line 630
    shr-long v164, v98, v9

    add-long v100, v100, v164

    shl-long v168, v164, v9

    sub-long v98, v98, v168

    .line 631
    shr-long v140, v100, v9

    add-long v102, v102, v140

    shl-long v168, v140, v9

    sub-long v100, v100, v168

    .line 632
    shr-long v166, v102, v9

    add-long v104, v104, v166

    shl-long v168, v166, v9

    sub-long v102, v102, v168

    .line 633
    shr-long v142, v104, v9

    add-long v106, v106, v142

    shl-long v168, v142, v9

    sub-long v104, v104, v168

    .line 635
    shr-long v130, v106, v9

    move-wide/from16 v108, v130

    shl-long v168, v130, v9

    sub-long v106, v106, v168

    .line 637
    mul-long v180, v180, v108

    add-long v84, v84, v180

    .line 638
    mul-long v182, v182, v108

    add-long v86, v86, v182

    .line 639
    mul-long v184, v184, v108

    add-long v88, v88, v184

    .line 640
    mul-long v186, v186, v108

    sub-long v90, v90, v186

    .line 641
    mul-long v188, v188, v108

    add-long v92, v92, v188

    .line 642
    mul-long v190, v190, v108

    sub-long v94, v94, v190

    .line 646
    const/16 v9, 0x15

    shr-long v132, v84, v9

    add-long v86, v86, v132

    shl-long v168, v132, v9

    move-wide/from16 v180, v0

    .end local v0    # "c0":J
    .local v180, "c0":J
    sub-long v0, v84, v168

    .line 647
    .end local v84    # "s0":J
    .local v0, "s0":J
    shr-long v84, v86, v9

    .end local v158    # "carry1":J
    .local v84, "carry1":J
    add-long v88, v88, v84

    shl-long v158, v84, v9

    sub-long v86, v86, v158

    .line 648
    shr-long v134, v88, v9

    add-long v90, v90, v134

    shl-long v158, v134, v9

    sub-long v88, v88, v158

    .line 649
    shr-long v158, v90, v9

    .end local v160    # "carry3":J
    .local v158, "carry3":J
    add-long v92, v92, v158

    shl-long v160, v158, v9

    sub-long v90, v90, v160

    .line 650
    shr-long v136, v92, v9

    add-long v94, v94, v136

    shl-long v160, v136, v9

    sub-long v92, v92, v160

    .line 651
    shr-long v160, v94, v9

    .end local v162    # "carry5":J
    .local v160, "carry5":J
    add-long v96, v96, v160

    shl-long v162, v160, v9

    sub-long v94, v94, v162

    .line 652
    shr-long v138, v96, v9

    add-long v98, v98, v138

    shl-long v162, v138, v9

    sub-long v96, v96, v162

    .line 653
    shr-long v162, v98, v9

    .end local v164    # "carry7":J
    .local v162, "carry7":J
    add-long v100, v100, v162

    shl-long v164, v162, v9

    sub-long v98, v98, v164

    .line 654
    shr-long v140, v100, v9

    add-long v102, v102, v140

    shl-long v164, v140, v9

    move-wide/from16 v168, v3

    .end local v3    # "b2":J
    .local v168, "b2":J
    sub-long v2, v100, v164

    .line 655
    .end local v100    # "s8":J
    .local v2, "s8":J
    shr-long v100, v102, v9

    .end local v166    # "carry9":J
    .local v100, "carry9":J
    add-long v104, v104, v100

    shl-long v164, v100, v9

    sub-long v102, v102, v164

    .line 656
    shr-long v142, v104, v9

    add-long v106, v106, v142

    shl-long v164, v142, v9

    sub-long v104, v104, v164

    .line 658
    const/16 v4, 0x20

    new-array v4, v4, [B

    .line 659
    .local v4, "result":[B
    long-to-int v9, v0

    int-to-byte v9, v9

    const/16 v18, 0x0

    aput-byte v9, v4, v18

    .line 660
    const/16 v9, 0x8

    move-wide/from16 v164, v5

    .end local v5    # "c5":J
    .local v164, "c5":J
    shr-long v5, v0, v9

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v24

    .line 661
    const/16 v5, 0x10

    shr-long v5, v0, v5

    const/4 v9, 0x5

    shl-long v166, v86, v9

    or-long v5, v5, v166

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x2

    aput-byte v5, v4, v6

    .line 662
    shr-long v5, v86, v30

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v30

    .line 663
    const/16 v5, 0xb

    shr-long v5, v86, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v21

    .line 664
    const/16 v5, 0x13

    shr-long v5, v86, v5

    const/4 v9, 0x2

    shl-long v166, v88, v9

    or-long v5, v5, v166

    long-to-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x5

    aput-byte v5, v4, v6

    .line 665
    shr-long v5, v88, v28

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v28

    .line 666
    const/16 v5, 0xe

    shr-long v5, v88, v5

    const/4 v9, 0x7

    shl-long v166, v90, v9

    or-long v5, v5, v166

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    .line 667
    shr-long v5, v90, v24

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x8

    aput-byte v5, v4, v6

    .line 668
    const/16 v5, 0x9

    shr-long v5, v90, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x9

    aput-byte v5, v4, v6

    .line 669
    const/16 v5, 0x11

    shr-long v5, v90, v5

    shl-long v166, v92, v21

    or-long v5, v5, v166

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xa

    aput-byte v5, v4, v6

    .line 670
    shr-long v5, v92, v21

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xb

    aput-byte v5, v4, v6

    .line 671
    const/16 v5, 0xc

    shr-long v5, v92, v5

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xc

    aput-byte v5, v4, v6

    .line 672
    const/16 v5, 0x14

    shr-long v5, v92, v5

    shl-long v166, v94, v24

    or-long v5, v5, v166

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0xd

    aput-byte v5, v4, v6

    .line 673
    move-wide/from16 v166, v0

    const/4 v5, 0x7

    .end local v0    # "s0":J
    .local v166, "s0":J
    shr-long v0, v94, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xe

    aput-byte v0, v4, v1

    .line 674
    const/16 v0, 0xf

    shr-long v5, v94, v0

    shl-long v182, v96, v28

    or-long v5, v5, v182

    long-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 675
    const/4 v0, 0x2

    shr-long v5, v96, v0

    long-to-int v0, v5

    int-to-byte v0, v0

    const/16 v1, 0x10

    aput-byte v0, v4, v1

    .line 676
    const/16 v0, 0xa

    shr-long v0, v96, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x11

    aput-byte v0, v4, v1

    .line 677
    const/16 v0, 0x12

    shr-long v5, v96, v0

    shl-long v21, v98, v30

    or-long v5, v5, v21

    long-to-int v1, v5

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 678
    const/4 v0, 0x5

    shr-long v5, v98, v0

    long-to-int v0, v5

    int-to-byte v0, v0

    const/16 v1, 0x13

    aput-byte v0, v4, v1

    .line 679
    const/16 v0, 0xd

    shr-long v0, v98, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x14

    aput-byte v0, v4, v1

    .line 680
    long-to-int v0, v2

    int-to-byte v0, v0

    const/16 v1, 0x15

    aput-byte v0, v4, v1

    .line 681
    const/16 v0, 0x8

    shr-long v0, v2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x16

    aput-byte v0, v4, v1

    .line 682
    const/16 v0, 0x10

    shr-long v0, v2, v0

    const/4 v5, 0x5

    shl-long v5, v102, v5

    or-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x17

    aput-byte v0, v4, v1

    .line 683
    shr-long v0, v102, v30

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x18

    aput-byte v0, v4, v1

    .line 684
    const/16 v0, 0xb

    shr-long v0, v102, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x19

    aput-byte v0, v4, v1

    .line 685
    const/16 v0, 0x13

    shr-long v0, v102, v0

    const/4 v5, 0x2

    shl-long v5, v104, v5

    or-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1a

    aput-byte v0, v4, v1

    .line 686
    shr-long v0, v104, v28

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1b

    aput-byte v0, v4, v1

    .line 687
    const/16 v0, 0xe

    shr-long v0, v104, v0

    const/4 v5, 0x7

    shl-long v5, v106, v5

    or-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1c

    aput-byte v0, v4, v1

    .line 688
    shr-long v0, v106, v24

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    aput-byte v0, v4, v1

    .line 689
    const/16 v0, 0x9

    shr-long v0, v106, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    aput-byte v0, v4, v1

    .line 690
    const/16 v0, 0x11

    shr-long v0, v106, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, v4, v1

    .line 691
    return-object v4
.end method

.method public reduce([B)[B
    .locals 106
    .param p1, "s"    # [B

    .line 40
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v1

    const v2, 0x1fffff

    and-int/2addr v1, v2

    int-to-long v3, v1

    .line 41
    .local v3, "s0":J
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v5

    const/4 v7, 0x5

    shr-long/2addr v5, v7

    const-wide/32 v8, 0x1fffff

    and-long/2addr v5, v8

    .line 42
    .local v5, "s1":J
    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v10

    shr-int/2addr v10, v1

    and-int/2addr v10, v2

    int-to-long v10, v10

    .line 43
    .local v10, "s2":J
    const/4 v12, 0x7

    invoke-static {v0, v12}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v13

    shr-long/2addr v13, v12

    and-long/2addr v13, v8

    .line 44
    .local v13, "s3":J
    const/16 v15, 0xa

    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v16

    const/16 v18, 0x4

    shr-long v16, v16, v18

    and-long v16, v16, v8

    .line 45
    .local v16, "s4":J
    const/16 v15, 0xd

    invoke-static {v0, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v20

    const/16 v21, 0x1

    shr-int/lit8 v20, v20, 0x1

    and-int v15, v20, v2

    move-wide/from16 v22, v13

    .end local v13    # "s3":J
    .local v22, "s3":J
    int-to-long v12, v15

    .line 46
    .local v12, "s5":J
    const/16 v14, 0xf

    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v24

    const/4 v15, 0x6

    shr-long v24, v24, v15

    and-long v24, v24, v8

    .line 47
    .local v24, "s6":J
    const/16 v14, 0x12

    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v26

    const/16 v27, 0x3

    shr-int/lit8 v26, v26, 0x3

    and-int v14, v26, v2

    int-to-long v8, v14

    .line 48
    .local v8, "s7":J
    const/16 v14, 0x15

    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v26

    and-int v14, v26, v2

    move-wide/from16 v30, v3

    .end local v3    # "s0":J
    .local v30, "s0":J
    int-to-long v2, v14

    .line 49
    .local v2, "s8":J
    const/16 v4, 0x17

    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v32

    shr-long v32, v32, v7

    const-wide/32 v28, 0x1fffff

    and-long v32, v32, v28

    .line 50
    .local v32, "s9":J
    const/16 v4, 0x1a

    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v4

    shr-int/2addr v4, v1

    const v14, 0x1fffff

    and-int/2addr v4, v14

    move-wide/from16 v34, v2

    .end local v2    # "s8":J
    .local v34, "s8":J
    int-to-long v1, v4

    .line 51
    .local v1, "s10":J
    const/16 v3, 0x1c

    invoke-static {v0, v3}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v3

    const/16 v20, 0x7

    shr-long v3, v3, v20

    and-long v3, v3, v28

    .line 52
    .local v3, "s11":J
    const/16 v14, 0x1f

    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v36

    shr-long v36, v36, v18

    and-long v36, v36, v28

    .line 53
    .local v36, "s12":J
    const/16 v14, 0x22

    invoke-static {v0, v14}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v14

    shr-int/lit8 v14, v14, 0x1

    const v26, 0x1fffff

    and-int v14, v14, v26

    move-wide/from16 v38, v8

    .end local v8    # "s7":J
    .local v38, "s7":J
    int-to-long v7, v14

    .line 54
    .local v7, "s13":J
    const/16 v9, 0x24

    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v40

    shr-long v40, v40, v15

    and-long v40, v40, v28

    .line 55
    .local v40, "s14":J
    const/16 v9, 0x27

    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    shr-int/lit8 v9, v9, 0x3

    and-int v9, v9, v26

    move-wide/from16 v42, v5

    .end local v5    # "s1":J
    .local v42, "s1":J
    int-to-long v5, v9

    .line 56
    .local v5, "s15":J
    const/16 v9, 0x2a

    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    and-int v9, v9, v26

    move-wide/from16 v44, v10

    .end local v10    # "s2":J
    .local v44, "s2":J
    int-to-long v9, v9

    .line 57
    .local v9, "s16":J
    const/16 v11, 0x2c

    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v46

    const/4 v11, 0x5

    shr-long v46, v46, v11

    const-wide/32 v28, 0x1fffff

    and-long v46, v46, v28

    .line 58
    .local v46, "s17":J
    const/16 v11, 0x2f

    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    const/4 v14, 0x2

    shr-int/2addr v11, v14

    and-int v11, v11, v26

    int-to-long v14, v11

    .line 59
    .local v14, "s18":J
    const/16 v11, 0x31

    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v48

    const/4 v11, 0x7

    shr-long v48, v48, v11

    and-long v48, v48, v28

    .line 60
    .local v48, "s19":J
    const/16 v11, 0x34

    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v50

    shr-long v50, v50, v18

    and-long v50, v50, v28

    .line 61
    .local v50, "s20":J
    const/16 v11, 0x37

    invoke-static {v0, v11}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v11

    shr-int/lit8 v11, v11, 0x1

    const v26, 0x1fffff

    and-int v11, v11, v26

    move-wide/from16 v52, v12

    .end local v12    # "s5":J
    .local v52, "s5":J
    int-to-long v11, v11

    .line 62
    .local v11, "s21":J
    const/16 v13, 0x39

    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v54

    const/4 v13, 0x6

    shr-long v54, v54, v13

    and-long v28, v54, v28

    .line 63
    .local v28, "s22":J
    const/16 v13, 0x3c

    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v54

    shr-long v54, v54, v27

    .line 98
    .local v54, "s23":J
    const-wide/32 v56, 0xa2c13

    mul-long v58, v54, v56

    add-long v3, v3, v58

    .line 99
    const-wide/32 v58, 0x72d18

    mul-long v60, v54, v58

    add-long v36, v36, v60

    .line 100
    const-wide/32 v60, 0x9fb67

    mul-long v62, v54, v60

    add-long v7, v7, v62

    .line 101
    const-wide/32 v62, 0xf39ad

    mul-long v64, v54, v62

    sub-long v40, v40, v64

    .line 102
    const-wide/32 v64, 0x215d1

    mul-long v66, v54, v64

    add-long v5, v5, v66

    .line 103
    const-wide/32 v66, 0xa6f7d

    mul-long v68, v54, v66

    sub-long v9, v9, v68

    .line 107
    mul-long v68, v28, v56

    add-long v1, v1, v68

    .line 108
    mul-long v68, v28, v58

    add-long v3, v3, v68

    .line 109
    mul-long v68, v28, v60

    add-long v36, v36, v68

    .line 110
    mul-long v68, v28, v62

    sub-long v7, v7, v68

    .line 111
    mul-long v68, v28, v64

    add-long v40, v40, v68

    .line 112
    mul-long v68, v28, v66

    sub-long v5, v5, v68

    .line 116
    mul-long v68, v11, v56

    add-long v32, v32, v68

    .line 117
    mul-long v68, v11, v58

    add-long v1, v1, v68

    .line 118
    mul-long v68, v11, v60

    add-long v3, v3, v68

    .line 119
    mul-long v68, v11, v62

    sub-long v36, v36, v68

    .line 120
    mul-long v68, v11, v64

    add-long v7, v7, v68

    .line 121
    mul-long v68, v11, v66

    sub-long v40, v40, v68

    .line 125
    mul-long v68, v50, v56

    add-long v34, v34, v68

    .line 126
    mul-long v68, v50, v58

    add-long v32, v32, v68

    .line 127
    mul-long v68, v50, v60

    add-long v1, v1, v68

    .line 128
    mul-long v68, v50, v62

    sub-long v3, v3, v68

    .line 129
    mul-long v68, v50, v64

    add-long v36, v36, v68

    .line 130
    mul-long v68, v50, v66

    sub-long v7, v7, v68

    .line 134
    mul-long v68, v48, v56

    add-long v38, v38, v68

    .line 135
    mul-long v68, v48, v58

    add-long v34, v34, v68

    .line 136
    mul-long v68, v48, v60

    add-long v32, v32, v68

    .line 137
    mul-long v68, v48, v62

    sub-long v1, v1, v68

    .line 138
    mul-long v68, v48, v64

    add-long v3, v3, v68

    .line 139
    mul-long v68, v48, v66

    sub-long v36, v36, v68

    .line 143
    mul-long v68, v14, v56

    add-long v24, v24, v68

    .line 144
    mul-long v68, v14, v58

    add-long v38, v38, v68

    .line 145
    mul-long v68, v14, v60

    add-long v34, v34, v68

    .line 146
    mul-long v68, v14, v62

    sub-long v32, v32, v68

    .line 147
    mul-long v68, v14, v64

    add-long v1, v1, v68

    .line 148
    mul-long v68, v14, v66

    sub-long v3, v3, v68

    .line 155
    const-wide/32 v68, 0x100000

    add-long v70, v24, v68

    const/16 v13, 0x15

    shr-long v70, v70, v13

    .local v70, "carry6":J
    add-long v38, v38, v70

    shl-long v72, v70, v13

    sub-long v24, v24, v72

    .line 156
    add-long v72, v34, v68

    shr-long v72, v72, v13

    .local v72, "carry8":J
    add-long v32, v32, v72

    shl-long v74, v72, v13

    sub-long v34, v34, v74

    .line 157
    add-long v74, v1, v68

    shr-long v74, v74, v13

    .local v74, "carry10":J
    add-long v3, v3, v74

    shl-long v76, v74, v13

    sub-long v1, v1, v76

    .line 158
    add-long v76, v36, v68

    shr-long v76, v76, v13

    .local v76, "carry12":J
    add-long v7, v7, v76

    shl-long v78, v76, v13

    sub-long v36, v36, v78

    .line 159
    add-long v78, v40, v68

    shr-long v78, v78, v13

    .local v78, "carry14":J
    add-long v5, v5, v78

    shl-long v80, v78, v13

    sub-long v40, v40, v80

    .line 160
    add-long v80, v9, v68

    shr-long v80, v80, v13

    .local v80, "carry16":J
    add-long v46, v46, v80

    shl-long v82, v80, v13

    sub-long v9, v9, v82

    .line 162
    add-long v82, v38, v68

    shr-long v82, v82, v13

    .local v82, "carry7":J
    add-long v34, v34, v82

    shl-long v84, v82, v13

    sub-long v38, v38, v84

    .line 163
    add-long v84, v32, v68

    shr-long v84, v84, v13

    .local v84, "carry9":J
    add-long v1, v1, v84

    shl-long v86, v84, v13

    sub-long v32, v32, v86

    .line 164
    add-long v86, v3, v68

    shr-long v86, v86, v13

    .local v86, "carry11":J
    add-long v36, v36, v86

    shl-long v88, v86, v13

    sub-long v3, v3, v88

    .line 165
    add-long v88, v7, v68

    shr-long v88, v88, v13

    .local v88, "carry13":J
    add-long v40, v40, v88

    shl-long v90, v88, v13

    sub-long v7, v7, v90

    .line 166
    add-long v90, v5, v68

    shr-long v90, v90, v13

    .local v90, "carry15":J
    add-long v9, v9, v90

    shl-long v92, v90, v13

    sub-long v5, v5, v92

    .line 171
    mul-long v92, v46, v56

    add-long v52, v52, v92

    .line 172
    mul-long v92, v46, v58

    add-long v24, v24, v92

    .line 173
    mul-long v92, v46, v60

    add-long v38, v38, v92

    .line 174
    mul-long v92, v46, v62

    sub-long v34, v34, v92

    .line 175
    mul-long v92, v46, v64

    add-long v32, v32, v92

    .line 176
    mul-long v92, v46, v66

    sub-long v1, v1, v92

    .line 180
    mul-long v92, v9, v56

    add-long v16, v16, v92

    .line 181
    mul-long v92, v9, v58

    add-long v52, v52, v92

    .line 182
    mul-long v92, v9, v60

    add-long v24, v24, v92

    .line 183
    mul-long v92, v9, v62

    sub-long v38, v38, v92

    .line 184
    mul-long v92, v9, v64

    add-long v34, v34, v92

    .line 185
    mul-long v92, v9, v66

    sub-long v32, v32, v92

    .line 189
    mul-long v92, v5, v56

    add-long v22, v22, v92

    .line 190
    mul-long v92, v5, v58

    add-long v16, v16, v92

    .line 191
    mul-long v92, v5, v60

    add-long v52, v52, v92

    .line 192
    mul-long v92, v5, v62

    sub-long v24, v24, v92

    .line 193
    mul-long v92, v5, v64

    add-long v38, v38, v92

    .line 194
    mul-long v92, v5, v66

    sub-long v34, v34, v92

    .line 198
    mul-long v92, v40, v56

    add-long v44, v44, v92

    .line 199
    mul-long v92, v40, v58

    add-long v22, v22, v92

    .line 200
    mul-long v92, v40, v60

    add-long v16, v16, v92

    .line 201
    mul-long v92, v40, v62

    sub-long v52, v52, v92

    .line 202
    mul-long v92, v40, v64

    add-long v24, v24, v92

    .line 203
    mul-long v92, v40, v66

    sub-long v38, v38, v92

    .line 207
    mul-long v92, v7, v56

    add-long v42, v42, v92

    .line 208
    mul-long v92, v7, v58

    add-long v44, v44, v92

    .line 209
    mul-long v92, v7, v60

    add-long v22, v22, v92

    .line 210
    mul-long v92, v7, v62

    sub-long v16, v16, v92

    .line 211
    mul-long v92, v7, v64

    add-long v52, v52, v92

    .line 212
    mul-long v92, v7, v66

    sub-long v24, v24, v92

    .line 216
    mul-long v92, v36, v56

    add-long v30, v30, v92

    .line 217
    mul-long v92, v36, v58

    add-long v42, v42, v92

    .line 218
    mul-long v92, v36, v60

    add-long v44, v44, v92

    .line 219
    mul-long v92, v36, v62

    sub-long v22, v22, v92

    .line 220
    mul-long v92, v36, v64

    add-long v16, v16, v92

    .line 221
    mul-long v92, v36, v66

    sub-long v52, v52, v92

    .line 228
    add-long v92, v30, v68

    const/16 v13, 0x15

    shr-long v92, v92, v13

    .local v92, "carry0":J
    add-long v42, v42, v92

    shl-long v94, v92, v13

    sub-long v30, v30, v94

    .line 229
    add-long v94, v44, v68

    shr-long v94, v94, v13

    .local v94, "carry2":J
    add-long v22, v22, v94

    shl-long v96, v94, v13

    sub-long v44, v44, v96

    .line 230
    add-long v96, v16, v68

    shr-long v96, v96, v13

    .local v96, "carry4":J
    add-long v52, v52, v96

    shl-long v98, v96, v13

    sub-long v16, v16, v98

    .line 231
    add-long v98, v24, v68

    shr-long v70, v98, v13

    add-long v38, v38, v70

    shl-long v98, v70, v13

    sub-long v24, v24, v98

    .line 232
    add-long v98, v34, v68

    shr-long v72, v98, v13

    add-long v32, v32, v72

    shl-long v98, v72, v13

    sub-long v34, v34, v98

    .line 233
    add-long v98, v1, v68

    shr-long v74, v98, v13

    add-long v3, v3, v74

    shl-long v98, v74, v13

    sub-long v1, v1, v98

    .line 235
    add-long v98, v42, v68

    shr-long v98, v98, v13

    .local v98, "carry1":J
    add-long v44, v44, v98

    shl-long v100, v98, v13

    sub-long v42, v42, v100

    .line 236
    add-long v100, v22, v68

    shr-long v100, v100, v13

    .local v100, "carry3":J
    add-long v16, v16, v100

    shl-long v102, v100, v13

    sub-long v22, v22, v102

    .line 237
    add-long v102, v52, v68

    shr-long v102, v102, v13

    .local v102, "carry5":J
    add-long v24, v24, v102

    shl-long v104, v102, v13

    sub-long v52, v52, v104

    .line 238
    add-long v104, v38, v68

    shr-long v82, v104, v13

    add-long v34, v34, v82

    shl-long v104, v82, v13

    sub-long v38, v38, v104

    .line 239
    add-long v104, v32, v68

    shr-long v84, v104, v13

    add-long v1, v1, v84

    shl-long v104, v84, v13

    sub-long v32, v32, v104

    .line 241
    add-long v68, v3, v68

    shr-long v68, v68, v13

    .end local v86    # "carry11":J
    .local v68, "carry11":J
    move-wide/from16 v36, v68

    shl-long v86, v68, v13

    sub-long v3, v3, v86

    .line 243
    mul-long v86, v36, v56

    add-long v30, v30, v86

    .line 244
    mul-long v86, v36, v58

    add-long v42, v42, v86

    .line 245
    mul-long v86, v36, v60

    add-long v44, v44, v86

    .line 246
    mul-long v86, v36, v62

    sub-long v22, v22, v86

    .line 247
    mul-long v86, v36, v64

    add-long v16, v16, v86

    .line 248
    mul-long v86, v36, v66

    sub-long v52, v52, v86

    .line 252
    const/16 v13, 0x15

    shr-long v86, v30, v13

    .end local v92    # "carry0":J
    .local v86, "carry0":J
    add-long v42, v42, v86

    shl-long v92, v86, v13

    sub-long v30, v30, v92

    .line 253
    shr-long v92, v42, v13

    .end local v98    # "carry1":J
    .local v92, "carry1":J
    add-long v44, v44, v92

    shl-long v98, v92, v13

    sub-long v42, v42, v98

    .line 254
    shr-long v94, v44, v13

    add-long v22, v22, v94

    shl-long v98, v94, v13

    sub-long v44, v44, v98

    .line 255
    shr-long v98, v22, v13

    .end local v100    # "carry3":J
    .local v98, "carry3":J
    add-long v16, v16, v98

    shl-long v100, v98, v13

    sub-long v22, v22, v100

    .line 256
    shr-long v96, v16, v13

    add-long v52, v52, v96

    shl-long v100, v96, v13

    sub-long v16, v16, v100

    .line 257
    shr-long v100, v52, v13

    .end local v102    # "carry5":J
    .local v100, "carry5":J
    add-long v24, v24, v100

    shl-long v102, v100, v13

    sub-long v52, v52, v102

    .line 258
    shr-long v70, v24, v13

    add-long v38, v38, v70

    shl-long v102, v70, v13

    sub-long v24, v24, v102

    .line 259
    shr-long v82, v38, v13

    add-long v34, v34, v82

    shl-long v102, v82, v13

    sub-long v38, v38, v102

    .line 260
    shr-long v72, v34, v13

    add-long v32, v32, v72

    shl-long v102, v72, v13

    sub-long v34, v34, v102

    .line 261
    shr-long v84, v32, v13

    add-long v1, v1, v84

    shl-long v102, v84, v13

    sub-long v32, v32, v102

    .line 262
    shr-long v74, v1, v13

    add-long v3, v3, v74

    shl-long v102, v74, v13

    sub-long v1, v1, v102

    .line 264
    shr-long v68, v3, v13

    move-wide/from16 v36, v68

    shl-long v102, v68, v13

    sub-long v3, v3, v102

    .line 267
    mul-long v56, v56, v36

    add-long v30, v30, v56

    .line 268
    mul-long v58, v58, v36

    add-long v42, v42, v58

    .line 269
    mul-long v60, v60, v36

    add-long v44, v44, v60

    .line 270
    mul-long v62, v62, v36

    sub-long v22, v22, v62

    .line 271
    mul-long v64, v64, v36

    add-long v16, v16, v64

    .line 272
    mul-long v66, v66, v36

    sub-long v52, v52, v66

    .line 276
    const/16 v13, 0x15

    shr-long v56, v30, v13

    .end local v86    # "carry0":J
    .local v56, "carry0":J
    add-long v42, v42, v56

    shl-long v58, v56, v13

    move-wide/from16 v60, v5

    .end local v5    # "s15":J
    .local v60, "s15":J
    sub-long v5, v30, v58

    .line 277
    .end local v30    # "s0":J
    .local v5, "s0":J
    shr-long v30, v42, v13

    .end local v92    # "carry1":J
    .local v30, "carry1":J
    add-long v44, v44, v30

    shl-long v58, v30, v13

    sub-long v42, v42, v58

    .line 278
    shr-long v58, v44, v13

    .end local v94    # "carry2":J
    .local v58, "carry2":J
    add-long v22, v22, v58

    shl-long v62, v58, v13

    sub-long v44, v44, v62

    .line 279
    shr-long v62, v22, v13

    .end local v98    # "carry3":J
    .local v62, "carry3":J
    add-long v16, v16, v62

    shl-long v64, v62, v13

    sub-long v22, v22, v64

    .line 280
    shr-long v64, v16, v13

    .end local v96    # "carry4":J
    .local v64, "carry4":J
    add-long v52, v52, v64

    shl-long v66, v64, v13

    sub-long v16, v16, v66

    .line 281
    shr-long v66, v52, v13

    .end local v100    # "carry5":J
    .local v66, "carry5":J
    add-long v24, v24, v66

    shl-long v86, v66, v13

    sub-long v52, v52, v86

    .line 282
    shr-long v70, v24, v13

    add-long v38, v38, v70

    shl-long v86, v70, v13

    sub-long v24, v24, v86

    .line 283
    shr-long v82, v38, v13

    add-long v34, v34, v82

    shl-long v86, v82, v13

    sub-long v38, v38, v86

    .line 284
    shr-long v72, v34, v13

    add-long v32, v32, v72

    shl-long v86, v72, v13

    move-wide/from16 v92, v7

    .end local v7    # "s13":J
    .local v92, "s13":J
    sub-long v7, v34, v86

    .line 285
    .end local v34    # "s8":J
    .local v7, "s8":J
    shr-long v34, v32, v13

    .end local v84    # "carry9":J
    .local v34, "carry9":J
    add-long v1, v1, v34

    shl-long v84, v34, v13

    sub-long v32, v32, v84

    .line 286
    shr-long v74, v1, v13

    add-long v3, v3, v74

    shl-long v84, v74, v13

    sub-long v1, v1, v84

    .line 289
    const/16 v13, 0x20

    new-array v13, v13, [B

    .line 290
    .local v13, "result":[B
    long-to-int v0, v5

    int-to-byte v0, v0

    const/16 v26, 0x0

    aput-byte v0, v13, v26

    .line 291
    const/16 v0, 0x8

    move-wide/from16 v84, v9

    .end local v9    # "s16":J
    .local v84, "s16":J
    shr-long v9, v5, v0

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v13, v21

    .line 292
    const/16 v9, 0x10

    shr-long v9, v5, v9

    const/16 v26, 0x5

    shl-long v86, v42, v26

    or-long v9, v9, v86

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v13, v10

    .line 293
    shr-long v9, v42, v27

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v13, v27

    .line 294
    const/16 v9, 0xb

    shr-long v9, v42, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v13, v18

    .line 295
    const/16 v9, 0x13

    shr-long v9, v42, v9

    const/16 v26, 0x2

    shl-long v86, v44, v26

    or-long v9, v9, v86

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x5

    aput-byte v9, v13, v10

    .line 296
    move-wide/from16 v86, v1

    const/4 v9, 0x6

    .end local v1    # "s10":J
    .local v86, "s10":J
    shr-long v0, v44, v9

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v13, v9

    .line 297
    const/16 v0, 0xe

    shr-long v0, v44, v0

    const/4 v9, 0x7

    shl-long v94, v22, v9

    or-long v0, v0, v94

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v13, v9

    .line 298
    shr-long v0, v22, v21

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x8

    aput-byte v0, v13, v1

    .line 299
    const/16 v0, 0x9

    shr-long v0, v22, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x9

    aput-byte v0, v13, v1

    .line 300
    const/16 v0, 0x11

    shr-long v0, v22, v0

    shl-long v9, v16, v18

    or-long/2addr v0, v9

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xa

    aput-byte v0, v13, v1

    .line 301
    shr-long v0, v16, v18

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xb

    aput-byte v0, v13, v1

    .line 302
    const/16 v0, 0xc

    shr-long v0, v16, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xc

    aput-byte v0, v13, v1

    .line 303
    const/16 v0, 0x14

    shr-long v0, v16, v0

    shl-long v9, v52, v21

    or-long/2addr v0, v9

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0xd

    aput-byte v0, v13, v1

    .line 304
    const/4 v0, 0x7

    shr-long v9, v52, v0

    long-to-int v0, v9

    int-to-byte v0, v0

    const/16 v1, 0xe

    aput-byte v0, v13, v1

    .line 305
    const/16 v0, 0xf

    shr-long v9, v52, v0

    const/4 v1, 0x6

    shl-long v94, v24, v1

    or-long v9, v9, v94

    long-to-int v1, v9

    int-to-byte v1, v1

    aput-byte v1, v13, v0

    .line 306
    const/4 v0, 0x2

    shr-long v9, v24, v0

    long-to-int v1, v9

    int-to-byte v1, v1

    const/16 v9, 0x10

    aput-byte v1, v13, v9

    .line 307
    const/16 v1, 0xa

    shr-long v9, v24, v1

    long-to-int v1, v9

    int-to-byte v1, v1

    const/16 v9, 0x11

    aput-byte v1, v13, v9

    .line 308
    const/16 v1, 0x12

    shr-long v9, v24, v1

    shl-long v18, v38, v27

    or-long v9, v9, v18

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v13, v1

    .line 309
    const/4 v1, 0x5

    shr-long v9, v38, v1

    long-to-int v1, v9

    int-to-byte v1, v1

    const/16 v9, 0x13

    aput-byte v1, v13, v9

    .line 310
    const/16 v1, 0xd

    shr-long v9, v38, v1

    long-to-int v1, v9

    int-to-byte v1, v1

    const/16 v9, 0x14

    aput-byte v1, v13, v9

    .line 311
    long-to-int v1, v7

    int-to-byte v1, v1

    const/16 v9, 0x15

    aput-byte v1, v13, v9

    .line 312
    const/16 v1, 0x8

    shr-long v1, v7, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x16

    aput-byte v1, v13, v2

    .line 313
    const/16 v1, 0x10

    shr-long v1, v7, v1

    const/4 v9, 0x5

    shl-long v9, v32, v9

    or-long/2addr v1, v9

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x17

    aput-byte v1, v13, v2

    .line 314
    shr-long v1, v32, v27

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x18

    aput-byte v1, v13, v2

    .line 315
    const/16 v1, 0xb

    shr-long v1, v32, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x19

    aput-byte v1, v13, v2

    .line 316
    const/16 v1, 0x13

    shr-long v1, v32, v1

    const/4 v0, 0x2

    shl-long v9, v86, v0

    or-long v0, v1, v9

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1a

    aput-byte v0, v13, v1

    .line 317
    const/4 v0, 0x6

    shr-long v0, v86, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1b

    aput-byte v0, v13, v1

    .line 318
    const/16 v0, 0xe

    shr-long v0, v86, v0

    const/4 v2, 0x7

    shl-long v9, v3, v2

    or-long/2addr v0, v9

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1c

    aput-byte v0, v13, v1

    .line 319
    shr-long v0, v3, v21

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1d

    aput-byte v0, v13, v1

    .line 320
    const/16 v0, 0x9

    shr-long v0, v3, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1e

    aput-byte v0, v13, v1

    .line 321
    const/16 v0, 0x11

    shr-long v0, v3, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    const/16 v1, 0x1f

    aput-byte v0, v13, v1

    .line 322
    return-object v13
.end method
