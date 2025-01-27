.class public Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32;
.super Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;
.source "MurmurHash3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/digest/MurmurHash3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncrementalHash32"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Lorg/apache/commons/codec/digest/MurmurHash3$IncrementalHash32x86;-><init>()V

    return-void
.end method


# virtual methods
.method finalise(II[BI)I
    .locals 3
    .param p1, "hash"    # I
    .param p2, "unprocessedLength"    # I
    .param p3, "unprocessed"    # [B
    .param p4, "totalLen"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1213
    move v0, p1

    .line 1217
    .local v0, "result":I
    const/4 v1, 0x0

    .line 1218
    .local v1, "k1":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 1220
    :pswitch_0
    const/4 v2, 0x2

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x10

    xor-int/2addr v1, v2

    .line 1222
    :pswitch_1
    const/4 v2, 0x1

    aget-byte v2, p3, v2

    shl-int/lit8 v2, v2, 0x8

    xor-int/2addr v1, v2

    .line 1224
    :pswitch_2
    const/4 v2, 0x0

    aget-byte v2, p3, v2

    xor-int/2addr v1, v2

    .line 1227
    const v2, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, v2

    .line 1228
    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 1229
    const v2, 0x1b873593

    mul-int/2addr v1, v2

    .line 1230
    xor-int/2addr v0, v1

    .line 1234
    :goto_0
    xor-int/2addr v0, p4

    .line 1235
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
