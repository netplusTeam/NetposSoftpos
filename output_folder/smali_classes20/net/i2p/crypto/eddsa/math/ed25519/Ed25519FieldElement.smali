.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;
.super Lnet/i2p/crypto/eddsa/math/FieldElement;
.source "Ed25519FieldElement.java"


# static fields
.field private static final ZERO:[B


# instance fields
.field final t:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const/16 v0, 0x20

    new-array v0, v0, [B

    sput-object v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->ZERO:[B

    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V
    .locals 2
    .param p1, "f"    # Lnet/i2p/crypto/eddsa/math/Field;
    .param p2, "t"    # [I

    .line 41
    invoke-direct {p0, p1}, Lnet/i2p/crypto/eddsa/math/FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;)V

    .line 42
    array-length v0, p2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 44
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid radix-2^51 representation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 6
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 78
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 79
    .local v0, "g":[I
    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 80
    .local v2, "h":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 81
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v4, v4, v3

    aget v5, v0, v3

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    :cond_0
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v2}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 6
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "b"    # I

    .line 959
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 960
    .local v0, "that":Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;
    neg-int p2, p2

    .line 961
    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 962
    .local v2, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 963
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v4, v3

    aput v5, v2, v3

    .line 964
    aget v4, v4, v3

    iget-object v5, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v5, v5, v3

    xor-int/2addr v4, v5

    .line 965
    .local v4, "x":I
    and-int/2addr v4, p2

    .line 966
    aget v5, v2, v3

    xor-int/2addr v5, v4

    aput v5, v2, v3

    .line 962
    .end local v4    # "x":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 968
    .end local v3    # "i":I
    :cond_0
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v2}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 978
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 979
    return v1

    .line 980
    :cond_0
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    .line 981
    .local v0, "fe":Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lnet/i2p/crypto/eddsa/Utils;->equal([B[B)I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    move v1, v3

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 973
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public invert()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 8

    .line 720
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 723
    .local v0, "t0":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 726
    .local v1, "t1":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 729
    invoke-virtual {p0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 732
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 735
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 738
    .local v2, "t2":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 741
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 744
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 745
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 744
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 749
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 752
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 755
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_1
    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    .line 756
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 755
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 760
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 763
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 766
    .local v3, "t3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_2
    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 767
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 766
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 771
    .end local v6    # "i":I
    :cond_2
    invoke-virtual {v3, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 774
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 777
    const/4 v6, 0x1

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v5, :cond_3

    .line 778
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 777
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 782
    .end local v6    # "i":I
    :cond_3
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 785
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 788
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_4
    const/16 v6, 0x32

    if-ge v5, v6, :cond_4

    .line 789
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 788
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 793
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 796
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 799
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_5
    const/16 v7, 0x64

    if-ge v5, v7, :cond_5

    .line 800
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 799
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 804
    .end local v5    # "i":I
    :cond_5
    invoke-virtual {v3, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 807
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 810
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_6
    if-ge v5, v6, :cond_6

    .line 811
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 810
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 815
    .end local v5    # "i":I
    :cond_6
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 818
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 821
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_7
    if-ge v5, v4, :cond_7

    .line 822
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 821
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 826
    .end local v5    # "i":I
    :cond_7
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    return-object v4
.end method

.method public isNonZero()Z
    .locals 2

    .line 55
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v0

    .line 56
    .local v0, "s":[B
    sget-object v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->ZERO:[B

    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/Utils;->equal([B[B)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 268
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v1

    check-cast v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v2, v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 179
    .local v2, "g":[I
    const/4 v3, 0x1

    aget v4, v2, v3

    mul-int/lit8 v4, v4, 0x13

    .line 180
    .local v4, "g1_19":I
    const/4 v5, 0x2

    aget v6, v2, v5

    mul-int/lit8 v6, v6, 0x13

    .line 181
    .local v6, "g2_19":I
    const/4 v7, 0x3

    aget v8, v2, v7

    mul-int/lit8 v8, v8, 0x13

    .line 182
    .local v8, "g3_19":I
    const/4 v9, 0x4

    aget v10, v2, v9

    mul-int/lit8 v10, v10, 0x13

    .line 183
    .local v10, "g4_19":I
    const/4 v11, 0x5

    aget v12, v2, v11

    mul-int/lit8 v12, v12, 0x13

    .line 184
    .local v12, "g5_19":I
    const/4 v13, 0x6

    aget v14, v2, v13

    mul-int/lit8 v14, v14, 0x13

    .line 185
    .local v14, "g6_19":I
    const/4 v15, 0x7

    aget v16, v2, v15

    mul-int/lit8 v13, v16, 0x13

    .line 186
    .local v13, "g7_19":I
    const/16 v16, 0x8

    aget v18, v2, v16

    mul-int/lit8 v9, v18, 0x13

    .line 187
    .local v9, "g8_19":I
    const/16 v18, 0x9

    aget v20, v2, v18

    mul-int/lit8 v5, v20, 0x13

    .line 188
    .local v5, "g9_19":I
    iget-object v15, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v11, v15, v3

    mul-int/lit8 v3, v11, 0x2

    .line 189
    .local v3, "f1_2":I
    aget v1, v15, v7

    mul-int/lit8 v7, v1, 0x2

    .line 190
    .local v7, "f3_2":I
    const/16 v22, 0x5

    aget v0, v15, v22

    move/from16 v25, v4

    .end local v4    # "g1_19":I
    .local v25, "g1_19":I
    mul-int/lit8 v4, v0, 0x2

    .line 191
    .local v4, "f5_2":I
    move/from16 v26, v6

    const/16 v20, 0x7

    .end local v6    # "g2_19":I
    .local v26, "g2_19":I
    aget v6, v15, v20

    move/from16 v27, v8

    .end local v8    # "g3_19":I
    .local v27, "g3_19":I
    mul-int/lit8 v8, v6, 0x2

    .line 192
    .local v8, "f7_2":I
    move/from16 v28, v8

    .end local v8    # "f7_2":I
    .local v28, "f7_2":I
    aget v8, v15, v18

    move/from16 v29, v6

    mul-int/lit8 v6, v8, 0x2

    .line 193
    .local v6, "f9_2":I
    const/16 v30, 0x0

    move/from16 v31, v6

    .end local v6    # "f9_2":I
    .local v31, "f9_2":I
    aget v6, v15, v30

    move/from16 v32, v12

    move/from16 v33, v13

    .end local v12    # "g5_19":I
    .end local v13    # "g7_19":I
    .local v32, "g5_19":I
    .local v33, "g7_19":I
    int-to-long v12, v6

    move/from16 v34, v8

    aget v8, v2, v30

    move/from16 v35, v7

    .end local v7    # "f3_2":I
    .local v35, "f3_2":I
    int-to-long v7, v8

    mul-long/2addr v12, v7

    .line 194
    .local v12, "f0g0":J
    int-to-long v7, v6

    move-wide/from16 v36, v12

    const/16 v23, 0x1

    .end local v12    # "f0g0":J
    .local v36, "f0g0":J
    aget v12, v2, v23

    int-to-long v12, v12

    mul-long/2addr v7, v12

    .line 195
    .local v7, "f0g1":J
    int-to-long v12, v6

    move-wide/from16 v38, v7

    const/16 v21, 0x2

    .end local v7    # "f0g1":J
    .local v38, "f0g1":J
    aget v7, v2, v21

    int-to-long v7, v7

    mul-long/2addr v12, v7

    .line 196
    .local v12, "f0g2":J
    int-to-long v7, v6

    move-wide/from16 v40, v12

    const/16 v24, 0x3

    .end local v12    # "f0g2":J
    .local v40, "f0g2":J
    aget v12, v2, v24

    int-to-long v12, v12

    mul-long/2addr v7, v12

    .line 197
    .local v7, "f0g3":J
    int-to-long v12, v6

    move-wide/from16 v42, v7

    const/16 v19, 0x4

    .end local v7    # "f0g3":J
    .local v42, "f0g3":J
    aget v7, v2, v19

    int-to-long v7, v7

    mul-long/2addr v12, v7

    .line 198
    .local v12, "f0g4":J
    int-to-long v7, v6

    move-wide/from16 v44, v12

    const/16 v22, 0x5

    .end local v12    # "f0g4":J
    .local v44, "f0g4":J
    aget v12, v2, v22

    int-to-long v12, v12

    mul-long/2addr v7, v12

    .line 199
    .local v7, "f0g5":J
    int-to-long v12, v6

    move-wide/from16 v46, v7

    const/16 v17, 0x6

    .end local v7    # "f0g5":J
    .local v46, "f0g5":J
    aget v7, v2, v17

    int-to-long v7, v7

    mul-long/2addr v12, v7

    .line 200
    .local v12, "f0g6":J
    int-to-long v7, v6

    move-wide/from16 v48, v12

    const/16 v20, 0x7

    .end local v12    # "f0g6":J
    .local v48, "f0g6":J
    aget v12, v2, v20

    int-to-long v12, v12

    mul-long/2addr v7, v12

    .line 201
    .local v7, "f0g7":J
    int-to-long v12, v6

    move-wide/from16 v50, v7

    .end local v7    # "f0g7":J
    .local v50, "f0g7":J
    aget v7, v2, v16

    int-to-long v7, v7

    mul-long/2addr v12, v7

    .line 202
    .local v12, "f0g8":J
    int-to-long v6, v6

    aget v8, v2, v18

    move-wide/from16 v52, v12

    .end local v12    # "f0g8":J
    .local v52, "f0g8":J
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 203
    .local v6, "f0g9":J
    int-to-long v12, v11

    aget v8, v2, v30

    move-wide/from16 v54, v6

    .end local v6    # "f0g9":J
    .local v54, "f0g9":J
    int-to-long v6, v8

    mul-long/2addr v12, v6

    .line 204
    .local v12, "f1g0":J
    int-to-long v6, v3

    move-wide/from16 v56, v12

    const/4 v8, 0x1

    .end local v12    # "f1g0":J
    .local v56, "f1g0":J
    aget v12, v2, v8

    int-to-long v12, v12

    mul-long/2addr v6, v12

    .line 205
    .local v6, "f1g1_2":J
    int-to-long v12, v11

    move-wide/from16 v58, v6

    const/4 v8, 0x2

    .end local v6    # "f1g1_2":J
    .local v58, "f1g1_2":J
    aget v6, v2, v8

    int-to-long v6, v6

    mul-long/2addr v12, v6

    .line 206
    .local v12, "f1g2":J
    int-to-long v6, v3

    move-wide/from16 v60, v12

    const/4 v8, 0x3

    .end local v12    # "f1g2":J
    .local v60, "f1g2":J
    aget v12, v2, v8

    int-to-long v12, v12

    mul-long/2addr v6, v12

    .line 207
    .local v6, "f1g3_2":J
    int-to-long v12, v11

    move-wide/from16 v62, v6

    const/4 v8, 0x4

    .end local v6    # "f1g3_2":J
    .local v62, "f1g3_2":J
    aget v6, v2, v8

    int-to-long v6, v6

    mul-long/2addr v12, v6

    .line 208
    .local v12, "f1g4":J
    int-to-long v6, v3

    move-wide/from16 v64, v12

    const/4 v8, 0x5

    .end local v12    # "f1g4":J
    .local v64, "f1g4":J
    aget v12, v2, v8

    int-to-long v12, v12

    mul-long/2addr v6, v12

    .line 209
    .local v6, "f1g5_2":J
    int-to-long v12, v11

    move-wide/from16 v66, v6

    const/4 v8, 0x6

    .end local v6    # "f1g5_2":J
    .local v66, "f1g5_2":J
    aget v6, v2, v8

    int-to-long v6, v6

    mul-long/2addr v12, v6

    .line 210
    .local v12, "f1g6":J
    int-to-long v6, v3

    move-wide/from16 v68, v12

    const/4 v8, 0x7

    .end local v12    # "f1g6":J
    .local v68, "f1g6":J
    aget v12, v2, v8

    int-to-long v12, v12

    mul-long/2addr v6, v12

    .line 211
    .local v6, "f1g7_2":J
    int-to-long v11, v11

    aget v8, v2, v16

    move-wide/from16 v70, v6

    .end local v6    # "f1g7_2":J
    .local v70, "f1g7_2":J
    int-to-long v6, v8

    mul-long/2addr v11, v6

    .line 212
    .local v11, "f1g8":J
    int-to-long v6, v3

    move-wide/from16 v72, v11

    .end local v11    # "f1g8":J
    .local v72, "f1g8":J
    int-to-long v11, v5

    mul-long/2addr v6, v11

    .line 213
    .local v6, "f1g9_38":J
    const/4 v8, 0x2

    aget v11, v15, v8

    int-to-long v12, v11

    aget v8, v2, v30

    move-wide/from16 v74, v6

    .end local v6    # "f1g9_38":J
    .local v74, "f1g9_38":J
    int-to-long v6, v8

    mul-long/2addr v12, v6

    .line 214
    .local v12, "f2g0":J
    int-to-long v6, v11

    move/from16 v76, v3

    const/4 v8, 0x1

    .end local v3    # "f1_2":I
    .local v76, "f1_2":I
    aget v3, v2, v8

    move-wide/from16 v77, v12

    .end local v12    # "f2g0":J
    .local v77, "f2g0":J
    int-to-long v12, v3

    mul-long/2addr v6, v12

    .line 215
    .local v6, "f2g1":J
    int-to-long v12, v11

    const/4 v3, 0x2

    aget v8, v2, v3

    move-wide/from16 v79, v6

    .end local v6    # "f2g1":J
    .local v79, "f2g1":J
    int-to-long v6, v8

    mul-long/2addr v12, v6

    .line 216
    .local v12, "f2g2":J
    int-to-long v6, v11

    const/4 v3, 0x3

    aget v8, v2, v3

    move-wide/from16 v81, v12

    .end local v12    # "f2g2":J
    .local v81, "f2g2":J
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 217
    .local v6, "f2g3":J
    int-to-long v12, v11

    const/4 v3, 0x4

    aget v8, v2, v3

    move-wide/from16 v83, v6

    .end local v6    # "f2g3":J
    .local v83, "f2g3":J
    int-to-long v6, v8

    mul-long/2addr v12, v6

    .line 218
    .local v12, "f2g4":J
    int-to-long v6, v11

    const/4 v3, 0x5

    aget v8, v2, v3

    move-wide/from16 v85, v12

    .end local v12    # "f2g4":J
    .local v85, "f2g4":J
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 219
    .local v6, "f2g5":J
    int-to-long v12, v11

    const/4 v3, 0x6

    aget v8, v2, v3

    move-wide/from16 v87, v6

    .end local v6    # "f2g5":J
    .local v87, "f2g5":J
    int-to-long v6, v8

    mul-long/2addr v12, v6

    .line 220
    .local v12, "f2g6":J
    int-to-long v6, v11

    const/4 v3, 0x7

    aget v8, v2, v3

    move-wide/from16 v89, v12

    .end local v12    # "f2g6":J
    .local v89, "f2g6":J
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 221
    .local v6, "f2g7":J
    int-to-long v12, v11

    move-wide/from16 v91, v6

    .end local v6    # "f2g7":J
    .local v91, "f2g7":J
    int-to-long v6, v9

    mul-long/2addr v12, v6

    .line 222
    .local v12, "f2g8_19":J
    int-to-long v6, v11

    move-wide/from16 v93, v12

    .end local v12    # "f2g8_19":J
    .local v93, "f2g8_19":J
    int-to-long v11, v5

    mul-long/2addr v6, v11

    .line 223
    .local v6, "f2g9_19":J
    int-to-long v11, v1

    aget v3, v2, v30

    move-wide/from16 v95, v6

    .end local v6    # "f2g9_19":J
    .local v95, "f2g9_19":J
    int-to-long v6, v3

    mul-long/2addr v11, v6

    .line 224
    .local v11, "f3g0":J
    move/from16 v3, v35

    .end local v35    # "f3_2":I
    .local v3, "f3_2":I
    int-to-long v6, v3

    const/4 v8, 0x1

    aget v13, v2, v8

    move-wide/from16 v97, v11

    .end local v11    # "f3g0":J
    .local v97, "f3g0":J
    int-to-long v11, v13

    mul-long/2addr v6, v11

    .line 225
    .local v6, "f3g1_2":J
    int-to-long v11, v1

    const/4 v8, 0x2

    aget v13, v2, v8

    move-wide/from16 v99, v6

    .end local v6    # "f3g1_2":J
    .local v99, "f3g1_2":J
    int-to-long v6, v13

    mul-long/2addr v11, v6

    .line 226
    .local v11, "f3g2":J
    int-to-long v6, v3

    const/4 v8, 0x3

    aget v13, v2, v8

    move-wide/from16 v101, v11

    .end local v11    # "f3g2":J
    .local v101, "f3g2":J
    int-to-long v11, v13

    mul-long/2addr v6, v11

    .line 227
    .local v6, "f3g3_2":J
    int-to-long v11, v1

    const/4 v8, 0x4

    aget v13, v2, v8

    move-wide/from16 v103, v6

    .end local v6    # "f3g3_2":J
    .local v103, "f3g3_2":J
    int-to-long v6, v13

    mul-long/2addr v11, v6

    .line 228
    .local v11, "f3g4":J
    int-to-long v6, v3

    const/4 v8, 0x5

    aget v13, v2, v8

    move-wide/from16 v105, v11

    .end local v11    # "f3g4":J
    .local v105, "f3g4":J
    int-to-long v11, v13

    mul-long/2addr v6, v11

    .line 229
    .local v6, "f3g5_2":J
    int-to-long v11, v1

    const/4 v8, 0x6

    aget v13, v2, v8

    move-wide/from16 v107, v6

    .end local v6    # "f3g5_2":J
    .local v107, "f3g5_2":J
    int-to-long v6, v13

    mul-long/2addr v11, v6

    .line 230
    .local v11, "f3g6":J
    int-to-long v6, v3

    move-wide/from16 v109, v11

    move/from16 v8, v33

    .end local v11    # "f3g6":J
    .end local v33    # "g7_19":I
    .local v8, "g7_19":I
    .local v109, "f3g6":J
    int-to-long v11, v8

    mul-long/2addr v6, v11

    .line 231
    .local v6, "f3g7_38":J
    int-to-long v11, v1

    move-wide/from16 v111, v6

    .end local v6    # "f3g7_38":J
    .local v111, "f3g7_38":J
    int-to-long v6, v9

    mul-long/2addr v11, v6

    .line 232
    .local v11, "f3g8_19":J
    int-to-long v6, v3

    move-wide/from16 v113, v11

    .end local v11    # "f3g8_19":J
    .local v113, "f3g8_19":J
    int-to-long v11, v5

    mul-long/2addr v6, v11

    .line 233
    .local v6, "f3g9_38":J
    const/4 v1, 0x4

    aget v11, v15, v1

    int-to-long v12, v11

    aget v1, v2, v30

    move-wide/from16 v115, v6

    .end local v6    # "f3g9_38":J
    .local v115, "f3g9_38":J
    int-to-long v6, v1

    mul-long/2addr v12, v6

    .line 234
    .local v12, "f4g0":J
    int-to-long v6, v11

    const/4 v1, 0x1

    .end local v3    # "f3_2":I
    .restart local v35    # "f3_2":I
    aget v3, v2, v1

    move-wide/from16 v117, v12

    .end local v12    # "f4g0":J
    .local v117, "f4g0":J
    int-to-long v12, v3

    mul-long/2addr v6, v12

    .line 235
    .local v6, "f4g1":J
    int-to-long v12, v11

    const/4 v1, 0x2

    aget v3, v2, v1

    move-wide/from16 v119, v6

    .end local v6    # "f4g1":J
    .local v119, "f4g1":J
    int-to-long v6, v3

    mul-long/2addr v12, v6

    .line 236
    .local v12, "f4g2":J
    int-to-long v6, v11

    const/4 v1, 0x3

    aget v3, v2, v1

    move-wide/from16 v121, v12

    .end local v12    # "f4g2":J
    .local v121, "f4g2":J
    int-to-long v12, v3

    mul-long/2addr v6, v12

    .line 237
    .local v6, "f4g3":J
    int-to-long v12, v11

    const/4 v1, 0x4

    aget v3, v2, v1

    move-wide/from16 v123, v6

    .end local v6    # "f4g3":J
    .local v123, "f4g3":J
    int-to-long v6, v3

    mul-long/2addr v12, v6

    .line 238
    .local v12, "f4g4":J
    int-to-long v6, v11

    const/4 v1, 0x5

    aget v3, v2, v1

    move-wide/from16 v125, v12

    .end local v12    # "f4g4":J
    .local v125, "f4g4":J
    int-to-long v12, v3

    mul-long/2addr v6, v12

    .line 239
    .local v6, "f4g5":J
    int-to-long v12, v11

    move-wide/from16 v127, v6

    .end local v6    # "f4g5":J
    .local v127, "f4g5":J
    int-to-long v6, v14

    mul-long/2addr v12, v6

    .line 240
    .local v12, "f4g6_19":J
    int-to-long v6, v11

    move-wide/from16 v129, v12

    .end local v12    # "f4g6_19":J
    .local v129, "f4g6_19":J
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 241
    .local v6, "f4g7_19":J
    int-to-long v12, v11

    move-wide/from16 v131, v6

    .end local v6    # "f4g7_19":J
    .local v131, "f4g7_19":J
    int-to-long v6, v9

    mul-long/2addr v12, v6

    .line 242
    .local v12, "f4g8_19":J
    int-to-long v6, v11

    move-wide/from16 v133, v12

    .end local v12    # "f4g8_19":J
    .local v133, "f4g8_19":J
    int-to-long v11, v5

    mul-long/2addr v6, v11

    .line 243
    .local v6, "f4g9_19":J
    int-to-long v11, v0

    aget v1, v2, v30

    move-wide/from16 v135, v6

    .end local v6    # "f4g9_19":J
    .local v135, "f4g9_19":J
    int-to-long v6, v1

    mul-long/2addr v11, v6

    .line 244
    .local v11, "f5g0":J
    int-to-long v6, v4

    const/4 v1, 0x1

    aget v3, v2, v1

    move-wide/from16 v137, v11

    .end local v11    # "f5g0":J
    .local v137, "f5g0":J
    int-to-long v11, v3

    mul-long/2addr v6, v11

    .line 245
    .local v6, "f5g1_2":J
    int-to-long v11, v0

    const/4 v1, 0x2

    aget v3, v2, v1

    move-wide/from16 v139, v6

    .end local v6    # "f5g1_2":J
    .local v139, "f5g1_2":J
    int-to-long v6, v3

    mul-long/2addr v11, v6

    .line 246
    .local v11, "f5g2":J
    int-to-long v6, v4

    const/4 v1, 0x3

    aget v3, v2, v1

    move-wide/from16 v141, v11

    .end local v11    # "f5g2":J
    .local v141, "f5g2":J
    int-to-long v11, v3

    mul-long/2addr v6, v11

    .line 247
    .local v6, "f5g3_2":J
    int-to-long v11, v0

    const/4 v1, 0x4

    aget v3, v2, v1

    move-wide/from16 v143, v6

    .end local v6    # "f5g3_2":J
    .local v143, "f5g3_2":J
    int-to-long v6, v3

    mul-long/2addr v11, v6

    .line 248
    .local v11, "f5g4":J
    int-to-long v6, v4

    move/from16 v1, v32

    move-wide/from16 v32, v11

    .end local v11    # "f5g4":J
    .local v1, "g5_19":I
    .local v32, "f5g4":J
    int-to-long v11, v1

    mul-long/2addr v6, v11

    .line 249
    .local v6, "f5g5_38":J
    int-to-long v11, v0

    move-wide/from16 v145, v6

    .end local v6    # "f5g5_38":J
    .local v145, "f5g5_38":J
    int-to-long v6, v14

    mul-long/2addr v11, v6

    .line 250
    .local v11, "f5g6_19":J
    int-to-long v6, v4

    move-wide/from16 v147, v11

    .end local v11    # "f5g6_19":J
    .local v147, "f5g6_19":J
    int-to-long v11, v8

    mul-long/2addr v6, v11

    .line 251
    .local v6, "f5g7_38":J
    int-to-long v11, v0

    move-wide/from16 v149, v6

    .end local v6    # "f5g7_38":J
    .local v149, "f5g7_38":J
    int-to-long v6, v9

    mul-long/2addr v11, v6

    .line 252
    .local v11, "f5g8_19":J
    int-to-long v6, v4

    move v0, v4

    .end local v4    # "f5_2":I
    .local v0, "f5_2":I
    int-to-long v3, v5

    mul-long/2addr v6, v3

    .line 253
    .local v6, "f5g9_38":J
    const/4 v3, 0x6

    aget v4, v15, v3

    move-wide/from16 v151, v6

    .end local v6    # "f5g9_38":J
    .local v151, "f5g9_38":J
    int-to-long v6, v4

    aget v3, v2, v30

    move-wide/from16 v153, v11

    .end local v11    # "f5g8_19":J
    .local v153, "f5g8_19":J
    int-to-long v11, v3

    mul-long/2addr v6, v11

    .line 254
    .local v6, "f6g0":J
    int-to-long v11, v4

    const/4 v3, 0x1

    aget v13, v2, v3

    move-wide/from16 v155, v6

    .end local v6    # "f6g0":J
    .local v155, "f6g0":J
    int-to-long v6, v13

    mul-long/2addr v11, v6

    .line 255
    .local v11, "f6g1":J
    int-to-long v6, v4

    const/4 v3, 0x2

    aget v13, v2, v3

    move-wide/from16 v157, v11

    .end local v11    # "f6g1":J
    .local v157, "f6g1":J
    int-to-long v11, v13

    mul-long/2addr v6, v11

    .line 256
    .local v6, "f6g2":J
    int-to-long v11, v4

    const/4 v3, 0x3

    aget v13, v2, v3

    move-wide/from16 v159, v6

    .end local v6    # "f6g2":J
    .local v159, "f6g2":J
    int-to-long v6, v13

    mul-long/2addr v11, v6

    .line 257
    .local v11, "f6g3":J
    int-to-long v6, v4

    move-wide/from16 v161, v11

    .end local v11    # "f6g3":J
    .local v161, "f6g3":J
    int-to-long v11, v10

    mul-long/2addr v6, v11

    .line 258
    .local v6, "f6g4_19":J
    int-to-long v11, v4

    move-wide/from16 v163, v6

    .end local v6    # "f6g4_19":J
    .local v163, "f6g4_19":J
    int-to-long v6, v1

    mul-long/2addr v11, v6

    .line 259
    .local v11, "f6g5_19":J
    int-to-long v6, v4

    move-wide/from16 v165, v11

    .end local v11    # "f6g5_19":J
    .local v165, "f6g5_19":J
    int-to-long v11, v14

    mul-long/2addr v6, v11

    .line 260
    .local v6, "f6g6_19":J
    int-to-long v11, v4

    move-wide/from16 v167, v6

    .end local v6    # "f6g6_19":J
    .local v167, "f6g6_19":J
    int-to-long v6, v8

    mul-long/2addr v11, v6

    .line 261
    .local v11, "f6g7_19":J
    int-to-long v6, v4

    move-wide/from16 v169, v11

    .end local v11    # "f6g7_19":J
    .local v169, "f6g7_19":J
    int-to-long v11, v9

    mul-long/2addr v6, v11

    .line 262
    .local v6, "f6g8_19":J
    int-to-long v3, v4

    int-to-long v11, v5

    mul-long/2addr v3, v11

    .line 263
    .local v3, "f6g9_19":J
    move/from16 v11, v29

    int-to-long v12, v11

    move/from16 v29, v0

    .end local v0    # "f5_2":I
    .local v29, "f5_2":I
    aget v0, v2, v30

    move-wide/from16 v171, v3

    .end local v3    # "f6g9_19":J
    .local v171, "f6g9_19":J
    int-to-long v3, v0

    mul-long/2addr v12, v3

    .line 264
    .local v12, "f7g0":J
    move/from16 v0, v28

    .end local v28    # "f7_2":I
    .local v0, "f7_2":I
    int-to-long v3, v0

    move-wide/from16 v173, v12

    const/16 v23, 0x1

    .end local v12    # "f7g0":J
    .local v173, "f7g0":J
    aget v12, v2, v23

    int-to-long v12, v12

    mul-long/2addr v3, v12

    .line 265
    .local v3, "f7g1_2":J
    int-to-long v12, v11

    move-wide/from16 v175, v3

    const/16 v21, 0x2

    .end local v3    # "f7g1_2":J
    .local v175, "f7g1_2":J
    aget v3, v2, v21

    int-to-long v3, v3

    mul-long/2addr v12, v3

    .line 266
    .local v12, "f7g2":J
    int-to-long v3, v0

    move-wide/from16 v177, v12

    move/from16 v12, v27

    move-wide/from16 v27, v6

    .end local v6    # "f6g8_19":J
    .local v12, "g3_19":I
    .local v27, "f6g8_19":J
    .local v177, "f7g2":J
    int-to-long v6, v12

    mul-long/2addr v3, v6

    .line 267
    .local v3, "f7g3_38":J
    int-to-long v6, v11

    move-wide/from16 v179, v3

    .end local v3    # "f7g3_38":J
    .local v179, "f7g3_38":J
    int-to-long v3, v10

    mul-long/2addr v6, v3

    .line 268
    .local v6, "f7g4_19":J
    int-to-long v3, v0

    move-wide/from16 v181, v6

    .end local v6    # "f7g4_19":J
    .local v181, "f7g4_19":J
    int-to-long v6, v1

    mul-long/2addr v3, v6

    .line 269
    .local v3, "f7g5_38":J
    int-to-long v6, v11

    move-wide/from16 v183, v3

    .end local v3    # "f7g5_38":J
    .local v183, "f7g5_38":J
    int-to-long v3, v14

    mul-long/2addr v6, v3

    .line 270
    .local v6, "f7g6_19":J
    int-to-long v3, v0

    move-wide/from16 v185, v6

    .end local v6    # "f7g6_19":J
    .local v185, "f7g6_19":J
    int-to-long v6, v8

    mul-long/2addr v3, v6

    .line 271
    .local v3, "f7g7_38":J
    int-to-long v6, v11

    move-wide/from16 v187, v3

    .end local v3    # "f7g7_38":J
    .local v187, "f7g7_38":J
    int-to-long v3, v9

    mul-long/2addr v6, v3

    .line 272
    .local v6, "f7g8_19":J
    int-to-long v3, v0

    move-wide/from16 v189, v6

    .end local v6    # "f7g8_19":J
    .local v189, "f7g8_19":J
    int-to-long v6, v5

    mul-long/2addr v3, v6

    .line 273
    .local v3, "f7g9_38":J
    aget v6, v15, v16

    move-wide/from16 v191, v3

    .end local v3    # "f7g9_38":J
    .local v191, "f7g9_38":J
    int-to-long v3, v6

    aget v7, v2, v30

    move v11, v8

    .end local v8    # "g7_19":I
    .local v11, "g7_19":I
    int-to-long v7, v7

    mul-long/2addr v3, v7

    .line 274
    .local v3, "f8g0":J
    int-to-long v7, v6

    const/4 v13, 0x1

    aget v15, v2, v13

    move-wide/from16 v193, v3

    .end local v3    # "f8g0":J
    .local v193, "f8g0":J
    int-to-long v3, v15

    mul-long/2addr v7, v3

    .line 275
    .local v7, "f8g1":J
    int-to-long v3, v6

    move-wide/from16 v195, v7

    move/from16 v13, v26

    .end local v7    # "f8g1":J
    .end local v26    # "g2_19":I
    .local v13, "g2_19":I
    .local v195, "f8g1":J
    int-to-long v7, v13

    mul-long/2addr v3, v7

    .line 276
    .local v3, "f8g2_19":J
    int-to-long v7, v6

    move-wide/from16 v197, v3

    .end local v3    # "f8g2_19":J
    .local v197, "f8g2_19":J
    int-to-long v3, v12

    mul-long/2addr v7, v3

    .line 277
    .local v7, "f8g3_19":J
    int-to-long v3, v6

    move-wide/from16 v199, v7

    .end local v7    # "f8g3_19":J
    .local v199, "f8g3_19":J
    int-to-long v7, v10

    mul-long/2addr v3, v7

    .line 278
    .local v3, "f8g4_19":J
    int-to-long v7, v6

    move-wide/from16 v201, v3

    .end local v3    # "f8g4_19":J
    .local v201, "f8g4_19":J
    int-to-long v3, v1

    mul-long/2addr v7, v3

    .line 279
    .local v7, "f8g5_19":J
    int-to-long v3, v6

    move-wide/from16 v203, v7

    .end local v7    # "f8g5_19":J
    .local v203, "f8g5_19":J
    int-to-long v7, v14

    mul-long/2addr v3, v7

    .line 280
    .local v3, "f8g6_19":J
    int-to-long v7, v6

    move-wide/from16 v205, v3

    .end local v3    # "f8g6_19":J
    .local v205, "f8g6_19":J
    int-to-long v3, v11

    mul-long/2addr v7, v3

    .line 281
    .local v7, "f8g7_19":J
    int-to-long v3, v6

    move-wide/from16 v207, v7

    .end local v7    # "f8g7_19":J
    .local v207, "f8g7_19":J
    int-to-long v7, v9

    mul-long/2addr v3, v7

    .line 282
    .local v3, "f8g8_19":J
    int-to-long v6, v6

    move-wide/from16 v209, v3

    .end local v3    # "f8g8_19":J
    .local v209, "f8g8_19":J
    int-to-long v3, v5

    mul-long/2addr v6, v3

    .line 283
    .local v6, "f8g9_19":J
    move-wide/from16 v211, v6

    move/from16 v3, v34

    .end local v6    # "f8g9_19":J
    .local v211, "f8g9_19":J
    int-to-long v6, v3

    aget v4, v2, v30

    move v8, v5

    .end local v5    # "g9_19":I
    .local v8, "g9_19":I
    int-to-long v4, v4

    mul-long/2addr v6, v4

    .line 284
    .local v6, "f9g0":J
    move-wide/from16 v213, v6

    move/from16 v4, v31

    .end local v6    # "f9g0":J
    .end local v31    # "f9_2":I
    .local v4, "f9_2":I
    .local v213, "f9g0":J
    int-to-long v5, v4

    move v15, v9

    move/from16 v7, v25

    move/from16 v25, v8

    .end local v8    # "g9_19":I
    .end local v9    # "g8_19":I
    .local v7, "g1_19":I
    .local v15, "g8_19":I
    .local v25, "g9_19":I
    int-to-long v8, v7

    mul-long/2addr v5, v8

    .line 285
    .local v5, "f9g1_38":J
    int-to-long v8, v3

    move-wide/from16 v215, v5

    .end local v5    # "f9g1_38":J
    .local v215, "f9g1_38":J
    int-to-long v5, v13

    mul-long/2addr v8, v5

    .line 286
    .local v8, "f9g2_19":J
    int-to-long v5, v4

    move/from16 v26, v7

    move-wide/from16 v217, v8

    .end local v7    # "g1_19":I
    .end local v8    # "f9g2_19":J
    .local v26, "g1_19":I
    .local v217, "f9g2_19":J
    int-to-long v7, v12

    mul-long/2addr v5, v7

    .line 287
    .local v5, "f9g3_38":J
    int-to-long v7, v3

    move v9, v12

    move/from16 v31, v13

    .end local v12    # "g3_19":I
    .end local v13    # "g2_19":I
    .local v9, "g3_19":I
    .local v31, "g2_19":I
    int-to-long v12, v10

    mul-long/2addr v7, v12

    .line 288
    .local v7, "f9g4_19":J
    int-to-long v12, v4

    move/from16 v219, v9

    move/from16 v34, v10

    .end local v9    # "g3_19":I
    .end local v10    # "g4_19":I
    .local v34, "g4_19":I
    .local v219, "g3_19":I
    int-to-long v9, v1

    mul-long/2addr v12, v9

    .line 289
    .local v12, "f9g5_38":J
    int-to-long v9, v3

    move/from16 v221, v0

    move/from16 v220, v1

    .end local v0    # "f7_2":I
    .end local v1    # "g5_19":I
    .local v220, "g5_19":I
    .local v221, "f7_2":I
    int-to-long v0, v14

    mul-long/2addr v9, v0

    .line 290
    .local v9, "f9g6_19":J
    int-to-long v0, v4

    move/from16 v222, v14

    move/from16 v223, v15

    .end local v14    # "g6_19":I
    .end local v15    # "g8_19":I
    .local v222, "g6_19":I
    .local v223, "g8_19":I
    int-to-long v14, v11

    mul-long/2addr v0, v14

    .line 291
    .local v0, "f9g7_38":J
    int-to-long v14, v3

    move/from16 v3, v223

    move-wide/from16 v223, v0

    .end local v0    # "f9g7_38":J
    .local v3, "g8_19":I
    .local v223, "f9g7_38":J
    int-to-long v0, v3

    mul-long/2addr v14, v0

    .line 292
    .local v14, "f9g8_19":J
    int-to-long v0, v4

    move-object/from16 v225, v2

    move/from16 v226, v3

    move/from16 v2, v25

    move/from16 v25, v4

    .end local v3    # "g8_19":I
    .end local v4    # "f9_2":I
    .local v2, "g9_19":I
    .local v25, "f9_2":I
    .local v225, "g":[I
    .local v226, "g8_19":I
    int-to-long v3, v2

    mul-long/2addr v0, v3

    .line 305
    .local v0, "f9g9_38":J
    add-long v3, v36, v74

    add-long v3, v3, v93

    add-long v3, v3, v111

    add-long v3, v3, v129

    add-long v3, v3, v145

    add-long v3, v3, v163

    add-long v3, v3, v179

    add-long v3, v3, v197

    add-long v3, v3, v215

    .line 306
    .local v3, "h0":J
    add-long v227, v38, v56

    add-long v227, v227, v95

    add-long v227, v227, v113

    add-long v227, v227, v131

    add-long v227, v227, v147

    add-long v227, v227, v165

    add-long v227, v227, v181

    add-long v227, v227, v199

    add-long v227, v227, v217

    .line 307
    .local v227, "h1":J
    add-long v229, v40, v58

    add-long v229, v229, v77

    add-long v229, v229, v115

    add-long v229, v229, v133

    add-long v229, v229, v149

    add-long v229, v229, v167

    add-long v229, v229, v183

    add-long v229, v229, v201

    add-long v229, v229, v5

    .line 308
    .local v229, "h2":J
    add-long v231, v42, v60

    add-long v231, v231, v79

    add-long v231, v231, v97

    add-long v231, v231, v135

    add-long v231, v231, v153

    add-long v231, v231, v169

    add-long v231, v231, v185

    add-long v231, v231, v203

    add-long v231, v231, v7

    .line 309
    .local v231, "h3":J
    add-long v233, v44, v62

    add-long v233, v233, v81

    add-long v233, v233, v99

    add-long v233, v233, v117

    add-long v233, v233, v151

    add-long v233, v233, v27

    add-long v233, v233, v187

    add-long v233, v233, v205

    add-long v233, v233, v12

    .line 310
    .local v233, "h4":J
    add-long v235, v46, v64

    add-long v235, v235, v83

    add-long v235, v235, v101

    add-long v235, v235, v119

    add-long v235, v235, v137

    add-long v235, v235, v171

    add-long v235, v235, v189

    add-long v235, v235, v207

    add-long v235, v235, v9

    .line 311
    .local v235, "h5":J
    add-long v237, v48, v66

    add-long v237, v237, v85

    add-long v237, v237, v103

    add-long v237, v237, v121

    add-long v237, v237, v139

    add-long v237, v237, v155

    add-long v237, v237, v191

    add-long v237, v237, v209

    add-long v237, v237, v223

    .line 312
    .local v237, "h6":J
    add-long v239, v50, v68

    add-long v239, v239, v87

    add-long v239, v239, v105

    add-long v239, v239, v123

    add-long v239, v239, v141

    add-long v239, v239, v157

    add-long v239, v239, v173

    add-long v239, v239, v211

    add-long v239, v239, v14

    .line 313
    .local v239, "h7":J
    add-long v241, v52, v70

    add-long v241, v241, v89

    add-long v241, v241, v107

    add-long v241, v241, v125

    add-long v241, v241, v143

    add-long v241, v241, v159

    add-long v241, v241, v175

    add-long v241, v241, v193

    add-long v241, v241, v0

    .line 314
    .local v241, "h8":J
    add-long v243, v54, v72

    add-long v243, v243, v91

    add-long v243, v243, v109

    add-long v243, v243, v127

    add-long v243, v243, v32

    add-long v243, v243, v161

    add-long v243, v243, v177

    add-long v243, v243, v195

    add-long v243, v243, v213

    .line 333
    .local v243, "h9":J
    const-wide/32 v245, 0x2000000

    add-long v247, v3, v245

    const/16 v249, 0x1a

    shr-long v247, v247, v249

    .local v247, "carry0":J
    add-long v227, v227, v247

    shl-long v250, v247, v249

    sub-long v3, v3, v250

    .line 334
    add-long v250, v233, v245

    shr-long v250, v250, v249

    .local v250, "carry4":J
    add-long v235, v235, v250

    shl-long v252, v250, v249

    sub-long v233, v233, v252

    .line 340
    const-wide/32 v252, 0x1000000

    add-long v254, v227, v252

    const/16 v17, 0x19

    shr-long v254, v254, v17

    .local v254, "carry1":J
    add-long v229, v229, v254

    shl-long v19, v254, v17

    sub-long v227, v227, v19

    .line 341
    add-long v19, v235, v252

    shr-long v19, v19, v17

    .local v19, "carry5":J
    add-long v237, v237, v19

    shl-long v21, v19, v17

    sub-long v235, v235, v21

    .line 347
    add-long v21, v229, v245

    shr-long v21, v21, v249

    .local v21, "carry2":J
    add-long v231, v231, v21

    shl-long v23, v21, v249

    move-wide/16 v256, v0

    .end local v0    # "f9g9_38":J
    .local v256, "f9g9_38":J
    sub-long v0, v229, v23

    .line 348
    .end local v229    # "h2":J
    .local v0, "h2":J
    add-long v23, v237, v245

    shr-long v23, v23, v249

    .local v23, "carry6":J
    add-long v239, v239, v23

    shl-long v229, v23, v249

    move-wide/16 v258, v5

    .end local v5    # "f9g3_38":J
    .local v258, "f9g3_38":J
    sub-long v5, v237, v229

    .line 354
    .end local v237    # "h6":J
    .local v5, "h6":J
    add-long v229, v231, v252

    shr-long v229, v229, v17

    .local v229, "carry3":J
    add-long v233, v233, v229

    shl-long v237, v229, v17

    move-wide/16 v260, v7

    .end local v7    # "f9g4_19":J
    .local v260, "f9g4_19":J
    sub-long v7, v231, v237

    .line 355
    .end local v231    # "h3":J
    .local v7, "h3":J
    add-long v231, v239, v252

    shr-long v231, v231, v17

    .local v231, "carry7":J
    add-long v241, v241, v231

    shl-long v237, v231, v17

    move-wide/16 v262, v9

    .end local v9    # "f9g6_19":J
    .local v262, "f9g6_19":J
    sub-long v9, v239, v237

    .line 361
    .end local v239    # "h7":J
    .local v9, "h7":J
    add-long v237, v233, v245

    shr-long v237, v237, v249

    move/from16 v239, v11

    move-wide/from16 v250, v12

    .end local v11    # "g7_19":I
    .end local v12    # "f9g5_38":J
    .local v237, "carry4":J
    .local v239, "g7_19":I
    .local v250, "f9g5_38":J
    add-long v11, v235, v237

    .end local v235    # "h5":J
    .local v11, "h5":J
    shl-long v235, v237, v249

    move-wide/16 v264, v14

    .end local v14    # "f9g8_19":J
    .local v264, "f9g8_19":J
    sub-long v13, v233, v235

    .line 362
    .end local v233    # "h4":J
    .local v13, "h4":J
    add-long v233, v241, v245

    shr-long v233, v233, v249

    .local v233, "carry8":J
    add-long v243, v243, v233

    shl-long v235, v233, v249

    move-wide/16 v266, v9

    .end local v9    # "h7":J
    .local v266, "h7":J
    sub-long v9, v241, v235

    .line 368
    .end local v241    # "h8":J
    .local v9, "h8":J
    add-long v252, v243, v252

    shr-long v235, v252, v17

    .local v235, "carry9":J
    const-wide/16 v240, 0x13

    mul-long v240, v240, v235

    add-long v3, v3, v240

    shl-long v240, v235, v17

    move-wide/from16 v252, v9

    .end local v9    # "h8":J
    .local v252, "h8":J
    sub-long v9, v243, v240

    .line 372
    .end local v243    # "h9":J
    .local v9, "h9":J
    add-long v245, v3, v245

    shr-long v240, v245, v249

    move-wide/from16 v242, v9

    .end local v9    # "h9":J
    .end local v247    # "carry0":J
    .local v240, "carry0":J
    .local v242, "h9":J
    add-long v9, v227, v240

    .end local v227    # "h1":J
    .local v9, "h1":J
    shl-long v227, v240, v249

    sub-long v3, v3, v227

    .line 376
    const/16 v15, 0xa

    new-array v15, v15, [I

    .line 377
    .local v15, "h":[I
    move/from16 v17, v2

    .end local v2    # "g9_19":I
    .local v17, "g9_19":I
    long-to-int v2, v3

    aput v2, v15, v30

    .line 378
    long-to-int v2, v9

    const/16 v30, 0x1

    aput v2, v15, v30

    .line 379
    long-to-int v2, v0

    const/16 v30, 0x2

    aput v2, v15, v30

    .line 380
    long-to-int v2, v7

    const/16 v30, 0x3

    aput v2, v15, v30

    .line 381
    long-to-int v2, v13

    const/16 v30, 0x4

    aput v2, v15, v30

    .line 382
    long-to-int v2, v11

    const/16 v30, 0x5

    aput v2, v15, v30

    .line 383
    long-to-int v2, v5

    const/16 v30, 0x6

    aput v2, v15, v30

    .line 384
    move-wide/from16 v227, v0

    move-wide/from16 v0, v266

    .end local v266    # "h7":J
    .local v0, "h7":J
    .local v227, "h2":J
    long-to-int v2, v0

    const/16 v30, 0x7

    aput v2, v15, v30

    .line 385
    move-wide/from16 v0, v252

    .end local v252    # "h8":J
    .local v0, "h8":J
    .restart local v266    # "h7":J
    long-to-int v2, v0

    aput v2, v15, v16

    .line 386
    move-wide/from16 v0, v242

    .end local v242    # "h9":J
    .local v0, "h9":J
    .restart local v252    # "h8":J
    long-to-int v2, v0

    aput v2, v15, v18

    .line 387
    new-instance v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v0, p0

    .end local v0    # "h9":J
    .restart local v242    # "h9":J
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v2, v1, v15}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v2
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 4

    .line 132
    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 133
    .local v1, "h":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 134
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v3, v3, v2

    neg-int v3, v3

    aput v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_0
    new-instance v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v0, v2, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v0
.end method

.method public pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 6

    .line 841
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 844
    .local v0, "t0":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 847
    .local v1, "t1":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 850
    invoke-virtual {p0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 856
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 859
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 865
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 866
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 873
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 876
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 877
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 876
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 881
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 884
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 887
    .local v2, "t2":Lnet/i2p/crypto/eddsa/math/FieldElement;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    const/16 v5, 0x14

    if-ge v4, v5, :cond_2

    .line 888
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 887
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 892
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 898
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_3

    .line 899
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 898
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 903
    .end local v4    # "i":I
    :cond_3
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 909
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_4
    const/16 v4, 0x32

    if-ge v3, v4, :cond_4

    .line 910
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 909
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 914
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 917
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 920
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_5
    const/16 v5, 0x64

    if-ge v3, v5, :cond_5

    .line 921
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 920
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 925
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 928
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 931
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_6
    if-ge v3, v4, :cond_6

    .line 932
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 931
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 936
    .end local v3    # "i":I
    :cond_6
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 942
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 945
    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    return-object v3
.end method

.method public square()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 192

    .line 409
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 410
    .local v3, "f0":I
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 411
    .local v5, "f1":I
    const/4 v6, 0x2

    aget v7, v1, v6

    .line 412
    .local v7, "f2":I
    const/4 v8, 0x3

    aget v9, v1, v8

    .line 413
    .local v9, "f3":I
    const/4 v10, 0x4

    aget v11, v1, v10

    .line 414
    .local v11, "f4":I
    const/4 v12, 0x5

    aget v13, v1, v12

    .line 415
    .local v13, "f5":I
    const/4 v14, 0x6

    aget v15, v1, v14

    .line 416
    .local v15, "f6":I
    const/16 v16, 0x7

    aget v14, v1, v16

    .line 417
    .local v14, "f7":I
    const/16 v18, 0x8

    aget v12, v1, v18

    .line 418
    .local v12, "f8":I
    const/16 v20, 0x9

    aget v1, v1, v20

    .line 419
    .local v1, "f9":I
    mul-int/lit8 v10, v3, 0x2

    .line 420
    .local v10, "f0_2":I
    mul-int/lit8 v8, v5, 0x2

    .line 421
    .local v8, "f1_2":I
    mul-int/lit8 v6, v7, 0x2

    .line 422
    .local v6, "f2_2":I
    mul-int/lit8 v4, v9, 0x2

    .line 423
    .local v4, "f3_2":I
    mul-int/lit8 v2, v11, 0x2

    .line 424
    .local v2, "f4_2":I
    mul-int/lit8 v0, v13, 0x2

    .line 425
    .local v0, "f5_2":I
    move/from16 v26, v2

    .end local v2    # "f4_2":I
    .local v26, "f4_2":I
    mul-int/lit8 v2, v15, 0x2

    .line 426
    .local v2, "f6_2":I
    move/from16 v27, v2

    .end local v2    # "f6_2":I
    .local v27, "f6_2":I
    mul-int/lit8 v2, v14, 0x2

    .line 427
    .local v2, "f7_2":I
    move/from16 v28, v6

    .end local v6    # "f2_2":I
    .local v28, "f2_2":I
    mul-int/lit8 v6, v13, 0x26

    .line 428
    .local v6, "f5_38":I
    move/from16 v29, v6

    .end local v6    # "f5_38":I
    .local v29, "f5_38":I
    mul-int/lit8 v6, v15, 0x13

    .line 429
    .local v6, "f6_19":I
    move/from16 v30, v6

    .end local v6    # "f6_19":I
    .local v30, "f6_19":I
    mul-int/lit8 v6, v14, 0x26

    .line 430
    .local v6, "f7_38":I
    move/from16 v31, v6

    .end local v6    # "f7_38":I
    .local v31, "f7_38":I
    mul-int/lit8 v6, v12, 0x13

    .line 431
    .local v6, "f8_19":I
    move/from16 v32, v6

    .end local v6    # "f8_19":I
    .local v32, "f8_19":I
    mul-int/lit8 v6, v1, 0x26

    .line 432
    .local v6, "f9_38":I
    move/from16 v34, v0

    move/from16 v33, v1

    .end local v0    # "f5_2":I
    .end local v1    # "f9":I
    .local v33, "f9":I
    .local v34, "f5_2":I
    int-to-long v0, v3

    move/from16 v36, v14

    move/from16 v35, v15

    .end local v14    # "f7":I
    .end local v15    # "f6":I
    .local v35, "f6":I
    .local v36, "f7":I
    int-to-long v14, v3

    mul-long/2addr v0, v14

    .line 433
    .local v0, "f0f0":J
    int-to-long v14, v10

    move-wide/from16 v37, v0

    .end local v0    # "f0f0":J
    .local v37, "f0f0":J
    int-to-long v0, v5

    mul-long/2addr v14, v0

    .line 434
    .local v14, "f0f1_2":J
    int-to-long v0, v10

    move-wide/from16 v39, v14

    .end local v14    # "f0f1_2":J
    .local v39, "f0f1_2":J
    int-to-long v14, v7

    mul-long/2addr v0, v14

    .line 435
    .local v0, "f0f2_2":J
    int-to-long v14, v10

    move-wide/from16 v41, v0

    .end local v0    # "f0f2_2":J
    .local v41, "f0f2_2":J
    int-to-long v0, v9

    mul-long/2addr v14, v0

    .line 436
    .local v14, "f0f3_2":J
    int-to-long v0, v10

    move-wide/from16 v43, v14

    .end local v14    # "f0f3_2":J
    .local v43, "f0f3_2":J
    int-to-long v14, v11

    mul-long/2addr v0, v14

    .line 437
    .local v0, "f0f4_2":J
    int-to-long v14, v10

    move-wide/from16 v45, v0

    .end local v0    # "f0f4_2":J
    .local v45, "f0f4_2":J
    int-to-long v0, v13

    mul-long/2addr v14, v0

    .line 438
    .local v14, "f0f5_2":J
    int-to-long v0, v10

    move/from16 v47, v3

    move-wide/from16 v48, v14

    move/from16 v3, v35

    .end local v14    # "f0f5_2":J
    .end local v35    # "f6":I
    .local v3, "f6":I
    .local v47, "f0":I
    .local v48, "f0f5_2":J
    int-to-long v14, v3

    mul-long/2addr v0, v14

    .line 439
    .local v0, "f0f6_2":J
    int-to-long v14, v10

    move-wide/from16 v50, v0

    move/from16 v35, v2

    move/from16 v0, v36

    .end local v2    # "f7_2":I
    .end local v36    # "f7":I
    .local v0, "f7":I
    .local v35, "f7_2":I
    .local v50, "f0f6_2":J
    int-to-long v1, v0

    mul-long/2addr v14, v1

    .line 440
    .local v14, "f0f7_2":J
    int-to-long v1, v10

    move-wide/from16 v52, v14

    .end local v14    # "f0f7_2":J
    .local v52, "f0f7_2":J
    int-to-long v14, v12

    mul-long/2addr v1, v14

    .line 441
    .local v1, "f0f8_2":J
    int-to-long v14, v10

    move-wide/from16 v54, v1

    move/from16 v36, v10

    move/from16 v10, v33

    .end local v1    # "f0f8_2":J
    .end local v33    # "f9":I
    .local v10, "f9":I
    .local v36, "f0_2":I
    .local v54, "f0f8_2":J
    int-to-long v1, v10

    mul-long/2addr v14, v1

    .line 442
    .local v14, "f0f9_2":J
    int-to-long v1, v8

    move-wide/from16 v56, v14

    .end local v14    # "f0f9_2":J
    .local v56, "f0f9_2":J
    int-to-long v14, v5

    mul-long/2addr v1, v14

    .line 443
    .local v1, "f1f1_2":J
    int-to-long v14, v8

    move-wide/from16 v58, v1

    .end local v1    # "f1f1_2":J
    .local v58, "f1f1_2":J
    int-to-long v1, v7

    mul-long/2addr v14, v1

    .line 444
    .local v14, "f1f2_2":J
    int-to-long v1, v8

    move-wide/from16 v60, v14

    .end local v14    # "f1f2_2":J
    .local v60, "f1f2_2":J
    int-to-long v14, v4

    mul-long/2addr v1, v14

    .line 445
    .local v1, "f1f3_4":J
    int-to-long v14, v8

    move-wide/from16 v62, v1

    .end local v1    # "f1f3_4":J
    .local v62, "f1f3_4":J
    int-to-long v1, v11

    mul-long/2addr v14, v1

    .line 446
    .local v14, "f1f4_2":J
    int-to-long v1, v8

    move/from16 v33, v5

    move-wide/from16 v64, v14

    move/from16 v5, v34

    .end local v14    # "f1f4_2":J
    .end local v34    # "f5_2":I
    .local v5, "f5_2":I
    .local v33, "f1":I
    .local v64, "f1f4_2":J
    int-to-long v14, v5

    mul-long/2addr v1, v14

    .line 447
    .local v1, "f1f5_4":J
    int-to-long v14, v8

    move-wide/from16 v66, v1

    .end local v1    # "f1f5_4":J
    .local v66, "f1f5_4":J
    int-to-long v1, v3

    mul-long/2addr v14, v1

    .line 448
    .local v14, "f1f6_2":J
    int-to-long v1, v8

    move-wide/from16 v68, v14

    move/from16 v14, v35

    move v15, v4

    .end local v4    # "f3_2":I
    .end local v5    # "f5_2":I
    .end local v35    # "f7_2":I
    .local v14, "f7_2":I
    .local v15, "f3_2":I
    .restart local v34    # "f5_2":I
    .local v68, "f1f6_2":J
    int-to-long v4, v14

    mul-long/2addr v1, v4

    .line 449
    .local v1, "f1f7_4":J
    int-to-long v4, v8

    move-wide/from16 v70, v1

    .end local v1    # "f1f7_4":J
    .local v70, "f1f7_4":J
    int-to-long v1, v12

    mul-long/2addr v4, v1

    .line 450
    .local v4, "f1f8_2":J
    int-to-long v1, v8

    move-wide/from16 v72, v4

    .end local v4    # "f1f8_2":J
    .local v72, "f1f8_2":J
    int-to-long v4, v6

    mul-long/2addr v1, v4

    .line 451
    .local v1, "f1f9_76":J
    int-to-long v4, v7

    move-wide/from16 v74, v1

    .end local v1    # "f1f9_76":J
    .local v74, "f1f9_76":J
    int-to-long v1, v7

    mul-long/2addr v4, v1

    .line 452
    .local v4, "f2f2":J
    move-wide/from16 v76, v4

    move/from16 v1, v28

    .end local v4    # "f2f2":J
    .end local v28    # "f2_2":I
    .local v1, "f2_2":I
    .local v76, "f2f2":J
    int-to-long v4, v1

    move v2, v15

    .end local v14    # "f7_2":I
    .end local v15    # "f3_2":I
    .local v2, "f3_2":I
    .restart local v35    # "f7_2":I
    int-to-long v14, v9

    mul-long/2addr v4, v14

    .line 453
    .local v4, "f2f3_2":J
    int-to-long v14, v1

    move-wide/from16 v78, v4

    .end local v4    # "f2f3_2":J
    .local v78, "f2f3_2":J
    int-to-long v4, v11

    mul-long/2addr v14, v4

    .line 454
    .local v14, "f2f4_2":J
    int-to-long v4, v1

    move-wide/from16 v80, v14

    .end local v14    # "f2f4_2":J
    .local v80, "f2f4_2":J
    int-to-long v14, v13

    mul-long/2addr v4, v14

    .line 455
    .local v4, "f2f5_2":J
    int-to-long v14, v1

    move-wide/from16 v82, v4

    .end local v4    # "f2f5_2":J
    .local v82, "f2f5_2":J
    int-to-long v4, v3

    mul-long/2addr v14, v4

    .line 456
    .local v14, "f2f6_2":J
    int-to-long v4, v1

    move-wide/from16 v84, v14

    .end local v14    # "f2f6_2":J
    .local v84, "f2f6_2":J
    int-to-long v14, v0

    mul-long/2addr v4, v14

    .line 457
    .local v4, "f2f7_2":J
    int-to-long v14, v1

    move-wide/from16 v86, v4

    move/from16 v1, v32

    .end local v4    # "f2f7_2":J
    .end local v32    # "f8_19":I
    .local v1, "f8_19":I
    .restart local v28    # "f2_2":I
    .local v86, "f2f7_2":J
    int-to-long v4, v1

    mul-long/2addr v14, v4

    .line 458
    .local v14, "f2f8_38":J
    int-to-long v4, v7

    move/from16 v32, v7

    move/from16 v88, v8

    .end local v7    # "f2":I
    .end local v8    # "f1_2":I
    .local v32, "f2":I
    .local v88, "f1_2":I
    int-to-long v7, v6

    mul-long/2addr v4, v7

    .line 459
    .local v4, "f2f9_38":J
    int-to-long v7, v2

    move-wide/from16 v89, v4

    .end local v4    # "f2f9_38":J
    .local v89, "f2f9_38":J
    int-to-long v4, v9

    mul-long/2addr v7, v4

    .line 460
    .local v7, "f3f3_2":J
    int-to-long v4, v2

    move-wide/from16 v91, v7

    .end local v7    # "f3f3_2":J
    .local v91, "f3f3_2":J
    int-to-long v7, v11

    mul-long/2addr v4, v7

    .line 461
    .local v4, "f3f4_2":J
    int-to-long v7, v2

    move-wide/from16 v94, v4

    move/from16 v93, v9

    move/from16 v9, v34

    .end local v4    # "f3f4_2":J
    .end local v34    # "f5_2":I
    .local v9, "f5_2":I
    .local v93, "f3":I
    .local v94, "f3f4_2":J
    int-to-long v4, v9

    mul-long/2addr v7, v4

    .line 462
    .local v7, "f3f5_4":J
    int-to-long v4, v2

    move-wide/from16 v96, v7

    .end local v7    # "f3f5_4":J
    .local v96, "f3f5_4":J
    int-to-long v7, v3

    mul-long/2addr v4, v7

    .line 463
    .local v4, "f3f6_2":J
    int-to-long v7, v2

    move-wide/from16 v98, v4

    move-wide/from16 v100, v14

    move/from16 v4, v31

    .end local v14    # "f2f8_38":J
    .end local v31    # "f7_38":I
    .local v4, "f7_38":I
    .local v98, "f3f6_2":J
    .local v100, "f2f8_38":J
    int-to-long v14, v4

    mul-long/2addr v7, v14

    .line 464
    .local v7, "f3f7_76":J
    int-to-long v14, v2

    move-wide/from16 v102, v7

    .end local v7    # "f3f7_76":J
    .local v102, "f3f7_76":J
    int-to-long v7, v1

    mul-long/2addr v14, v7

    .line 465
    .local v14, "f3f8_38":J
    int-to-long v7, v2

    move-wide/from16 v104, v14

    .end local v14    # "f3f8_38":J
    .local v104, "f3f8_38":J
    int-to-long v14, v6

    mul-long/2addr v7, v14

    .line 466
    .local v7, "f3f9_76":J
    int-to-long v14, v11

    move-wide/from16 v106, v7

    .end local v7    # "f3f9_76":J
    .local v106, "f3f9_76":J
    int-to-long v7, v11

    mul-long/2addr v14, v7

    .line 467
    .local v14, "f4f4":J
    move/from16 v5, v26

    .end local v26    # "f4_2":I
    .local v5, "f4_2":I
    int-to-long v7, v5

    move-wide/from16 v108, v14

    .end local v14    # "f4f4":J
    .local v108, "f4f4":J
    int-to-long v14, v13

    mul-long/2addr v7, v14

    .line 468
    .local v7, "f4f5_2":J
    int-to-long v14, v5

    move/from16 v26, v2

    move/from16 v2, v30

    move-wide/from16 v30, v7

    .end local v7    # "f4f5_2":J
    .local v2, "f6_19":I
    .local v26, "f3_2":I
    .local v30, "f4f5_2":J
    int-to-long v7, v2

    mul-long/2addr v14, v7

    .line 469
    .local v14, "f4f6_38":J
    int-to-long v7, v11

    move-wide/from16 v110, v14

    .end local v14    # "f4f6_38":J
    .local v110, "f4f6_38":J
    int-to-long v14, v4

    mul-long/2addr v7, v14

    .line 470
    .local v7, "f4f7_38":J
    int-to-long v14, v5

    move-wide/from16 v112, v7

    .end local v7    # "f4f7_38":J
    .local v112, "f4f7_38":J
    int-to-long v7, v1

    mul-long/2addr v14, v7

    .line 471
    .local v14, "f4f8_38":J
    int-to-long v7, v11

    move-wide/from16 v114, v14

    .end local v14    # "f4f8_38":J
    .local v114, "f4f8_38":J
    int-to-long v14, v6

    mul-long/2addr v7, v14

    .line 472
    .local v7, "f4f9_38":J
    int-to-long v14, v13

    move/from16 v34, v5

    move-wide/from16 v116, v7

    move/from16 v5, v29

    .end local v7    # "f4f9_38":J
    .end local v29    # "f5_38":I
    .local v5, "f5_38":I
    .local v34, "f4_2":I
    .local v116, "f4f9_38":J
    int-to-long v7, v5

    mul-long/2addr v14, v7

    .line 473
    .local v14, "f5f5_38":J
    int-to-long v7, v9

    move/from16 v29, v13

    move-wide/from16 v118, v14

    .end local v13    # "f5":I
    .end local v14    # "f5f5_38":J
    .local v29, "f5":I
    .local v118, "f5f5_38":J
    int-to-long v13, v2

    mul-long/2addr v7, v13

    .line 474
    .local v7, "f5f6_38":J
    int-to-long v13, v9

    move-wide/from16 v120, v7

    .end local v7    # "f5f6_38":J
    .local v120, "f5f6_38":J
    int-to-long v7, v4

    mul-long/2addr v13, v7

    .line 475
    .local v13, "f5f7_76":J
    int-to-long v7, v9

    move-wide/from16 v122, v13

    .end local v13    # "f5f7_76":J
    .local v122, "f5f7_76":J
    int-to-long v13, v1

    mul-long/2addr v7, v13

    .line 476
    .local v7, "f5f8_38":J
    int-to-long v13, v9

    move-wide/from16 v124, v7

    .end local v7    # "f5f8_38":J
    .local v124, "f5f8_38":J
    int-to-long v7, v6

    mul-long/2addr v13, v7

    .line 477
    .local v13, "f5f9_76":J
    int-to-long v7, v3

    move-wide/from16 v126, v13

    .end local v13    # "f5f9_76":J
    .local v126, "f5f9_76":J
    int-to-long v13, v2

    mul-long/2addr v7, v13

    .line 478
    .local v7, "f6f6_19":J
    int-to-long v13, v3

    move-wide/from16 v128, v7

    .end local v7    # "f6f6_19":J
    .local v128, "f6f6_19":J
    int-to-long v7, v4

    mul-long/2addr v13, v7

    .line 479
    .local v13, "f6f7_38":J
    move/from16 v15, v27

    .end local v27    # "f6_2":I
    .local v15, "f6_2":I
    int-to-long v7, v15

    move-wide/from16 v130, v13

    .end local v13    # "f6f7_38":J
    .local v130, "f6f7_38":J
    int-to-long v13, v1

    mul-long/2addr v7, v13

    .line 480
    .local v7, "f6f8_38":J
    int-to-long v13, v3

    move/from16 v132, v2

    move/from16 v27, v3

    .end local v2    # "f6_19":I
    .end local v3    # "f6":I
    .local v27, "f6":I
    .local v132, "f6_19":I
    int-to-long v2, v6

    mul-long/2addr v13, v2

    .line 481
    .local v13, "f6f9_38":J
    int-to-long v2, v0

    move-wide/from16 v133, v13

    .end local v13    # "f6f9_38":J
    .local v133, "f6f9_38":J
    int-to-long v13, v4

    mul-long/2addr v2, v13

    .line 482
    .local v2, "f7f7_38":J
    move v13, v4

    move/from16 v14, v35

    move/from16 v35, v5

    .end local v4    # "f7_38":I
    .end local v5    # "f5_38":I
    .local v13, "f7_38":I
    .local v14, "f7_2":I
    .local v35, "f5_38":I
    int-to-long v4, v14

    move-wide/from16 v135, v2

    .end local v2    # "f7f7_38":J
    .local v135, "f7f7_38":J
    int-to-long v2, v1

    mul-long/2addr v4, v2

    .line 483
    .local v4, "f7f8_38":J
    int-to-long v2, v14

    move/from16 v138, v13

    move/from16 v137, v14

    .end local v13    # "f7_38":I
    .end local v14    # "f7_2":I
    .local v137, "f7_2":I
    .local v138, "f7_38":I
    int-to-long v13, v6

    mul-long/2addr v2, v13

    .line 484
    .local v2, "f7f9_76":J
    int-to-long v13, v12

    move-wide/from16 v139, v2

    .end local v2    # "f7f9_76":J
    .local v139, "f7f9_76":J
    int-to-long v2, v1

    mul-long/2addr v13, v2

    .line 485
    .local v13, "f8f8_19":J
    int-to-long v2, v12

    move/from16 v141, v0

    move/from16 v142, v1

    .end local v0    # "f7":I
    .end local v1    # "f8_19":I
    .local v141, "f7":I
    .local v142, "f8_19":I
    int-to-long v0, v6

    mul-long/2addr v2, v0

    .line 486
    .local v2, "f8f9_38":J
    int-to-long v0, v10

    move/from16 v144, v9

    move/from16 v143, v10

    .end local v9    # "f5_2":I
    .end local v10    # "f9":I
    .local v143, "f9":I
    .local v144, "f5_2":I
    int-to-long v9, v6

    mul-long/2addr v0, v9

    .line 492
    .local v0, "f9f9_38":J
    add-long v9, v37, v74

    add-long v9, v9, v100

    add-long v9, v9, v102

    add-long v9, v9, v110

    add-long v9, v9, v118

    .line 493
    .local v9, "h0":J
    add-long v145, v39, v89

    add-long v145, v145, v104

    add-long v145, v145, v112

    add-long v145, v145, v120

    .line 494
    .local v145, "h1":J
    add-long v147, v41, v58

    add-long v147, v147, v106

    add-long v147, v147, v114

    add-long v147, v147, v122

    add-long v147, v147, v128

    .line 495
    .local v147, "h2":J
    add-long v149, v43, v60

    add-long v149, v149, v116

    add-long v149, v149, v124

    add-long v149, v149, v130

    .line 496
    .local v149, "h3":J
    add-long v151, v45, v62

    add-long v151, v151, v76

    add-long v151, v151, v126

    add-long v151, v151, v7

    add-long v151, v151, v135

    .line 497
    .local v151, "h4":J
    add-long v153, v48, v64

    add-long v153, v153, v78

    add-long v153, v153, v133

    add-long v153, v153, v4

    .line 498
    .local v153, "h5":J
    add-long v155, v50, v66

    add-long v155, v155, v80

    add-long v155, v155, v91

    add-long v155, v155, v139

    add-long v155, v155, v13

    .line 499
    .local v155, "h6":J
    add-long v157, v52, v68

    add-long v157, v157, v82

    add-long v157, v157, v94

    add-long v157, v157, v2

    .line 500
    .local v157, "h7":J
    add-long v159, v54, v70

    add-long v159, v159, v84

    add-long v159, v159, v96

    add-long v159, v159, v108

    add-long v159, v159, v0

    .line 501
    .local v159, "h8":J
    add-long v161, v56, v72

    add-long v161, v161, v86

    add-long v161, v161, v98

    add-long v161, v161, v30

    .line 513
    .local v161, "h9":J
    const-wide/32 v163, 0x2000000

    add-long v165, v9, v163

    const/16 v167, 0x1a

    shr-long v165, v165, v167

    .local v165, "carry0":J
    add-long v145, v145, v165

    shl-long v168, v165, v167

    sub-long v9, v9, v168

    .line 514
    add-long v168, v151, v163

    shr-long v168, v168, v167

    .local v168, "carry4":J
    add-long v153, v153, v168

    shl-long v170, v168, v167

    sub-long v151, v151, v170

    .line 516
    const-wide/32 v170, 0x1000000

    add-long v172, v145, v170

    const/16 v174, 0x19

    shr-long v172, v172, v174

    .local v172, "carry1":J
    add-long v147, v147, v172

    shl-long v175, v172, v174

    sub-long v145, v145, v175

    .line 517
    add-long v175, v153, v170

    shr-long v175, v175, v174

    .local v175, "carry5":J
    add-long v155, v155, v175

    shl-long v177, v175, v174

    sub-long v153, v153, v177

    .line 519
    add-long v177, v147, v163

    shr-long v177, v177, v167

    .local v177, "carry2":J
    add-long v149, v149, v177

    shl-long v179, v177, v167

    move-wide/from16 v181, v0

    .end local v0    # "f9f9_38":J
    .local v181, "f9f9_38":J
    sub-long v0, v147, v179

    .line 520
    .end local v147    # "h2":J
    .local v0, "h2":J
    add-long v147, v155, v163

    shr-long v147, v147, v167

    .local v147, "carry6":J
    add-long v157, v157, v147

    shl-long v179, v147, v167

    move-wide/from16 v183, v2

    .end local v2    # "f8f9_38":J
    .local v183, "f8f9_38":J
    sub-long v2, v155, v179

    .line 522
    .end local v155    # "h6":J
    .local v2, "h6":J
    add-long v155, v149, v170

    shr-long v155, v155, v174

    .local v155, "carry3":J
    add-long v151, v151, v155

    shl-long v179, v155, v174

    move-wide/from16 v185, v4

    .end local v4    # "f7f8_38":J
    .local v185, "f7f8_38":J
    sub-long v4, v149, v179

    .line 523
    .end local v149    # "h3":J
    .local v4, "h3":J
    add-long v149, v157, v170

    shr-long v149, v149, v174

    .local v149, "carry7":J
    add-long v159, v159, v149

    shl-long v179, v149, v174

    move/from16 v187, v6

    move-wide/from16 v188, v7

    .end local v6    # "f9_38":I
    .end local v7    # "f6f8_38":J
    .local v187, "f9_38":I
    .local v188, "f6f8_38":J
    sub-long v6, v157, v179

    .line 525
    .end local v157    # "h7":J
    .local v6, "h7":J
    add-long v157, v151, v163

    shr-long v157, v157, v167

    move v8, v11

    move/from16 v168, v12

    .end local v11    # "f4":I
    .end local v12    # "f8":I
    .local v8, "f4":I
    .local v157, "carry4":J
    .local v168, "f8":I
    add-long v11, v153, v157

    .end local v153    # "h5":J
    .local v11, "h5":J
    shl-long v153, v157, v167

    move-wide/from16 v179, v13

    .end local v13    # "f8f8_19":J
    .local v179, "f8f8_19":J
    sub-long v13, v151, v153

    .line 526
    .end local v151    # "h4":J
    .local v13, "h4":J
    add-long v151, v159, v163

    shr-long v151, v151, v167

    .local v151, "carry8":J
    add-long v161, v161, v151

    shl-long v153, v151, v167

    move-wide/from16 v190, v6

    .end local v6    # "h7":J
    .local v190, "h7":J
    sub-long v6, v159, v153

    .line 528
    .end local v159    # "h8":J
    .local v6, "h8":J
    add-long v170, v161, v170

    shr-long v153, v170, v174

    .local v153, "carry9":J
    const-wide/16 v159, 0x13

    mul-long v159, v159, v153

    add-long v9, v9, v159

    shl-long v159, v153, v174

    move-wide/from16 v169, v6

    .end local v6    # "h8":J
    .local v169, "h8":J
    sub-long v6, v161, v159

    .line 530
    .end local v161    # "h9":J
    .local v6, "h9":J
    add-long v163, v9, v163

    shr-long v159, v163, v167

    move-wide/from16 v161, v6

    .end local v6    # "h9":J
    .end local v165    # "carry0":J
    .local v159, "carry0":J
    .restart local v161    # "h9":J
    add-long v6, v145, v159

    .end local v145    # "h1":J
    .local v6, "h1":J
    shl-long v145, v159, v167

    sub-long v9, v9, v145

    .line 532
    move/from16 v145, v8

    .end local v8    # "f4":I
    .local v145, "f4":I
    const/16 v8, 0xa

    new-array v8, v8, [I

    .line 533
    .local v8, "h":[I
    move/from16 v146, v15

    .end local v15    # "f6_2":I
    .local v146, "f6_2":I
    long-to-int v15, v9

    const/16 v25, 0x0

    aput v15, v8, v25

    .line 534
    long-to-int v15, v6

    const/16 v24, 0x1

    aput v15, v8, v24

    .line 535
    long-to-int v15, v0

    const/16 v23, 0x2

    aput v15, v8, v23

    .line 536
    long-to-int v15, v4

    const/16 v22, 0x3

    aput v15, v8, v22

    .line 537
    long-to-int v15, v13

    const/16 v21, 0x4

    aput v15, v8, v21

    .line 538
    long-to-int v15, v11

    const/16 v19, 0x5

    aput v15, v8, v19

    .line 539
    long-to-int v15, v2

    const/16 v17, 0x6

    aput v15, v8, v17

    .line 540
    move-wide/from16 v21, v0

    move-wide/from16 v0, v190

    .end local v190    # "h7":J
    .local v0, "h7":J
    .local v21, "h2":J
    long-to-int v15, v0

    aput v15, v8, v16

    .line 541
    move-wide/from16 v0, v169

    .end local v169    # "h8":J
    .local v0, "h8":J
    .restart local v190    # "h7":J
    long-to-int v15, v0

    aput v15, v8, v18

    .line 542
    move-wide/from16 v0, v161

    .end local v161    # "h9":J
    .local v0, "h9":J
    .restart local v169    # "h8":J
    long-to-int v15, v0

    aput v15, v8, v20

    .line 543
    new-instance v15, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v0, p0

    .end local v0    # "h9":J
    .restart local v161    # "h9":J
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v15, v1, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v15
.end method

.method public squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 192

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 566
    .local v3, "f0":I
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 567
    .local v5, "f1":I
    const/4 v6, 0x2

    aget v7, v1, v6

    .line 568
    .local v7, "f2":I
    const/4 v8, 0x3

    aget v9, v1, v8

    .line 569
    .local v9, "f3":I
    const/4 v10, 0x4

    aget v11, v1, v10

    .line 570
    .local v11, "f4":I
    const/4 v12, 0x5

    aget v13, v1, v12

    .line 571
    .local v13, "f5":I
    const/4 v14, 0x6

    aget v15, v1, v14

    .line 572
    .local v15, "f6":I
    const/16 v16, 0x7

    aget v14, v1, v16

    .line 573
    .local v14, "f7":I
    const/16 v18, 0x8

    aget v12, v1, v18

    .line 574
    .local v12, "f8":I
    const/16 v20, 0x9

    aget v1, v1, v20

    .line 575
    .local v1, "f9":I
    mul-int/lit8 v10, v3, 0x2

    .line 576
    .local v10, "f0_2":I
    mul-int/lit8 v8, v5, 0x2

    .line 577
    .local v8, "f1_2":I
    mul-int/lit8 v6, v7, 0x2

    .line 578
    .local v6, "f2_2":I
    mul-int/lit8 v4, v9, 0x2

    .line 579
    .local v4, "f3_2":I
    mul-int/lit8 v2, v11, 0x2

    .line 580
    .local v2, "f4_2":I
    mul-int/lit8 v0, v13, 0x2

    .line 581
    .local v0, "f5_2":I
    move/from16 v26, v2

    .end local v2    # "f4_2":I
    .local v26, "f4_2":I
    mul-int/lit8 v2, v15, 0x2

    .line 582
    .local v2, "f6_2":I
    move/from16 v27, v2

    .end local v2    # "f6_2":I
    .local v27, "f6_2":I
    mul-int/lit8 v2, v14, 0x2

    .line 583
    .local v2, "f7_2":I
    move/from16 v28, v6

    .end local v6    # "f2_2":I
    .local v28, "f2_2":I
    mul-int/lit8 v6, v13, 0x26

    .line 584
    .local v6, "f5_38":I
    move/from16 v29, v6

    .end local v6    # "f5_38":I
    .local v29, "f5_38":I
    mul-int/lit8 v6, v15, 0x13

    .line 585
    .local v6, "f6_19":I
    move/from16 v30, v6

    .end local v6    # "f6_19":I
    .local v30, "f6_19":I
    mul-int/lit8 v6, v14, 0x26

    .line 586
    .local v6, "f7_38":I
    move/from16 v31, v6

    .end local v6    # "f7_38":I
    .local v31, "f7_38":I
    mul-int/lit8 v6, v12, 0x13

    .line 587
    .local v6, "f8_19":I
    move/from16 v32, v6

    .end local v6    # "f8_19":I
    .local v32, "f8_19":I
    mul-int/lit8 v6, v1, 0x26

    .line 588
    .local v6, "f9_38":I
    move/from16 v34, v0

    move/from16 v33, v1

    .end local v0    # "f5_2":I
    .end local v1    # "f9":I
    .local v33, "f9":I
    .local v34, "f5_2":I
    int-to-long v0, v3

    move/from16 v36, v14

    move/from16 v35, v15

    .end local v14    # "f7":I
    .end local v15    # "f6":I
    .local v35, "f6":I
    .local v36, "f7":I
    int-to-long v14, v3

    mul-long/2addr v0, v14

    .line 589
    .local v0, "f0f0":J
    int-to-long v14, v10

    move-wide/from16 v37, v0

    .end local v0    # "f0f0":J
    .local v37, "f0f0":J
    int-to-long v0, v5

    mul-long/2addr v14, v0

    .line 590
    .local v14, "f0f1_2":J
    int-to-long v0, v10

    move-wide/from16 v39, v14

    .end local v14    # "f0f1_2":J
    .local v39, "f0f1_2":J
    int-to-long v14, v7

    mul-long/2addr v0, v14

    .line 591
    .local v0, "f0f2_2":J
    int-to-long v14, v10

    move-wide/from16 v41, v0

    .end local v0    # "f0f2_2":J
    .local v41, "f0f2_2":J
    int-to-long v0, v9

    mul-long/2addr v14, v0

    .line 592
    .local v14, "f0f3_2":J
    int-to-long v0, v10

    move-wide/from16 v43, v14

    .end local v14    # "f0f3_2":J
    .local v43, "f0f3_2":J
    int-to-long v14, v11

    mul-long/2addr v0, v14

    .line 593
    .local v0, "f0f4_2":J
    int-to-long v14, v10

    move-wide/from16 v45, v0

    .end local v0    # "f0f4_2":J
    .local v45, "f0f4_2":J
    int-to-long v0, v13

    mul-long/2addr v14, v0

    .line 594
    .local v14, "f0f5_2":J
    int-to-long v0, v10

    move/from16 v47, v3

    move-wide/from16 v48, v14

    move/from16 v3, v35

    .end local v14    # "f0f5_2":J
    .end local v35    # "f6":I
    .local v3, "f6":I
    .local v47, "f0":I
    .local v48, "f0f5_2":J
    int-to-long v14, v3

    mul-long/2addr v0, v14

    .line 595
    .local v0, "f0f6_2":J
    int-to-long v14, v10

    move-wide/from16 v50, v0

    move/from16 v35, v2

    move/from16 v0, v36

    .end local v2    # "f7_2":I
    .end local v36    # "f7":I
    .local v0, "f7":I
    .local v35, "f7_2":I
    .local v50, "f0f6_2":J
    int-to-long v1, v0

    mul-long/2addr v14, v1

    .line 596
    .local v14, "f0f7_2":J
    int-to-long v1, v10

    move-wide/from16 v52, v14

    .end local v14    # "f0f7_2":J
    .local v52, "f0f7_2":J
    int-to-long v14, v12

    mul-long/2addr v1, v14

    .line 597
    .local v1, "f0f8_2":J
    int-to-long v14, v10

    move-wide/from16 v54, v1

    move/from16 v36, v10

    move/from16 v10, v33

    .end local v1    # "f0f8_2":J
    .end local v33    # "f9":I
    .local v10, "f9":I
    .local v36, "f0_2":I
    .local v54, "f0f8_2":J
    int-to-long v1, v10

    mul-long/2addr v14, v1

    .line 598
    .local v14, "f0f9_2":J
    int-to-long v1, v8

    move-wide/from16 v56, v14

    .end local v14    # "f0f9_2":J
    .local v56, "f0f9_2":J
    int-to-long v14, v5

    mul-long/2addr v1, v14

    .line 599
    .local v1, "f1f1_2":J
    int-to-long v14, v8

    move-wide/from16 v58, v1

    .end local v1    # "f1f1_2":J
    .local v58, "f1f1_2":J
    int-to-long v1, v7

    mul-long/2addr v14, v1

    .line 600
    .local v14, "f1f2_2":J
    int-to-long v1, v8

    move-wide/from16 v60, v14

    .end local v14    # "f1f2_2":J
    .local v60, "f1f2_2":J
    int-to-long v14, v4

    mul-long/2addr v1, v14

    .line 601
    .local v1, "f1f3_4":J
    int-to-long v14, v8

    move-wide/from16 v62, v1

    .end local v1    # "f1f3_4":J
    .local v62, "f1f3_4":J
    int-to-long v1, v11

    mul-long/2addr v14, v1

    .line 602
    .local v14, "f1f4_2":J
    int-to-long v1, v8

    move/from16 v33, v5

    move-wide/from16 v64, v14

    move/from16 v5, v34

    .end local v14    # "f1f4_2":J
    .end local v34    # "f5_2":I
    .local v5, "f5_2":I
    .local v33, "f1":I
    .local v64, "f1f4_2":J
    int-to-long v14, v5

    mul-long/2addr v1, v14

    .line 603
    .local v1, "f1f5_4":J
    int-to-long v14, v8

    move-wide/from16 v66, v1

    .end local v1    # "f1f5_4":J
    .local v66, "f1f5_4":J
    int-to-long v1, v3

    mul-long/2addr v14, v1

    .line 604
    .local v14, "f1f6_2":J
    int-to-long v1, v8

    move-wide/from16 v68, v14

    move/from16 v14, v35

    move v15, v4

    .end local v4    # "f3_2":I
    .end local v5    # "f5_2":I
    .end local v35    # "f7_2":I
    .local v14, "f7_2":I
    .local v15, "f3_2":I
    .restart local v34    # "f5_2":I
    .local v68, "f1f6_2":J
    int-to-long v4, v14

    mul-long/2addr v1, v4

    .line 605
    .local v1, "f1f7_4":J
    int-to-long v4, v8

    move-wide/from16 v70, v1

    .end local v1    # "f1f7_4":J
    .local v70, "f1f7_4":J
    int-to-long v1, v12

    mul-long/2addr v4, v1

    .line 606
    .local v4, "f1f8_2":J
    int-to-long v1, v8

    move-wide/from16 v72, v4

    .end local v4    # "f1f8_2":J
    .local v72, "f1f8_2":J
    int-to-long v4, v6

    mul-long/2addr v1, v4

    .line 607
    .local v1, "f1f9_76":J
    int-to-long v4, v7

    move-wide/from16 v74, v1

    .end local v1    # "f1f9_76":J
    .local v74, "f1f9_76":J
    int-to-long v1, v7

    mul-long/2addr v4, v1

    .line 608
    .local v4, "f2f2":J
    move-wide/from16 v76, v4

    move/from16 v1, v28

    .end local v4    # "f2f2":J
    .end local v28    # "f2_2":I
    .local v1, "f2_2":I
    .local v76, "f2f2":J
    int-to-long v4, v1

    move v2, v15

    .end local v14    # "f7_2":I
    .end local v15    # "f3_2":I
    .local v2, "f3_2":I
    .restart local v35    # "f7_2":I
    int-to-long v14, v9

    mul-long/2addr v4, v14

    .line 609
    .local v4, "f2f3_2":J
    int-to-long v14, v1

    move-wide/from16 v78, v4

    .end local v4    # "f2f3_2":J
    .local v78, "f2f3_2":J
    int-to-long v4, v11

    mul-long/2addr v14, v4

    .line 610
    .local v14, "f2f4_2":J
    int-to-long v4, v1

    move-wide/from16 v80, v14

    .end local v14    # "f2f4_2":J
    .local v80, "f2f4_2":J
    int-to-long v14, v13

    mul-long/2addr v4, v14

    .line 611
    .local v4, "f2f5_2":J
    int-to-long v14, v1

    move-wide/from16 v82, v4

    .end local v4    # "f2f5_2":J
    .local v82, "f2f5_2":J
    int-to-long v4, v3

    mul-long/2addr v14, v4

    .line 612
    .local v14, "f2f6_2":J
    int-to-long v4, v1

    move-wide/from16 v84, v14

    .end local v14    # "f2f6_2":J
    .local v84, "f2f6_2":J
    int-to-long v14, v0

    mul-long/2addr v4, v14

    .line 613
    .local v4, "f2f7_2":J
    int-to-long v14, v1

    move-wide/from16 v86, v4

    move/from16 v1, v32

    .end local v4    # "f2f7_2":J
    .end local v32    # "f8_19":I
    .local v1, "f8_19":I
    .restart local v28    # "f2_2":I
    .local v86, "f2f7_2":J
    int-to-long v4, v1

    mul-long/2addr v14, v4

    .line 614
    .local v14, "f2f8_38":J
    int-to-long v4, v7

    move/from16 v32, v7

    move/from16 v88, v8

    .end local v7    # "f2":I
    .end local v8    # "f1_2":I
    .local v32, "f2":I
    .local v88, "f1_2":I
    int-to-long v7, v6

    mul-long/2addr v4, v7

    .line 615
    .local v4, "f2f9_38":J
    int-to-long v7, v2

    move-wide/from16 v89, v4

    .end local v4    # "f2f9_38":J
    .local v89, "f2f9_38":J
    int-to-long v4, v9

    mul-long/2addr v7, v4

    .line 616
    .local v7, "f3f3_2":J
    int-to-long v4, v2

    move-wide/from16 v91, v7

    .end local v7    # "f3f3_2":J
    .local v91, "f3f3_2":J
    int-to-long v7, v11

    mul-long/2addr v4, v7

    .line 617
    .local v4, "f3f4_2":J
    int-to-long v7, v2

    move-wide/from16 v94, v4

    move/from16 v93, v9

    move/from16 v9, v34

    .end local v4    # "f3f4_2":J
    .end local v34    # "f5_2":I
    .local v9, "f5_2":I
    .local v93, "f3":I
    .local v94, "f3f4_2":J
    int-to-long v4, v9

    mul-long/2addr v7, v4

    .line 618
    .local v7, "f3f5_4":J
    int-to-long v4, v2

    move-wide/from16 v96, v7

    .end local v7    # "f3f5_4":J
    .local v96, "f3f5_4":J
    int-to-long v7, v3

    mul-long/2addr v4, v7

    .line 619
    .local v4, "f3f6_2":J
    int-to-long v7, v2

    move-wide/from16 v98, v4

    move-wide/from16 v100, v14

    move/from16 v4, v31

    .end local v14    # "f2f8_38":J
    .end local v31    # "f7_38":I
    .local v4, "f7_38":I
    .local v98, "f3f6_2":J
    .local v100, "f2f8_38":J
    int-to-long v14, v4

    mul-long/2addr v7, v14

    .line 620
    .local v7, "f3f7_76":J
    int-to-long v14, v2

    move-wide/from16 v102, v7

    .end local v7    # "f3f7_76":J
    .local v102, "f3f7_76":J
    int-to-long v7, v1

    mul-long/2addr v14, v7

    .line 621
    .local v14, "f3f8_38":J
    int-to-long v7, v2

    move-wide/from16 v104, v14

    .end local v14    # "f3f8_38":J
    .local v104, "f3f8_38":J
    int-to-long v14, v6

    mul-long/2addr v7, v14

    .line 622
    .local v7, "f3f9_76":J
    int-to-long v14, v11

    move-wide/from16 v106, v7

    .end local v7    # "f3f9_76":J
    .local v106, "f3f9_76":J
    int-to-long v7, v11

    mul-long/2addr v14, v7

    .line 623
    .local v14, "f4f4":J
    move/from16 v5, v26

    .end local v26    # "f4_2":I
    .local v5, "f4_2":I
    int-to-long v7, v5

    move-wide/from16 v108, v14

    .end local v14    # "f4f4":J
    .local v108, "f4f4":J
    int-to-long v14, v13

    mul-long/2addr v7, v14

    .line 624
    .local v7, "f4f5_2":J
    int-to-long v14, v5

    move/from16 v26, v2

    move/from16 v2, v30

    move-wide/from16 v30, v7

    .end local v7    # "f4f5_2":J
    .local v2, "f6_19":I
    .local v26, "f3_2":I
    .local v30, "f4f5_2":J
    int-to-long v7, v2

    mul-long/2addr v14, v7

    .line 625
    .local v14, "f4f6_38":J
    int-to-long v7, v11

    move-wide/from16 v110, v14

    .end local v14    # "f4f6_38":J
    .local v110, "f4f6_38":J
    int-to-long v14, v4

    mul-long/2addr v7, v14

    .line 626
    .local v7, "f4f7_38":J
    int-to-long v14, v5

    move-wide/from16 v112, v7

    .end local v7    # "f4f7_38":J
    .local v112, "f4f7_38":J
    int-to-long v7, v1

    mul-long/2addr v14, v7

    .line 627
    .local v14, "f4f8_38":J
    int-to-long v7, v11

    move-wide/from16 v114, v14

    .end local v14    # "f4f8_38":J
    .local v114, "f4f8_38":J
    int-to-long v14, v6

    mul-long/2addr v7, v14

    .line 628
    .local v7, "f4f9_38":J
    int-to-long v14, v13

    move/from16 v34, v5

    move-wide/from16 v116, v7

    move/from16 v5, v29

    .end local v7    # "f4f9_38":J
    .end local v29    # "f5_38":I
    .local v5, "f5_38":I
    .local v34, "f4_2":I
    .local v116, "f4f9_38":J
    int-to-long v7, v5

    mul-long/2addr v14, v7

    .line 629
    .local v14, "f5f5_38":J
    int-to-long v7, v9

    move/from16 v29, v13

    move-wide/from16 v118, v14

    .end local v13    # "f5":I
    .end local v14    # "f5f5_38":J
    .local v29, "f5":I
    .local v118, "f5f5_38":J
    int-to-long v13, v2

    mul-long/2addr v7, v13

    .line 630
    .local v7, "f5f6_38":J
    int-to-long v13, v9

    move-wide/from16 v120, v7

    .end local v7    # "f5f6_38":J
    .local v120, "f5f6_38":J
    int-to-long v7, v4

    mul-long/2addr v13, v7

    .line 631
    .local v13, "f5f7_76":J
    int-to-long v7, v9

    move-wide/from16 v122, v13

    .end local v13    # "f5f7_76":J
    .local v122, "f5f7_76":J
    int-to-long v13, v1

    mul-long/2addr v7, v13

    .line 632
    .local v7, "f5f8_38":J
    int-to-long v13, v9

    move-wide/from16 v124, v7

    .end local v7    # "f5f8_38":J
    .local v124, "f5f8_38":J
    int-to-long v7, v6

    mul-long/2addr v13, v7

    .line 633
    .local v13, "f5f9_76":J
    int-to-long v7, v3

    move-wide/from16 v126, v13

    .end local v13    # "f5f9_76":J
    .local v126, "f5f9_76":J
    int-to-long v13, v2

    mul-long/2addr v7, v13

    .line 634
    .local v7, "f6f6_19":J
    int-to-long v13, v3

    move-wide/from16 v128, v7

    .end local v7    # "f6f6_19":J
    .local v128, "f6f6_19":J
    int-to-long v7, v4

    mul-long/2addr v13, v7

    .line 635
    .local v13, "f6f7_38":J
    move/from16 v15, v27

    .end local v27    # "f6_2":I
    .local v15, "f6_2":I
    int-to-long v7, v15

    move-wide/from16 v130, v13

    .end local v13    # "f6f7_38":J
    .local v130, "f6f7_38":J
    int-to-long v13, v1

    mul-long/2addr v7, v13

    .line 636
    .local v7, "f6f8_38":J
    int-to-long v13, v3

    move/from16 v132, v2

    move/from16 v27, v3

    .end local v2    # "f6_19":I
    .end local v3    # "f6":I
    .local v27, "f6":I
    .local v132, "f6_19":I
    int-to-long v2, v6

    mul-long/2addr v13, v2

    .line 637
    .local v13, "f6f9_38":J
    int-to-long v2, v0

    move-wide/from16 v133, v13

    .end local v13    # "f6f9_38":J
    .local v133, "f6f9_38":J
    int-to-long v13, v4

    mul-long/2addr v2, v13

    .line 638
    .local v2, "f7f7_38":J
    move v13, v4

    move/from16 v14, v35

    move/from16 v35, v5

    .end local v4    # "f7_38":I
    .end local v5    # "f5_38":I
    .local v13, "f7_38":I
    .local v14, "f7_2":I
    .local v35, "f5_38":I
    int-to-long v4, v14

    move-wide/from16 v135, v2

    .end local v2    # "f7f7_38":J
    .local v135, "f7f7_38":J
    int-to-long v2, v1

    mul-long/2addr v4, v2

    .line 639
    .local v4, "f7f8_38":J
    int-to-long v2, v14

    move/from16 v138, v13

    move/from16 v137, v14

    .end local v13    # "f7_38":I
    .end local v14    # "f7_2":I
    .local v137, "f7_2":I
    .local v138, "f7_38":I
    int-to-long v13, v6

    mul-long/2addr v2, v13

    .line 640
    .local v2, "f7f9_76":J
    int-to-long v13, v12

    move-wide/from16 v139, v2

    .end local v2    # "f7f9_76":J
    .local v139, "f7f9_76":J
    int-to-long v2, v1

    mul-long/2addr v13, v2

    .line 641
    .local v13, "f8f8_19":J
    int-to-long v2, v12

    move/from16 v141, v0

    move/from16 v142, v1

    .end local v0    # "f7":I
    .end local v1    # "f8_19":I
    .local v141, "f7":I
    .local v142, "f8_19":I
    int-to-long v0, v6

    mul-long/2addr v2, v0

    .line 642
    .local v2, "f8f9_38":J
    int-to-long v0, v10

    move/from16 v144, v9

    move/from16 v143, v10

    .end local v9    # "f5_2":I
    .end local v10    # "f9":I
    .local v143, "f9":I
    .local v144, "f5_2":I
    int-to-long v9, v6

    mul-long/2addr v0, v9

    .line 643
    .local v0, "f9f9_38":J
    add-long v9, v37, v74

    add-long v9, v9, v100

    add-long v9, v9, v102

    add-long v9, v9, v110

    add-long v9, v9, v118

    .line 644
    .local v9, "h0":J
    add-long v145, v39, v89

    add-long v145, v145, v104

    add-long v145, v145, v112

    add-long v145, v145, v120

    .line 645
    .local v145, "h1":J
    add-long v147, v41, v58

    add-long v147, v147, v106

    add-long v147, v147, v114

    add-long v147, v147, v122

    add-long v147, v147, v128

    .line 646
    .local v147, "h2":J
    add-long v149, v43, v60

    add-long v149, v149, v116

    add-long v149, v149, v124

    add-long v149, v149, v130

    .line 647
    .local v149, "h3":J
    add-long v151, v45, v62

    add-long v151, v151, v76

    add-long v151, v151, v126

    add-long v151, v151, v7

    add-long v151, v151, v135

    .line 648
    .local v151, "h4":J
    add-long v153, v48, v64

    add-long v153, v153, v78

    add-long v153, v153, v133

    add-long v153, v153, v4

    .line 649
    .local v153, "h5":J
    add-long v155, v50, v66

    add-long v155, v155, v80

    add-long v155, v155, v91

    add-long v155, v155, v139

    add-long v155, v155, v13

    .line 650
    .local v155, "h6":J
    add-long v157, v52, v68

    add-long v157, v157, v82

    add-long v157, v157, v94

    add-long v157, v157, v2

    .line 651
    .local v157, "h7":J
    add-long v159, v54, v70

    add-long v159, v159, v84

    add-long v159, v159, v96

    add-long v159, v159, v108

    add-long v159, v159, v0

    .line 652
    .local v159, "h8":J
    add-long v161, v56, v72

    add-long v161, v161, v86

    add-long v161, v161, v98

    add-long v161, v161, v30

    .line 664
    .local v161, "h9":J
    add-long/2addr v9, v9

    .line 665
    add-long v145, v145, v145

    .line 666
    add-long v147, v147, v147

    .line 667
    add-long v149, v149, v149

    .line 668
    add-long v151, v151, v151

    .line 669
    add-long v153, v153, v153

    .line 670
    add-long v155, v155, v155

    .line 671
    add-long v157, v157, v157

    .line 672
    add-long v159, v159, v159

    .line 673
    add-long v161, v161, v161

    .line 675
    const-wide/32 v163, 0x2000000

    add-long v165, v9, v163

    const/16 v167, 0x1a

    shr-long v165, v165, v167

    .local v165, "carry0":J
    add-long v145, v145, v165

    shl-long v168, v165, v167

    sub-long v9, v9, v168

    .line 676
    add-long v168, v151, v163

    shr-long v168, v168, v167

    .local v168, "carry4":J
    add-long v153, v153, v168

    shl-long v170, v168, v167

    sub-long v151, v151, v170

    .line 678
    const-wide/32 v170, 0x1000000

    add-long v172, v145, v170

    const/16 v174, 0x19

    shr-long v172, v172, v174

    .local v172, "carry1":J
    add-long v147, v147, v172

    shl-long v175, v172, v174

    sub-long v145, v145, v175

    .line 679
    add-long v175, v153, v170

    shr-long v175, v175, v174

    .local v175, "carry5":J
    add-long v155, v155, v175

    shl-long v177, v175, v174

    sub-long v153, v153, v177

    .line 681
    add-long v177, v147, v163

    shr-long v177, v177, v167

    .local v177, "carry2":J
    add-long v149, v149, v177

    shl-long v179, v177, v167

    move-wide/from16 v181, v0

    .end local v0    # "f9f9_38":J
    .local v181, "f9f9_38":J
    sub-long v0, v147, v179

    .line 682
    .end local v147    # "h2":J
    .local v0, "h2":J
    add-long v147, v155, v163

    shr-long v147, v147, v167

    .local v147, "carry6":J
    add-long v157, v157, v147

    shl-long v179, v147, v167

    move-wide/from16 v183, v2

    .end local v2    # "f8f9_38":J
    .local v183, "f8f9_38":J
    sub-long v2, v155, v179

    .line 684
    .end local v155    # "h6":J
    .local v2, "h6":J
    add-long v155, v149, v170

    shr-long v155, v155, v174

    .local v155, "carry3":J
    add-long v151, v151, v155

    shl-long v179, v155, v174

    move-wide/from16 v185, v4

    .end local v4    # "f7f8_38":J
    .local v185, "f7f8_38":J
    sub-long v4, v149, v179

    .line 685
    .end local v149    # "h3":J
    .local v4, "h3":J
    add-long v149, v157, v170

    shr-long v149, v149, v174

    .local v149, "carry7":J
    add-long v159, v159, v149

    shl-long v179, v149, v174

    move/from16 v187, v6

    move-wide/from16 v188, v7

    .end local v6    # "f9_38":I
    .end local v7    # "f6f8_38":J
    .local v187, "f9_38":I
    .local v188, "f6f8_38":J
    sub-long v6, v157, v179

    .line 687
    .end local v157    # "h7":J
    .local v6, "h7":J
    add-long v157, v151, v163

    shr-long v157, v157, v167

    move v8, v11

    move/from16 v168, v12

    .end local v11    # "f4":I
    .end local v12    # "f8":I
    .local v8, "f4":I
    .local v157, "carry4":J
    .local v168, "f8":I
    add-long v11, v153, v157

    .end local v153    # "h5":J
    .local v11, "h5":J
    shl-long v153, v157, v167

    move-wide/from16 v179, v13

    .end local v13    # "f8f8_19":J
    .local v179, "f8f8_19":J
    sub-long v13, v151, v153

    .line 688
    .end local v151    # "h4":J
    .local v13, "h4":J
    add-long v151, v159, v163

    shr-long v151, v151, v167

    .local v151, "carry8":J
    add-long v161, v161, v151

    shl-long v153, v151, v167

    move-wide/from16 v190, v6

    .end local v6    # "h7":J
    .local v190, "h7":J
    sub-long v6, v159, v153

    .line 690
    .end local v159    # "h8":J
    .local v6, "h8":J
    add-long v170, v161, v170

    shr-long v153, v170, v174

    .local v153, "carry9":J
    const-wide/16 v159, 0x13

    mul-long v159, v159, v153

    add-long v9, v9, v159

    shl-long v159, v153, v174

    move-wide/from16 v169, v6

    .end local v6    # "h8":J
    .local v169, "h8":J
    sub-long v6, v161, v159

    .line 692
    .end local v161    # "h9":J
    .local v6, "h9":J
    add-long v163, v9, v163

    shr-long v159, v163, v167

    move-wide/from16 v161, v6

    .end local v6    # "h9":J
    .end local v165    # "carry0":J
    .local v159, "carry0":J
    .restart local v161    # "h9":J
    add-long v6, v145, v159

    .end local v145    # "h1":J
    .local v6, "h1":J
    shl-long v145, v159, v167

    sub-long v9, v9, v145

    .line 694
    move/from16 v145, v8

    .end local v8    # "f4":I
    .local v145, "f4":I
    const/16 v8, 0xa

    new-array v8, v8, [I

    .line 695
    .local v8, "h":[I
    move/from16 v146, v15

    .end local v15    # "f6_2":I
    .local v146, "f6_2":I
    long-to-int v15, v9

    const/16 v25, 0x0

    aput v15, v8, v25

    .line 696
    long-to-int v15, v6

    const/16 v24, 0x1

    aput v15, v8, v24

    .line 697
    long-to-int v15, v0

    const/16 v23, 0x2

    aput v15, v8, v23

    .line 698
    long-to-int v15, v4

    const/16 v22, 0x3

    aput v15, v8, v22

    .line 699
    long-to-int v15, v13

    const/16 v21, 0x4

    aput v15, v8, v21

    .line 700
    long-to-int v15, v11

    const/16 v19, 0x5

    aput v15, v8, v19

    .line 701
    long-to-int v15, v2

    const/16 v17, 0x6

    aput v15, v8, v17

    .line 702
    move-wide/from16 v21, v0

    move-wide/from16 v0, v190

    .end local v190    # "h7":J
    .local v0, "h7":J
    .local v21, "h2":J
    long-to-int v15, v0

    aput v15, v8, v16

    .line 703
    move-wide/from16 v0, v169

    .end local v169    # "h8":J
    .local v0, "h8":J
    .restart local v190    # "h7":J
    long-to-int v15, v0

    aput v15, v8, v18

    .line 704
    move-wide/from16 v0, v161

    .end local v161    # "h9":J
    .local v0, "h9":J
    .restart local v169    # "h8":J
    long-to-int v15, v0

    aput v15, v8, v20

    .line 705
    new-instance v15, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v0, p0

    .end local v0    # "h9":J
    .restart local v161    # "h9":J
    iget-object v1, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v15, v1, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v15
.end method

.method public subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 6
    .param p1, "val"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 107
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 108
    .local v0, "g":[I
    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 109
    .local v2, "h":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 110
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    aget v4, v4, v3

    aget v5, v0, v3

    sub-int/2addr v4, v5

    aput v4, v2, v3

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 112
    .end local v3    # "i":I
    :cond_0
    new-instance v1, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v1, v3, v2}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Ed25519FieldElement val="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lnet/i2p/crypto/eddsa/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
