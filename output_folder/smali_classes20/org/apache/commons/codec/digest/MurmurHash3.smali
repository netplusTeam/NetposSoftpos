.class public final Lorg/apache/commons/codec/digest/MurmurHash3;
.super Ljava/lang/Object;
.source "MurmurHash3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32;,
        Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;
    }
.end annotation


# static fields
.field private static final C1:J = -0x783c846eeebdac2bL

.field private static final C1_32:I = -0x3361d2af

.field private static final C2:J = 0x4cf5ad432745937fL

.field private static final C2_32:I = 0x1b873593

.field public static final DEFAULT_SEED:I = 0x19919

.field static final INTEGER_BYTES:I = 0x4

.field static final LONG_BYTES:I = 0x8

.field private static final M:I = 0x5

.field private static final M_32:I = 0x5

.field private static final N1:I = 0x52dce729

.field private static final N2:I = 0x38495ab5

.field public static final NULL_HASHCODE:J = 0x27bb2ee687b0b0fdL
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final N_32:I = -0x19ab949c

.field private static final R1:I = 0x1f

.field private static final R1_32:I = 0xf

.field private static final R2:I = 0x1b

.field private static final R2_32:I = 0xd

.field private static final R3:I = 0x21

.field static final SHORT_BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 58
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .line 58
    invoke-static {p0, p1}, Lorg/apache/commons/codec/digest/MurmurHash3;->getLittleEndianInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 58
    invoke-static {p0}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix32(I)I

    move-result v0

    return v0
.end method

.method private static fmix32(I)I
    .locals 1
    .param p0, "hash"    # I

    .line 984
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 985
    const v0, -0x7a143595

    mul-int/2addr p0, v0

    .line 986
    ushr-int/lit8 v0, p0, 0xd

    xor-int/2addr p0, v0

    .line 987
    const v0, -0x3d4d51cb

    mul-int/2addr p0, v0

    .line 988
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    .line 989
    return p0
.end method

.method private static fmix64(J)J
    .locals 3
    .param p0, "hash"    # J

    .line 999
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    .line 1000
    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    .line 1001
    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    .line 1002
    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    .line 1003
    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    .line 1004
    return-wide p0
.end method

