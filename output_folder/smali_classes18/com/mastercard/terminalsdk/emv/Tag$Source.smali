.class public final enum Lcom/mastercard/terminalsdk/emv/Tag$Source;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/emv/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/emv/Tag$Source;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICC:Lcom/mastercard/terminalsdk/emv/Tag$Source;

.field public static final enum Issuer:Lcom/mastercard/terminalsdk/emv/Tag$Source;

.field public static final enum Reader:Lcom/mastercard/terminalsdk/emv/Tag$Source;

.field public static final enum Terminal:Lcom/mastercard/terminalsdk/emv/Tag$Source;

.field private static a:[C

.field private static final synthetic b:[Lcom/mastercard/terminalsdk/emv/Tag$Source;

.field private static c:I

.field private static d:Z

.field private static e:Z

.field private static f:I

.field private static j:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    invoke-static {}, Lcom/mastercard/terminalsdk/emv/Tag$Source;->c()V

    new-instance v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;

    const-string/jumbo v3, "\u0088\u0087\u0086\u0085\u0084\u0083\u0082\u0081"

    const/4 v4, 0x0

    const/16 v5, 0x7f

    invoke-static {v3, v4, v4, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Source;->a(Ljava/lang/String;Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mastercard/terminalsdk/emv/Tag$Source;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->Terminal:Lcom/mastercard/terminalsdk/emv/Tag$Source;

    new-instance v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;

    const-string/jumbo v6, "\u0083\u0082\u008b\u008a\u008a\u0089"

    invoke-static {v6, v4, v4, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Source;->a(Ljava/lang/String;Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lcom/mastercard/terminalsdk/emv/Tag$Source;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;->Issuer:Lcom/mastercard/terminalsdk/emv/Tag$Source;

    new-instance v6, Lcom/mastercard/terminalsdk/emv/Tag$Source;

    const-string/jumbo v7, "\u008c\u008c\u0089"

    invoke-static {v7, v4, v4, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Source;->a(Ljava/lang/String;Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/mastercard/terminalsdk/emv/Tag$Source;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mastercard/terminalsdk/emv/Tag$Source;->ICC:Lcom/mastercard/terminalsdk/emv/Tag$Source;

    new-instance v7, Lcom/mastercard/terminalsdk/emv/Tag$Source;

    const-string/jumbo v9, "\u0083\u0082\u008e\u0087\u0082\u008d"

    invoke-static {v9, v4, v4, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Source;->a(Ljava/lang/String;Ljava/lang/String;[II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v7, v4, v5}, Lcom/mastercard/terminalsdk/emv/Tag$Source;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/mastercard/terminalsdk/emv/Tag$Source;->Reader:Lcom/mastercard/terminalsdk/emv/Tag$Source;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/mastercard/terminalsdk/emv/Tag$Source;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    aput-object v6, v4, v8

    aput-object v7, v4, v5

    sput-object v4, Lcom/mastercard/terminalsdk/emv/Tag$Source;->b:[Lcom/mastercard/terminalsdk/emv/Tag$Source;

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    rem-int/2addr v0, v8

    return-void
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

.method private static a(Ljava/lang/String;Ljava/lang/String;[II)Ljava/lang/String;
    .locals 6

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    const/16 v1, 0x35

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x3b

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    rem-int/lit8 v2, v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    sget v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    check-cast p1, [C

    if-eqz p0, :cond_2

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    sget v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    rem-int/lit8 v2, v2, 0x2

    :cond_2
    check-cast p0, [B

    sget-object v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->a:[C

    sget v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;->c:I

    sget-boolean v4, Lcom/mastercard/terminalsdk/emv/Tag$Source;->d:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x12

    goto :goto_1

    :cond_3
    const/16 v4, 0x11

    :goto_1
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_1

    sget-boolean p0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->e:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :pswitch_1
    array-length p1, p0

    new-array p2, p1, [C

    :goto_2
    if-ge v5, p1, :cond_4

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, v5

    aget-byte v0, p0, v0

    add-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :cond_5
    const/16 v0, 0x45

    :goto_3
    packed-switch v0, :pswitch_data_2

    sget p0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_7

    goto :goto_6

    :pswitch_2
    array-length p0, p2

    new-array p1, p0, [C

    :goto_4
    if-ge v5, p0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    const/16 v0, 0x56

    :goto_5
    packed-switch v0, :pswitch_data_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_3
    add-int/lit8 v0, p0, -0x1

    sub-int/2addr v0, v5

    aget v0, p2, v0

    sub-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :goto_6
    const/16 p0, 0x2a

    goto :goto_7

    :cond_7
    const/16 p0, 0x41

    :goto_7
    packed-switch p0, :pswitch_data_4

    :pswitch_4
    array-length p0, p1

    new-array p2, p0, [C

    :goto_8
    if-ge v5, p0, :cond_8

    add-int/lit8 v0, p0, -0x1

    sub-int/2addr v0, v5

    aget-char v0, p1, v0

    sub-int/2addr v0, p3

    aget-char v0, v2, v0

    sub-int/2addr v0, v3

    int-to-char v0, v0

    aput-char v0, p2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x35
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2a
        :pswitch_4
    .end packed-switch
.end method

.method static c()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->d:Z

    const/16 v1, 0x66

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Source;->c:I

    sput-boolean v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->e:Z

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0xbas
        0xcbs
        0xd8s
        0xd3s
        0xcfs
        0xd4s
        0xc7s
        0xd2s
        0xafs
        0xd9s
        0xdbs
        0xa9s
        0xb8s
        0xcas
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/emv/Tag$Source;
    .locals 3

    const-class v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/emv/Tag$Source;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/mastercard/terminalsdk/emv/Tag$Source;
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x55

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->b:[Lcom/mastercard/terminalsdk/emv/Tag$Source;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/emv/Tag$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/emv/Tag$Source;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$Source;->b:[Lcom/mastercard/terminalsdk/emv/Tag$Source;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/emv/Tag$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/emv/Tag$Source;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lcom/mastercard/terminalsdk/emv/Tag$Source;->j:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$Source;->f:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
