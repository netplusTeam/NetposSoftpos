.class public Lcom/visa/vac/tc/emvconverter/BERTLV;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static clear:I

.field private static performTransaction:I


# instance fields
.field $$a:S

.field BuildConfig:S

.field ContactlessConfiguration:S

.field ContactlessKernel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/BERTLV;",
            ">;"
        }
    .end annotation
.end field

.field getInstance:[B

.field getTerminalData:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    return-void
.end method

.method public constructor <init>([BSS)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    .line 19
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getTerminalData:B

    .line 20
    iput-object p3, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance([BSZ)V

    .line 36
    return-void
.end method

.method public constructor <init>([BSSZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 p3, 0x0

    iput-object p3, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    .line 19
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getTerminalData:B

    .line 20
    iput-object p3, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1, p2, p4}, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance([BSZ)V

    .line 40
    return-void
.end method

.method private getInstance([BSZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    nop

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [S

    .line 45
    invoke-static {p1, p2, v0}, Lcom/visa/vac/tc/emvconverter/TLVParser;->$$a([BS[S)S

    move-result v1

    .line 46
    nop

    .line 47
    const/4 v2, 0x0

    aget-short v3, v0, v2

    iput-short v3, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessConfiguration:S

    .line 48
    const/4 v4, 0x1

    aget-short v5, v0, v4

    iput-short v5, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->$$a:S

    .line 49
    const/4 v6, 0x2

    aget-short v7, v0, v6

    iput-short v7, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->BuildConfig:S

    .line 50
    shr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    .line 52
    array-length v8, p1

    sub-int/2addr v8, v1

    const-string v9, "TLV parsing exception"

    if-lt v8, v5, :cond_11

    .line 56
    if-nez v7, :cond_0

    move v7, v3

    .line 58
    :cond_0
    const/16 v8, 0xbf

    if-ne v7, v8, :cond_4

    .line 97
    sget v8, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 v8, v8, 0x29

    rem-int/lit16 v10, v8, 0x80

    sput v10, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/2addr v8, v6

    if-nez v8, :cond_1

    const/16 v8, 0x77f

    if-eq v3, v8, :cond_4

    goto :goto_1

    .line 58
    :cond_1
    const/16 v8, -0x40f4

    if-eq v3, v8, :cond_2

    .line 85
    const/16 v8, 0x26

    goto :goto_0

    :cond_2
    const/16 v8, 0x19

    :goto_0
    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 58
    :goto_1
    :pswitch_0
    const/16 v8, -0x40f0

    if-lt v3, v8, :cond_3

    const/16 v8, -0x4091

    if-le v3, v8, :cond_4

    .line 60
    :cond_3
    move v3, v4

    goto :goto_3

    .line 64
    :cond_4
    :goto_2
    move v3, v2

    :goto_3
    and-int/lit8 v7, v7, 0x20

    if-lez v7, :cond_f

    .line 85
    sget v7, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    const/16 v8, 0x17

    add-int/2addr v7, v8

    rem-int/lit16 v10, v7, 0x80

    sput v10, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/2addr v7, v6

    if-nez v7, :cond_5

    const/16 v7, 0x4a

    goto :goto_4

    :cond_5
    const/16 v7, 0x10

    :goto_4
    packed-switch v7, :pswitch_data_1

    .line 64
    if-nez v3, :cond_f

    goto :goto_5

    .line 85
    :pswitch_1
    const/16 v7, 0x23

    :try_start_0
    div-int/2addr v7, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_f

    goto :goto_5

    :catchall_0
    move-exception p1

    throw p1

    .line 65
    :goto_5
    add-int/2addr p2, v1

    invoke-static {p1, p2, v5}, Lcom/visa/vac/tc/emvconverter/Utils;->trimByteArray([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    .line 66
    if-eqz p1, :cond_10

    .line 67
    iput-byte v4, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getTerminalData:B

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    .line 70
    move p1, v2

    .line 71
    :goto_6
    iget-object p2, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    array-length v1, p2

    if-ge p1, v1, :cond_6

    .line 85
    const/16 v1, 0x27

    goto :goto_7

    :cond_6
    const/16 v1, 0x57

    :goto_7
    packed-switch v1, :pswitch_data_2

    .line 72
    invoke-static {p2, p1, v0}, Lcom/visa/vac/tc/emvconverter/TLVParser;->$$a([BS[S)S

    move-result p2

    .line 73
    aget-short v1, v0, v2

    if-nez v1, :cond_7

    .line 85
    move v1, v4

    goto :goto_8

    :cond_7
    move v1, v2

    :goto_8
    packed-switch v1, :pswitch_data_3

    .line 77
    aget-short v1, v0, v4

    add-int v3, p1, v1

    add-int/2addr v3, p2

    iget-object v5, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    array-length v7, v5

    if-gt v3, v7, :cond_e

    goto :goto_9

    .line 97
    :pswitch_2
    sget p2, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 p2, p2, 0x13

    rem-int/lit16 v1, p2, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/2addr p2, v6

    if-nez p2, :cond_8

    .line 74
    :cond_8
    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_6

    .line 80
    :goto_9
    add-int/2addr v1, p2

    int-to-short v1, v1

    invoke-static {v5, p1, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->trimByteArray([BII)[B

    move-result-object v1

    .line 81
    if-eqz v1, :cond_d

    .line 82
    new-instance v3, Lcom/visa/vac/tc/emvconverter/BERTLV;

    array-length v5, v1

    int-to-short v5, v5

    invoke-direct {v3, v1, v2, v5, p3}, Lcom/visa/vac/tc/emvconverter/BERTLV;-><init>([BSSZ)V

    .line 84
    nop

    .line 97
    move v1, v2

    .line 84
    :goto_a
    iget-object v5, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    .line 85
    move v5, v8

    goto :goto_b

    :cond_9
    const/4 v5, 0x4

    :goto_b
    packed-switch v5, :pswitch_data_4

    .line 97
    sget v5, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    add-int/lit8 v5, v5, 0x2f

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    rem-int/2addr v5, v6

    if-eqz v5, :cond_a

    goto :goto_c

    .line 89
    :pswitch_3
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 85
    :goto_c
    move v5, v4

    goto :goto_d

    :cond_a
    move v5, v2

    :goto_d
    packed-switch v5, :pswitch_data_5

    iget-object p1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/visa/vac/tc/emvconverter/BERTLV;

    iget-short p1, p1, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessConfiguration:S

    goto :goto_f

    :pswitch_4
    iget-object v5, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/visa/vac/tc/emvconverter/BERTLV;

    iget-short v5, v5, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessConfiguration:S

    iget-short v7, v3, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessConfiguration:S

    if-ne v5, v7, :cond_c

    if-eqz p3, :cond_b

    goto :goto_e

    .line 86
    :cond_b
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "duplicate found during parsing"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_c
    :goto_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 85
    :goto_f
    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 97
    :catchall_1
    move-exception p1

    throw p1

    .line 91
    :cond_d
    :goto_10
    aget-short v1, v0, v4

    add-int/2addr p1, v1

    int-to-short p1, p1

    .line 92
    add-int/2addr p1, p2

    int-to-short p1, p1

    goto/16 :goto_6

    .line 78
    :cond_e
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_f
    add-int/2addr p2, v1

    int-to-short p2, p2

    .line 97
    invoke-static {p1, p2, v5}, Lcom/visa/vac/tc/emvconverter/Utils;->trimByteArray([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    :cond_10
    :pswitch_5
    return-void

    .line 53
    :cond_11
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getLen()S
    .locals 2

    .line 112
    sget v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-short v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->$$a:S

    return v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getMoreTLVs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/BERTLV;",
            ">;"
        }
    .end annotation

    .line 26
    sget v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getTag()S
    .locals 3

    .line 105
    sget v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-short v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessConfiguration:S

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method final getTerminalData(S)Z
    .locals 5

    .line 132
    sget v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    const/16 v4, 0x9

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 132
    :catchall_0
    move-exception p1

    throw p1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    :pswitch_0
    goto :goto_6

    .line 132
    :goto_3
    :pswitch_1
    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 126
    :cond_3
    move v0, v3

    :goto_4
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 125
    const/16 v1, 0x2e

    goto :goto_5

    :cond_4
    const/16 v1, 0x5e

    :goto_5
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 127
    :pswitch_2
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visa/vac/tc/emvconverter/BERTLV;

    invoke-virtual {v1}, Lcom/visa/vac/tc/emvconverter/BERTLV;->getTag()S

    move-result v1

    if-ne v1, p1, :cond_5

    .line 128
    return v2

    .line 126
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 132
    :goto_6
    return v3

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2e
        :pswitch_2
    .end packed-switch
.end method

.method public getValue()[B
    .locals 6

    .line 121
    sget v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getInstance:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 121
    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    packed-switch v4, :pswitch_data_0

    add-int/lit8 v4, v0, 0x7b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 119
    goto :goto_2

    .line 121
    :pswitch_1
    const/16 v2, 0x3d

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public searchTag(S)Lcom/visa/vac/tc/emvconverter/BERTLV;
    .locals 6

    .line 147
    nop

    .line 140
    iget-short v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessConfiguration:S

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 147
    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 140
    return-object p0

    .line 142
    :pswitch_0
    iget-byte v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->getTerminalData:B

    const/4 v3, 0x2

    if-ne v0, v1, :cond_4

    .line 143
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/BERTLV;->ContactlessKernel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 147
    sget v4, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    add-int/lit8 v4, v4, 0x15

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    rem-int/2addr v4, v3

    if-eqz v4, :cond_1

    const/16 v4, 0xe

    goto :goto_1

    :cond_1
    const/16 v4, 0x5c

    :goto_1
    packed-switch v4, :pswitch_data_1

    .line 143
    :cond_2
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 147
    sget v4, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 v4, v4, 0x17

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/2addr v4, v3

    if-nez v4, :cond_3

    .line 143
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/visa/vac/tc/emvconverter/BERTLV;

    .line 144
    invoke-virtual {v4, p1}, Lcom/visa/vac/tc/emvconverter/BERTLV;->searchTag(S)Lcom/visa/vac/tc/emvconverter/BERTLV;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 147
    sget p1, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 p1, p1, 0x19

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/2addr p1, v3

    return-object v4

    :cond_4
    const/4 p1, 0x0

    sget v0, Lcom/visa/vac/tc/emvconverter/BERTLV;->performTransaction:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/BERTLV;->clear:I

    rem-int/2addr v0, v3

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    packed-switch v1, :pswitch_data_2

    return-object p1

    :pswitch_2
    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
