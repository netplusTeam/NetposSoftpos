.class public Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;
.super Ljava/lang/Object;
.source "MurmurHash3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/MurmurHash3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementalHash32x86"
.end annotation


# static fields
.field private static final BLOCK_SIZE:I = 0x4


# instance fields
.field private hash:I

.field private totalLen:I

.field private final unprocessed:[B

.field private unprocessedLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    return-void
.end method

.method private static orBytes(BBBB)I
    .locals 2
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B

    .line 1181
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final add([BII)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1055
    if-gtz p3, :cond_0

    .line 1057
    return-void

    .line 1059
    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    .line 1073
    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    add-int v1, v0, p3

    add-int/lit8 v1, v1, -0x4

    if-gez v1, :cond_1

    .line 1075
    iget-object v1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1076
    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    .line 1077
    return-void

    .line 1083
    :cond_1
    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 1084
    const/4 v2, -0x1

    .line 1085
    .local v2, "k":I
    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1096
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unprocessed length should be 1, 2, or 3: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1093
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    aget-byte v4, v0, v1

    aget-byte v3, v0, v3

    const/4 v5, 0x2

    aget-byte v0, v0, v5

    aget-byte v5, p1, p2

    invoke-static {v4, v3, v0, v5}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->orBytes(BBBB)I

    move-result v0

    .line 1094
    .end local v2    # "k":I
    .local v0, "k":I
    goto :goto_0

    .line 1090
    .end local v0    # "k":I
    .restart local v2    # "k":I
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    aget-byte v4, v0, v1

    aget-byte v0, v0, v3

    aget-byte v3, p1, p2

    add-int/lit8 v5, p2, 0x1

    aget-byte v5, p1, v5

    invoke-static {v4, v0, v3, v5}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->orBytes(BBBB)I

    move-result v0

    .line 1091
    .end local v2    # "k":I
    .restart local v0    # "k":I
    goto :goto_0

    .line 1087
    .end local v0    # "k":I
    .restart local v2    # "k":I
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    aget-byte v0, v0, v1

    aget-byte v3, p1, p2

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    invoke-static {v0, v3, v4, v5}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->orBytes(BBBB)I

    move-result v0

    .line 1088
    .end local v2    # "k":I
    .restart local v0    # "k":I
    nop

    .line 1098
    :goto_0
    iget v2, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    invoke-static {v0, v2}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$000(II)I

    move-result v2

    iput v2, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    .line 1100
    iget v2, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    rsub-int/lit8 v2, v2, 0x4

    .line 1101
    .local v2, "consumed":I
    add-int v3, p2, v2

    .line 1102
    .local v3, "newOffset":I
    sub-int v0, p3, v2

    .line 1103
    .end local v2    # "consumed":I
    .local v0, "newLength":I
    goto :goto_1

    .line 1104
    .end local v0    # "newLength":I
    .end local v3    # "newOffset":I
    :cond_2
    move v3, p2

    .line 1105
    .restart local v3    # "newOffset":I
    move v0, p3

    .line 1109
    .restart local v0    # "newLength":I
    :goto_1
    shr-int/lit8 v2, v0, 0x2

    .line 1111
    .local v2, "nblocks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_3

    .line 1112
    shl-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    .line 1113
    .local v5, "index":I
    invoke-static {p1, v5}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$100([BI)I

    move-result v6

    .line 1114
    .local v6, "k":I
    iget v7, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    invoke-static {v6, v7}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$000(II)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    .line 1111
    .end local v5    # "index":I
    .end local v6    # "k":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1118
    .end local v4    # "i":I
    :cond_3
    shl-int/lit8 v4, v2, 0x2

    .line 1119
    .local v4, "consumed":I
    sub-int v5, v0, v4

    iput v5, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    .line 1120
    if-eqz v5, :cond_4

    .line 1121
    add-int v6, v3, v4

    iget-object v7, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    invoke-static {p1, v6, v7, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1123
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final end()I
    .locals 4

    .line 1133
    iget v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    iget v1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    iget-object v2, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessed:[B

    iget v3, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->finalise(II[BI)I

    move-result v0

    return v0
.end method

.method finalise(II[BI)I
    .locals 3
    .param p1, "hash"    # I
    .param p2, "unprocessedLength"    # I
    .param p3, "unprocessed"    # [B
    .param p4, "totalLen"    # I

    .line 1147
    move v0, p1

    .line 1148
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1149
    .local v1, "k1":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1151
    :pswitch_0
    const/4 v2, 0x2

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    .line 1153
    :pswitch_1
    const/4 v2, 0x1

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    .line 1155
    :pswitch_2
    const/4 v2, 0x0

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/2addr v1, v2

    .line 1158
    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, v2

    .line 1159
    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 1160
    const v2, 0x1b873593

    mul-int/2addr v1, v2

    .line 1161
    xor-int/2addr v0, v1

    .line 1165
    :goto_0
    xor-int/2addr v0, p4

    .line 1166
    invoke-static {v0}, Lorg/apache/commons/codec/digest/MurmurHash3;->access$200(I)I

    move-result v2

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final start(I)V
    .locals 1
    .param p1, "seed"    # I

    .line 1043
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->totalLen:I

    iput v0, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->unprocessedLength:I

    .line 1044
    iput p1, p0, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;->hash:I

    .line 1045
    return-void
.end method
