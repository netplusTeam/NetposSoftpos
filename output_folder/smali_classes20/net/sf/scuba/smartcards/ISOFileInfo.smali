.class public Lnet/sf/scuba/smartcards/ISOFileInfo;
.super Lnet/sf/scuba/smartcards/FileInfo;
.source "ISOFileInfo.java"


# static fields
.field public static final A0:B = -0x60t

.field public static final A1:B = -0x5ft

.field public static final A2:B = -0x5et

.field public static final A5:B = -0x5bt

.field public static final AB:B = -0x55t

.field public static final AC:B = -0x54t

.field public static final CHANNEL_SECURITY:B = -0x72t

.field public static final DATA_BYTES1:B = -0x80t

.field public static final DATA_BYTES2:B = -0x7ft

.field public static final DF_NAME:B = -0x7ct

.field public static final ENV_TEMP_EF:B = -0x73t

.field public static final FCI_BYTE:B = 0x6ft

.field public static final FCI_EXT:B = -0x79t

.field public static final FCP_BYTE:B = 0x62t

.field public static final FILE_DESCRIPTOR:B = -0x7et

.field public static final FILE_IDENTIFIER:B = -0x7dt

.field public static final FMD_BYTE:B = 0x64t

.field public static final LCS_BYTE:B = -0x76t

.field public static final PROP_INFO:B = -0x7bt

.field public static final SECURITY_ATTR_COMPACT:B = -0x74t

.field public static final SECURITY_ATTR_EXP:B = -0x75t

.field public static final SECURITY_ATTR_PROP:B = -0x7at

.field public static final SHORT_EF:B = -0x78t


