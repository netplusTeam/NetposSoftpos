.class public Lcom/visa/vac/tc/emvconverter/TLVParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getInstance:I


# direct methods
.method static $$a([BS[S)S
    .locals 8

    .line 80
    nop

    .line 60
    sget v0, Lcom/visa/vac/tc/emvconverter/TLVParser;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/TLVParser;->getInstance:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 21
    nop

    .line 25
    aget-byte v0, p0, p1

    const/4 v2, -0x1

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_2

    .line 27
    move v0, p1

    :cond_0
    add-int/2addr v0, v5

    int-to-short v0, v0

    .line 28
    array-length v2, p0

    if-ne v0, v2, :cond_1

    .line 29
    aput-short v4, p2, v4

    .line 30
    return v0

    .line 32
    :cond_1
    aget-byte v2, p0, v0

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 34
    :cond_2
    move v0, p1

    :goto_0
    nop

    .line 35
    aget-byte v2, p0, v0

    const/16 v6, 0x1f

    and-int/2addr v2, v6

    if-ne v2, v6, :cond_3

    .line 72
    move v2, v1

    goto :goto_1

    :cond_3
    const/16 v2, 0x4b

    :goto_1
    packed-switch v2, :pswitch_data_0

    move v2, v0

    goto :goto_2

    :pswitch_0
    move v2, v0

    .line 38
    :cond_4
    add-int/2addr v2, v5

    int-to-short v2, v2

    .line 39
    array-length v6, p0

    if-ne v2, v6, :cond_6

    .line 60
    sget p0, Lcom/visa/vac/tc/emvconverter/TLVParser;->ContactlessConfiguration:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/TLVParser;->getInstance:I

    rem-int/2addr p0, v1

    if-eqz p0, :cond_5

    .line 40
    :cond_5
    aput-short v4, p2, v4

    .line 41
    nop

    .line 80
    return v2

    .line 43
    :cond_6
    aget-byte v6, p0, v2

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-eq v6, v7, :cond_4

    .line 46
    :goto_2
    add-int/2addr v2, v5

    int-to-short v2, v2

    .line 47
    sub-int v6, v2, v0

    int-to-short v6, v6

    .line 49
    if-ne v6, v5, :cond_7

    .line 72
    move v7, v4

    goto :goto_3

    :cond_7
    move v7, v5

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 80
    sget v6, Lcom/visa/vac/tc/emvconverter/TLVParser;->ContactlessConfiguration:I

    add-int/lit8 v6, v6, 0x53

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/TLVParser;->getInstance:I

    rem-int/2addr v6, v1

    if-eqz v6, :cond_8

    goto :goto_4

    .line 51
    :pswitch_1
    if-ne v6, v1, :cond_9

    .line 52
    aget-byte v6, p0, v0

    and-int/2addr v6, v3

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v0, v5

    int-to-short v0, v0

    aget-byte v0, p0, v0

    and-int/2addr v0, v3

    int-to-short v0, v0

    add-int/2addr v6, v0

    int-to-short v0, v6

    aput-short v0, p2, v4

    goto :goto_7

    .line 72
    :goto_4
    move v6, v4

    goto :goto_5

    :cond_8
    move v6, v5

    :goto_5
    packed-switch v6, :pswitch_data_2

    .line 50
    aget-byte v0, p0, v0

    and-int/2addr v0, v3

    int-to-short v0, v0

    aput-short v0, p2, v4

    goto :goto_6

    :pswitch_2
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x604b

    int-to-short v0, v0

    aput-short v0, p2, v5

    .line 80
    :goto_6
    nop

    .line 57
    :cond_9
    :goto_7
    aget-short v0, p2, v4

    if-eqz v0, :cond_12

    .line 50
    sget v0, Lcom/visa/vac/tc/emvconverter/TLVParser;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/TLVParser;->getInstance:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_b

    .line 59
    aput-short v4, p2, v4

    .line 60
    array-length v0, p0

    if-ge v2, v0, :cond_a

    .line 72
    move v0, v4

    goto :goto_8

    :cond_a
    move v0, v5

    :goto_8
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_10

    .line 59
    :cond_b
    aput-short v4, p2, v5

    .line 60
    array-length v0, p0

    if-ge v2, v0, :cond_c

    .line 72
    move v0, v5

    goto :goto_9

    :cond_c
    move v0, v4

    :goto_9
    packed-switch v0, :pswitch_data_4

    .line 60
    :pswitch_3
    aget-byte v0, p0, v2

    if-eqz v0, :cond_12

    .line 62
    and-int/lit8 v3, v0, -0x80

    if-nez v3, :cond_d

    .line 63
    int-to-short p0, v0

    aput-short p0, p2, v5

    .line 64
    aput-short v4, p2, v1

    goto :goto_10

    .line 66
    :cond_d
    and-int/lit8 v0, v0, 0x7f

    int-to-short v0, v0

    .line 67
    aput-short v0, p2, v1

    .line 69
    :goto_a
    if-lez v0, :cond_e

    .line 72
    move v3, v4

    goto :goto_b

    :cond_e
    move v3, v5

    :goto_b
    packed-switch v3, :pswitch_data_5

    .line 25
    sget v3, Lcom/visa/vac/tc/emvconverter/TLVParser;->getInstance:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lcom/visa/vac/tc/emvconverter/TLVParser;->ContactlessConfiguration:I

    rem-int/2addr v3, v1

    if-nez v3, :cond_f

    .line 72
    const/16 v3, 0x3c

    goto :goto_c

    :cond_f
    const/16 v3, 0x59

    :goto_c
    packed-switch v3, :pswitch_data_6

    .line 70
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    .line 71
    aget-byte v3, p0, v2

    int-to-short v3, v3

    .line 72
    aget-short v6, p2, v5

    move v7, v5

    if-gez v3, :cond_10

    goto :goto_d

    .line 70
    :pswitch_4
    add-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    .line 71
    aget-byte v3, p0, v2

    int-to-short v3, v3

    .line 72
    aget-short v6, p2, v4

    move v7, v4

    if-gez v3, :cond_10

    :goto_d
    add-int/lit16 v3, v3, 0x100

    int-to-short v3, v3

    .line 80
    nop

    .line 72
    :cond_10
    add-int/2addr v6, v3

    int-to-short v3, v6

    aput-short v3, p2, v7

    .line 73
    if-le v0, v5, :cond_11

    .line 72
    move v3, v5

    goto :goto_e

    :cond_11
    move v3, v4

    :goto_e
    packed-switch v3, :pswitch_data_7

    goto :goto_f

    .line 73
    :pswitch_5
    aget-short v3, p2, v5

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    aput-short v3, p2, v5

    .line 80
    nop

    .line 74
    :goto_f
    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    goto :goto_a

    .line 78
    :cond_12
    :goto_10
    :pswitch_6
    add-int/2addr v2, v5

    int-to-short p0, v2

    .line 80
    sub-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    .line 21
    :cond_13
    nop

    .line 25
    aget-byte p0, p0, p1

    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3c
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/TLVParser;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/TLVParser;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
