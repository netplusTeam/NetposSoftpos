.class public Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;
.super Lnet/i2p/crypto/eddsa/math/Encoding;
.source "Ed25519LittleEndianEncoding.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/Encoding;-><init>()V

    return-void
.end method

.method static load_3([BI)I
    .locals 2
    .param p0, "in"    # [B
    .param p1, "offset"    # I

    .line 169
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 170
    .local p1, "result":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 171
    aget-byte v0, p0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    .line 172
    return p1
.end method

.method static load_4([BI)J
    .locals 5
    .param p0, "in"    # [B
    .param p1, "offset"    # I

    .line 176
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "offset":I
    .local v0, "offset":I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 177
    .local p1, "result":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "offset":I
    .local v1, "offset":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    .line 178
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "offset":I
    .restart local v0    # "offset":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    .line 179
    aget-byte v1, p0, v0

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p1, v1

    .line 180
    int-to-long v1, p1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    return-wide v1
.end method


# virtual methods
.method public decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 47
    .param p1, "in"    # [B

    .line 190
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v2

    .line 191
    .local v2, "h0":J
    const/4 v4, 0x4

    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v5

    const/4 v6, 0x6

    shl-int/2addr v5, v6

    int-to-long v7, v5

    .line 192
    .local v7, "h1":J
    const/4 v5, 0x7

    invoke-static {v0, v5}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v9

    const/4 v10, 0x5

    shl-int/2addr v9, v10

    int-to-long v11, v9

    .line 193
    .local v11, "h2":J
    const/16 v9, 0xa

    invoke-static {v0, v9}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    const/4 v14, 0x3

    shl-int/2addr v13, v14

    int-to-long v14, v13

    .line 194
    .local v14, "h3":J
    const/16 v13, 0xd

    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v13

    const/16 v17, 0x2

    shl-int/lit8 v13, v13, 0x2

    move-wide/from16 v18, v7

    .end local v7    # "h1":J
    .local v18, "h1":J
    int-to-long v6, v13

    .line 195
    .local v6, "h4":J
    const/16 v8, 0x10

    invoke-static {v0, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_4([BI)J

    move-result-wide v20

    .line 196
    .local v20, "h5":J
    const/16 v8, 0x14

    invoke-static {v0, v8}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v8

    shl-int/2addr v8, v5

    move-wide/from16 v22, v6

    .end local v6    # "h4":J
    .local v22, "h4":J
    int-to-long v5, v8

    .line 197
    .local v5, "h6":J
    const/16 v7, 0x17

    invoke-static {v0, v7}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v7

    shl-int/2addr v7, v10

    int-to-long v7, v7

    .line 198
    .local v7, "h7":J
    const/16 v13, 0x1a

    invoke-static {v0, v13}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v24

    shl-int/lit8 v10, v24, 0x4

    int-to-long v9, v10

    .line 199
    .local v9, "h8":J
    const/16 v4, 0x1d

    invoke-static {v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->load_3([BI)I

    move-result v4

    const v25, 0x7fffff

    and-int v4, v4, v25

    shl-int/lit8 v4, v4, 0x2

    move-wide/from16 v25, v14

    .end local v14    # "h3":J
    .local v25, "h3":J
    int-to-long v13, v4

    .line 212
    .local v13, "h9":J
    const-wide/32 v27, 0x1000000

    add-long v29, v13, v27

    const/16 v4, 0x19

    shr-long v29, v29, v4

    .local v29, "carry9":J
    const-wide/16 v31, 0x13

    mul-long v31, v31, v29

    add-long v2, v2, v31

    shl-long v31, v29, v4

    sub-long v13, v13, v31

    .line 213
    add-long v31, v18, v27

    shr-long v31, v31, v4

    .local v31, "carry1":J
    add-long v11, v11, v31

    shl-long v33, v31, v4

    sub-long v18, v18, v33

    .line 214
    add-long v33, v25, v27

    shr-long v33, v33, v4

    .local v33, "carry3":J
    add-long v22, v22, v33

    shl-long v35, v33, v4

    sub-long v25, v25, v35

    .line 215
    add-long v35, v20, v27

    shr-long v35, v35, v4

    .local v35, "carry5":J
    add-long v5, v5, v35

    shl-long v37, v35, v4

    sub-long v20, v20, v37

    .line 216
    add-long v27, v7, v27

    shr-long v27, v27, v4

    .local v27, "carry7":J
    add-long v9, v9, v27

    shl-long v37, v27, v4

    sub-long v7, v7, v37

    .line 218
    const-wide/32 v37, 0x2000000

    add-long v39, v2, v37

    const/16 v4, 0x1a

    shr-long v39, v39, v4

    .local v39, "carry0":J
    add-long v0, v18, v39

    .end local v18    # "h1":J
    .local v0, "h1":J
    shl-long v18, v39, v4

    sub-long v2, v2, v18

    .line 219
    add-long v18, v11, v37

    shr-long v18, v18, v4

    move-wide/from16 v41, v0

    .end local v0    # "h1":J
    .local v18, "carry2":J
    .local v41, "h1":J
    add-long v0, v25, v18

    .end local v25    # "h3":J
    .local v0, "h3":J
    shl-long v25, v18, v4

    sub-long v11, v11, v25

    .line 220
    add-long v25, v22, v37

    shr-long v25, v25, v4

    move-wide/from16 v43, v0

    .end local v0    # "h3":J
    .local v25, "carry4":J
    .local v43, "h3":J
    add-long v0, v20, v25

    .end local v20    # "h5":J
    .local v0, "h5":J
    shl-long v20, v25, v4

    move-wide/from16 v45, v0

    .end local v0    # "h5":J
    .local v45, "h5":J
    sub-long v0, v22, v20

    .line 221
    .end local v22    # "h4":J
    .local v0, "h4":J
    add-long v20, v5, v37

    shr-long v20, v20, v4

    .local v20, "carry6":J
    add-long v7, v7, v20

    shl-long v22, v20, v4

    sub-long v5, v5, v22

    .line 222
    add-long v37, v9, v37

    shr-long v22, v37, v4

    .local v22, "carry8":J
    add-long v13, v13, v22

    shl-long v37, v22, v4

    sub-long v9, v9, v37

    .line 224
    const/16 v4, 0xa

    new-array v4, v4, [I

    .line 225
    .local v4, "h":[I
    long-to-int v15, v2

    const/16 v24, 0x0

    aput v15, v4, v24

    .line 226
    move-wide/from16 v37, v2

    move-wide/from16 v2, v41

    .end local v41    # "h1":J
    .local v2, "h1":J
    .local v37, "h0":J
    long-to-int v15, v2

    const/16 v24, 0x1

    aput v15, v4, v24

    .line 227
    long-to-int v15, v11

    aput v15, v4, v17

    .line 228
    move-wide/from16 v2, v43

    .end local v43    # "h3":J
    .local v2, "h3":J
    .restart local v41    # "h1":J
    long-to-int v15, v2

    const/16 v16, 0x3

    aput v15, v4, v16

    .line 229
    long-to-int v15, v0

    const/16 v16, 0x4

    aput v15, v4, v16

    .line 230
    move-wide v15, v0

    move-wide/from16 v0, v45

    .end local v2    # "h3":J
    .end local v45    # "h5":J
    .local v0, "h5":J
    .local v15, "h4":J
    .restart local v43    # "h3":J
    long-to-int v2, v0

    const/4 v3, 0x5

    aput v2, v4, v3

    .line 231
    long-to-int v2, v5

    const/4 v3, 0x6

    aput v2, v4, v3

    .line 232
    long-to-int v2, v7

    const/4 v3, 0x7

    aput v2, v4, v3

    .line 233
    long-to-int v2, v9

    const/16 v3, 0x8

    aput v2, v4, v3

    .line 234
    long-to-int v2, v13

    const/16 v3, 0x9

    aput v2, v4, v3

    .line 235
    new-instance v2, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    move-object/from16 v3, p0

    .end local v0    # "h5":J
    .restart local v45    # "h5":J
    iget-object v0, v3, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-direct {v2, v0, v4}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;-><init>(Lnet/i2p/crypto/eddsa/math/Field;[I)V

    return-object v2
.end method

.method public encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
    .locals 35
    .param p1, "x"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 79
    move-object/from16 v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;

    iget-object v0, v0, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519FieldElement;->t:[I

    .line 80
    .local v0, "h":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 81
    .local v2, "h0":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 82
    .local v4, "h1":I
    const/4 v5, 0x2

    aget v6, v0, v5

    .line 83
    .local v6, "h2":I
    const/4 v7, 0x3

    aget v8, v0, v7

    .line 84
    .local v8, "h3":I
    const/4 v9, 0x4

    aget v10, v0, v9

    .line 85
    .local v10, "h4":I
    const/4 v11, 0x5

    aget v12, v0, v11

    .line 86
    .local v12, "h5":I
    const/4 v13, 0x6

    aget v14, v0, v13

    .line 87
    .local v14, "h6":I
    const/4 v15, 0x7

    aget v16, v0, v15

    .line 88
    .local v16, "h7":I
    const/16 v17, 0x8

    aget v18, v0, v17

    .line 89
    .local v18, "h8":I
    const/16 v19, 0x9

    aget v20, v0, v19

    .line 104
    .local v20, "h9":I
    mul-int/lit8 v21, v20, 0x13

    const/high16 v22, 0x1000000

    add-int v21, v21, v22

    const/16 v22, 0x19

    shr-int/lit8 v21, v21, 0x19

    .line 105
    .local v21, "q":I
    add-int v23, v2, v21

    const/16 v24, 0x1a

    shr-int/lit8 v21, v23, 0x1a

    .line 106
    add-int v23, v4, v21

    shr-int/lit8 v21, v23, 0x19

    .line 107
    add-int v23, v6, v21

    shr-int/lit8 v21, v23, 0x1a

    .line 108
    add-int v23, v8, v21

    shr-int/lit8 v21, v23, 0x19

    .line 109
    add-int v23, v10, v21

    shr-int/lit8 v21, v23, 0x1a

    .line 110
    add-int v23, v12, v21

    shr-int/lit8 v21, v23, 0x19

    .line 111
    add-int v23, v14, v21

    shr-int/lit8 v21, v23, 0x1a

    .line 112
    add-int v23, v16, v21

    shr-int/lit8 v21, v23, 0x19

    .line 113
    add-int v23, v18, v21

    shr-int/lit8 v21, v23, 0x1a

    .line 114
    add-int v23, v20, v21

    shr-int/lit8 v21, v23, 0x19

    .line 118
    mul-int/lit8 v23, v21, 0x13

    add-int v2, v2, v23

    .line 120
    shr-int/lit8 v23, v2, 0x1a

    .local v23, "carry0":I
    add-int v4, v4, v23

    shl-int/lit8 v25, v23, 0x1a

    sub-int v2, v2, v25

    .line 121
    shr-int/lit8 v25, v4, 0x19

    .local v25, "carry1":I
    add-int v6, v6, v25

    shl-int/lit8 v26, v25, 0x19

    sub-int v4, v4, v26

    .line 122
    shr-int/lit8 v26, v6, 0x1a

    .local v26, "carry2":I
    add-int v8, v8, v26

    shl-int/lit8 v27, v26, 0x1a

    sub-int v6, v6, v27

    .line 123
    shr-int/lit8 v27, v8, 0x19

    .local v27, "carry3":I
    add-int v10, v10, v27

    shl-int/lit8 v28, v27, 0x19

    sub-int v8, v8, v28

    .line 124
    shr-int/lit8 v28, v10, 0x1a

    .local v28, "carry4":I
    add-int v12, v12, v28

    shl-int/lit8 v29, v28, 0x1a

    sub-int v10, v10, v29

    .line 125
    shr-int/lit8 v29, v12, 0x19

    .local v29, "carry5":I
    add-int v14, v14, v29

    shl-int/lit8 v30, v29, 0x19

    sub-int v12, v12, v30

    .line 126
    shr-int/lit8 v30, v14, 0x1a

    .local v30, "carry6":I
    add-int v16, v16, v30

    shl-int/lit8 v31, v30, 0x1a

    sub-int v14, v14, v31

    .line 127
    shr-int/lit8 v31, v16, 0x19

    .local v31, "carry7":I
    add-int v18, v18, v31

    shl-int/lit8 v32, v31, 0x19

    sub-int v16, v16, v32

    .line 128
    shr-int/lit8 v32, v18, 0x1a

    .local v32, "carry8":I
    add-int v20, v20, v32

    shl-int/lit8 v33, v32, 0x1a

    sub-int v18, v18, v33

    .line 129
    shr-int/lit8 v33, v20, 0x19

    .local v33, "carry9":I
    shl-int/lit8 v34, v33, 0x19

    sub-int v20, v20, v34

    .line 132
    const/16 v15, 0x20

    new-array v15, v15, [B

    .line 133
    .local v15, "s":[B
    int-to-byte v13, v2

    aput-byte v13, v15, v1

    .line 134
    shr-int/lit8 v1, v2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v15, v3

    .line 135
    shr-int/lit8 v1, v2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v15, v5

    .line 136
    shr-int/lit8 v1, v2, 0x18

    shl-int/lit8 v3, v4, 0x2

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v15, v7

    .line 137
    shr-int/lit8 v1, v4, 0x6

    int-to-byte v1, v1

    aput-byte v1, v15, v9

    .line 138
    shr-int/lit8 v1, v4, 0xe

    int-to-byte v1, v1

    aput-byte v1, v15, v11

    .line 139
    shr-int/lit8 v1, v4, 0x16

    shl-int/lit8 v3, v6, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x6

    aput-byte v1, v15, v3

    .line 140
    shr-int/lit8 v1, v6, 0x5

    int-to-byte v1, v1

    const/4 v3, 0x7

    aput-byte v1, v15, v3

    .line 141
    shr-int/lit8 v1, v6, 0xd

    int-to-byte v1, v1

    aput-byte v1, v15, v17

    .line 142
    shr-int/lit8 v1, v6, 0x15

    shl-int/lit8 v3, v8, 0x5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v15, v19

    .line 143
    shr-int/lit8 v1, v8, 0x3

    int-to-byte v1, v1

    const/16 v3, 0xa

    aput-byte v1, v15, v3

    .line 144
    shr-int/lit8 v1, v8, 0xb

    int-to-byte v1, v1

    const/16 v3, 0xb

    aput-byte v1, v15, v3

    .line 145
    shr-int/lit8 v1, v8, 0x13

    shl-int/lit8 v3, v10, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    const/16 v3, 0xc

    aput-byte v1, v15, v3

    .line 146
    shr-int/lit8 v1, v10, 0x2

    int-to-byte v1, v1

    const/16 v3, 0xd

    aput-byte v1, v15, v3

    .line 147
    shr-int/lit8 v1, v10, 0xa

    int-to-byte v1, v1

    const/16 v3, 0xe

    aput-byte v1, v15, v3

    .line 148
    shr-int/lit8 v1, v10, 0x12

    int-to-byte v1, v1

    const/16 v3, 0xf

    aput-byte v1, v15, v3

    .line 149
    int-to-byte v1, v12

    const/16 v3, 0x10

    aput-byte v1, v15, v3

    .line 150
    shr-int/lit8 v1, v12, 0x8

    int-to-byte v1, v1

    const/16 v3, 0x11

    aput-byte v1, v15, v3

    .line 151
    shr-int/lit8 v1, v12, 0x10

    int-to-byte v1, v1

    const/16 v3, 0x12

    aput-byte v1, v15, v3

    .line 152
    shr-int/lit8 v1, v12, 0x18

    shl-int/lit8 v3, v14, 0x1

    or-int/2addr v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x13

    aput-byte v1, v15, v3

    .line 153
    shr-int/lit8 v1, v14, 0x7

    int-to-byte v1, v1

    const/16 v3, 0x14

    aput-byte v1, v15, v3

    .line 154
    shr-int/lit8 v1, v14, 0xf

    int-to-byte v1, v1

    const/16 v3, 0x15

    aput-byte v1, v15, v3

    .line 155
    shr-int/lit8 v1, v14, 0x17

    shl-int/lit8 v3, v16, 0x3

    or-int/2addr v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x16

    aput-byte v1, v15, v3

    .line 156
    shr-int/lit8 v1, v16, 0x5

    int-to-byte v1, v1

    const/16 v3, 0x17

    aput-byte v1, v15, v3

    .line 157
    shr-int/lit8 v1, v16, 0xd

    int-to-byte v1, v1

    const/16 v3, 0x18

    aput-byte v1, v15, v3

    .line 158
    shr-int/lit8 v1, v16, 0x15

    shl-int/lit8 v3, v18, 0x4

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v15, v22

    .line 159
    shr-int/lit8 v1, v18, 0x4

    int-to-byte v1, v1

    aput-byte v1, v15, v24

    .line 160
    shr-int/lit8 v1, v18, 0xc

    int-to-byte v1, v1

    const/16 v3, 0x1b

    aput-byte v1, v15, v3

    .line 161
    shr-int/lit8 v1, v18, 0x14

    shl-int/lit8 v3, v20, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    const/16 v3, 0x1c

    aput-byte v1, v15, v3

    .line 162
    shr-int/lit8 v1, v20, 0x2

    int-to-byte v1, v1

    const/16 v3, 0x1d

    aput-byte v1, v15, v3

    .line 163
    shr-int/lit8 v1, v20, 0xa

    int-to-byte v1, v1

    const/16 v3, 0x1e

    aput-byte v1, v15, v3

    .line 164
    shr-int/lit8 v1, v20, 0x12

    int-to-byte v1, v1

    const/16 v3, 0x1f

    aput-byte v1, v15, v3

    .line 165
    return-object v15
.end method

.method public isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
    .locals 4
    .param p1, "x"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 252
    invoke-virtual {p0, p1}, Lnet/i2p/crypto/eddsa/math/ed25519/Ed25519LittleEndianEncoding;->encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B

    move-result-object v0

    .line 253
    .local v0, "s":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method