.method private static getLittleEndianInt([BI)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 956
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static getLittleEndianLong([BI)J
    .locals 7
    .param p0, "data"    # [B
    .param p1, "index"    # I

    .line 938
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x7

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hash128(Ljava/lang/String;)[J
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 778
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x19919

    invoke-static {v0, v2, v1, v3}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash128([BIII)[J

    move-result-object v1

    return-object v1
.end method

.method public static hash128([B)[J
    .locals 3
    .param p0, "data"    # [B

    .line 729
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x19919

    invoke-static {p0, v1, v0, v2}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash128([BIII)[J

    move-result-object v0

    return-object v0
.end method

.method public static hash128([BIII)[J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 805
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash128x64Internal([BIIJ)[J

    move-result-object v0

    return-object v0
.end method

.method public static hash128x64([B)[J
    .locals 2
    .param p0, "data"    # [B

    .line 748
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash128x64([BIII)[J

    move-result-object v0

    return-object v0
.end method

.method public static hash128x64([BIII)[J
    .locals 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .line 823
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash128x64Internal([BIIJ)[J

    move-result-object v0

    return-object v0
.end method

.method private static hash128x64Internal([BIIJ)[J
    .locals 28
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # J

    .line 839
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    .line 840
    .local v2, "h1":J
    move-wide/from16 v4, p3

    .line 841
    .local v4, "h2":J
    shr-int/lit8 v6, v1, 0x4

    .line 844
    .local v6, "nblocks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v9, 0x1f

    const-wide v12, -0x783c846eeebdac2bL

    if-ge v7, v6, :cond_0

    .line 845
    shl-int/lit8 v14, v7, 0x4

    add-int v14, p1, v14

    .line 846
    .local v14, "index":I
    invoke-static {v0, v14}, Lorg/apache/commons/codec/digest/MurmurHash3;->getLittleEndianLong([BI)J

    move-result-wide v15

    .line 847
    .local v15, "k1":J
    add-int/lit8 v8, v14, 0x8

    invoke-static {v0, v8}, Lorg/apache/commons/codec/digest/MurmurHash3;->getLittleEndianLong([BI)J

    move-result-wide v17

    .line 850
    .local v17, "k2":J
    mul-long v10, v15, v12

    .line 851
    .end local v15    # "k1":J
    .local v10, "k1":J
    invoke-static {v10, v11, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v10

    .line 852
    const-wide v15, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v10, v15

    .line 853
    xor-long/2addr v2, v10

    .line 854
    const/16 v8, 0x1b

    invoke-static {v2, v3, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 855
    add-long/2addr v2, v4

    .line 856
    const-wide/16 v15, 0x5

    mul-long v21, v2, v15

    const-wide/32 v23, 0x52dce729

    add-long v2, v21, v23

    .line 859
    move-wide/from16 v21, v10

    const-wide v19, 0x4cf5ad432745937fL    # 5.573325460219186E62

    .end local v10    # "k1":J
    .local v21, "k1":J
    mul-long v9, v17, v19

    .line 860
    .end local v17    # "k2":J
    .local v9, "k2":J
    const/16 v11, 0x21

    invoke-static {v9, v10, v11}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    .line 861
    mul-long/2addr v9, v12

    .line 862
    xor-long/2addr v4, v9

    .line 863
    const/16 v8, 0x1f

    invoke-static {v4, v5, v8}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v4

    .line 864
    add-long/2addr v4, v2

    .line 865
    mul-long/2addr v15, v4

    const-wide/32 v11, 0x38495ab5

    add-long v4, v15, v11

    .line 844
    .end local v9    # "k2":J
    .end local v14    # "index":I
    .end local v21    # "k1":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 869
    .end local v7    # "i":I
    :cond_0
    const-wide/16 v9, 0x0

    .line 870
    .local v9, "k1":J
    const-wide/16 v14, 0x0

    .line 871
    .local v14, "k2":J
    shl-int/lit8 v7, v6, 0x4

    add-int v7, p1, v7

    .line 872
    .local v7, "index":I
    add-int v11, p1, v1

    sub-int/2addr v11, v7

    const/16 v16, 0x30

    const/16 v17, 0x28

    const/16 v18, 0x20

    const/16 v21, 0x18

    const/16 v22, 0x10

    const/16 v23, 0x8

    const-wide/16 v24, 0xff

    packed-switch v11, :pswitch_data_0

    move-wide/from16 v26, v9

    .end local v9    # "k1":J
    .local v26, "k1":J
    goto/16 :goto_f

    .line 874
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_0
    add-int/lit8 v11, v7, 0xe

    aget-byte v11, v0, v11

    move-wide/from16 v26, v9

    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    int-to-long v8, v11

    and-long v8, v8, v24

    shl-long v8, v8, v16

    xor-long/2addr v14, v8

    goto :goto_1

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_1
    move-wide/from16 v26, v9

    .line 876
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_1
    add-int/lit8 v8, v7, 0xd

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v8, v8, v24

    shl-long v8, v8, v17

    xor-long/2addr v14, v8

    goto :goto_2

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_2
    move-wide/from16 v26, v9

    .line 878
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_2
    add-int/lit8 v8, v7, 0xc

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v8, v8, v24

    shl-long v8, v8, v18

    xor-long/2addr v14, v8

    goto :goto_3

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_3
    move-wide/from16 v26, v9

    .line 880
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_3
    add-int/lit8 v8, v7, 0xb

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v8, v8, v24

    shl-long v8, v8, v21

    xor-long/2addr v14, v8

    goto :goto_4

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_4
    move-wide/from16 v26, v9

    .line 882
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_4
    add-int/lit8 v8, v7, 0xa

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v8, v8, v24

    shl-long v8, v8, v22

    xor-long/2addr v14, v8

    goto :goto_5

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_5
    move-wide/from16 v26, v9

    .line 884
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_5
    add-int/lit8 v8, v7, 0x9

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v8, v8, v24

    shl-long v8, v8, v23

    xor-long/2addr v14, v8

    goto :goto_6

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_6
    move-wide/from16 v26, v9

    .line 886
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_6
    add-int/lit8 v8, v7, 0x8

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    xor-long/2addr v8, v14

    .line 887
    .end local v14    # "k2":J
    .local v8, "k2":J
    const-wide v10, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v8, v10

    .line 888
    const/16 v10, 0x21

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    .line 889
    mul-long v14, v8, v12

    .line 890
    .end local v8    # "k2":J
    .restart local v14    # "k2":J
    xor-long/2addr v4, v14

    goto :goto_7

    .line 872
    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    :pswitch_7
    move-wide/from16 v26, v9

    .line 893
    .end local v9    # "k1":J
    .restart local v26    # "k1":J
    :goto_7
    add-int/lit8 v8, v7, 0x7

    aget-byte v8, v0, v8

    int-to-long v8, v8

    and-long v8, v8, v24

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long v9, v26, v8

    .end local v26    # "k1":J
    .restart local v9    # "k1":J
    goto :goto_8

    .line 872
    :pswitch_8
    move-wide/from16 v26, v9

    .line 895
    :goto_8
    add-int/lit8 v8, v7, 0x6

    aget-byte v8, v0, v8

    int-to-long v12, v8

    and-long v11, v12, v24

    shl-long v11, v11, v16

    xor-long/2addr v9, v11

    goto :goto_9

    .line 872
    :pswitch_9
    move-wide/from16 v26, v9

    .line 897
    :goto_9
    add-int/lit8 v8, v7, 0x5

    aget-byte v8, v0, v8

    int-to-long v11, v8

    and-long v11, v11, v24

    shl-long v11, v11, v17

    xor-long/2addr v9, v11

    goto :goto_a

    .line 872
    :pswitch_a
    move-wide/from16 v26, v9

    .line 899
    :goto_a
    add-int/lit8 v8, v7, 0x4

    aget-byte v8, v0, v8

    int-to-long v11, v8

    and-long v11, v11, v24

    shl-long v11, v11, v18

    xor-long/2addr v9, v11

    goto :goto_b

    .line 872
    :pswitch_b
    move-wide/from16 v26, v9

    .line 901
    :goto_b
    add-int/lit8 v8, v7, 0x3

    aget-byte v8, v0, v8

    int-to-long v11, v8

    and-long v11, v11, v24

    shl-long v11, v11, v21

    xor-long/2addr v9, v11

    goto :goto_c

    .line 872
    :pswitch_c
    move-wide/from16 v26, v9

    .line 903
    :goto_c
    add-int/lit8 v8, v7, 0x2

    aget-byte v8, v0, v8

    int-to-long v11, v8

    and-long v11, v11, v24

    shl-long v11, v11, v22

    xor-long/2addr v9, v11

    goto :goto_d

    .line 872
    :pswitch_d
    move-wide/from16 v26, v9

    .line 905
    :goto_d
    add-int/lit8 v8, v7, 0x1

    aget-byte v8, v0, v8

    int-to-long v11, v8

    and-long v11, v11, v24

    shl-long v11, v11, v23

    xor-long/2addr v9, v11

    goto :goto_e

    .line 872
    :pswitch_e
    move-wide/from16 v26, v9

    .line 907
    :goto_e
    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    int-to-long v11, v8

    xor-long v8, v9, v11

    .line 908
    .end local v9    # "k1":J
    .local v8, "k1":J
    const-wide v10, -0x783c846eeebdac2bL

    mul-long/2addr v8, v10

    .line 909
    const/16 v10, 0x1f

    invoke-static {v8, v9, v10}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v8

    .line 910
    const-wide v10, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long v9, v8, v10

    .line 911
    .end local v8    # "k1":J
    .restart local v9    # "k1":J
    xor-long/2addr v2, v9

    .line 915
    :goto_f
    int-to-long v11, v1

    xor-long/2addr v2, v11

    .line 916
    int-to-long v11, v1

    xor-long/2addr v4, v11

    .line 918
    add-long/2addr v2, v4

    .line 919
    add-long/2addr v4, v2

    .line 921
    invoke-static {v2, v3}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix64(J)J

    move-result-wide v2

    .line 922
    invoke-static {v4, v5}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix64(J)J

    move-result-wide v4

    .line 924
    add-long/2addr v2, v4

    .line 925
    add-long/2addr v4, v2

    .line 927
    const/4 v8, 0x2

    new-array v8, v8, [J

    const/4 v11, 0x0

    aput-wide v2, v8, v11

    const/4 v11, 0x1

    aput-wide v4, v8, v11

    return-object v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash32(J)I
    .locals 1
    .param p0, "data"    # J

    .line 176
    const v0, 0x19919

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32(JI)I

    move-result v0

    return v0
.end method

.method public static hash32(JI)I
    .locals 5
    .param p0, "data"    # J
    .param p2, "seed"    # I

    .line 196
    move v0, p2

    .line 197
    .local v0, "hash":I
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    .line 199
    .local v1, "r0":J
    long-to-int v3, v1

    invoke-static {v3, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 200
    const/16 v3, 0x20

    ushr-long v3, v1, v3

    long-to-int v3, v3

    invoke-static {v3, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 202
    xor-int/lit8 v0, v0, 0x8

    .line 203
    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix32(I)I

    move-result v3

    return v3
.end method

.method public static hash32(JJ)I
    .locals 1
    .param p0, "data1"    # J
    .param p2, "data2"    # J

    .line 124
    const v0, 0x19919

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32(JJI)I

    move-result v0

    return v0
.end method

.method public static hash32(JJI)I
    .locals 8
    .param p0, "data1"    # J
    .param p2, "data2"    # J
    .param p4, "seed"    # I

    .line 146
    move v0, p4

    .line 147
    .local v0, "hash":I
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    .line 148
    .local v1, "r0":J
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v3

    .line 150
    .local v3, "r1":J
    long-to-int v5, v1

    invoke-static {v5, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 151
    const/16 v5, 0x20

    ushr-long v6, v1, v5

    long-to-int v6, v6

    invoke-static {v6, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 152
    long-to-int v6, v3

    invoke-static {v6, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 153
    ushr-long v5, v3, v5

    long-to-int v5, v5

    invoke-static {v5, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 155
    xor-int/lit8 v0, v0, 0x10

    .line 156
    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix32(I)I

    move-result v5

    return v5
.end method

.method public static hash32(Ljava/lang/String;)I
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-static {p0}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 258
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    const v3, 0x19919

    invoke-static {v0, v2, v1, v3}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32([BIII)I

    move-result v1

    return v1
.end method

.method public static hash32([B)I
    .locals 3
    .param p0, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x19919

    invoke-static {p0, v1, v0, v2}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32([BIII)I

    move-result v0

    return v0
.end method

.method public static hash32([BI)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    const v0, 0x19919

    invoke-static {p0, p1, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32([BII)I

    move-result v0

    return v0
.end method

.method public static hash32([BII)I
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "seed"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 308
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32([BIII)I

    move-result v0

    return v0
.end method

.method public static hash32([BIII)I
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    move v0, p3

    .line 331
    .local v0, "hash":I
    shr-int/lit8 v1, p2, 0x2

    .line 334
    .local v1, "nblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 335
    shl-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    .line 336
    .local v3, "index":I
    invoke-static {p0, v3}, Lorg/apache/commons/codec/digest/MurmurHash3;->getLittleEndianInt([BI)I

    move-result v4

    .line 337
    .local v4, "k":I
    invoke-static {v4, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 334
    .end local v3    # "index":I
    .end local v4    # "k":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 344
    .end local v2    # "i":I
    :cond_0
    shl-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 345
    .local v2, "index":I
    const/4 v3, 0x0

    .line 346
    .local v3, "k1":I
    add-int v4, p1, p2

    sub-int/2addr v4, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 348
    :pswitch_0
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    .line 350
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    .line 352
    :pswitch_2
    aget-byte v4, p0, v2

    xor-int/2addr v3, v4

    .line 355
    const v4, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v3, v4

    .line 356
    const/16 v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    .line 357
    const v4, 0x1b873593

    mul-int/2addr v3, v4

    .line 358
    xor-int/2addr v0, v3

    .line 361
    :goto_1
    xor-int/2addr v0, p2

    .line 362
    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix32(I)I

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash32x86([B)I
    .locals 2
    .param p0, "data"    # [B

    .line 381
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash32x86([BIII)I

    move-result v0

    return v0
.end method

.method public static hash32x86([BIII)I
    .locals 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .line 398
    move v0, p3

    .line 399
    .local v0, "hash":I
    shr-int/lit8 v1, p2, 0x2

    .line 402
    .local v1, "nblocks":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 403
    shl-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p1

    .line 404
    .local v3, "index":I
    invoke-static {p0, v3}, Lorg/apache/commons/codec/digest/MurmurHash3;->getLittleEndianInt([BI)I

    move-result v4

    .line 405
    .local v4, "k":I
    invoke-static {v4, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->mix32(II)I

    move-result v0

    .line 402
    .end local v3    # "index":I
    .end local v4    # "k":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v2    # "i":I
    :cond_0
    shl-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p1

    .line 410
    .local v2, "index":I
    const/4 v3, 0x0

    .line 411
    .local v3, "k1":I
    add-int v4, p1, p2

    sub-int/2addr v4, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 413
    :pswitch_0
    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    xor-int/2addr v3, v4

    .line 415
    :pswitch_1
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    xor-int/2addr v3, v4

    .line 417
    :pswitch_2
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    .line 420
    const v4, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v3, v4

    .line 421
    const/16 v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v3

    .line 422
    const v4, 0x1b873593

    mul-int/2addr v3, v4

    .line 423
    xor-int/2addr v0, v3

    .line 426
    :goto_1
    xor-int/2addr v0, p2

    .line 427
    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix32(I)I

    move-result v4

    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hash64(I)J
    .locals 7
    .param p0, "data"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 508
    .local v0, "k1":J
    const/4 v2, 0x4

    .line 509
    .local v2, "length":I
    const-wide/32 v3, 0x19919

    .line 510
    .local v3, "hash":J
    const-wide v5, -0x783c846eeebdac2bL

    mul-long/2addr v0, v5

    .line 511
    const/16 v5, 0x1f

    invoke-static {v0, v1, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 512
    const-wide v5, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v0, v5

    .line 513
    xor-long/2addr v3, v0

    .line 515
    const-wide/16 v5, 0x4

    xor-long/2addr v3, v5

    .line 516
    invoke-static {v3, v4}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix64(J)J

    move-result-wide v3

    .line 517
    return-wide v3
.end method

.method public static hash64(J)J
    .locals 9
    .param p0, "data"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    const-wide/32 v0, 0x19919

    .line 462
    .local v0, "hash":J
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v2

    .line 463
    .local v2, "k":J
    const/16 v4, 0x8

    .line 465
    .local v4, "length":I
    const-wide v5, -0x783c846eeebdac2bL

    mul-long/2addr v2, v5

    .line 466
    const/16 v5, 0x1f

    invoke-static {v2, v3, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 467
    const-wide v5, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v2, v5

    .line 468
    xor-long/2addr v0, v2

    .line 469
    const/16 v5, 0x1b

    invoke-static {v0, v1, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x5

    mul-long/2addr v5, v7

    const-wide/32 v7, 0x52dce729

    add-long/2addr v5, v7

    .line 471
    .end local v0    # "hash":J
    .local v5, "hash":J
    const-wide/16 v0, 0x8

    xor-long/2addr v0, v5

    .line 472
    .end local v5    # "hash":J
    .restart local v0    # "hash":J
    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix64(J)J

    move-result-wide v0

    .line 473
    return-wide v0
.end method

.method public static hash64(S)J
    .locals 9
    .param p0, "data"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 551
    const-wide/32 v0, 0x19919

    .line 552
    .local v0, "hash":J
    const-wide/16 v2, 0x0

    .line 553
    .local v2, "k1":J
    int-to-long v4, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    xor-long/2addr v2, v4

    .line 554
    const v4, 0xff00

    and-int/2addr v4, p0

    shr-int/2addr v4, v8

    int-to-long v4, v4

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    .line 555
    const-wide v4, -0x783c846eeebdac2bL

    mul-long/2addr v2, v4

    .line 556
    const/16 v4, 0x1f

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v2

    .line 557
    const-wide v4, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v2, v4

    .line 558
    xor-long/2addr v0, v2

    .line 561
    const-wide/16 v4, 0x2

    xor-long/2addr v0, v4

    .line 562
    invoke-static {v0, v1}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix64(J)J

    move-result-wide v0

    .line 563
    return-wide v0
.end method

.method public static hash64([B)J
    .locals 3
    .param p0, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 595
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x19919

    invoke-static {p0, v1, v0, v2}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash64([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BII)J
    .locals 2
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 628
    const v0, 0x19919

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->hash64([BIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hash64([BIII)J
    .locals 17
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    int-to-long v3, v2

    .line 665
    .local v3, "hash":J
    shr-int/lit8 v5, v1, 0x3

    .line 668
    .local v5, "nblocks":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const-wide v7, 0x4cf5ad432745937fL    # 5.573325460219186E62

    const/16 v9, 0x1f

    const-wide v10, -0x783c846eeebdac2bL

    if-ge v6, v5, :cond_0

    .line 669
    shl-int/lit8 v12, v6, 0x3

    add-int v12, p1, v12

    .line 670
    .local v12, "index":I
    invoke-static {v0, v12}, Lorg/apache/commons/codec/digest/MurmurHash3;->getLittleEndianLong([BI)J

    move-result-wide v13

    .line 673
    .local v13, "k":J
    mul-long/2addr v13, v10

    .line 674
    invoke-static {v13, v14, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v9

    .line 675
    .end local v13    # "k":J
    .local v9, "k":J
    mul-long/2addr v9, v7

    .line 676
    xor-long/2addr v3, v9

    .line 677
    const/16 v7, 0x1b

    invoke-static {v3, v4, v7}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    const-wide/16 v13, 0x5

    mul-long/2addr v7, v13

    const-wide/32 v13, 0x52dce729

    add-long v3, v7, v13

    .line 668
    .end local v9    # "k":J
    .end local v12    # "index":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 681
    .end local v6    # "i":I
    :cond_0
    const-wide/16 v12, 0x0

    .line 682
    .local v12, "k1":J
    shl-int/lit8 v6, v5, 0x3

    add-int v6, p1, v6

    .line 683
    .local v6, "index":I
    add-int v14, p1, v1

    sub-int/2addr v14, v6

    const-wide/16 v15, 0xff

    packed-switch v14, :pswitch_data_0

    goto :goto_1

    .line 685
    :pswitch_0
    add-int/lit8 v14, v6, 0x6

    aget-byte v14, v0, v14

    int-to-long v7, v14

    and-long/2addr v7, v15

    const/16 v14, 0x30

    shl-long/2addr v7, v14

    xor-long/2addr v12, v7

    .line 687
    :pswitch_1
    add-int/lit8 v7, v6, 0x5

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v15

    const/16 v14, 0x28

    shl-long/2addr v7, v14

    xor-long/2addr v12, v7

    .line 689
    :pswitch_2
    add-int/lit8 v7, v6, 0x4

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v15

    const/16 v14, 0x20

    shl-long/2addr v7, v14

    xor-long/2addr v12, v7

    .line 691
    :pswitch_3
    add-int/lit8 v7, v6, 0x3

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v15

    const/16 v14, 0x18

    shl-long/2addr v7, v14

    xor-long/2addr v12, v7

    .line 693
    :pswitch_4
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v15

    const/16 v14, 0x10

    shl-long/2addr v7, v14

    xor-long/2addr v12, v7

    .line 695
    :pswitch_5
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v0, v7

    int-to-long v7, v7

    and-long/2addr v7, v15

    const/16 v14, 0x8

    shl-long/2addr v7, v14

    xor-long/2addr v12, v7

    .line 697
    :pswitch_6
    aget-byte v7, v0, v6

    int-to-long v7, v7

    and-long/2addr v7, v15

    xor-long/2addr v7, v12

    .line 698
    .end local v12    # "k1":J
    .local v7, "k1":J
    mul-long/2addr v7, v10

    .line 699
    invoke-static {v7, v8, v9}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v7

    .line 700
    const-wide v9, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long v12, v7, v9

    .line 701
    .end local v7    # "k1":J
    .restart local v12    # "k1":J
    xor-long/2addr v3, v12

    .line 705
    :goto_1
    int-to-long v7, v1

    xor-long/2addr v3, v7

    .line 706
    invoke-static {v3, v4}, Lorg/apache/commons/codec/digest/MurmurHash3;->fmix64(J)J

    move-result-wide v3

    .line 708
    return-wide v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static mix32(II)I
    .locals 2
    .param p0, "k"    # I
    .param p1, "hash"    # I

    .line 970
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr p0, v0

    .line 971
    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    .line 972
    const v0, 0x1b873593

    mul-int/2addr p0, v0

    .line 973
    xor-int/2addr p1, p0

    .line 974
    const/16 v0, 0xd

    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v0, v1

    return v0
.end method