# instance fields
.field a0:[B

.field a1:[B

.field a2:[B

.field a5:[B

.field ab:[B

.field ac:[B

.field channelSecurity:B

.field dataCodingByte:B

.field descriptorByte:B

.field dfName:[B

.field envTempEF:S

.field fciExt:S

.field fid:S

.field fileLength:I

.field fileLengthFCI:I

.field lcsByte:B

.field mainTag:B

.field maxRecordSize:S

.field maxRecordsCount:S

.field propInfo:[B

.field secAttrCompact:[B

.field secAttrExp:[B

.field secAttrProp:[B

.field shortEF:B


# direct methods
.method public constructor <init>([B)V
    .locals 13
    .param p1, "fileInfo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lnet/sf/scuba/smartcards/FileInfo;-><init>()V

    .line 63
    const/4 v0, -0x1

    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    .line 64
    iput v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    .line 65
    iput v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    .line 66
    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    .line 67
    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    .line 68
    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    .line 69
    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    .line 70
    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    .line 72
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    .line 73
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    .line 74
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    .line 75
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    .line 76
    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    .line 77
    iput-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    .line 78
    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    .line 79
    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    .line 80
    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    .line 81
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    .line 82
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    .line 83
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    .line 84
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    .line 85
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    .line 86
    iput-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    .line 89
    array-length v0, p1

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x62

    if-eq v1, v2, :cond_2

    aget-byte v1, p1, v0

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v1, "Malformed FCI data"

    invoke-direct {v0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_2
    :goto_0
    aget-byte v1, p1, v0

    iput-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    .line 97
    const/4 v1, 0x1

    aget-byte v2, p1, v1

    new-array v2, v2, [B

    .line 98
    .local v2, "tmp":[B
    aget-byte v3, p1, v1

    const/4 v4, 0x2

    invoke-static {p1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    move-object p1, v2

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "offset":I
    const/4 v5, 0x0

    .line 102
    .local v5, "integer":Ljava/math/BigInteger;
    const/4 v6, 0x0

    .line 104
    .local v6, "off":I
    :goto_1
    :try_start_0
    array-length v7, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    if-ge v3, v7, :cond_9

    .line 105
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "offset":I
    .local v7, "offset":I
    :try_start_1
    aget-byte v3, p1, v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 106
    .local v3, "tag":B
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "offset":I
    .local v8, "offset":I
    :try_start_2
    aget-byte v7, p1, v7

    .line 107
    .local v7, "len":B
    new-array v9, v7, [B

    .line 108
    .local v9, "contents":[B
    invoke-static {p1, v8, v9, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    add-int/2addr v8, v7

    .line 110
    sparse-switch v3, :sswitch_data_0

    .line 225
    new-instance v0, Lnet/sf/scuba/smartcards/CardServiceException;

    goto/16 :goto_4

    .line 221
    :sswitch_0
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    .line 222
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    goto/16 :goto_3

    .line 217
    :sswitch_1
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    .line 218
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    goto/16 :goto_3

    .line 213
    :sswitch_2
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    .line 214
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    goto/16 :goto_3

    .line 209
    :sswitch_3
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    .line 210
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    goto/16 :goto_3

    .line 205
    :sswitch_4
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    .line 206
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    goto/16 :goto_3

    .line 201
    :sswitch_5
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    .line 202
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    goto/16 :goto_3

    .line 197
    :sswitch_6
    invoke-static {v7, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    .line 198
    aget-byte v10, v9, v0

    iput-byte v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    .line 199
    goto/16 :goto_3

    .line 192
    :sswitch_7
    invoke-static {v7, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    .line 193
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 194
    invoke-virtual {v5}, Ljava/math/BigInteger;->shortValue()S

    move-result v10

    iput-short v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    .line 195
    goto/16 :goto_3

    .line 188
    :sswitch_8
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    .line 189
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    goto/16 :goto_3

    .line 184
    :sswitch_9
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    .line 185
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    goto/16 :goto_3

    .line 180
    :sswitch_a
    invoke-static {v7, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    .line 181
    aget-byte v10, v9, v0

    iput-byte v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    .line 182
    goto/16 :goto_3

    .line 172
    :sswitch_b
    invoke-static {v7, v0, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(III)V

    .line 173
    if-nez v7, :cond_3

    .line 174
    iput-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    goto/16 :goto_3

    .line 176
    :cond_3
    aget-byte v10, v9, v0

    iput-byte v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    .line 178
    goto/16 :goto_3

    .line 167
    :sswitch_c
    invoke-static {v7, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    .line 168
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 169
    invoke-virtual {v5}, Ljava/math/BigInteger;->shortValue()S

    move-result v10

    iput-short v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    .line 170
    goto/16 :goto_3

    .line 163
    :sswitch_d
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    .line 164
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    goto/16 :goto_3

    .line 159
    :sswitch_e
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    .line 160
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    goto/16 :goto_3

    .line 154
    :sswitch_f
    const/16 v10, 0x10

    invoke-static {v7, v0, v10}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(III)V

    .line 155
    array-length v10, v9

    new-array v10, v10, [B

    iput-object v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    .line 156
    array-length v11, v9

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    goto/16 :goto_3

    .line 149
    :sswitch_10
    invoke-static {v7, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    .line 150
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 151
    invoke-virtual {v5}, Ljava/math/BigInteger;->shortValue()S

    move-result v10

    iput-short v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    .line 152
    goto/16 :goto_3

    .line 122
    :sswitch_11
    const/4 v10, 0x6

    invoke-static {v7, v1, v10}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(III)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    const/4 v6, 0x0

    .line 124
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "off":I
    .local v10, "off":I
    :try_start_3
    aget-byte v6, v9, v6

    iput-byte v6, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    .line 125
    array-length v6, v9
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v10, v6, :cond_4

    .line 126
    move v6, v10

    goto/16 :goto_3

    .line 128
    :cond_4
    add-int/lit8 v6, v10, 0x1

    .end local v10    # "off":I
    .restart local v6    # "off":I
    :try_start_4
    aget-byte v10, v9, v10

    iput-byte v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    .line 129
    array-length v10, v9

    if-ne v6, v10, :cond_5

    .line 130
    goto/16 :goto_3

    .line 132
    :cond_5
    array-length v10, v9
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6

    .line 133
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "off":I
    .restart local v10    # "off":I
    :try_start_5
    aget-byte v6, v9, v6

    int-to-short v6, v6

    iput-short v6, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    move v6, v10

    goto :goto_2

    .line 135
    .end local v10    # "off":I
    .restart local v6    # "off":I
    :cond_6
    :try_start_6
    new-instance v10, Ljava/math/BigInteger;

    new-array v11, v4, [B
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "off":I
    .local v12, "off":I
    :try_start_7
    aget-byte v6, v9, v6

    aput-byte v6, v11, v0
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    add-int/lit8 v6, v12, 0x1

    .end local v12    # "off":I
    .restart local v6    # "off":I
    :try_start_8
    aget-byte v12, v9, v12

    aput-byte v12, v11, v1

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 136
    invoke-virtual {v5}, Ljava/math/BigInteger;->shortValue()S

    move-result v10

    iput-short v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    .line 138
    :goto_2
    array-length v10, v9

    if-ne v6, v10, :cond_7

    .line 139
    goto :goto_3

    .line 141
    :cond_7
    array-length v10, v9
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2

    const/4 v11, 0x5

    if-ne v10, v11, :cond_8

    .line 142
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "off":I
    .restart local v10    # "off":I
    :try_start_9
    aget-byte v6, v9, v6

    int-to-short v6, v6

    iput-short v6, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    move v6, v10

    goto :goto_3

    .line 144
    .end local v10    # "off":I
    .restart local v6    # "off":I
    :cond_8
    :try_start_a
    new-instance v10, Ljava/math/BigInteger;

    new-array v11, v4, [B
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_2

    add-int/lit8 v12, v6, 0x1

    .end local v6    # "off":I
    .restart local v12    # "off":I
    :try_start_b
    aget-byte v6, v9, v6

    aput-byte v6, v11, v0
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_0

    add-int/lit8 v6, v12, 0x1

    .end local v12    # "off":I
    .restart local v6    # "off":I
    :try_start_c
    aget-byte v12, v9, v12

    aput-byte v12, v11, v1

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 145
    invoke-virtual {v5}, Ljava/math/BigInteger;->shortValue()S

    move-result v10

    iput-short v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    .line 147
    goto :goto_3

    .line 228
    .end local v3    # "tag":B
    .end local v6    # "off":I
    .end local v7    # "len":B
    .end local v9    # "contents":[B
    .restart local v12    # "off":I
    :catch_0
    move-exception v0

    move v3, v8

    move v6, v12

    goto :goto_5

    .end local v12    # "off":I
    .restart local v10    # "off":I
    :catch_1
    move-exception v0

    move v3, v8

    move v6, v10

    goto :goto_5

    .line 117
    .end local v10    # "off":I
    .restart local v3    # "tag":B
    .restart local v6    # "off":I
    .restart local v7    # "len":B
    .restart local v9    # "contents":[B
    :sswitch_12
    invoke-static {v7, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->checkLen(II)V

    .line 118
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 119
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    iput v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    .line 120
    goto :goto_3

    .line 112
    :sswitch_13
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v9}, Ljava/math/BigInteger;-><init>([B)V

    move-object v5, v10

    .line 113
    invoke-virtual {v5}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    move-object v5, v10

    .line 114
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    iput v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    .line 115
    nop

    .line 227
    .end local v3    # "tag":B
    .end local v7    # "len":B
    .end local v9    # "contents":[B
    :goto_3
    move v3, v8

    goto/16 :goto_1

    .line 225
    .restart local v3    # "tag":B
    .restart local v7    # "len":B
    .restart local v9    # "contents":[B
    :goto_4
    const-string v1, "Malformed FCI: unrecognized tag."

    invoke-direct {v0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    .end local v2    # "tmp":[B
    .end local v5    # "integer":Ljava/math/BigInteger;
    .end local v6    # "off":I
    .end local v8    # "offset":I
    .end local p1    # "fileInfo":[B
    throw v0
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_2

    .line 228
    .end local v3    # "tag":B
    .end local v7    # "len":B
    .end local v9    # "contents":[B
    .restart local v2    # "tmp":[B
    .restart local v5    # "integer":Ljava/math/BigInteger;
    .restart local v6    # "off":I
    .restart local v8    # "offset":I
    .restart local p1    # "fileInfo":[B
    :catch_2
    move-exception v0

    move v3, v8

    goto :goto_5

    .end local v8    # "offset":I
    .local v7, "offset":I
    :catch_3
    move-exception v0

    move v3, v7

    goto :goto_5

    .line 230
    .end local v7    # "offset":I
    .local v3, "offset":I
    :cond_9
    nop

    .line 231
    return-void

    .line 228
    :catch_4
    move-exception v0

    .line 229
    .local v0, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_5
    new-instance v1, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v4, "Malformed FCI."

    invoke-direct {v1, v4}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80 -> :sswitch_13
        -0x7f -> :sswitch_12
        -0x7e -> :sswitch_11
        -0x7d -> :sswitch_10
        -0x7c -> :sswitch_f
        -0x7b -> :sswitch_e
        -0x7a -> :sswitch_d
        -0x79 -> :sswitch_c
        -0x78 -> :sswitch_b
        -0x76 -> :sswitch_a
        -0x75 -> :sswitch_9
        -0x74 -> :sswitch_8
        -0x73 -> :sswitch_7
        -0x72 -> :sswitch_6
        -0x60 -> :sswitch_5
        -0x5f -> :sswitch_4
        -0x5e -> :sswitch_3
        -0x5b -> :sswitch_2
        -0x55 -> :sswitch_1
        -0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method private static catArray([B[B)[B
    .locals 4
    .param p0, "a1"    # [B
    .param p1, "a2"    # [B

    .line 373
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 374
    .local v0, "result":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    return-object v0
.end method

.method private static checkLen(II)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 234
    if-ne p0, p1, :cond_0

    .line 237
    return-void

    .line 235
    :cond_0
    new-instance v0, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v1, "Malformed FCI."

    invoke-direct {v0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkLen(III)V
    .locals 2
    .param p0, "len"    # I
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/scuba/smartcards/CardServiceException;
        }
    .end annotation

    .line 240
    if-lt p0, p1, :cond_0

    if-gt p0, p2, :cond_0

    .line 243
    return-void

    .line 241
    :cond_0
    new-instance v0, Lnet/sf/scuba/smartcards/CardServiceException;

    const-string v1, "Malformed FCI."

    invoke-direct {v0, v1}, Lnet/sf/scuba/smartcards/CardServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getArray(B[B)[B
    .locals 5
    .param p0, "tag"    # B
    .param p1, "contents"    # [B

    .line 365
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 366
    .local v0, "result":[B
    const/4 v2, 0x0

    aput-byte p0, v0, v2

    .line 367
    array-length v3, p1

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 368
    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 369
    return-object v0
.end method


# virtual methods
.method public getFID()S
    .locals 1

    .line 415
    iget-short v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    return v0
.end method

.method public getFileLength()I
    .locals 1

    .line 426
    iget v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    return v0
.end method

.method public getFormatted()[B
    .locals 12

    .line 246
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 247
    .local v1, "result":[B
    iget-byte v2, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 248
    return-object v1

    .line 250
    :cond_0
    const/4 v2, 0x0

    .line 251
    .local v2, "piece":[B
    iget v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    if-eq v4, v3, :cond_1

    .line 252
    const/16 v5, -0x80

    int-to-short v4, v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v5, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 253
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 255
    :cond_1
    iget v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    if-eq v4, v3, :cond_2

    .line 256
    const/16 v5, -0x7f

    int-to-short v4, v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v5, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 257
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 260
    :cond_2
    iget-byte v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    const/4 v5, 0x1

    if-eq v4, v3, :cond_9

    .line 261
    new-array v6, v5, [B

    aput-byte v4, v6, v0

    move-object v4, v6

    .line 262
    .local v4, "ar1":[B
    new-array v6, v0, [B

    .line 263
    .local v6, "ar2":[B
    iget-byte v7, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    if-eq v7, v3, :cond_3

    .line 264
    new-array v8, v5, [B

    aput-byte v7, v8, v0

    move-object v6, v8

    .line 266
    :cond_3
    new-array v7, v0, [B

    .line 267
    .local v7, "ar3":[B
    iget-short v8, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    const/16 v9, 0x100

    if-eq v8, v3, :cond_6

    .line 268
    const/4 v10, 0x0

    .line 269
    .local v10, "x":Ljava/lang/String;
    if-gt v8, v9, :cond_5

    .line 270
    iget-short v11, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    if-ne v11, v3, :cond_4

    .line 271
    int-to-byte v8, v8

    invoke-static {v8}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v8

    .end local v10    # "x":Ljava/lang/String;
    .local v8, "x":Ljava/lang/String;
    goto :goto_0

    .line 273
    .end local v8    # "x":Ljava/lang/String;
    .restart local v10    # "x":Ljava/lang/String;
    :cond_4
    invoke-static {v8}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v8

    .end local v10    # "x":Ljava/lang/String;
    .restart local v8    # "x":Ljava/lang/String;
    goto :goto_0

    .line 276
    .end local v8    # "x":Ljava/lang/String;
    .restart local v10    # "x":Ljava/lang/String;
    :cond_5
    invoke-static {v8}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v8

    .line 278
    .end local v10    # "x":Ljava/lang/String;
    .restart local v8    # "x":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 280
    .end local v8    # "x":Ljava/lang/String;
    :cond_6
    new-array v8, v0, [B

    .line 281
    .local v8, "ar4":[B
    iget-short v10, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    if-eq v10, v3, :cond_8

    .line 282
    const/4 v11, 0x0

    .line 283
    .local v11, "x":Ljava/lang/String;
    if-gt v10, v9, :cond_7

    .line 284
    int-to-byte v9, v10

    invoke-static {v9}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v9

    .end local v11    # "x":Ljava/lang/String;
    .local v9, "x":Ljava/lang/String;
    goto :goto_1

    .line 286
    .end local v9    # "x":Ljava/lang/String;
    .restart local v11    # "x":Ljava/lang/String;
    :cond_7
    invoke-static {v10}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v9

    .line 288
    .end local v11    # "x":Ljava/lang/String;
    .restart local v9    # "x":Ljava/lang/String;
    :goto_1
    invoke-static {v9}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 290
    .end local v9    # "x":Ljava/lang/String;
    :cond_8
    const/16 v9, -0x7e

    invoke-static {v4, v6}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v10

    invoke-static {v10, v7}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v10

    invoke-static {v10, v8}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v10

    invoke-static {v9, v10}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 291
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 293
    .end local v4    # "ar1":[B
    .end local v6    # "ar2":[B
    .end local v7    # "ar3":[B
    .end local v8    # "ar4":[B
    :cond_9
    iget-short v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    if-eq v4, v3, :cond_a

    .line 294
    const/16 v6, -0x7d

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 295
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 297
    :cond_a
    iget-object v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    if-eqz v4, :cond_b

    .line 298
    const/16 v6, -0x7c

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 299
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 301
    :cond_b
    iget-object v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    if-eqz v4, :cond_c

    .line 302
    const/16 v6, -0x7b

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 303
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 305
    :cond_c
    iget-object v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    if-eqz v4, :cond_d

    .line 306
    const/16 v6, -0x7a

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 307
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 309
    :cond_d
    iget-short v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    if-eq v4, v3, :cond_e

    .line 310
    const/16 v6, -0x79

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 311
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 313
    :cond_e
    iget-byte v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    if-eq v4, v3, :cond_10

    .line 314
    const/16 v6, -0x78

    if-nez v4, :cond_f

    new-array v4, v0, [B

    goto :goto_2

    :cond_f
    new-array v7, v5, [B

    aput-byte v4, v7, v0

    move-object v4, v7

    :goto_2
    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 315
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 317
    :cond_10
    iget-byte v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    if-eq v4, v3, :cond_11

    .line 318
    const/16 v6, -0x76

    new-array v7, v5, [B

    aput-byte v4, v7, v0

    invoke-static {v6, v7}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 319
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 321
    :cond_11
    iget-object v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    if-eqz v4, :cond_12

    .line 322
    const/16 v6, -0x75

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 323
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 325
    :cond_12
    iget-object v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    if-eqz v4, :cond_13

    .line 326
    const/16 v6, -0x74

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 327
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 329
    :cond_13
    iget-short v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    if-eq v4, v3, :cond_14

    .line 330
    const/16 v6, -0x73

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/sf/scuba/util/Hex;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v6, v4}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 333
    :cond_14
    iget-byte v4, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    if-eq v4, v3, :cond_15

    .line 334
    const/16 v3, -0x72

    new-array v5, v5, [B

    aput-byte v4, v5, v0

    invoke-static {v3, v5}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 335
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 337
    :cond_15
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    if-eqz v0, :cond_16

    .line 338
    const/16 v3, -0x60

    invoke-static {v3, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 339
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 341
    :cond_16
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    if-eqz v0, :cond_17

    .line 342
    const/16 v3, -0x5f

    invoke-static {v3, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 343
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 345
    :cond_17
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    if-eqz v0, :cond_18

    .line 346
    const/16 v3, -0x5e

    invoke-static {v3, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 349
    :cond_18
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    if-eqz v0, :cond_19

    .line 350
    const/16 v3, -0x5b

    invoke-static {v3, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 351
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 353
    :cond_19
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    if-eqz v0, :cond_1a

    .line 354
    const/16 v3, -0x55

    invoke-static {v3, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 355
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 357
    :cond_1a
    iget-object v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    if-eqz v0, :cond_1b

    .line 358
    const/16 v3, -0x54

    invoke-static {v3, v0}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v2

    .line 359
    invoke-static {v1, v2}, Lnet/sf/scuba/smartcards/ISOFileInfo;->catArray([B[B)[B

    move-result-object v1

    .line 361
    :cond_1b
    iget-byte v0, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->mainTag:B

    invoke-static {v0, v1}, Lnet/sf/scuba/smartcards/ISOFileInfo;->getArray(B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLength FCI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fileLengthFCI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDesc byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->descriptorByte:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nData byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dataCodingByte:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nRecord size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nRecord count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->maxRecordsCount:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fid:S

    .line 388
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDF name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->dfName:[B

    .line 389
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npropInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->propInfo:[B

    .line 390
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsecAttrProp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrProp:[B

    .line 391
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsecAttrExp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrExp:[B

    .line 392
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nsecAttrComp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->secAttrCompact:[B

    .line 393
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nFCI ext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->fciExt:S

    .line 394
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nEF env temp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->envTempEF:S

    .line 395
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->shortToHexString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nShort EF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->shortEF:B

    .line 396
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nLCS byte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->lcsByte:B

    .line 397
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nChannel sec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->channelSecurity:B

    .line 398
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->byteToHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\na0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a0:[B

    .line 399
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\na1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a1:[B

    .line 400
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\na2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a2:[B

    .line 401
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\na5: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->a5:[B

    .line 402
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ab:[B

    .line 403
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nac: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/scuba/smartcards/ISOFileInfo;->ac:[B

    .line 404
    invoke-static {v1}, Lnet/sf/scuba/util/Hex;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    return-object v0
.end method
