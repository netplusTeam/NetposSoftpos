.class public final enum Lcom/mastercard/terminalsdk/emv/Tag$Format;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/emv/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/emv/Tag$Format;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum an:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum an8:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum ans:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum ans15:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum ans26:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field private static c:J

.field public static final enum cn:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field private static d:[C

.field private static final synthetic e:[Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field private static h:I

.field private static i:I

.field public static final enum n:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum n1:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum n12:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum n2:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum n3:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum n4:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum n6:Lcom/mastercard/terminalsdk/emv/Tag$Format;

.field public static final enum var:Lcom/mastercard/terminalsdk/emv/Tag$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    invoke-static {}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->d()V

    new-instance v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const v3, 0x908d

    invoke-static {v0, v1, v3}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    invoke-static {v1, v1, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v4, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-static {v5, v6, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mastercard/terminalsdk/emv/Tag$Format;->ans:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v7, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/4 v8, 0x5

    invoke-static {v8, v6, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v6}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mastercard/terminalsdk/emv/Tag$Format;->var:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v9, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v10, 0x8

    invoke-static {v10, v5, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/mastercard/terminalsdk/emv/Tag$Format;->an:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v11, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const v13, 0xacde

    const/16 v14, 0xa

    invoke-static {v14, v1, v13}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13, v8}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/mastercard/terminalsdk/emv/Tag$Format;->a:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v13, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v15, 0xb

    invoke-static {v15, v5, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x6

    invoke-direct {v13, v12, v1}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/mastercard/terminalsdk/emv/Tag$Format;->cn:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v12, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v1, 0x5cfd

    const/16 v15, 0xd

    invoke-static {v15, v6, v1}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x7

    invoke-direct {v12, v1, v15}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n12:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v15, 0xcb3

    const/16 v6, 0x10

    invoke-static {v6, v5, v15}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v1, v15, v10}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n6:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v15, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v10, 0x12

    invoke-static {v10, v5, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    const/16 v6, 0x9

    invoke-direct {v15, v10, v6}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n2:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v10, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v6, 0x14

    invoke-static {v6, v5, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6, v14}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n4:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v6, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v14, 0x16

    invoke-static {v14, v8, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    const/16 v8, 0xb

    invoke-direct {v6, v14, v8}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mastercard/terminalsdk/emv/Tag$Format;->ans15:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v8, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v14, 0x1b

    invoke-static {v14, v5, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    const/16 v0, 0xc

    invoke-direct {v8, v14, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n3:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v14, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v0, 0x1d

    const v5, 0xb67f

    move-object/from16 v18, v8

    const/4 v8, 0x3

    invoke-static {v0, v8, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xd

    invoke-direct {v14, v0, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/mastercard/terminalsdk/emv/Tag$Format;->an8:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v5, 0x20

    const/16 v8, 0x7336

    move-object/from16 v19, v14

    const/4 v14, 0x2

    invoke-static {v5, v14, v8}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xe

    invoke-direct {v0, v5, v8}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->n1:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    new-instance v5, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v14, 0x22

    move-object/from16 v17, v0

    const/4 v0, 0x0

    const/4 v8, 0x5

    invoke-static {v14, v8, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Format;->b(IIC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    const/16 v8, 0xf

    invoke-direct {v5, v14, v8}, Lcom/mastercard/terminalsdk/emv/Tag$Format;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mastercard/terminalsdk/emv/Tag$Format;->ans26:Lcom/mastercard/terminalsdk/emv/Tag$Format;

    const/16 v14, 0x10

    new-array v14, v14, [Lcom/mastercard/terminalsdk/emv/Tag$Format;

    aput-object v2, v14, v0

    const/4 v2, 0x1

    aput-object v3, v14, v2

    const/4 v3, 0x2

    aput-object v4, v14, v3

    const/4 v3, 0x3

    aput-object v7, v14, v3

    const/4 v3, 0x4

    aput-object v9, v14, v3

    const/4 v3, 0x5

    aput-object v11, v14, v3

    const/4 v3, 0x6

    aput-object v13, v14, v3

    const/4 v3, 0x7

    aput-object v12, v14, v3

    const/16 v3, 0x8

    aput-object v1, v14, v3

    const/16 v1, 0x9

    aput-object v15, v14, v1

    const/16 v1, 0xa

    aput-object v10, v14, v1

    const/16 v1, 0xb

    aput-object v6, v14, v1

    const/16 v1, 0xc

    aput-object v18, v14, v1

    const/16 v1, 0xd

    aput-object v19, v14, v1

    const/16 v1, 0xe

    aput-object v17, v14, v1

    aput-object v5, v14, v8

    sput-object v14, Lcom/mastercard/terminalsdk/emv/Tag$Format;->e:[Lcom/mastercard/terminalsdk/emv/Tag$Format;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-void

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static b(IIC)Ljava/lang/String;
    .locals 9

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-array v0, p1, [C

    :goto_1
    if-ge v1, p1, :cond_2

    sget v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    add-int/lit8 v3, v2, 0x1

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    const/16 v3, 0x3c

    goto :goto_2

    :cond_1
    const/16 v3, 0x52

    :goto_2
    packed-switch v3, :pswitch_data_1

    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->d:[C

    add-int v4, p0, v1

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v1

    sget-wide v7, Lcom/mastercard/terminalsdk/emv/Tag$Format;->c:J

    mul-long/2addr v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_1
    sget-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->d:[C

    add-int v4, p0, v1

    aget-char v3, v3, v4

    int-to-long v3, v3

    int-to-long v5, v1

    sget-wide v7, Lcom/mastercard/terminalsdk/emv/Tag$Format;->c:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    int-to-long v5, p2

    mul-long/2addr v3, v5

    long-to-int v3, v3

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x9

    :goto_3
    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
    .end packed-switch
.end method

.method static d()V
    .locals 2

    const/16 v0, 0x27

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->d:[C

    const-wide v0, 0x38b50b363a0b9d6aL    # 1.5831592662142666E-35

    sput-wide v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->c:J

    return-void

    nop

    :array_0
    .array-data 2
        -0x6f1ds
        0x62s
        0x61s
        -0x62fcs
        0x3aa7s
        0x76s
        -0x62f5s
        0x3aa6s
        0x61s
        -0x62fcs
        -0x5341s
        0x63s
        -0x62fcs
        0x5c93s
        -0x3e5as
        0x661bs
        0xcdds
        -0x6e11s
        0x6es
        -0x62a8s
        0x6es
        -0x62a2s
        0x61s
        -0x62fcs
        0x3aa7s
        -0x27f1s
        0x759ds
        0x6es
        -0x62a7s
        -0x49e2s
        0x2b7bs
        -0x736ds
        0x7358s
        -0x1193s
        0x61s
        -0x62fcs
        0x3aa7s
        -0x27f4s
        0x759es
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/emv/Tag$Format;
    .locals 3

    const-class v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    add-int/lit8 v1, v1, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/emv/Tag$Format;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/mastercard/terminalsdk/emv/Tag$Format;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Format;->e:[Lcom/mastercard/terminalsdk/emv/Tag$Format;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/emv/Tag$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/emv/Tag$Format;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$Format;->h:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$Format;->i:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
