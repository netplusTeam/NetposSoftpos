.class public Lcom/mastercard/terminalsdk/internal/q;
.super Ljava/lang/Object;


# static fields
.field public static m:[B

.field private static p:Ljava/lang/Object;

.field public static q:[B

.field private static r:Ljava/lang/Object;

.field private static s:I

.field private static t:I

.field private static u:I

.field private static w:I

.field private static final x:[B

.field private static y:I


# direct methods
.method private static $$a()V
    .locals 5

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const-string v1, "ISO-8859-1"

    const-string v2, "<\t\u00fb\u00c7\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u00143\u00f1\u0000\u00ff\r\u00f3\u00ff\u00e5%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00f7\u0015\u00eb\u00cd>\u00f5\r\u00f9\u00c7%&\u00fa\u0001\u00f1\u0008\u0012\u00fd\u0000\u00f3\t\u0006\u00cd/\u0000\u00fc\u00fd\u00fa\u00fe\u0013\u00f5\u0006\u00ff\u00f7\u0015\u00eb\u00cd@\u00fb\u0006\u00bf\u00147\u00fb\u00f1\u00dd3\u00f1\u0000\u00ff\r4\u000c\u00fe\u00c2>\u00f4\u0012\u0001\u00f1\r\u00f1\u00fe\u0011\u00f2\u00cbE\u00f1\r\u00fb\u00fc\u0005\u00f3\u000b\u0007\u00f1\u0007\u00c4:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c33\u00cb\r\u00f6\u000e\u00fd\u00fa\u00fb\u00caA\u0004\u00bb\u00143\u00f4\u0003\u00f8\u00c02\u00ef\r\u0001\u00f6\u0006\u00ff\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u00147\u00fb\u00f1\u00dc1\u0000\u00ef\u0018\u00d0%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00fd\u000b\n\u00f3\u0002\u00c3E\u0006\u00fa\u0001\u00f1\u0008\u00c1\u001b%\u00df\u0018\u0008\u0002\u0003\u0007\u00cb!\u0013\u00cb)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r\u00f3\u00fc\u0003\u00e2/\u00f7\u0000\r\u00fe\u000f\u00d2#\u0003\u00f9\u000e\u00d1%\t\u00fb\u00f7\u000b\u00f1\u00fe\u000f\u00cf\u001e\u0002\u0005\u00fd\u00df%\t\u00f3\u00fc\u0003\u00fd\u000b\n\u00f3\u0002\u00c3E\u0006\u00fa\u0001\u00f1\u0008\u00c1\u0016!\u0013\u00ce#\u0003\u00f9\u000c\u00f5\u0001\u00fa\u0004\u00fe\u0002\u0005\u00fd\u00fd\u000b\n\u00f3\u0002\u00c3E\u0006\u00fa\u0001\u00f1\u0008\u00c1\u0014\u001f\u0012\u00f2\u00df!\u0013\u00cb)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r\u00fe\u000f\u00cf,\u00f5\u0001\u00de\u001e\u0002\u0005\u00fd\u00df%\t\u0006\u00f5\u00f5\u00eb\u0007\u00e9\u0008F\u0001\u00b1F\u00fb\u000b\u0000\u00f6\u00ff\u0002\u0008\u0008\u00adL\u00f9\u0001\u000e\u00b54\u000c\u00fe\u00c2>\u00f4\u0012\u0001\u00f1\r\u00f1\u00fe\u0011\u00f2\u00cbE\u00f1\r\u00fb\u00fc\u0005\u00f3\u000b\u0007\u00f1\u0007\u00c4:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c32\u00cc\u00eb\u0006\u00ea\u0008\u00eb\u0004\u00ec\u0008\u00eb\u0008\u00e8\u0008\u00f7\u0015\u00eb\u00cd>\u00f5\r\u00f9\u00c7\u0015)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r\r\u00f6\u000e\u00fd\u00fa\u00fb\u00ca3\u000f\u0000\u00be\u0013/\u0000\u00d7%\u0003\u00f3\u00ff\u000b\u0007\u000c\u00fe\u00c1?\u00f4\u0012\u0001\u00f1\r\u00f1\u00fe\u0011\u00f2\u00caF\u00f1\r\u00fb\u00fc\u0005\u00f3\u000b\u0007\u00f1\u0007\u00c3;\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c2F\u00b0\u0000\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0016\u001d\u0013\u00ed\u00e8%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u0003\u00f2\u0003\u00e0!\u0013\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u00147\u00fb\u00f1\u00dc1\u0000\u00ef\u0018\u00d6&\u00ff\u00fc\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00f8\u00fe\u0007\u00fe\u000f\u00cf)\u00f5\u0012\u0000\u00d9#\u00f2\u0003\u0001\r5\u00fd\u0013\u00ed\u00ce5\u00fd\u0013\u00ed\u00ce\u0001\u0007\u00f9\u000f\u00f1\u00fe\u000f\u00d2\u00fe\u00f1\u0007\u0014\u00ea\u0005\u0006\u00f3\u0013\u00f5\r\u00ef\u00e7\u001d\u00f9\u0010\u00ef\u0011\u0007\u00d7\u0011\u0013\u00f4\u00dd\'\u00f9\u0008\u00f8\t\u0006\u00ff\t\u0003\u0004\u00f2\u00f7\u0015\u00eb\u00cd;\u0006\u00bfF\u00f9\u0003\u00f4\u0005\t\u00fe\u000f\u00dc\"\u00fd\u0001\u00f5\r\u0002\u0005\u00fe\u000f\u00cd!\u0011\u00fc\u00fd\t\u00ff\u00f1\u00eb\u0011\u0013\u00f4\r\u00f6\u000e\u00fd\u00fa\u00fb\u00ca3\u000f\u0000\u00be\u0013\"\u0011\u00f5\r\u00f3\u000b\u0005\u00db\u0014\n\u00f3\u00fc\u0003\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0018#\u0003\u00f9\u00ea&\u00ff\u00fc\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c\u00fe\r\u00e9\u001b\u00f7\u000b\u00f1\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u001b\u0006\u00f63\u00eb\u0002\u000b\u0004\u00f5\u0006\u00ff\u00f1\u0013\u00f4\u00e4\u001d\n\u0001\u000c\u00fe\u00c2>\u00f4\u0012\u0001\u00f1\r\u00f1\u00fe\u0011\u00f2\u00cbE\u00f1\r\u00fb\u00fc\u0005\u00f3\u000b\u0007\u00f1\u0007\u00c4:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c3E\u00b0\u0000\u00fe\u000f\u00d5%\u00fb\u000b\u00f5\u00f8\u000b\u00d5/\u0000\u00fc\u00fd\u00fa\u00fe\u0013\u00f5\u0006\u00ff\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0018#\u0003\u00f9\u00eb\u0003\u00ed\u0008\u0012\u00fd\u0000\u00f3\t\u0006\u00e0\u0015\u0004\u00f8\u00e8\u001c\u0003\u0000\u00fd\n\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u0018#\u0003\u00f9\u00df!\u000e\u00f0\u000f\u00f7\u0007\u0004\u00fb\u0003\u00fb\u00d37\u00fb\u00f1\u00dc1\u0000\u00ef\u0018\u0003\u00f2\u0003\u00df)\u00f5\u0012\u0000\u000c\u00fe\u00c2>\u00f4\u0012\u0001\u00f1\r\u00f1\u00fe\u0011\u00f2\u00cbE\u00f1\r\u00fb\u00fc\u0005\u00f3\u000b\u0007\u00f1\u0007\u00c4:\u0005\u0006\u00f1\r\u00fc\u00f3\u000b\u00c3B\u00b3T\u00fb\u00ef\u000f\u00f3\u0013\u00f5\r\u00ef\u00e7\u001d\u00f9\u0010\u00ef\u0011\u0007\u00cb%\t\u00f3\u00fe\u0011\u00fb\u0003\u00f7\u00fc\u000e\u00f7\u0015\u00eb\u00cd;\u0006\u00bf\u001b%\u0002\u0005\u00ff\u00df!\u00fe\u00f3\u00fc\u000c"

    const/4 v3, 0x0

    const/16 v4, 0x396

    packed-switch v0, :pswitch_data_0

    new-array v0, v4, [B

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v0, 0x4c

    :goto_1
    sput v0, Lcom/mastercard/terminalsdk/internal/q;->w:I

    goto :goto_2

    :pswitch_0
    new-array v0, v4, [B

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v0, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v0, 0x59

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method private static $$c(ISS)Ljava/lang/String;
    .locals 10

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1c

    goto :goto_0

    :cond_0
    const/16 v1, 0x52

    :goto_0
    const/16 v2, 0x5d

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    add-int/lit8 v5, p0, 0x1

    or-int/lit8 p0, p1, 0x4

    shl-int/2addr p0, v4

    xor-int/lit8 p1, p1, 0x4

    sub-int p1, p0, p1

    neg-int p0, p2

    not-int p0, p0

    rsub-int/lit8 p0, p0, 0x77

    sub-int/2addr p0, v4

    new-array p2, v5, [B

    if-nez v1, :cond_2

    goto :goto_3

    :pswitch_0
    sget-object v1, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    or-int/lit8 v5, p0, 0x5d

    shl-int/2addr v5, v4

    xor-int/2addr p0, v2

    sub-int/2addr v5, p0

    add-int/lit8 p1, p1, 0x19

    const/16 p0, 0x4f

    shl-int/2addr p0, p2

    new-array p2, v5, [B

    if-nez v1, :cond_1

    move v6, v3

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    packed-switch v6, :pswitch_data_1

    :goto_2
    move v0, v3

    goto :goto_7

    :goto_3
    const/16 v6, 0x48

    goto :goto_4

    :cond_2
    const/16 v6, 0x2b

    :goto_4
    packed-switch v6, :pswitch_data_2

    goto :goto_2

    :pswitch_1
    or-int/lit8 v6, v0, 0x21

    shl-int/2addr v6, v4

    xor-int/lit8 v0, v0, 0x21

    sub-int/2addr v6, v0

    rem-int/lit16 v0, v6, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_3

    const/4 v0, 0x6

    goto :goto_5

    :cond_3
    const/16 v0, 0x30

    :goto_5
    packed-switch v0, :pswitch_data_3

    goto :goto_6

    :pswitch_2
    move v0, v3

    move v6, v5

    goto :goto_9

    :goto_6
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_7
    xor-int/lit8 v6, p1, 0x1

    and-int/2addr p1, v4

    shl-int/2addr p1, v4

    add-int/2addr v6, p1

    add-int/lit8 p1, v0, 0x41

    sub-int/2addr p1, v4

    xor-int/lit8 v7, p1, -0x3f

    and-int/lit8 p1, p1, -0x3f

    shl-int/2addr p1, v4

    add-int/2addr v7, p1

    int-to-byte p1, p0

    aput-byte p1, p2, v0

    if-ne v7, v5, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p2, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lcom/mastercard/terminalsdk/internal/q;->u:I

    and-int/lit8 p2, p1, 0x3b

    or-int/lit8 p1, p1, 0x3b

    add-int/2addr p2, p1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 p2, p2, 0x2

    return-object p0

    :cond_4
    aget-byte p1, v1, v6

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    and-int/lit8 v8, v0, 0x59

    or-int/lit8 v0, v0, 0x59

    add-int/2addr v8, v0

    rem-int/lit16 v0, v8, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    const/16 v0, 0xa

    goto :goto_8

    :cond_5
    const/16 v0, 0x18

    :goto_8
    packed-switch v0, :pswitch_data_4

    :pswitch_3
    move v0, v7

    move v9, v5

    move v5, p0

    move p0, p1

    move p1, v6

    move v6, v9

    :goto_9
    neg-int p0, p0

    neg-int p0, p0

    or-int v7, v5, p0

    shl-int/2addr v7, v4

    xor-int/2addr p0, v5

    sub-int p0, v7, p0

    sget v5, Lcom/mastercard/terminalsdk/internal/q;->u:I

    and-int/lit8 v7, v5, 0x65

    or-int/lit8 v5, v5, 0x65

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_6

    const/16 v5, 0x5b

    goto :goto_a

    :cond_6
    move v5, v2

    :goto_a
    packed-switch v5, :pswitch_data_5

    :pswitch_4
    move v5, v6

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x48
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x30
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xa
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x5b
        :pswitch_4
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 49

    const-class v1, [B

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput v2, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v4, 0x1

    sput v4, Lcom/mastercard/terminalsdk/internal/q;->u:I

    invoke-static {}, Lcom/mastercard/terminalsdk/internal/q;->$$a()V

    const v5, 0x5d731204

    sput v5, Lcom/mastercard/terminalsdk/internal/q;->t:I

    const v5, -0x66cbb482

    sput v5, Lcom/mastercard/terminalsdk/internal/q;->s:I

    :try_start_0
    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v6, 0x28

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x299

    and-int/lit16 v8, v6, 0x299

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0xb

    aget-byte v9, v5, v8

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    const/16 v7, 0x238

    const/16 v9, 0xfb

    const/16 v10, 0x23b

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x0

    :try_start_1
    aget-byte v7, v5, v7

    neg-int v7, v7

    int-to-byte v7, v7

    sget v14, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit16 v15, v14, 0x223

    and-int/lit16 v14, v14, 0x223

    or-int/2addr v14, v15

    int-to-short v14, v14

    aget-byte v15, v5, v9

    int-to-byte v15, v15

    invoke-static {v7, v14, v15}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v14, 0x5c

    aget-byte v14, v5, v14

    int-to-byte v14, v14

    const/16 v15, 0xc1

    aget-byte v15, v5, v15

    xor-int/lit8 v16, v15, -0x1

    and-int/lit8 v15, v15, -0x1

    shl-int/2addr v15, v4

    add-int v15, v16, v15

    int-to-short v15, v15

    aget-byte v5, v5, v8

    int-to-byte v5, v5

    invoke-static {v14, v15, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    new-array v14, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v5, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v7, v13

    check-cast v7, [Ljava/lang/Object;

    invoke-virtual {v5, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_0

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->y:I

    xor-int/lit8 v14, v7, 0x5

    and-int/2addr v7, v11

    shl-int/2addr v7, v4

    add-int/2addr v14, v7

    rem-int/lit16 v7, v14, 0x80

    sput v7, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/2addr v14, v12

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v13

    :cond_0
    :try_start_2
    sget-object v7, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v14, v7, v11

    int-to-byte v14, v14

    const/16 v15, 0x192

    int-to-short v15, v15

    aget-byte v11, v7, v9

    int-to-byte v11, v11

    invoke-static {v14, v15, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    aget-byte v14, v7, v8

    int-to-byte v14, v14

    const/16 v15, 0x2e5

    int-to-short v15, v15

    aget-byte v7, v7, v10

    int-to-byte v7, v7

    invoke-static {v14, v15, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    new-array v14, v2, [Ljava/lang/Class;

    invoke-virtual {v11, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v11, v13

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v7, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Application;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v7

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    if-eqz v5, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    packed-switch v7, :pswitch_data_0

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v11, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v14, 0xaa

    aget-byte v14, v11, v14

    int-to-byte v14, v14

    or-int/lit16 v15, v14, 0xc4

    int-to-short v15, v15

    aget-byte v11, v11, v10

    int-to-byte v11, v11

    invoke-static {v14, v15, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    move-object v14, v13

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v7, v11, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v11, v13

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v7, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :pswitch_0
    move-object v7, v13

    :goto_2
    if-eqz v5, :cond_2

    const/16 v11, 0x34

    goto :goto_3

    :cond_2
    const/16 v11, 0x3b

    :goto_3
    packed-switch v11, :pswitch_data_1

    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v15, 0x78

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    const/16 v9, 0x125

    int-to-short v9, v9

    aget-byte v14, v14, v10

    int-to-byte v14, v14

    invoke-static {v15, v9, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    move-object v14, v13

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v11, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v11, v13

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :pswitch_1
    move-object v9, v13

    :goto_4
    if-eqz v5, :cond_3

    sget v11, Lcom/mastercard/terminalsdk/internal/q;->y:I

    add-int/lit8 v11, v11, 0x46

    sub-int/2addr v11, v4

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/2addr v11, v12

    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    sget-object v14, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v15, 0xaa

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    sget v12, Lcom/mastercard/terminalsdk/internal/q;->w:I

    or-int/lit16 v12, v12, 0x90

    int-to-short v12, v12

    aget-byte v14, v14, v10

    int-to-byte v14, v14

    invoke-static {v15, v12, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    move-object v14, v13

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v12, v13

    check-cast v12, [Ljava/lang/Object;

    invoke-virtual {v11, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    :cond_3
    move-object v5, v13

    :goto_5
    if-eqz v7, :cond_4

    move v11, v4

    goto :goto_6

    :cond_4
    move v11, v2

    :goto_6
    const/4 v12, 0x4

    const/16 v14, 0x66

    packed-switch v11, :pswitch_data_2

    goto :goto_7

    :pswitch_2
    packed-switch v2, :pswitch_data_3

    move-object v7, v13

    goto :goto_7

    :pswitch_3
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v19, 0xaa

    aget-byte v8, v11, v19

    int-to-byte v8, v8

    const/16 v10, 0x215

    int-to-short v10, v10

    sget v21, Lcom/mastercard/terminalsdk/internal/q;->w:I

    neg-int v15, v12

    not-int v15, v15

    sub-int v21, v21, v15

    add-int/lit8 v15, v21, -0x1

    int-to-byte v15, v15

    invoke-static {v8, v10, v15}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    :try_start_7
    new-array v8, v4, [Ljava/lang/Object;

    aput-object v7, v8, v2

    aget-byte v7, v11, v14

    int-to-byte v7, v7

    const/16 v10, 0x2f9

    int-to-short v10, v10

    const/16 v15, 0x10

    aget-byte v11, v11, v15

    int-to-byte v11, v11

    invoke-static {v7, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v10, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    throw v2

    :cond_5
    throw v1

    :goto_7
    if-eqz v5, :cond_6

    const/16 v8, 0x1c

    goto :goto_8

    :cond_6
    const/16 v8, 0x2e

    :goto_8
    packed-switch v8, :pswitch_data_4

    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v8, 0x10

    aget-byte v10, v5, v8

    int-to-byte v8, v10

    const/16 v11, 0x24a

    int-to-short v11, v11

    int-to-byte v10, v10

    invoke-static {v8, v11, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    :try_start_9
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v2

    const/16 v8, 0xd4

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    const/16 v11, 0x238

    aget-byte v11, v5, v11

    neg-int v11, v11

    int-to-short v11, v11

    const/16 v15, 0x10

    aget-byte v12, v5, v15

    int-to-byte v12, v12

    invoke-static {v8, v11, v12}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v11, 0xaa

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    const/16 v12, 0x257

    int-to-short v12, v12

    const/16 v15, 0x23b

    aget-byte v14, v5, v15

    int-to-byte v14, v14

    invoke-static {v11, v12, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v2

    invoke-virtual {v8, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v13, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_64

    :try_start_a
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v2

    const/16 v8, 0x66

    aget-byte v11, v5, v8

    int-to-byte v8, v11

    const/16 v11, 0x2f9

    int-to-short v11, v11

    const/16 v12, 0x10

    aget-byte v5, v5, v12

    int-to-byte v5, v5

    invoke-static {v8, v11, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v2

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_63

    :pswitch_4
    if-nez v9, :cond_9

    if-eqz v7, :cond_7

    const/16 v8, 0xb

    goto :goto_9

    :cond_7
    const/16 v8, 0x5d

    :goto_9
    packed-switch v8, :pswitch_data_5

    goto :goto_a

    :pswitch_5
    :try_start_b
    sget-object v8, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v9, v8, v4

    int-to-byte v9, v9

    or-int/lit16 v10, v9, 0xf4

    int-to-short v10, v10

    const/16 v11, 0xb

    aget-byte v12, v8, v11

    int-to-byte v11, v12

    invoke-static {v9, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    const/4 v10, 0x2

    :try_start_c
    new-array v11, v10, [Ljava/lang/Object;

    aput-object v9, v11, v4

    aput-object v7, v11, v2

    const/16 v9, 0x66

    aget-byte v10, v8, v9

    int-to-byte v9, v10

    const/16 v10, 0x2f9

    int-to-short v10, v10

    const/16 v12, 0x10

    aget-byte v14, v8, v12

    int-to-byte v12, v14

    invoke-static {v9, v10, v12}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Class;

    const/16 v12, 0x66

    aget-byte v15, v8, v12

    int-to-byte v12, v15

    const/16 v15, 0x10

    aget-byte v8, v8, v15

    int-to-byte v8, v8

    invoke-static {v12, v10, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v14, v2

    const-class v8, Ljava/lang/String;

    aput-object v8, v14, v4

    invoke-virtual {v9, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_8

    throw v2

    :cond_8
    throw v1

    :cond_9
    :goto_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    sget-object v10, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v11, 0x66

    aget-byte v12, v10, v11

    int-to-byte v11, v12

    const/16 v12, 0x2f9

    int-to-short v12, v12

    const/16 v14, 0x10

    aget-byte v15, v10, v14

    int-to-byte v14, v15

    invoke-static {v11, v12, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const/16 v14, 0x9

    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    aput-object v13, v11, v2

    aput-object v9, v11, v4

    const/4 v15, 0x2

    aput-object v7, v11, v15

    const/4 v15, 0x3

    aput-object v5, v11, v15

    const/16 v21, 0x4

    aput-object v8, v11, v21

    const/16 v16, 0x5

    aput-object v9, v11, v16

    const/4 v9, 0x6

    aput-object v7, v11, v9

    const/4 v7, 0x7

    aput-object v5, v11, v7

    const/16 v5, 0x8

    aput-object v8, v11, v5

    new-array v7, v14, [Z

    aput-boolean v2, v7, v2

    aput-boolean v4, v7, v4

    const/4 v8, 0x2

    aput-boolean v4, v7, v8

    aput-boolean v4, v7, v15

    const/4 v8, 0x4

    aput-boolean v4, v7, v8

    const/4 v8, 0x5

    aput-boolean v4, v7, v8

    const/4 v8, 0x6

    aput-boolean v4, v7, v8

    const/4 v8, 0x7

    aput-boolean v4, v7, v8

    aput-boolean v4, v7, v5

    new-array v8, v14, [Z

    aput-boolean v2, v8, v2

    aput-boolean v2, v8, v4

    const/4 v9, 0x2

    aput-boolean v2, v8, v9

    aput-boolean v2, v8, v15

    const/4 v9, 0x4

    aput-boolean v2, v8, v9

    const/4 v9, 0x5

    aput-boolean v4, v8, v9

    const/4 v9, 0x6

    aput-boolean v4, v8, v9

    const/4 v9, 0x7

    aput-boolean v4, v8, v9

    aput-boolean v4, v8, v5

    new-array v9, v14, [Z

    aput-boolean v2, v9, v2

    aput-boolean v2, v9, v4

    const/16 v18, 0x2

    aput-boolean v4, v9, v18

    aput-boolean v4, v9, v15

    const/16 v21, 0x4

    aput-boolean v2, v9, v21

    const/16 v16, 0x5

    aput-boolean v2, v9, v16

    const/16 v23, 0x6

    aput-boolean v4, v9, v23

    const/16 v23, 0x7

    aput-boolean v4, v9, v23

    aput-boolean v2, v9, v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    const/16 v23, 0x13d

    :try_start_e
    aget-byte v15, v10, v23

    neg-int v15, v15

    int-to-byte v15, v15

    const/16 v13, 0x71

    int-to-short v13, v13

    const/16 v17, 0xfb

    aget-byte v5, v10, v17

    int-to-byte v5, v5

    invoke-static {v15, v13, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v13, v10, v14

    int-to-byte v13, v13

    const/16 v15, 0x228

    int-to-short v15, v15

    const/16 v25, 0x98

    aget-byte v10, v10, v25

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {v13, v15, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    const/16 v10, 0x1a

    if-lt v5, v10, :cond_a

    move v10, v4

    goto :goto_b

    :cond_a
    move v10, v2

    :goto_b
    aput-boolean v10, v9, v2
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    const/16 v10, 0x15

    if-lt v5, v10, :cond_c

    sget v10, Lcom/mastercard/terminalsdk/internal/q;->y:I

    and-int/lit8 v13, v10, 0x67

    or-int/lit8 v10, v10, 0x67

    add-int/2addr v13, v10

    rem-int/lit16 v10, v13, 0x80

    sput v10, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v10, 0x2

    rem-int/2addr v13, v10

    if-nez v13, :cond_b

    const/16 v10, 0x1f

    goto :goto_c

    :cond_b
    const/16 v10, 0x10

    :goto_c
    packed-switch v10, :pswitch_data_6

    :pswitch_6
    move v10, v4

    goto :goto_d

    :cond_c
    move v10, v2

    :goto_d
    :try_start_f
    aput-boolean v10, v9, v4
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    const/16 v10, 0x15

    if-lt v5, v10, :cond_d

    move v10, v4

    :goto_e
    const/4 v13, 0x5

    goto :goto_10

    :cond_d
    sget v10, Lcom/mastercard/terminalsdk/internal/q;->u:I

    or-int/lit8 v13, v10, 0x19

    shl-int/2addr v13, v4

    xor-int/lit8 v10, v10, 0x19

    sub-int/2addr v13, v10

    rem-int/lit16 v10, v13, 0x80

    sput v10, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v10, 0x2

    rem-int/2addr v13, v10

    if-eqz v13, :cond_e

    move v10, v2

    goto :goto_f

    :cond_e
    move v10, v4

    :goto_f
    packed-switch v10, :pswitch_data_7

    :pswitch_7
    move v10, v2

    goto :goto_e

    :goto_10
    :try_start_10
    aput-boolean v10, v9, v13

    const/16 v10, 0x10

    if-ge v5, v10, :cond_f

    move v13, v4

    goto :goto_11

    :cond_f
    move v13, v2

    :goto_11
    const/4 v15, 0x4

    aput-boolean v13, v9, v15

    if-ge v5, v10, :cond_10

    move v5, v2

    goto :goto_12

    :cond_10
    move v5, v4

    :goto_12
    packed-switch v5, :pswitch_data_8

    move v5, v4

    :goto_13
    const/16 v10, 0x8

    goto :goto_14

    :pswitch_8
    move v5, v2

    goto :goto_13

    :goto_14
    aput-boolean v5, v9, v10
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    goto :goto_15

    :catch_5
    move-exception v0

    :goto_15
    move v5, v2

    move v10, v5

    :goto_16
    if-nez v5, :cond_62

    if-ge v10, v14, :cond_11

    move v13, v2

    goto :goto_17

    :cond_11
    move v13, v4

    :goto_17
    packed-switch v13, :pswitch_data_9

    sget v13, Lcom/mastercard/terminalsdk/internal/q;->y:I

    add-int/lit8 v13, v13, 0x3b

    rem-int/lit16 v15, v13, 0x80

    sput v15, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/16 v18, 0x2

    rem-int/lit8 v13, v13, 0x2

    :try_start_11
    aget-boolean v13, v9, v10
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_e

    if-eqz v13, :cond_61

    :try_start_12
    aget-boolean v25, v7, v10

    aget-object v14, v11, v10

    aget-boolean v26, v8, v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_61

    if-eqz v25, :cond_12

    const/16 v27, 0x17

    goto :goto_18

    :cond_12
    const/16 v27, 0x47

    :goto_18
    const/16 v28, 0xe

    const/16 v29, 0x7e

    packed-switch v27, :pswitch_data_a

    if-eqz v14, :cond_5b

    xor-int/lit8 v27, v15, 0x39

    and-int/lit8 v15, v15, 0x39

    shl-int/2addr v15, v4

    add-int v15, v27, v15

    rem-int/lit16 v13, v15, 0x80

    sput v13, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v13, 0x2

    rem-int/2addr v15, v13

    :try_start_13
    sget-object v13, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v15, 0x66

    aget-byte v2, v13, v15

    int-to-byte v2, v2

    const/16 v15, 0x10

    aget-byte v4, v13, v15

    int-to-byte v4, v4

    invoke-static {v2, v12, v4}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v4, 0x67

    aget-byte v4, v13, v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5e

    int-to-byte v4, v4

    or-int/lit16 v15, v4, 0x298

    int-to-short v15, v15

    const/16 v20, 0xb

    :try_start_14
    aget-byte v13, v13, v20
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5d

    int-to-byte v13, v13

    :try_start_15
    invoke-static {v4, v15, v13}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v2, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5e

    if-eqz v2, :cond_5b

    :pswitch_9
    if-eqz v25, :cond_27

    :try_start_16
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    :try_start_17
    sget-object v4, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v13, 0xd4

    aget-byte v13, v4, v13

    int-to-byte v13, v13

    const/16 v15, 0x238

    aget-byte v15, v4, v15
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    neg-int v15, v15

    int-to-short v15, v15

    move/from16 v31, v5

    const/16 v22, 0x10

    :try_start_18
    aget-byte v5, v4, v22

    int-to-byte v5, v5

    invoke-static {v13, v15, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v13, 0x23b

    aget-byte v15, v4, v13

    int-to-byte v13, v15

    const/16 v15, 0x308

    int-to-short v15, v15

    const/16 v20, 0xb

    aget-byte v4, v4, v20

    int-to-byte v4, v4

    invoke-static {v13, v15, v4}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v5, v4, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    const-wide/32 v32, 0x5955293f

    xor-long v4, v4, v32

    :try_start_19
    invoke-virtual {v2, v4, v5}, Ljava/util/Random;->setSeed(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    :goto_19
    if-nez v4, :cond_25

    if-nez v5, :cond_13

    const/16 v32, 0x6

    move-object/from16 v34, v4

    move/from16 v4, v32

    move-object/from16 v32, v6

    goto :goto_1c

    :cond_13
    if-nez v13, :cond_15

    sget v32, Lcom/mastercard/terminalsdk/internal/q;->y:I

    xor-int/lit8 v33, v32, 0x19

    and-int/lit8 v32, v32, 0x19

    const/16 v30, 0x1

    shl-int/lit8 v32, v32, 0x1

    move-object/from16 v34, v4

    add-int v4, v33, v32

    move-object/from16 v32, v6

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v6, 0x2

    rem-int/2addr v4, v6

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_1a

    :cond_14
    const/4 v4, 0x0

    :goto_1a
    packed-switch v4, :pswitch_data_b

    :pswitch_a
    const/4 v4, 0x5

    goto :goto_1c

    :cond_15
    move-object/from16 v34, v4

    move-object/from16 v32, v6

    if-nez v15, :cond_16

    const/4 v4, 0x1

    goto :goto_1b

    :cond_16
    const/4 v4, 0x0

    :goto_1b
    packed-switch v4, :pswitch_data_c

    const/4 v4, 0x4

    goto :goto_1c

    :pswitch_b
    const/4 v4, 0x3

    :goto_1c
    :try_start_1a
    new-instance v6, Ljava/lang/StringBuilder;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    move-object/from16 v33, v7

    add-int/lit8 v7, v4, 0x1

    :try_start_1b
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v4, :cond_17

    const/16 v35, 0x0

    goto :goto_1e

    :cond_17
    const/16 v35, 0x1

    :goto_1e
    packed-switch v35, :pswitch_data_d

    move-object/from16 v36, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_23

    :pswitch_c
    move/from16 v35, v4

    if-eqz v26, :cond_19

    const/16 v4, 0x1a

    :try_start_1c
    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v36

    if-eqz v36, :cond_18

    const/16 v36, 0x1

    goto :goto_1f

    :cond_18
    const/16 v36, 0x0

    :goto_1f
    packed-switch v36, :pswitch_data_e

    neg-int v4, v4

    neg-int v4, v4

    and-int/lit8 v36, v4, 0x41

    or-int/lit8 v4, v4, 0x41

    add-int v4, v36, v4

    goto :goto_20

    :pswitch_d
    not-int v4, v4

    rsub-int/lit8 v4, v4, 0x60

    const/16 v30, 0x1

    add-int/lit8 v4, v4, -0x1

    :goto_20
    int-to-char v4, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v36, v2

    const/16 v30, 0x1

    goto :goto_21

    :cond_19
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    move-object/from16 v36, v2

    or-int/lit16 v2, v4, 0x2000

    const/16 v30, 0x1

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit16 v4, v4, 0x2000

    sub-int/2addr v2, v4

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    :goto_21
    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x1

    move/from16 v4, v35

    move-object/from16 v2, v36

    goto :goto_1d

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v35, v8

    :goto_22
    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v38, v11

    goto/16 :goto_32

    :goto_23
    if-nez v5, :cond_1a

    const/16 v4, 0x25

    goto :goto_24

    :cond_1a
    const/16 v4, 0x26

    :goto_24
    packed-switch v4, :pswitch_data_f

    move-object/from16 v35, v8

    if-nez v13, :cond_1c

    goto/16 :goto_27

    :pswitch_e
    sget v4, Lcom/mastercard/terminalsdk/internal/q;->u:I

    or-int/lit8 v5, v4, 0x5

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v6, v4, 0x5

    sub-int/2addr v5, v6

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x4c

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v6, 0x2

    rem-int/2addr v4, v6

    :try_start_1d
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const/4 v2, 0x0

    aput-object v14, v4, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v5, 0x66

    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x10

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v5, v12, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    move-object/from16 v35, v8

    const/16 v6, 0x66

    :try_start_1e
    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0x10

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v6, v12, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    move-object v5, v2

    :goto_25
    move-object/from16 v38, v11

    move-object/from16 v4, v34

    goto/16 :goto_2c

    :catchall_3
    move-exception v0

    goto :goto_26

    :catchall_4
    move-exception v0

    move-object/from16 v35, v8

    :goto_26
    move-object v2, v0

    :try_start_1f
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1b

    throw v4

    :cond_1b
    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    goto/16 :goto_22

    :goto_27
    const/4 v4, 0x1

    goto :goto_28

    :cond_1c
    const/4 v4, 0x0

    :goto_28
    packed-switch v4, :pswitch_data_10

    move-object/from16 v37, v5

    move-object/from16 v38, v11

    move-object/from16 v40, v15

    const/4 v4, 0x2

    goto/16 :goto_2a

    :pswitch_f
    if-nez v15, :cond_1f

    sget v4, Lcom/mastercard/terminalsdk/internal/q;->y:I

    or-int/lit8 v6, v4, 0x1f

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    xor-int/lit8 v4, v4, 0x1f

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    if-eqz v6, :cond_1e

    :try_start_20
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v14, v6, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v4, 0x66

    aget-byte v7, v2, v4

    int-to-byte v4, v7

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x66

    aget-byte v15, v2, v7

    int-to-byte v7, v15

    const/16 v15, 0x10

    aget-byte v2, v2, v15

    int-to-byte v2, v2

    invoke-static {v7, v12, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v8, v7

    const-class v2, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-object v15, v2

    goto :goto_25

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1d

    throw v4

    :cond_1d
    throw v2

    :cond_1e
    const/4 v2, 0x0

    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :cond_1f
    const/4 v4, 0x2

    :try_start_22
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v14, v6, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v4, 0x66

    aget-byte v7, v2, v4

    int-to-byte v4, v7

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    move-object/from16 v37, v5

    const/16 v7, 0x66

    aget-byte v5, v2, v7
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    int-to-byte v5, v5

    move-object/from16 v38, v11

    const/16 v7, 0x10

    :try_start_23
    aget-byte v11, v2, v7

    int-to-byte v7, v11

    invoke-static {v5, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v8, v7

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :try_start_24
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    aget-byte v6, v2, v23

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x288

    int-to-short v7, v7

    const/16 v8, 0x10

    aget-byte v11, v2, v8

    int-to-byte v8, v11

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    move-object/from16 v39, v13

    const/16 v8, 0x66

    aget-byte v13, v2, v8

    int-to-byte v8, v13

    move-object/from16 v40, v15

    const/16 v13, 0x10

    aget-byte v15, v2, v13

    int-to-byte v13, v15

    invoke-static {v8, v12, v13}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-virtual {v6, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_8

    :try_start_25
    aget-byte v6, v2, v23

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v8, 0x10

    aget-byte v11, v2, v8

    int-to-byte v8, v11

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v2, v29

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x242

    and-int/lit16 v11, v7, 0x242

    or-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v11, 0xb

    aget-byte v2, v2, v11

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    sget v2, Lcom/mastercard/terminalsdk/internal/q;->u:I

    or-int/lit8 v5, v2, 0x6d

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v2, v2, 0x6d

    sub-int/2addr v5, v2

    rem-int/lit16 v2, v5, 0x80

    sput v2, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v2, 0x2

    rem-int/2addr v5, v2

    move-object/from16 v5, v37

    move-object/from16 v13, v39

    goto/16 :goto_2b

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_20

    throw v5

    :cond_20
    throw v2

    :catchall_8
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_21

    throw v5

    :cond_21
    throw v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_6
    .catchall {:try_start_26 .. :try_end_26} :catchall_13

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v7, v6, v29

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x300

    and-int/lit16 v11, v7, 0x300

    or-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v11, 0x86

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    invoke-static {v7, v8, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v6, v28

    int-to-byte v5, v5

    xor-int/lit16 v7, v5, 0xe9

    and-int/lit16 v8, v5, 0xe9

    or-int/2addr v7, v8

    int-to-short v7, v7

    sget v8, Lcom/mastercard/terminalsdk/internal/q;->w:I

    const/4 v11, 0x2

    add-int/2addr v8, v11

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    :try_start_28
    new-array v5, v11, [Ljava/lang/Object;

    const/4 v7, 0x1

    aput-object v2, v5, v7

    const/4 v2, 0x0

    aput-object v4, v5, v2

    const/16 v2, 0x2d

    aget-byte v4, v6, v2

    int-to-byte v2, v4

    const/16 v4, 0x2a6

    int-to-short v4, v4

    const/16 v7, 0x10

    aget-byte v6, v6, v7

    int-to-byte v6, v6

    invoke-static {v2, v4, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const-class v4, Ljava/lang/Throwable;

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_9

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_29
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_22

    throw v4

    :cond_22
    throw v2

    :catchall_a
    move-exception v0

    goto :goto_29

    :catchall_b
    move-exception v0

    move-object/from16 v38, v11

    :goto_29
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_23

    throw v4

    :cond_23
    throw v2
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    :goto_2a
    :try_start_2a
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v14, v5, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v4, 0x66

    aget-byte v6, v2, v4

    int-to-byte v4, v6

    const/16 v6, 0x10

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v4, v12, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const/16 v6, 0x66

    aget-byte v8, v2, v6

    int-to-byte v6, v8

    const/16 v8, 0x10

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v6, v12, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    move-object v13, v2

    move-object/from16 v4, v34

    move-object/from16 v5, v37

    :goto_2b
    move-object/from16 v15, v40

    :goto_2c
    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v8, v35

    move-object/from16 v2, v36

    move-object/from16 v11, v38

    goto/16 :goto_19

    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_2b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_24

    throw v4

    :cond_24
    throw v2

    :catchall_d
    move-exception v0

    goto :goto_30

    :catchall_e
    move-exception v0

    goto :goto_2f

    :cond_25
    move-object/from16 v34, v4

    move-object/from16 v37, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v38, v11

    move-object/from16 v39, v13

    move-object/from16 v40, v15

    move-object/from16 v13, v37

    goto :goto_35

    :catchall_f
    move-exception v0

    goto :goto_2e

    :catchall_10
    move-exception v0

    goto :goto_2d

    :catchall_11
    move-exception v0

    move/from16 v31, v5

    :goto_2d
    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v38, v11

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_26

    throw v4

    :cond_26
    throw v2
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    :catchall_12
    move-exception v0

    move/from16 v31, v5

    :goto_2e
    move-object/from16 v32, v6

    :goto_2f
    move-object/from16 v33, v7

    :goto_30
    move-object/from16 v35, v8

    move-object/from16 v38, v11

    :goto_31
    move-object v2, v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    :goto_32
    move/from16 v36, v12

    :goto_33
    const/4 v10, 0x3

    const/16 v12, 0x23b

    :goto_34
    const/16 v13, 0xb

    goto/16 :goto_6b

    :cond_27
    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v38, v11

    const/4 v13, 0x0

    const/16 v34, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    :goto_35
    const/4 v4, 0x1

    packed-switch v4, :pswitch_data_11

    const/16 v4, 0x54dc

    :try_start_2c
    new-array v4, v4, [B
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_5c

    goto :goto_36

    :pswitch_10
    :try_start_2d
    sget-object v4, Lcom/mastercard/terminalsdk/internal/q;->m:[B
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    goto/16 :goto_37

    :catchall_13
    move-exception v0

    goto :goto_31

    :goto_36
    :try_start_2e
    const-class v5, Lcom/mastercard/terminalsdk/internal/q;

    sget-object v6, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v7, 0x28

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    sget v8, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit16 v11, v8, 0x100

    and-int/lit16 v8, v8, 0x100

    or-int/2addr v8, v11

    int-to-short v8, v8

    and-int/lit16 v11, v8, 0xfa

    int-to-byte v11, v11

    invoke-static {v7, v8, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5c

    const/4 v7, 0x1

    :try_start_2f
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v8, v7

    const/16 v5, 0xfb

    aget-byte v7, v6, v5

    int-to-byte v5, v7

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit16 v11, v7, 0x181

    and-int/lit16 v7, v7, 0x181

    or-int/2addr v7, v11

    int-to-short v7, v7

    const/16 v11, 0x10

    aget-byte v14, v6, v11

    int-to-byte v11, v14

    invoke-static {v5, v7, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x1

    new-array v11, v7, [Ljava/lang/Class;

    const/16 v7, 0x2d

    aget-byte v14, v6, v7

    int-to-byte v7, v14

    or-int/lit16 v14, v7, 0x36d

    int-to-short v14, v14

    const/16 v15, 0x10

    aget-byte v2, v6, v15

    int-to-byte v2, v2

    invoke-static {v7, v14, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v11, v7

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5b

    const/4 v5, 0x1

    :try_start_30
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v7

    const/16 v5, 0xfb

    aget-byte v7, v6, v5

    int-to-byte v5, v7

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit16 v11, v7, 0x181

    and-int/lit16 v7, v7, 0x181

    or-int/2addr v7, v11

    int-to-short v7, v7

    const/16 v11, 0x10

    aget-byte v14, v6, v11

    int-to-byte v11, v14

    invoke-static {v5, v7, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x2c

    aget-byte v7, v6, v7

    int-to-byte v7, v7

    const/16 v11, 0xc6

    int-to-short v11, v11

    const/16 v14, 0x16

    aget-byte v15, v6, v14

    int-to-byte v14, v15

    invoke-static {v7, v11, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v14, v11

    invoke-virtual {v5, v7, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5a

    sget v5, Lcom/mastercard/terminalsdk/internal/q;->y:I

    add-int/lit8 v5, v5, 0x3e

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v7, 0x2

    rem-int/2addr v5, v7

    const/16 v5, 0xfb

    :try_start_31
    aget-byte v7, v6, v5

    int-to-byte v5, v7

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->w:I

    or-int/lit16 v7, v7, 0x181

    int-to-short v7, v7

    const/16 v8, 0x10

    aget-byte v11, v6, v8

    int-to-byte v8, v11

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v6, v29
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_59

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x242

    and-int/lit16 v11, v7, 0x242

    or-int/2addr v8, v11

    int-to-short v8, v8

    const/16 v11, 0xb

    :try_start_32
    aget-byte v6, v6, v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_58

    int-to-byte v6, v6

    :try_start_33
    invoke-static {v7, v8, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_59

    :goto_37
    const/16 v2, 0x14

    const/16 v5, 0x54b4

    move-object/from16 v7, v32

    const/4 v6, 0x0

    :goto_38
    add-int/lit16 v8, v2, 0x17f

    or-int/lit16 v11, v2, 0x54c7

    const/4 v14, 0x1

    shl-int/2addr v11, v14

    xor-int/lit16 v15, v2, 0x54c7

    sub-int/2addr v11, v15

    :try_start_34
    aget-byte v11, v4, v11

    add-int/lit8 v11, v11, 0x34

    sub-int/2addr v11, v14

    int-to-byte v11, v11

    aput-byte v11, v4, v8

    array-length v8, v4
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_5c

    neg-int v11, v2

    or-int v15, v8, v11

    shl-int/2addr v15, v14

    xor-int/2addr v8, v11

    sub-int/2addr v15, v8

    const/4 v8, 0x3

    :try_start_35
    new-array v11, v8, [Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_57

    :try_start_36
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x2

    aput-object v8, v11, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v14, 0x1

    aput-object v8, v11, v14

    const/4 v8, 0x0

    aput-object v4, v11, v8

    sget-object v4, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v8, 0xb5

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v14, 0x88

    int-to-short v14, v14

    move/from16 v36, v5

    const/16 v15, 0x10

    aget-byte v5, v4, v15

    int-to-byte v5, v5

    invoke-static {v8, v14, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_56

    const/4 v8, 0x3

    :try_start_37
    new-array v14, v8, [Ljava/lang/Class;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_57

    const/4 v8, 0x0

    :try_start_38
    aput-object v1, v14, v8

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v8, v14, v15

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v8, v14, v15

    invoke-virtual {v5, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v42, v5

    check-cast v42, Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_56

    :try_start_39
    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_5c

    if-nez v5, :cond_28

    const/16 v45, 0x4

    const v47, -0x3471aad4    # -1.8655832E7f

    const v44, 0x75ed1e6b

    :try_start_3a
    new-instance v5, Lcom/mastercard/terminalsdk/internal/d;

    sget v43, Lcom/mastercard/terminalsdk/internal/q;->s:I

    sget v46, Lcom/mastercard/terminalsdk/internal/q;->t:I

    move-object/from16 v41, v5

    invoke-direct/range {v41 .. v47}, Lcom/mastercard/terminalsdk/internal/d;-><init>(Ljava/io/InputStream;IISII)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_13

    move/from16 v44, v2

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v41, v13

    :goto_39
    const/16 v2, 0x10

    goto/16 :goto_3a

    :cond_28
    const/16 v11, 0x10

    :try_start_3b
    new-array v14, v11, [B

    const/16 v11, 0x41

    const/4 v15, 0x0

    aput-byte v11, v14, v15

    const/16 v11, 0x22

    const/4 v15, 0x1

    aput-byte v11, v14, v15

    const/16 v11, -0x23

    const/4 v15, 0x2

    aput-byte v11, v14, v15
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_5c

    const/16 v11, 0x2b

    const/4 v15, 0x3

    :try_start_3c
    aput-byte v11, v14, v15
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_55

    const/16 v11, 0x43

    const/4 v15, 0x4

    :try_start_3d
    aput-byte v11, v14, v15

    const/16 v11, 0x33

    const/4 v15, 0x5

    aput-byte v11, v14, v15

    const/4 v11, 0x6

    const/16 v15, -0x4f

    aput-byte v15, v14, v11

    const/4 v11, 0x7

    const/16 v15, 0x22

    aput-byte v15, v14, v11

    const/16 v11, 0x50

    const/16 v15, 0x8

    aput-byte v11, v14, v15

    const/16 v11, 0x1f

    const/16 v24, 0x9

    aput-byte v11, v14, v24

    const/16 v11, 0xa

    const/16 v24, -0x64

    aput-byte v24, v14, v11
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_5c

    const/16 v11, 0x5e

    const/16 v20, 0xb

    :try_start_3e
    aput-byte v11, v14, v20
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_54

    const/16 v11, 0xc

    const/16 v24, 0x25

    :try_start_3f
    aput-byte v24, v14, v11

    const/16 v11, 0xd

    const/16 v24, -0x47

    aput-byte v24, v14, v11

    const/16 v11, -0x35

    aput-byte v11, v14, v28

    const/16 v11, 0xf

    const/16 v24, 0x58

    aput-byte v24, v14, v11
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_5c

    const v11, 0x4e93e439

    sget v24, Lcom/mastercard/terminalsdk/internal/q;->u:I

    add-int/lit8 v24, v24, 0x4a

    const/16 v30, 0x1

    add-int/lit8 v15, v24, -0x1

    rem-int/lit16 v8, v15, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v8, 0x2

    rem-int/2addr v15, v8

    const/4 v8, 0x4

    :try_start_40
    new-array v15, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_53

    const/16 v21, 0x3

    :try_start_41
    aput-object v11, v15, v21
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_52

    :try_start_42
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v8, 0x2

    aput-object v11, v15, v8

    const/4 v8, 0x1

    aput-object v14, v15, v8

    const/4 v8, 0x0

    aput-object v42, v15, v8

    const/16 v8, 0x28

    aget-byte v8, v4, v8
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_53

    int-to-byte v8, v8

    xor-int/lit16 v11, v8, 0x181

    and-int/lit16 v14, v8, 0x181

    or-int/2addr v11, v14

    int-to-short v11, v11

    move-object/from16 v41, v13

    const/16 v14, 0xb

    :try_start_43
    aget-byte v13, v4, v14
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_51

    int-to-byte v13, v13

    :try_start_44
    invoke-static {v8, v11, v13}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    check-cast v11, Ljava/lang/ClassLoader;

    const/4 v13, 0x1

    invoke-static {v8, v13, v11}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    aget-byte v11, v4, v28
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_53

    int-to-byte v11, v11

    xor-int/lit16 v13, v11, 0x261

    and-int/lit16 v14, v11, 0x261

    or-int/2addr v13, v14

    int-to-short v13, v13

    move-object/from16 v42, v9

    const/16 v14, 0x3a

    :try_start_45
    aget-byte v9, v4, v14

    int-to-byte v9, v9

    invoke-static {v11, v13, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x4

    new-array v13, v11, [Ljava/lang/Class;

    const/16 v14, 0x2d

    aget-byte v11, v4, v14
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_50

    int-to-byte v11, v11

    xor-int/lit16 v14, v11, 0x36d

    move/from16 v43, v10

    and-int/lit16 v10, v11, 0x36d

    or-int/2addr v10, v14

    int-to-short v10, v10

    move/from16 v44, v2

    const/16 v14, 0x10

    :try_start_46
    aget-byte v2, v4, v14

    int-to-byte v2, v2

    invoke-static {v11, v10, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v13, v10

    const/4 v2, 0x1

    aput-object v1, v13, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v2, v13, v10

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_4f

    const/4 v10, 0x3

    :try_start_47
    aput-object v2, v13, v10
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_4e

    :try_start_48
    invoke-virtual {v8, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/io/InputStream;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_4f

    goto/16 :goto_39

    :goto_3a
    int-to-long v8, v2

    const/4 v2, 0x1

    :try_start_49
    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v10, v8

    const/16 v2, 0x2d

    aget-byte v8, v4, v2

    int-to-byte v2, v8

    xor-int/lit16 v8, v2, 0x36d

    and-int/lit16 v9, v2, 0x36d

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0x10

    aget-byte v11, v4, v9

    int-to-byte v9, v11

    invoke-static {v2, v8, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v8, 0x83

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0x205

    int-to-short v9, v9

    aget-byte v11, v4, v29

    int-to-byte v11, v11

    invoke-static {v8, v9, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v9, v11, v13

    invoke-virtual {v2, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_4d

    if-eqz v25, :cond_3d

    :try_start_4a
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2b

    if-nez v2, :cond_29

    const/16 v10, 0x8

    goto :goto_3b

    :cond_29
    const/16 v10, 0x1c

    :goto_3b
    packed-switch v10, :pswitch_data_12

    sget v8, Lcom/mastercard/terminalsdk/internal/q;->y:I

    and-int/lit8 v9, v8, 0x75

    or-int/lit8 v8, v8, 0x75

    add-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v8, 0x2

    rem-int/2addr v9, v8

    goto :goto_3c

    :pswitch_11
    move-object/from16 v8, v39

    goto :goto_3d

    :goto_3c
    move-object/from16 v8, v41

    :goto_3d
    if-nez v2, :cond_2b

    sget v2, Lcom/mastercard/terminalsdk/internal/q;->u:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v9, 0x2

    rem-int/2addr v2, v9

    if-nez v2, :cond_2a

    move-object/from16 v2, v40

    goto :goto_3e

    :cond_2a
    const/4 v2, 0x0

    :try_start_4b
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_2b

    :cond_2b
    move-object/from16 v2, v34

    :goto_3e
    const/4 v9, 0x1

    :try_start_4c
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v8, v10, v9

    aget-byte v9, v4, v23

    neg-int v9, v9

    int-to-byte v9, v9

    const/16 v11, 0x288

    int-to-short v11, v11

    const/16 v13, 0x10

    aget-byte v14, v4, v13

    int-to-byte v13, v14

    invoke-static {v9, v11, v13}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const/16 v13, 0x66

    aget-byte v15, v4, v13

    int-to-byte v13, v15

    const/16 v15, 0x10

    aget-byte v4, v4, v15

    int-to-byte v4, v4

    invoke-static {v13, v12, v4}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, v14, v13

    invoke-virtual {v9, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_26

    const/16 v9, 0x400

    :try_start_4d
    new-array v10, v9, [B

    move/from16 v13, v36

    :goto_3f
    if-lez v13, :cond_2f

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v14
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_25

    const/4 v15, 0x3

    :try_start_4e
    new-array v9, v15, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v9, v15

    const/4 v14, 0x1

    aput-object v3, v9, v14

    const/4 v14, 0x0

    aput-object v10, v9, v14

    sget-object v14, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    move-object/from16 v45, v6

    const/16 v15, 0x2d

    aget-byte v6, v14, v15
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_17

    int-to-byte v6, v6

    xor-int/lit16 v15, v6, 0x36d

    move-object/from16 v46, v7

    and-int/lit16 v7, v6, 0x36d

    or-int/2addr v7, v15

    int-to-short v7, v7

    move-object/from16 v47, v2

    const/16 v15, 0x10

    :try_start_4f
    aget-byte v2, v14, v15

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v6, 0x83

    aget-byte v6, v14, v6
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_16

    int-to-byte v6, v6

    const/16 v7, 0xe6

    int-to-short v7, v7

    move-object/from16 v48, v8

    const/16 v15, 0x16

    :try_start_50
    aget-byte v8, v14, v15

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v1, v8, v7

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v7, v8, v15

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v7, v8, v15

    invoke-virtual {v2, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_15

    const/4 v6, -0x1

    if-eq v2, v6, :cond_2c

    const/4 v6, 0x0

    goto :goto_40

    :cond_2c
    const/4 v6, 0x1

    :goto_40
    packed-switch v6, :pswitch_data_13

    const/4 v6, 0x3

    :try_start_51
    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v6, 0x0

    aput-object v10, v7, v6

    aget-byte v6, v14, v23

    neg-int v6, v6

    int-to-byte v6, v6

    const/16 v8, 0x10

    aget-byte v9, v14, v8

    int-to-byte v8, v9

    invoke-static {v6, v11, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v8, v14, v29

    int-to-byte v8, v8

    const/16 v9, 0xd8

    int-to-short v9, v9

    aget-byte v14, v14, v28

    int-to-byte v14, v14

    invoke-static {v8, v9, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v14, v9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v9, v14, v15

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v9, v14, v15

    invoke-virtual {v6, v8, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_14

    neg-int v2, v2

    and-int v6, v13, v2

    or-int/2addr v2, v13

    add-int v13, v6, v2

    move-object/from16 v6, v45

    move-object/from16 v7, v46

    move-object/from16 v2, v47

    move-object/from16 v8, v48

    const/16 v9, 0x400

    goto/16 :goto_3f

    :catchall_14
    move-exception v0

    move-object v2, v0

    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2d

    throw v4

    :cond_2d
    throw v2

    :catchall_15
    move-exception v0

    goto :goto_42

    :catchall_16
    move-exception v0

    goto :goto_41

    :catchall_17
    move-exception v0

    move-object/from16 v47, v2

    :goto_41
    move-object/from16 v48, v8

    :goto_42
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_2e

    throw v4

    :cond_2e
    throw v2
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_18

    :catchall_18
    move-exception v0

    move-object v2, v0

    move-object/from16 v9, v47

    move-object/from16 v8, v48

    const/4 v6, 0x5

    goto/16 :goto_47

    :cond_2f
    move-object/from16 v47, v2

    move-object/from16 v45, v6

    move-object/from16 v46, v7

    move-object/from16 v48, v8

    :pswitch_12
    :try_start_53
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v5, v2, v23

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x10

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    invoke-static {v5, v11, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v2, v29

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x220

    and-int/lit16 v8, v6, 0x220

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0x23b

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_24

    const/4 v6, 0x5

    :try_start_54
    aget-byte v7, v2, v6

    int-to-byte v7, v7

    const/16 v8, 0x318

    int-to-short v8, v8

    const/16 v9, 0x10

    aget-byte v10, v2, v9

    int-to-byte v9, v10

    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0x83

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    or-int/lit16 v9, v8, 0x130

    int-to-short v9, v9

    aget-byte v10, v2, v29

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_23

    :try_start_55
    aget-byte v5, v2, v23

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v11, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v2, v29

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x242

    and-int/lit16 v9, v7, 0x242

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0xb

    aget-byte v10, v2, v9

    int-to-byte v10, v10

    invoke-static {v7, v8, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_22

    :try_start_56
    aget-byte v4, v2, v9

    int-to-byte v4, v4

    const/16 v5, 0xe9

    int-to-short v5, v5

    const/16 v7, 0x3a

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v5, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x9

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    const/16 v7, 0x1e3

    int-to-short v7, v7

    const/16 v8, 0x66

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v7, v8, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v7, v8, v9

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_21

    const/16 v5, 0x66

    :try_start_57
    aget-byte v8, v2, v5

    int-to-byte v5, v8

    const/16 v8, 0x10

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v5, v12, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x78

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    const/16 v9, 0x261

    int-to-short v9, v9

    const/16 v10, 0x23b

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v8, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_20

    move-object/from16 v8, v48

    :try_start_58
    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_1f

    const/4 v10, 0x0

    :try_start_59
    aput-object v5, v7, v10
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_1e

    const/16 v5, 0x66

    :try_start_5a
    aget-byte v10, v2, v5

    int-to-byte v5, v10

    const/16 v10, 0x10

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v5, v12, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v10, 0x78

    aget-byte v10, v2, v10

    int-to-byte v10, v10

    const/16 v11, 0x23b

    aget-byte v13, v2, v11

    int-to-byte v11, v13

    invoke-static {v10, v9, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_1d

    move-object/from16 v9, v47

    :try_start_5b
    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_1c

    const/4 v11, 0x1

    :try_start_5c
    aput-object v5, v7, v11

    const/4 v5, 0x2

    aput-object v3, v7, v5

    invoke-virtual {v4, v10, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_27

    const/16 v5, 0x66

    :try_start_5d
    aget-byte v7, v2, v5

    int-to-byte v5, v7

    const/16 v7, 0x10

    aget-byte v10, v2, v7

    int-to-byte v7, v10

    invoke-static {v5, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x16

    aget-byte v10, v2, v7

    int-to-byte v7, v10

    xor-int/lit16 v10, v7, 0x21a

    and-int/lit16 v11, v7, 0x21a

    or-int/2addr v10, v11

    int-to-short v10, v10

    const/16 v11, 0x3a

    aget-byte v13, v2, v11

    int-to-byte v11, v13

    invoke-static {v7, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_1b

    const/16 v5, 0x66

    :try_start_5e
    aget-byte v7, v2, v5

    int-to-byte v5, v7

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x16

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x21a

    and-int/lit16 v10, v7, 0x21a

    or-int/2addr v8, v10

    int-to-short v8, v8

    const/16 v10, 0x3a

    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v7, v8, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v9, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_1a

    :try_start_5f
    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    if-nez v5, :cond_31

    const-class v5, Lcom/mastercard/terminalsdk/internal/q;
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2b

    :try_start_60
    const-class v7, Ljava/lang/Class;

    const/16 v8, 0x10

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/16 v9, 0x208

    int-to-short v9, v9

    const/16 v10, 0x23b

    aget-byte v2, v2, v10

    int-to-byte v2, v2

    invoke-static {v8, v9, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_19

    :try_start_61
    sput-object v2, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    goto :goto_43

    :catchall_19
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_30

    throw v4

    :cond_30
    throw v2

    :cond_31
    :goto_43
    move/from16 v36, v12

    goto/16 :goto_4e

    :catchall_1a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_32

    throw v4

    :cond_32
    throw v2

    :catchall_1b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_33

    throw v4

    :cond_33
    throw v2
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_2b

    :catchall_1c
    move-exception v0

    goto :goto_44

    :catchall_1d
    move-exception v0

    move-object/from16 v9, v47

    :goto_44
    move-object v2, v0

    :try_start_62
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_34

    throw v4

    :cond_34
    throw v2

    :catchall_1e
    move-exception v0

    move-object/from16 v9, v47

    goto :goto_46

    :catchall_1f
    move-exception v0

    move-object/from16 v9, v47

    goto :goto_45

    :catchall_20
    move-exception v0

    move-object/from16 v9, v47

    move-object/from16 v8, v48

    :goto_45
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_35

    throw v4

    :cond_35
    throw v2

    :catchall_21
    move-exception v0

    move-object/from16 v9, v47

    move-object/from16 v8, v48

    goto :goto_46

    :catchall_22
    move-exception v0

    move-object/from16 v9, v47

    move-object/from16 v8, v48

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_36

    throw v4

    :cond_36
    throw v2

    :catchall_23
    move-exception v0

    move-object/from16 v9, v47

    move-object/from16 v8, v48

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_37

    throw v4

    :cond_37
    throw v2

    :catchall_24
    move-exception v0

    move-object/from16 v9, v47

    move-object/from16 v8, v48

    const/4 v6, 0x5

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_38

    throw v4

    :cond_38
    throw v2
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_27

    :catchall_25
    move-exception v0

    move-object v9, v2

    const/4 v6, 0x5

    goto :goto_46

    :catchall_26
    move-exception v0

    move-object v9, v2

    const/4 v6, 0x5

    move-object v2, v0

    :try_start_63
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_39

    throw v4

    :cond_39
    throw v2
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_7
    .catchall {:try_start_63 .. :try_end_63} :catchall_27

    :catchall_27
    move-exception v0

    :goto_46
    move-object v2, v0

    goto/16 :goto_47

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v7, v5, v29

    int-to-byte v7, v7

    xor-int/lit16 v10, v7, 0x172

    and-int/lit16 v11, v7, 0x172

    or-int/2addr v10, v11

    int-to-short v10, v10

    const/16 v11, 0x86

    aget-byte v11, v5, v11

    int-to-byte v11, v11

    invoke-static {v7, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v7, v5, v28

    int-to-byte v7, v7

    xor-int/lit16 v10, v7, 0xe9

    and-int/lit16 v11, v7, 0xe9

    or-int/2addr v10, v11

    int-to-short v10, v10

    sget v11, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    and-int/2addr v11, v14

    const/4 v15, 0x1

    shl-int/2addr v11, v15

    add-int/2addr v13, v11

    int-to-byte v11, v13

    invoke-static {v7, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_27

    :try_start_65
    new-array v7, v14, [Ljava/lang/Object;

    const/4 v10, 0x1

    aput-object v2, v7, v10

    const/4 v2, 0x0

    aput-object v4, v7, v2

    const/16 v2, 0x2d

    aget-byte v4, v5, v2

    int-to-byte v2, v4

    const/16 v4, 0x2a6

    int-to-short v4, v4

    const/16 v10, 0x10

    aget-byte v5, v5, v10

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v4, v5, v10

    const-class v4, Ljava/lang/Throwable;

    const/4 v10, 0x1

    aput-object v4, v5, v10

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_28

    :catchall_28
    move-exception v0

    move-object v2, v0

    :try_start_66
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3a

    throw v4

    :cond_3a
    throw v2
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_27

    :goto_47
    :try_start_67
    sget-object v4, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v5, 0x66

    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0x10

    aget-byte v10, v4, v7

    int-to-byte v7, v10

    invoke-static {v5, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x16

    aget-byte v10, v4, v7

    int-to-byte v7, v10

    xor-int/lit16 v10, v7, 0x21a

    and-int/lit16 v11, v7, 0x21a

    or-int/2addr v10, v11

    int-to-short v10, v10

    const/16 v11, 0x3a

    aget-byte v13, v4, v11

    int-to-byte v11, v13

    invoke-static {v7, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2a

    const/16 v5, 0x66

    :try_start_68
    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0x10

    aget-byte v8, v4, v7

    int-to-byte v7, v8

    invoke-static {v5, v12, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x16

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x21a

    and-int/lit16 v10, v7, 0x21a

    or-int/2addr v8, v10

    int-to-short v8, v8

    const/16 v10, 0x3a

    aget-byte v4, v4, v10

    int-to-byte v4, v4

    invoke-static {v7, v8, v4}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_29

    :try_start_69
    throw v2

    :catchall_29
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3b

    throw v4

    :cond_3b
    throw v2

    :catchall_2a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3c

    throw v4

    :cond_3c
    throw v2
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2b

    :catchall_2b
    move-exception v0

    move-object v2, v0

    goto/16 :goto_32

    :cond_3d
    move-object/from16 v45, v6

    move-object/from16 v46, v7

    const/4 v6, 0x5

    :try_start_6a
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_4c

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->y:I

    or-int/lit8 v8, v7, 0x4b

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    xor-int/lit8 v7, v7, 0x4b

    sub-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    :try_start_6b
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/16 v2, 0xb5

    aget-byte v2, v4, v2

    xor-int/lit8 v8, v2, -0x1

    and-int/lit8 v2, v2, -0x1

    const/4 v9, 0x1

    shl-int/2addr v2, v9

    add-int/2addr v8, v2

    int-to-byte v2, v8

    const/16 v8, 0xf

    aget-byte v8, v4, v8

    int-to-short v8, v8

    const/16 v9, 0x10

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    invoke-static {v2, v8, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const/16 v8, 0x2d

    aget-byte v10, v4, v8

    int-to-byte v8, v10

    xor-int/lit16 v10, v8, 0x36d

    and-int/lit16 v11, v8, 0x36d

    or-int/2addr v10, v11

    int-to-short v10, v10

    const/16 v11, 0x10

    aget-byte v13, v4, v11

    int-to-byte v11, v13

    invoke-static {v8, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_4b

    const/16 v7, 0x318

    :try_start_6c
    aget-byte v7, v4, v7

    int-to-byte v7, v7

    const/16 v8, 0x1e9

    int-to-short v8, v8

    const/16 v9, 0x10

    aget-byte v4, v4, v9

    int-to-byte v4, v4

    invoke-static {v7, v8, v4}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_4a

    const/16 v7, 0x400

    :try_start_6d
    new-array v7, v7, [B
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_4c

    const/4 v9, 0x0

    :goto_48
    const/4 v10, 0x1

    :try_start_6e
    new-array v11, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v11, v13

    sget-object v14, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v15, 0xb5

    aget-byte v15, v14, v15

    sub-int/2addr v15, v13

    sub-int/2addr v15, v10

    int-to-byte v10, v15

    const/16 v13, 0xf

    aget-byte v13, v14, v13

    int-to-short v13, v13

    const/16 v15, 0x10

    aget-byte v6, v14, v15

    int-to-byte v6, v6

    invoke-static {v10, v13, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/16 v10, 0x83

    aget-byte v10, v14, v10
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_49

    int-to-byte v10, v10

    const/16 v13, 0xe6

    int-to-short v13, v13

    move/from16 v36, v12

    const/16 v15, 0x16

    :try_start_6f
    aget-byte v12, v14, v15

    int-to-byte v12, v12

    invoke-static {v10, v13, v12}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v13, v12

    invoke-virtual {v6, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_48

    if-lez v6, :cond_3f

    sget v10, Lcom/mastercard/terminalsdk/internal/q;->u:I

    add-int/lit8 v10, v10, 0x31

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v11, 0x2

    rem-int/2addr v10, v11

    int-to-long v10, v9

    :try_start_70
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_2d

    cmp-long v10, v10, v12

    if-gez v10, :cond_3f

    const/4 v10, 0x3

    :try_start_71
    new-array v11, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v11, v12

    const/4 v10, 0x1

    aput-object v3, v11, v10

    const/4 v10, 0x0

    aput-object v7, v11, v10

    const/16 v10, 0x318

    aget-byte v10, v14, v10

    int-to-byte v10, v10

    const/16 v12, 0x10

    aget-byte v13, v14, v12

    int-to-byte v12, v13

    invoke-static {v10, v8, v12}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v12, v14, v29

    int-to-byte v12, v12

    const/16 v13, 0xd8

    int-to-short v13, v13

    aget-byte v14, v14, v28

    int-to-byte v14, v14

    invoke-static {v12, v13, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v14, v13

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v13, v14, v15

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v13, v14, v15

    invoke-virtual {v10, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_2c

    and-int v10, v9, v6

    or-int/2addr v6, v9

    add-int v9, v10, v6

    move/from16 v12, v36

    const/4 v6, 0x5

    goto/16 :goto_48

    :catchall_2c
    move-exception v0

    move-object v2, v0

    :try_start_72
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3e

    throw v4

    :cond_3e
    throw v2
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_2d

    :catchall_2d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_33

    :cond_3f
    sget v5, Lcom/mastercard/terminalsdk/internal/q;->u:I

    and-int/lit8 v6, v5, 0x4f

    or-int/lit8 v5, v5, 0x4f

    add-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    const/16 v5, 0x318

    :try_start_73
    aget-byte v5, v14, v5

    int-to-byte v5, v5

    const/16 v6, 0x10

    aget-byte v7, v14, v6

    int-to-byte v6, v7

    invoke-static {v5, v8, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xaa

    aget-byte v6, v14, v6

    int-to-byte v6, v6

    const/16 v7, 0x32d

    int-to-short v7, v7

    const/16 v9, 0x83

    aget-byte v9, v14, v9

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_47

    sget v6, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/16 v7, 0x9

    add-int/2addr v6, v7

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    const/16 v6, 0xb5

    :try_start_74
    aget-byte v6, v14, v6

    and-int/lit8 v7, v6, -0x1

    or-int/lit8 v6, v6, -0x1

    add-int/2addr v7, v6

    int-to-byte v6, v7

    const/16 v7, 0xf

    aget-byte v7, v14, v7

    int-to-short v7, v7

    const/16 v9, 0x10

    aget-byte v10, v14, v9

    int-to-byte v9, v10

    invoke-static {v6, v7, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v14, v29

    int-to-byte v7, v7

    or-int/lit16 v9, v7, 0x242

    int-to-short v9, v9

    const/16 v10, 0xb

    aget-byte v11, v14, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_2e

    goto :goto_49

    :catchall_2e
    move-exception v0

    move-object v2, v0

    :try_start_75
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_40

    throw v6

    :cond_40
    throw v2
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_75} :catch_8
    .catchall {:try_start_75 .. :try_end_75} :catchall_2d

    :catch_8
    move-exception v0

    :goto_49
    :try_start_76
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v6, 0x318

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x10

    aget-byte v9, v2, v7

    int-to-byte v7, v9

    invoke-static {v6, v8, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v7, v2, v29

    int-to-byte v7, v7

    or-int/lit16 v8, v7, 0x242

    int-to-short v8, v8

    const/16 v9, 0xb

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    invoke-static {v7, v8, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_2f

    goto :goto_4a

    :catchall_2f
    move-exception v0

    move-object v2, v0

    :try_start_77
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_41

    throw v4

    :cond_41
    throw v2
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_77} :catch_9
    .catchall {:try_start_77 .. :try_end_77} :catchall_2d

    :catch_9
    move-exception v0

    :goto_4a
    :try_start_78
    const-class v2, Lcom/mastercard/terminalsdk/internal/q;
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_46

    sget v4, Lcom/mastercard/terminalsdk/internal/q;->u:I

    or-int/lit8 v6, v4, 0x15

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    xor-int/lit8 v4, v4, 0x15

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    :try_start_79
    const-class v4, Ljava/lang/Class;

    sget-object v6, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v7, 0x10

    aget-byte v8, v6, v7
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_45

    int-to-byte v7, v8

    const/16 v8, 0x208

    int-to-short v8, v8

    const/16 v9, 0x23b

    :try_start_7a
    aget-byte v10, v6, v9
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_44

    int-to-byte v9, v10

    :try_start_7b
    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_45

    const/16 v4, 0xc6

    :try_start_7c
    aget-byte v4, v6, v4

    int-to-byte v4, v4

    or-int/lit16 v7, v4, 0x80

    int-to-short v7, v7

    const/16 v8, 0x3a

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v4, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/16 v7, 0x2d

    aget-byte v9, v6, v7
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_46

    int-to-byte v7, v9

    const/4 v9, 0x3

    :try_start_7d
    aget-byte v10, v6, v9
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_43

    neg-int v9, v10

    int-to-short v9, v9

    const/16 v10, 0x10

    :try_start_7e
    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x0

    aput-object v7, v8, v9
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_46

    const/16 v7, 0xb

    :try_start_7f
    aget-byte v9, v6, v7
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_42

    int-to-byte v7, v9

    or-int/lit16 v9, v7, 0x16a

    int-to-short v9, v9

    const/16 v10, 0x10

    :try_start_80
    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_46

    :try_start_81
    new-array v7, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/16 v5, 0x2d

    aget-byte v9, v6, v5
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_41

    int-to-byte v5, v9

    const/4 v9, 0x3

    :try_start_82
    aget-byte v10, v6, v9
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_40

    neg-int v9, v10

    int-to-short v9, v9

    const/16 v10, 0x10

    :try_start_83
    aget-byte v11, v6, v10

    int-to-byte v10, v11

    invoke-static {v5, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v9, 0x83

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    const/16 v10, 0x365

    int-to-short v10, v10

    aget-byte v11, v6, v28

    int-to-byte v11, v11

    invoke-static {v9, v10, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v5, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_41

    :try_start_84
    aput-object v5, v8, v12

    aput-object v2, v8, v10

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_46

    const/16 v5, 0x119

    :try_start_85
    aget-byte v5, v6, v5

    int-to-byte v5, v5

    const/16 v7, 0x106

    int-to-short v7, v7

    const/16 v8, 0x3a

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0x67

    aget-byte v7, v6, v7

    int-to-byte v8, v7

    const/16 v9, 0x2b8

    int-to-short v9, v9

    int-to-byte v7, v7

    invoke-static {v8, v9, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aget-byte v9, v6, v23

    neg-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x368

    int-to-short v10, v10

    const/4 v11, 0x1

    aget-byte v12, v6, v11

    int-to-byte v12, v12

    invoke-static {v9, v10, v12}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/16 v10, 0x9c

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    const/16 v12, 0x22e

    int-to-short v12, v12

    aget-byte v6, v6, v11

    int-to-byte v6, v6

    invoke-static {v10, v12, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v9, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    check-cast v8, Ljava/util/List;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x0

    :goto_4b
    if-ge v12, v11, :cond_42

    const/16 v13, 0x1a

    goto :goto_4c

    :cond_42
    const/16 v13, 0x40

    :goto_4c
    packed-switch v13, :pswitch_data_14

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_85} :catch_d
    .catchall {:try_start_85 .. :try_end_85} :catchall_46

    goto :goto_4d

    :pswitch_13
    :try_start_86
    invoke-static {v7, v12}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v8, v12, v13}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_86} :catch_a
    .catchall {:try_start_86 .. :try_end_86} :catchall_2d

    and-int/lit8 v13, v12, 0x1

    or-int/lit8 v12, v12, 0x1

    add-int/2addr v12, v13

    goto :goto_4b

    :catch_a
    move-exception v0

    move-object v4, v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    goto/16 :goto_5a

    :goto_4d
    :try_start_87
    invoke-virtual {v6, v5, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_87} :catch_d
    .catchall {:try_start_87 .. :try_end_87} :catchall_46

    :try_start_88
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_46

    if-nez v2, :cond_43

    :try_start_89
    sput-object v4, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_2d

    :cond_43
    :goto_4e
    if-eqz v25, :cond_46

    :try_start_8a
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B
    :try_end_8a
    .catchall {:try_start_8a .. :try_end_8a} :catchall_36

    const/16 v5, 0xb

    :try_start_8b
    aget-byte v6, v2, v5
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_35

    int-to-byte v5, v6

    const/16 v6, 0xe9

    int-to-short v6, v6

    const/16 v7, 0x3a

    :try_start_8c
    aget-byte v7, v2, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x2c

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x337

    int-to-short v7, v7

    const/16 v8, 0x66

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_36

    const/16 v7, 0xb

    :try_start_8d
    aget-byte v9, v2, v7
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_34

    int-to-byte v7, v9

    or-int/lit16 v9, v7, 0x16a

    int-to-short v9, v9

    const/16 v10, 0x10

    :try_start_8e
    aget-byte v11, v2, v10

    int-to-byte v10, v11

    invoke-static {v7, v9, v10}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v8, v9

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v46, v8, v7

    const-class v7, Lcom/mastercard/terminalsdk/internal/q;
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_36

    sget v9, Lcom/mastercard/terminalsdk/internal/q;->y:I

    add-int/lit8 v9, v9, 0x73

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v10, 0x2

    rem-int/2addr v9, v10

    :try_start_8f
    const-class v9, Ljava/lang/Class;

    const/16 v10, 0x10

    aget-byte v11, v2, v10
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_33

    int-to-byte v10, v11

    const/16 v11, 0x208

    int-to-short v11, v11

    const/16 v12, 0x23b

    :try_start_90
    aget-byte v13, v2, v12

    int-to-byte v13, v13

    invoke-static {v10, v11, v13}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v7, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_32

    const/4 v9, 0x1

    :try_start_91
    aput-object v7, v8, v9

    invoke-virtual {v6, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_31

    if-eqz v6, :cond_44

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->u:I

    xor-int/lit8 v8, v7, 0x3

    const/4 v10, 0x3

    and-int/2addr v7, v10

    shl-int/2addr v7, v9

    add-int/2addr v8, v7

    rem-int/lit16 v7, v8, 0x80

    sput v7, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v7, 0x2

    rem-int/2addr v8, v7

    :try_start_92
    aget-byte v7, v2, v29
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_37

    int-to-byte v7, v7

    xor-int/lit16 v8, v7, 0x242

    and-int/lit16 v9, v7, 0x242

    or-int/2addr v8, v9

    int-to-short v8, v8

    const/16 v9, 0xb

    :try_start_93
    aget-byte v2, v2, v9
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_30

    int-to-byte v2, v2

    :try_start_94
    invoke-static {v7, v8, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :catchall_30
    move-exception v0

    move-object v2, v0

    move v13, v9

    goto/16 :goto_6b

    :cond_44
    const/4 v10, 0x3

    :goto_4f
    move-object v2, v6

    const/16 v8, 0x66

    goto/16 :goto_52

    :catchall_31
    move-exception v0

    const/4 v10, 0x3

    goto :goto_51

    :catchall_32
    move-exception v0

    const/4 v10, 0x3

    goto :goto_50

    :catchall_33
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    :goto_50
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_45

    throw v4

    :cond_45
    throw v2
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_37

    :catchall_34
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    move-object v2, v0

    move v13, v7

    goto/16 :goto_6b

    :catchall_35
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    move-object v2, v0

    move v13, v5

    goto/16 :goto_6b

    :catchall_36
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    :goto_51
    move-object v2, v0

    goto/16 :goto_34

    :cond_46
    const/4 v10, 0x3

    const/16 v12, 0x23b

    :try_start_95
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_3e

    const/16 v5, 0xb

    :try_start_96
    aget-byte v6, v2, v5
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_3d

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x16a

    and-int/lit16 v7, v5, 0x16a

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0x10

    :try_start_97
    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x2c

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x337

    int-to-short v7, v7

    const/16 v8, 0x66

    aget-byte v2, v2, v8

    int-to-byte v2, v2

    invoke-static {v6, v7, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v9, v7, v11

    invoke-virtual {v5, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_3e

    :try_start_98
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v46, v5, v11

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_98
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_98 .. :try_end_98} :catch_b
    .catchall {:try_start_98 .. :try_end_98} :catchall_37

    goto :goto_52

    :catchall_37
    move-exception v0

    goto :goto_51

    :catch_b
    move-exception v0

    move-object v2, v0

    :try_start_99
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_99
    .catch Ljava/lang/ClassNotFoundException; {:try_start_99 .. :try_end_99} :catch_c
    .catchall {:try_start_99 .. :try_end_99} :catchall_37

    :catch_c
    move-exception v0

    const/4 v2, 0x0

    :goto_52
    if-eqz v2, :cond_47

    const/4 v5, 0x1

    goto :goto_53

    :cond_47
    const/4 v5, 0x0

    :goto_53
    packed-switch v5, :pswitch_data_15

    sget v5, Lcom/mastercard/terminalsdk/internal/q;->y:I

    or-int/lit8 v6, v5, 0x69

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    xor-int/lit8 v5, v5, 0x69

    sub-int/2addr v6, v5

    rem-int/lit16 v5, v6, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v5, 0x2

    rem-int/2addr v6, v5

    goto :goto_55

    :pswitch_14
    const/4 v5, 0x2

    :try_start_9a
    new-array v2, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    move-object/from16 v5, v45

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v6, v5

    if-nez v25, :cond_48

    const/4 v4, 0x1

    goto :goto_54

    :cond_48
    const/4 v4, 0x0

    :goto_54
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_37

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/16 v7, 0xfb

    const/16 v9, 0x10

    const/4 v11, 0x2

    const/16 v13, 0xb

    const/4 v14, 0x0

    const/16 v31, 0x1

    goto/16 :goto_72

    :goto_55
    :try_start_9b
    move-object v6, v2

    check-cast v6, Ljava/lang/Class;

    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v5, 0x28

    aget-byte v5, v2, v5
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_3e

    int-to-byte v5, v5

    xor-int/lit16 v7, v5, 0x319

    and-int/lit16 v9, v5, 0x319

    or-int/2addr v7, v9

    int-to-short v7, v7

    const/16 v9, 0xb

    :try_start_9c
    aget-byte v11, v2, v9
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_3c

    int-to-byte v9, v11

    :try_start_9d
    invoke-static {v5, v7, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v5, v9, v11

    invoke-virtual {v6, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v11, v9

    if-nez v25, :cond_49

    const/4 v4, 0x1

    goto :goto_56

    :cond_49
    const/4 v4, 0x0

    :goto_56
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v11, v9

    invoke-virtual {v5, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;
    :try_end_9d
    .catchall {:try_start_9d .. :try_end_9d} :catchall_3e

    const/16 v4, 0x5a

    packed-switch v4, :pswitch_data_16

    const/16 v13, 0xb

    const/16 v14, 0x16

    sget v2, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/16 v4, 0x31

    neg-int v4, v4

    neg-int v4, v4

    not-int v4, v4

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    goto/16 :goto_58

    :pswitch_15
    const v4, 0x545a4

    :try_start_9e
    new-array v4, v4, [B

    const-class v9, Lcom/mastercard/terminalsdk/internal/q;

    const/16 v11, 0x28

    aget-byte v11, v2, v11

    int-to-byte v11, v11

    const/16 v13, 0x150

    aget-byte v13, v2, v13

    neg-int v13, v13

    int-to-short v13, v13

    add-int/lit8 v14, v13, -0x3

    int-to-byte v14, v14

    invoke-static {v11, v13, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_3e

    const/4 v11, 0x1

    :try_start_9f
    new-array v13, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v13, v11

    const/16 v9, 0xfb

    aget-byte v11, v2, v9

    int-to-byte v9, v11

    sget v11, Lcom/mastercard/terminalsdk/internal/q;->w:I

    or-int/lit16 v11, v11, 0x181

    int-to-short v11, v11

    const/16 v14, 0x10

    aget-byte v15, v2, v14

    int-to-byte v14, v15

    invoke-static {v9, v11, v14}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/4 v11, 0x1

    new-array v14, v11, [Ljava/lang/Class;

    const/16 v11, 0x2d

    aget-byte v15, v2, v11

    int-to-byte v11, v15

    xor-int/lit16 v15, v11, 0x36d

    and-int/lit16 v5, v11, 0x36d

    or-int/2addr v5, v15

    int-to-short v5, v5

    const/16 v15, 0x10

    aget-byte v8, v2, v15

    int-to-byte v8, v8

    invoke-static {v11, v5, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x0

    aput-object v5, v14, v8

    invoke-virtual {v9, v14}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_9f
    .catchall {:try_start_9f .. :try_end_9f} :catchall_3b

    const/4 v9, 0x1

    :try_start_a0
    new-array v11, v9, [Ljava/lang/Object;

    aput-object v4, v11, v8

    const/16 v8, 0xfb

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    sget v9, Lcom/mastercard/terminalsdk/internal/q;->w:I

    or-int/lit16 v9, v9, 0x181

    int-to-short v9, v9

    const/16 v13, 0x10

    aget-byte v14, v2, v13

    int-to-byte v13, v14

    invoke-static {v8, v9, v13}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v9, 0x2c

    aget-byte v9, v2, v9

    int-to-byte v9, v9

    const/16 v13, 0xc6

    int-to-short v13, v13

    const/16 v14, 0x16

    aget-byte v15, v2, v14

    int-to-byte v15, v15

    invoke-static {v9, v13, v15}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v8, v9, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_3a

    const/16 v8, 0xfb

    :try_start_a1
    aget-byte v9, v2, v8

    int-to-byte v8, v9

    sget v9, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit16 v11, v9, 0x181

    and-int/lit16 v9, v9, 0x181

    or-int/2addr v9, v11

    int-to-short v9, v9

    const/16 v11, 0x10

    aget-byte v13, v2, v11

    int-to-byte v11, v13

    invoke-static {v8, v9, v11}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aget-byte v9, v2, v29
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_39

    int-to-byte v9, v9

    or-int/lit16 v11, v9, 0x242

    int-to-short v11, v11

    const/16 v13, 0xb

    :try_start_a2
    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v9, v11, v2}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a2
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_38

    goto :goto_59

    :catchall_38
    move-exception v0

    goto :goto_57

    :catchall_39
    move-exception v0

    const/16 v13, 0xb

    :goto_57
    move-object v2, v0

    :try_start_a3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4a

    throw v4

    :cond_4a
    throw v2

    :catchall_3a
    move-exception v0

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4b

    throw v4

    :cond_4b
    throw v2

    :catchall_3b
    move-exception v0

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4c

    throw v4

    :cond_4c
    throw v2

    :goto_58
    sget-object v2, Lcom/mastercard/terminalsdk/internal/q;->q:[B

    move-object v4, v2

    :goto_59
    invoke-static/range {v44 .. v44}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move/from16 v12, v36

    move-object/from16 v13, v41

    move-object/from16 v9, v42

    move/from16 v10, v43

    const v5, 0x5457a

    goto/16 :goto_38

    :catchall_3c
    move-exception v0

    move v13, v9

    goto/16 :goto_6a

    :catchall_3d
    move-exception v0

    move v13, v5

    goto/16 :goto_6a

    :catchall_3e
    move-exception v0

    goto/16 :goto_69

    :catch_d
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v4, v0

    :goto_5a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v7, v6, v29

    int-to-byte v7, v7

    const/16 v8, 0x17a

    int-to-short v8, v8

    const/16 v9, 0x86

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v5, v6, v28

    int-to-byte v5, v5

    or-int/lit16 v7, v5, 0xe9

    int-to-short v7, v7

    sget v8, Lcom/mastercard/terminalsdk/internal/q;->w:I

    add-int/lit8 v8, v8, 0x3

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_60

    const/4 v5, 0x2

    :try_start_a4
    new-array v7, v5, [Ljava/lang/Object;

    aput-object v4, v7, v9

    const/4 v4, 0x0

    aput-object v2, v7, v4

    const/16 v2, 0x2d

    aget-byte v4, v6, v2

    int-to-byte v2, v4

    const/16 v4, 0x2a6

    int-to-short v4, v4

    const/16 v5, 0x10

    aget-byte v6, v6, v5

    int-to-byte v5, v6

    invoke-static {v2, v4, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const-class v4, Ljava/lang/Throwable;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_a4
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_3f

    :catchall_3f
    move-exception v0

    move-object v2, v0

    :try_start_a5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4d

    throw v4

    :cond_4d
    throw v2

    :catchall_40
    move-exception v0

    move v10, v9

    goto :goto_5b

    :catchall_41
    move-exception v0

    const/4 v10, 0x3

    :goto_5b
    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4e

    throw v4

    :cond_4e
    throw v2

    :catchall_42
    move-exception v0

    move v13, v7

    goto/16 :goto_62

    :catchall_43
    move-exception v0

    move v10, v9

    goto/16 :goto_68

    :catchall_44
    move-exception v0

    move v12, v9

    const/4 v10, 0x3

    goto :goto_5c

    :catchall_45
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    :goto_5c
    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4f

    throw v4

    :cond_4f
    throw v2

    :catchall_46
    move-exception v0

    goto/16 :goto_67

    :catchall_47
    move-exception v0

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_50

    throw v4

    :cond_50
    throw v2

    :catchall_48
    move-exception v0

    goto :goto_5d

    :catchall_49
    move-exception v0

    move/from16 v36, v12

    :goto_5d
    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_51

    throw v4

    :cond_51
    throw v2

    :catchall_4a
    move-exception v0

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_52

    throw v4

    :cond_52
    throw v2

    :catchall_4b
    move-exception v0

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_53

    throw v4

    :cond_53
    throw v2

    :catchall_4c
    move-exception v0

    goto/16 :goto_66

    :catchall_4d
    move-exception v0

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_54

    throw v4

    :cond_54
    throw v2

    :catchall_4e
    move-exception v0

    move/from16 v36, v12

    goto :goto_60

    :catchall_4f
    move-exception v0

    goto :goto_5f

    :catchall_50
    move-exception v0

    goto :goto_5e

    :catchall_51
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    move v13, v14

    const/4 v10, 0x3

    const/16 v12, 0x23b

    goto :goto_61

    :catchall_52
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    move/from16 v10, v21

    goto :goto_60

    :catchall_53
    move-exception v0

    move-object/from16 v42, v9

    :goto_5e
    move/from16 v43, v10

    :goto_5f
    move/from16 v36, v12

    const/4 v10, 0x3

    :goto_60
    const/16 v12, 0x23b

    const/16 v13, 0xb

    :goto_61
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_55

    throw v4

    :cond_55
    throw v2

    :catchall_54
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    move/from16 v13, v20

    :goto_62
    const/4 v10, 0x3

    const/16 v12, 0x23b

    goto/16 :goto_6a

    :catchall_55
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    move v10, v15

    goto/16 :goto_68

    :catchall_56
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    goto :goto_63

    :catchall_57
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move v10, v8

    :goto_63
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_56

    throw v4

    :cond_56
    throw v2

    :catchall_58
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move v13, v11

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    goto :goto_64

    :catchall_59
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    :goto_64
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_57

    throw v4

    :cond_57
    throw v2

    :catchall_5a
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_58

    throw v4

    :cond_58
    throw v2

    :catchall_5b
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_59

    throw v4

    :cond_59
    throw v2

    :catchall_5c
    move-exception v0

    move-object/from16 v42, v9

    move/from16 v43, v10

    goto/16 :goto_66

    :catchall_5d
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v38, v11

    move/from16 v36, v12

    move/from16 v13, v20

    const/4 v10, 0x3

    const/16 v12, 0x23b

    goto :goto_65

    :catchall_5e
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v38, v11

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    :goto_65
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5a

    throw v4

    :cond_5a
    throw v2

    :cond_5b
    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v38, v11

    move/from16 v36, v12

    const/4 v10, 0x3

    const/16 v12, 0x23b

    const/16 v13, 0xb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    aget-byte v5, v4, v29

    int-to-byte v5, v5

    const/16 v6, 0x172

    int-to-short v6, v6

    const/16 v7, 0x86

    aget-byte v7, v4, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v5, v4, v28

    int-to-byte v5, v5

    or-int/lit16 v6, v5, 0xe9

    int-to-short v6, v6

    sget v7, Lcom/mastercard/terminalsdk/internal/q;->w:I

    xor-int/lit8 v8, v7, 0x2

    const/4 v9, 0x2

    and-int/2addr v7, v9

    const/4 v9, 0x1

    shl-int/2addr v7, v9

    add-int/2addr v8, v7

    int-to-byte v7, v8

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_60

    :try_start_a6
    new-array v5, v9, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/16 v2, 0x2d

    aget-byte v6, v4, v2

    int-to-byte v2, v6

    const/16 v6, 0x2a6

    int-to-short v6, v6

    const/16 v7, 0x10

    aget-byte v4, v4, v7

    int-to-byte v4, v4

    invoke-static {v2, v6, v4}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_a6
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_5f

    :catchall_5f
    move-exception v0

    move-object v2, v0

    :try_start_a7
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5c

    throw v4

    :cond_5c
    throw v2
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_60

    :catchall_60
    move-exception v0

    goto :goto_6a

    :catchall_61
    move-exception v0

    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v38, v11

    :goto_66
    move/from16 v36, v12

    :goto_67
    const/4 v10, 0x3

    :goto_68
    const/16 v12, 0x23b

    :goto_69
    const/16 v13, 0xb

    :goto_6a
    move-object v2, v0

    :goto_6b
    add-int/lit8 v4, v43, 0x1

    :goto_6c
    const/16 v5, 0x9

    if-ge v4, v5, :cond_5d

    const/4 v6, 0x1

    goto :goto_6d

    :cond_5d
    const/4 v6, 0x0

    :goto_6d
    packed-switch v6, :pswitch_data_17

    sget v6, Lcom/mastercard/terminalsdk/internal/q;->u:I

    add-int/lit8 v6, v6, 0x43

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/mastercard/terminalsdk/internal/q;->y:I

    const/4 v7, 0x2

    rem-int/2addr v6, v7

    goto :goto_6e

    :pswitch_16
    const/4 v4, 0x0

    goto :goto_6f

    :goto_6e
    :try_start_a8
    aget-boolean v6, v42, v4

    if-eqz v6, :cond_60

    const/4 v4, 0x1

    :goto_6f
    if-nez v4, :cond_5e

    const/4 v4, 0x1

    goto :goto_70

    :cond_5e
    const/4 v4, 0x0

    :goto_70
    packed-switch v4, :pswitch_data_18

    sget-object v1, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v7, 0xfb

    goto :goto_71

    :pswitch_17
    const/4 v6, 0x0

    sput-object v6, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;

    sput-object v6, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    const/16 v7, 0xfb

    const/16 v9, 0x10

    const/4 v11, 0x2

    const/4 v14, 0x0

    goto/16 :goto_72

    :goto_71
    aget-byte v3, v1, v7

    int-to-byte v3, v3

    xor-int/lit16 v4, v3, 0x120

    and-int/lit16 v5, v3, 0x120

    or-int/2addr v4, v5

    int-to-short v4, v4

    const/16 v5, 0x86

    aget-byte v5, v1, v5

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v3
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_a8} :catch_e

    const/4 v4, 0x2

    :try_start_a9
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    const/16 v8, 0x2d

    aget-byte v2, v1, v8

    int-to-byte v2, v2

    const/16 v3, 0x2a6

    int-to-short v3, v3

    const/16 v9, 0x10

    aget-byte v1, v1, v9

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v2, v14

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_a9
    .catchall {:try_start_a9 .. :try_end_a9} :catchall_62

    :catchall_62
    move-exception v0

    move-object v1, v0

    :try_start_aa
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5f

    throw v2

    :cond_5f
    throw v1

    :cond_60
    const/4 v6, 0x0

    const/16 v7, 0xfb

    const/16 v8, 0x2d

    const/16 v9, 0x10

    const/4 v11, 0x2

    const/4 v14, 0x0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6c

    :cond_61
    move/from16 v31, v5

    move-object/from16 v32, v6

    move-object/from16 v33, v7

    move-object/from16 v35, v8

    move-object/from16 v42, v9

    move/from16 v43, v10

    move-object/from16 v38, v11

    move/from16 v36, v12

    move v5, v14

    const/4 v6, 0x0

    const/16 v7, 0xfb

    const/16 v9, 0x10

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/16 v12, 0x23b

    const/16 v13, 0xb

    move v14, v2

    :goto_72
    add-int/lit8 v2, v43, 0x2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    move v10, v2

    move v2, v14

    move-object/from16 v6, v32

    move-object/from16 v7, v33

    move-object/from16 v8, v35

    move/from16 v12, v36

    move-object/from16 v11, v38

    move-object/from16 v9, v42

    move v14, v5

    move/from16 v5, v31

    goto/16 :goto_16

    :cond_62
    :pswitch_18
    return-void

    :catchall_63
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_63

    throw v2

    :cond_63
    throw v1

    :catchall_64
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_64

    throw v2

    :cond_64
    throw v1
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_aa} :catch_e

    :catch_e
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1c
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xb
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1f
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x47
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x25
        :pswitch_e
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_10
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x1c
        :pswitch_11
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x1a
        :pswitch_13
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_14
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x5a
        :pswitch_15
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(IIC)Ljava/lang/Object;
    .locals 9

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    add-int/lit8 v1, v0, 0x48

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/internal/q;->u:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    sget-object v1, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/2addr v0, v3

    const/4 v0, 0x3

    :try_start_0
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    aput-object p2, v4, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    sget-object p0, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 p2, 0x28

    aget-byte p2, p0, p2

    int-to-byte p2, p2

    or-int/lit16 v5, p2, 0x181

    int-to-short v5, v5

    const/16 v6, 0xb

    aget-byte v7, p0, v6

    int-to-byte v7, v7

    invoke-static {p2, v5, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p2, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/16 v5, 0xe

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    or-int/lit16 v7, v5, 0x24a

    int-to-short v7, v7

    const/16 v8, 0xfb

    aget-byte p0, p0, v8

    int-to-byte p0, p0

    invoke-static {v5, v7, p0}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, p1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v3

    invoke-virtual {p2, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget p2, Lcom/mastercard/terminalsdk/internal/q;->u:I

    and-int/lit8 v0, p2, 0x73

    or-int/lit8 p2, p2, 0x73

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/2addr v0, v3

    if-eqz v0, :cond_0

    const/16 p2, 0x19

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    :try_start_1
    div-int/2addr v6, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    throw p1

    :cond_1
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static d(I)I
    .locals 8

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    xor-int/lit8 v1, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;

    xor-int/lit8 v3, v0, 0x15

    and-int/lit8 v0, v0, 0x15

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget-object p0, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v4, 0x28

    aget-byte v4, p0, v4

    int-to-byte v4, v4

    or-int/lit16 v5, v4, 0x181

    int-to-short v5, v5

    const/16 v6, 0xb

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0xe

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x24a

    and-int/lit16 v7, v5, 0x24a

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0xfb

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    invoke-static {v5, v6, p0}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v3

    invoke-virtual {v4, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    and-int/lit8 v1, v0, 0x37

    or-int/lit8 v0, v0, 0x37

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    rem-int/lit8 v1, v1, 0x2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
.end method

.method public static d(Ljava/lang/Object;)I
    .locals 9

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    or-int/lit8 v1, v0, 0x75

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x75

    sub-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-object v1, Lcom/mastercard/terminalsdk/internal/q;->p:Ljava/lang/Object;

    and-int/lit8 v5, v0, 0x37

    or-int/lit8 v0, v0, 0x37

    add-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/16 v0, 0x2c

    goto :goto_1

    :cond_1
    const/16 v0, 0x21

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    sget-object p0, Lcom/mastercard/terminalsdk/internal/q;->x:[B

    const/16 v5, 0x28

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    or-int/lit16 v6, v5, 0x181

    int-to-short v6, v6

    const/16 v7, 0xb

    aget-byte v7, p0, v7

    int-to-byte v7, v7

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mastercard/terminalsdk/internal/q;->r:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v5, v2, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xe

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    xor-int/lit16 v7, v6, 0x24a

    and-int/lit16 v8, v6, 0x24a

    or-int/2addr v7, v8

    int-to-short v7, v7

    const/16 v8, 0xfb

    aget-byte p0, p0, v8

    int-to-byte p0, p0

    invoke-static {v6, v7, p0}, Lcom/mastercard/terminalsdk/internal/q;->$$c(ISS)Ljava/lang/String;

    move-result-object p0

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v3

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget v0, Lcom/mastercard/terminalsdk/internal/q;->u:I

    or-int/lit8 v1, v0, 0x79

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x79

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/q;->y:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    packed-switch v2, :pswitch_data_2

    return p0

    :pswitch_2
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    throw v0

    :cond_3
    throw p0

    :goto_2
    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
