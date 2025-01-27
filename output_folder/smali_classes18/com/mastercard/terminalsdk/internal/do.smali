.class public Lcom/mastercard/terminalsdk/internal/do;
.super Ljava/lang/Object;


# static fields
.field private static O:Ljava/lang/Object;

.field public static P:[B

.field private static Q:Ljava/lang/Object;

.field private static R:J

.field public static S:[B

.field private static T:I

.field private static U:I

.field private static V:I

.field private static final W:[B

.field private static X:I


# direct methods
.method private static $$a()V
    .locals 4

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v0, 0x399

    new-array v1, v0, [B

    const-string/jumbo v2, "v\u0096\u00d0\u00ee\u00fa\u0018\u00ee\u00d0>\t\u00c2\u00176\u00f4\u0003\u0002\u0010\u00f6\u0002\u00e8(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca()\u00fd\u0004\u00f4\u000b\u0015\u0000\u0003\u00f6\u000c\t\u00d02\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0C\u00fe\t\u00c2\u0017:\u00fe\u00f4\u00e06\u00f4\u0003\u0002\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cdD\u0007\u00be\u00176\u00f7\u0006\u00fb\u00c35\u00f2\u0010\u0004\u00f9\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d3(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u001e(\u00e2\u001b\u000b\u0005\u0006\n\u00ce$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u00f6\u00ff\u0006\u00e52\u00fa\u0003\u0010\u0001\u0012\u00d5&\u0006\u00fc\u0011\u00d4(\u000c\u00fe\u00fa\u000e\u00f4\u0001\u0012\u00d2!\u0005\u0008\u0000\u00e2(\u000c\u00f6\u00ff\u0006\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0019$\u0016\u00d1&\u0006\u00fc\u000f\u00f8\u0004\u00fd\u0007\u0001\u0005\u0008\u0000\u0000\u000e\r\u00f6\u0005\u00c6H\t\u00fd\u0004\u00f4\u000b\u00c4\u0017\"\u0015\u00f5\u00e2$\u0016\u00ce,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0001\u0012\u00d2/\u00f8\u0004\u00e1!\u0005\u0008\u0000\u00e2(\u000c\t\u00f8\u00f8\u00ee\n\u00ec\u000bI\u0004\u00b4I\u00fe\u000e\u0003\u00f9\u0002\u0005\u000b\u000b\u00b0O\u00fc\u0004\u0011\u00b8\u00ee\t\u00ed\u000b\u00ee\u0007\u00ef\u000b\u00ee\u000b\u00eb\u000b\u000f\u0001\u00c5A\u00f7\u0015\u0004\u00f4\u0010\u00f4\u0001\u0014\u00f5\u00ceH\u00f4\u0010\u00fe\u00ff\u0008\u00f6\u000e\n\u00f4\n\u00c7=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c68\u000e\u00b8D\u000f\u0001\u00c5A\u00f7\u0015\u0004\u00f4\u0010\u00f4\u0001\u0014\u00f5\u00ceH\u00f4\u0010\u00fe\u00ff\u0008\u00f6\u000e\n\u00f4\n\u00c7=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c68\r\u00b9\u0003\u00fa\u0018\u00ee\u00d0A\u00f8\u0010\u00fc\u00ca\u0018,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u0010\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u00162\u0003\u00da(\u0006\u00f6\u0002\u000e\n\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0019 \u0016\u00f0\u00eb(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0006\u00f5\u0006\u00e3$\u0016\u00fa\u0018\u00ee\u00d0>\t\u00c2\u0017:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u00d9)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u00fb\u0001\n\u0001\u0012\u00d2,\u00f8\u0015\u0003\u00dc&\u00f5\u0006\u0004\u00108\u0000\u0016\u00f0\u00d18\u0000\u0016\u00f0\u00d1\u0004\n\u00fc\u0012\u00f4\u0001\u0012\u00d5\u0001\u00f4\n\u0017\u00ed\u0008\t7\u000f\u0001\u00c5A\u00f7\u0015\u0004\u00f4\u0010\u00f4\u0001\u0014\u00f5\u00ceH\u00f4\u0010\u00fe\u00ff\u0008\u00f6\u000e\n\u00f4\n\u00c7=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c68\u00cc\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00da\u0014\u0016\u00f7\u00e0*\u00fc\u000b\u00fb\u000c\t\u0002\u000c\u0006\u0007\u00f5\u00fa\u0018\u00ee\u00d0>\t\u00c2I\u00fc\u0006\u00f7\u0008\u000c\u0001\u0012\u00df%\u0000\u0004\u00f8\u0010\u0005\u0008\u000f\u0001\u00c4B\u00f7\u0015\u0004\u00f4\u0010\u00f4\u0001\u0014\u00f5\u00cdI\u00f4\u0010\u00fe\u00ff\u0008\u00f6\u000e\n\u00f4\n\u00c6>\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c59\r\u00b9\u0003\u0001\u0012\u00d0$\u0014\u00ff\u0000\u000c\u0002\u00f4\u00ee\u0014\u0016\u00f7\u0010\u00f9\u0011\u0000\u00fd\u00fe\u00cd6\u0012\u0003\u00c1\u0016%\u0014\u00f8\u0010\u00f6\u000e\u0008\u00de\u0017\r\u00f6\u00ff\u0006\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ed)\u0002\u00ff\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f\u0001\u0010\u00ec\u001e\u00fa\u000e\u00f4\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e\t\u00f96\u00ee\u0005\u000e\u0007\u00f8\t\u0002\u00f4\u0016\u00f7\u00e7 \r\u0004\u0001\u0012\u00d8(\u00fe\u000e\u00f8\u00fb\u000e\u00d82\u0003\u00ff\u0000\u00fd\u0001\u0016\u00f8\t\u0002\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00ee\u0006\u00f0\u000b7\u000f\u0001\u00c5A\u00f7\u0015\u0004\u00f4\u0010\u00f4\u0001\u0014\u00f5\u00ceH\u00f4\u0010\u00fe\u00ff\u0008\u00f6\u000e\n\u00f4\n\u00c7=\u0008\t\u00f4\u0010\u00ff\u00f6\u000e\u00c67\u00cd\u0015\u0000\u0003\u00f6\u000c\t\u00e3\u0018\u0007\u00fb\u00eb\u001f\u0006\u0003\u0000\r\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001b&\u0006\u00fc\u00e2$\u0011\u00f3\u0012\u00fa\n\u0007\u00fe\u0006\u00fe\u00d6:\u00fe\u00f4\u00df4\u0003\u00f2\u001b\u0006\u00f5\u0006\u00e2,\u00f8\u0015\u0003\u00fe\u00f2\u0012\u00f6\u0016\u00f8\u0010\u00f2\u00ea \u00fc\u0013\u00f2\u0014\n\u00ce(\u000c\u00f6\u0001\u0014\u00fe\u0006\u00fa\u00ff\u0011\u00fa\u0018\u00ee\u00d0>\t\u00c2\u001e(\u0005\u0008\u0002\u00e2$\u0001\u00f6\u00ff\u000f"

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v0, 0x68

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->V:I

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->T:I

    and-int/lit8 v1, v0, 0x15

    or-int/lit8 v0, v0, 0x15

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x39

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method

.method private static $$c(BBS)Ljava/lang/String;
    .locals 8

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    xor-int/lit8 v1, v0, 0x59

    and-int/lit8 v0, v0, 0x59

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/lit8 v1, v1, 0x2

    add-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v2

    neg-int p1, p1

    xor-int/lit8 v1, p1, 0x77

    and-int/lit8 p1, p1, 0x77

    shl-int/2addr p1, v2

    add-int/2addr v1, p1

    rsub-int p1, p2, 0x387

    sget-object p2, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    new-array v3, p0, [B

    const/4 v4, 0x0

    if-nez p2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    packed-switch v5, :pswitch_data_0

    move-object v0, p2

    move p2, p1

    move p1, p0

    move p0, v1

    move v1, v4

    goto :goto_4

    :pswitch_0
    or-int/lit8 v5, v0, 0xf

    shl-int/2addr v5, v2

    xor-int/lit8 v6, v0, 0xf

    sub-int/2addr v5, v6

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const/16 v5, 0xd

    goto :goto_1

    :cond_1
    const/16 v5, 0x11

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/16 v5, 0x12

    :try_start_0
    div-int/2addr v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    add-int/lit8 v0, v0, 0x6e

    sub-int/2addr v0, v2

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x56

    goto :goto_3

    :cond_2
    const/16 v0, 0x4f

    :goto_3
    packed-switch v0, :pswitch_data_2

    :pswitch_2
    move-object v0, p2

    move v5, v4

    move p2, p0

    goto :goto_5

    :goto_4
    xor-int/lit8 v5, v1, 0x1

    and-int/lit8 v6, v1, 0x1

    shl-int/2addr v6, v2

    add-int/2addr v5, v6

    int-to-byte v6, p0

    aput-byte v6, v3, v1

    if-ne v5, p1, :cond_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_3
    aget-byte v1, v0, p2

    move v7, p2

    move p2, p1

    move p1, v7

    :goto_5
    or-int/lit8 v6, p1, 0x42

    shl-int/2addr v6, v2

    xor-int/lit8 p1, p1, 0x42

    sub-int/2addr v6, p1

    and-int/lit8 p1, v6, -0x41

    or-int/lit8 v6, v6, -0x41

    add-int/2addr p1, v6

    and-int v6, p0, v1

    or-int/2addr p0, v1

    add-int/2addr v6, p0

    add-int/lit8 p0, v6, -0x3

    sget v1, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v1, v1, 0x46

    sub-int/2addr v1, v2

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v1, v1, 0x2

    move v1, v5

    move v7, p2

    move p2, p1

    move p1, v7

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_2
    .end packed-switch
.end method

.method static constructor <clinit>()V
    .locals 45

    const-class v1, [B

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput v2, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v4, 0x1

    sput v4, Lcom/mastercard/terminalsdk/internal/do;->X:I

    invoke-static {}, Lcom/mastercard/terminalsdk/internal/do;->$$a()V

    const-wide v5, 0x6e6c3295c1b1867eL    # 8.154153905912635E223

    sput-wide v5, Lcom/mastercard/terminalsdk/internal/do;->R:J

    const/4 v5, 0x6

    sput v5, Lcom/mastercard/terminalsdk/internal/do;->U:I

    :try_start_0
    sget-object v6, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v7, 0x1da

    aget-byte v7, v6, v7

    neg-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x142

    aget-byte v9, v6, v8

    int-to-byte v9, v9

    const/16 v10, 0x229

    int-to-short v10, v10

    invoke-static {v7, v9, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    const/16 v9, 0xd5

    const/16 v10, 0x3a

    const/16 v11, 0x10

    const/4 v12, 0x0

    :try_start_1
    aget-byte v9, v6, v9

    int-to-byte v9, v9

    aget-byte v13, v6, v10

    int-to-byte v13, v13

    sget v14, Lcom/mastercard/terminalsdk/internal/do;->V:I

    xor-int/lit16 v15, v14, 0x82

    and-int/lit16 v14, v14, 0x82

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v9, v13, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const/16 v13, 0x52

    aget-byte v13, v6, v13

    int-to-byte v13, v13

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    const/16 v14, 0x35a

    int-to-short v14, v14

    invoke-static {v13, v6, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    new-array v13, v2, [Ljava/lang/Class;

    invoke-virtual {v9, v6, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v9, v12

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v6, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_0

    const/16 v9, 0x43

    goto :goto_0

    :cond_0
    const/16 v9, 0x23

    :goto_0
    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v12

    :goto_1
    :try_start_2
    sget-object v9, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v13, 0x2d

    aget-byte v13, v9, v13

    int-to-byte v13, v13

    aget-byte v14, v9, v10

    int-to-byte v14, v14

    sget v15, Lcom/mastercard/terminalsdk/internal/do;->V:I

    xor-int/lit16 v10, v15, 0x186

    and-int/lit16 v15, v15, 0x186

    or-int/2addr v10, v15

    int-to-short v10, v10

    invoke-static {v13, v14, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v13, v9, v8

    int-to-byte v13, v13

    aget-byte v9, v9, v11

    int-to-byte v9, v9

    or-int/lit16 v14, v9, 0x8a

    int-to-short v14, v14

    invoke-static {v13, v9, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v9

    new-array v13, v2, [Ljava/lang/Class;

    invoke-virtual {v10, v9, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v10, v12

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v9, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Application;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v9

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    :pswitch_0
    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v13, 0x96

    aget-byte v13, v10, v13

    int-to-byte v13, v13

    aget-byte v10, v10, v11

    int-to-byte v10, v10

    xor-int/lit16 v14, v10, 0x2ca

    and-int/lit16 v15, v10, 0x2ca

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v13, v10, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    move-object v13, v12

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v10, v12

    check-cast v10, [Ljava/lang/Object;

    invoke-virtual {v9, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :cond_1
    move-object v9, v12

    :goto_3
    const/4 v10, 0x2

    if-eqz v6, :cond_3

    sget v13, Lcom/mastercard/terminalsdk/internal/do;->X:I

    and-int/lit8 v14, v13, 0x39

    or-int/lit8 v13, v13, 0x39

    add-int/2addr v14, v13

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/2addr v14, v10

    if-eqz v14, :cond_2

    const/16 v13, 0x25

    goto :goto_4

    :cond_2
    const/16 v13, 0x17

    :goto_4
    packed-switch v13, :pswitch_data_1

    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_6

    :pswitch_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v15, 0x83

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    aget-byte v14, v14, v11

    int-to-byte v14, v14

    const/16 v5, 0x283

    int-to-short v5, v5

    invoke-static {v15, v14, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    move-object v14, v12

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v13, v12

    check-cast v13, [Ljava/lang/Object;

    :goto_5
    invoke-virtual {v5, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_6
    sget-object v13, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v14, 0x1e90

    aget-byte v14, v13, v14

    int-to-byte v14, v14

    const/16 v15, 0x43

    aget-byte v13, v13, v15

    int-to-byte v13, v13

    const/16 v15, 0x1629

    int-to-short v15, v15

    invoke-static {v14, v13, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v13

    move-object v14, v12

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v5, v13, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v13, v12

    check-cast v13, [Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :cond_3
    :goto_7
    move-object v5, v12

    :goto_8
    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    sget-object v14, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v15, 0x96

    aget-byte v15, v14, v15

    int-to-byte v15, v15

    aget-byte v14, v14, v11

    int-to-byte v14, v14

    const/16 v8, 0x2cc

    int-to-short v8, v8

    invoke-static {v15, v14, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    move-object v14, v12

    check-cast v14, [Ljava/lang/Class;

    invoke-virtual {v13, v8, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    move-object v13, v12

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    :cond_4
    move-object v6, v12

    :goto_9
    if-eqz v9, :cond_5

    goto :goto_a

    :cond_5
    sget v8, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v9, v8, 0xe

    sub-int/2addr v9, v4

    rem-int/lit16 v13, v9, 0x80

    sput v13, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/2addr v9, v10

    and-int/lit8 v9, v8, 0x4d

    or-int/lit8 v8, v8, 0x4d

    add-int/2addr v9, v8

    rem-int/lit16 v8, v9, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/2addr v9, v10

    move-object v9, v12

    :goto_a
    const/16 v13, 0x84

    if-eqz v6, :cond_6

    goto :goto_b

    :cond_6
    :try_start_6
    sget-object v6, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    aget-byte v14, v6, v13

    int-to-byte v14, v14

    int-to-byte v15, v14

    const/16 v8, 0x136

    int-to-short v8, v8

    invoke-static {v14, v15, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    :try_start_7
    new-array v14, v4, [Ljava/lang/Object;

    aput-object v8, v14, v2

    const/16 v8, 0x1d

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    aget-byte v15, v6, v13

    int-to-byte v15, v15

    sget v13, Lcom/mastercard/terminalsdk/internal/do;->V:I

    xor-int/lit16 v10, v13, 0x301

    and-int/lit16 v13, v13, 0x301

    or-int/2addr v10, v13

    int-to-short v10, v10

    invoke-static {v8, v15, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x96

    aget-byte v10, v6, v10

    int-to-byte v10, v10

    aget-byte v13, v6, v11

    int-to-byte v13, v13

    const/16 v15, 0x129

    int-to-short v15, v15

    invoke-static {v10, v13, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v2

    invoke-virtual {v8, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_58

    sget v10, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v10, v10, 0x3f

    rem-int/lit16 v13, v10, 0x80

    sput v13, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v13, 0x2

    rem-int/2addr v10, v13

    :try_start_8
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v2

    const/16 v8, 0x2c

    aget-byte v13, v6, v8

    int-to-byte v8, v13

    const/16 v13, 0x84

    aget-byte v6, v6, v13

    int-to-byte v6, v6

    const/16 v13, 0x86

    int-to-short v13, v13

    invoke-static {v8, v6, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Class;

    const-class v13, Ljava/lang/String;

    aput-object v13, v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_57

    :goto_b
    const/16 v8, 0x9

    if-nez v5, :cond_8

    sget v10, Lcom/mastercard/terminalsdk/internal/do;->T:I

    xor-int/lit8 v13, v10, 0x65

    and-int/lit8 v10, v10, 0x65

    shl-int/2addr v10, v4

    add-int/2addr v13, v10

    rem-int/lit16 v10, v13, 0x80

    sput v10, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v10, 0x2

    rem-int/2addr v13, v10

    if-eqz v9, :cond_8

    :try_start_9
    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    aget-byte v10, v5, v8

    int-to-byte v10, v10

    const/16 v13, 0x142

    aget-byte v14, v5, v13

    int-to-byte v13, v14

    const/16 v14, 0x2ab

    int-to-short v14, v14

    invoke-static {v10, v13, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    const/4 v13, 0x2

    :try_start_a
    new-array v14, v13, [Ljava/lang/Object;

    aput-object v10, v14, v4

    aput-object v9, v14, v2

    const/16 v10, 0x2c

    aget-byte v13, v5, v10

    int-to-byte v10, v13

    const/16 v13, 0x84

    aget-byte v15, v5, v13

    int-to-byte v13, v15

    const/16 v15, 0x86

    int-to-short v15, v15

    invoke-static {v10, v13, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const/4 v13, 0x2

    new-array v11, v13, [Ljava/lang/Class;

    const/16 v13, 0x2c

    aget-byte v12, v5, v13

    int-to-byte v12, v12

    const/16 v13, 0x84

    aget-byte v5, v5, v13

    int-to-byte v5, v5

    invoke-static {v12, v5, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v11, v2

    const-class v5, Ljava/lang/String;

    aput-object v5, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_7

    throw v2

    :cond_7
    throw v1

    :cond_8
    :goto_c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    sget-object v11, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v12, 0x2c

    aget-byte v13, v11, v12

    int-to-byte v12, v13

    const/16 v13, 0x84

    aget-byte v14, v11, v13

    int-to-byte v13, v14

    const/16 v14, 0x86

    int-to-short v14, v14

    invoke-static {v12, v13, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v13, v12, v2

    aput-object v5, v12, v4

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const/4 v13, 0x3

    aput-object v6, v12, v13

    const/4 v15, 0x4

    aput-object v10, v12, v15

    const/4 v15, 0x5

    aput-object v5, v12, v15

    const/4 v5, 0x6

    aput-object v9, v12, v5

    const/4 v5, 0x7

    aput-object v6, v12, v5

    const/16 v5, 0x8

    aput-object v10, v12, v5

    new-array v5, v8, [Z

    aput-boolean v2, v5, v2

    aput-boolean v4, v5, v4

    const/4 v6, 0x2

    aput-boolean v4, v5, v6

    aput-boolean v4, v5, v13

    const/4 v6, 0x4

    aput-boolean v4, v5, v6

    aput-boolean v4, v5, v15

    const/4 v6, 0x6

    aput-boolean v4, v5, v6

    const/4 v6, 0x7

    aput-boolean v4, v5, v6

    const/16 v6, 0x8

    aput-boolean v4, v5, v6

    new-array v6, v8, [Z

    aput-boolean v2, v6, v2

    aput-boolean v2, v6, v4

    const/4 v9, 0x2

    aput-boolean v2, v6, v9

    aput-boolean v2, v6, v13

    const/4 v9, 0x4

    aput-boolean v2, v6, v9

    aput-boolean v4, v6, v15

    const/4 v9, 0x6

    aput-boolean v4, v6, v9

    const/4 v9, 0x7

    aput-boolean v4, v6, v9

    const/16 v9, 0x8

    aput-boolean v4, v6, v9

    new-array v9, v8, [Z

    aput-boolean v2, v9, v2

    aput-boolean v2, v9, v4

    const/4 v10, 0x2

    aput-boolean v4, v9, v10

    aput-boolean v4, v9, v13

    const/4 v10, 0x4

    aput-boolean v2, v9, v10

    aput-boolean v2, v9, v15

    const/4 v10, 0x6

    aput-boolean v4, v9, v10

    const/4 v10, 0x7

    aput-boolean v4, v9, v10

    const/16 v10, 0x8

    aput-boolean v2, v9, v10
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    const/16 v10, 0xb

    const/16 v13, 0x15

    :try_start_c
    aget-byte v8, v11, v10

    int-to-byte v8, v8

    const/16 v16, 0x3a

    aget-byte v10, v11, v16

    int-to-byte v10, v10

    xor-int/lit16 v15, v10, 0x321

    and-int/lit16 v4, v10, 0x321

    or-int/2addr v4, v15

    int-to-short v4, v4

    invoke-static {v8, v10, v4}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v8, 0x5d

    aget-byte v8, v11, v8

    int-to-byte v8, v8

    const/16 v10, 0x19

    aget-byte v10, v11, v10

    int-to-byte v10, v10

    xor-int/lit16 v11, v10, 0x15a

    and-int/lit16 v15, v10, 0x15a

    or-int/2addr v11, v15

    int-to-short v11, v11

    invoke-static {v8, v10, v11}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const/16 v8, 0x1a

    if-lt v4, v8, :cond_9

    const/4 v8, 0x1

    goto :goto_d

    :cond_9
    move v8, v2

    :goto_d
    aput-boolean v8, v9, v2

    if-lt v4, v13, :cond_a

    const/16 v8, 0x10

    goto :goto_e

    :cond_a
    const/16 v8, 0x49

    :goto_e
    packed-switch v8, :pswitch_data_2

    const/4 v8, 0x1

    const/16 v23, 0x1

    goto :goto_f

    :pswitch_2
    move/from16 v23, v2

    const/4 v8, 0x1

    :goto_f
    aput-boolean v23, v9, v8
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    if-lt v4, v13, :cond_b

    const/16 v8, 0x14

    goto :goto_10

    :cond_b
    const/16 v8, 0x12

    :goto_10
    packed-switch v8, :pswitch_data_3

    move v8, v2

    :goto_11
    const/4 v10, 0x5

    goto :goto_12

    :pswitch_3
    sget v8, Lcom/mastercard/terminalsdk/internal/do;->T:I

    xor-int/lit8 v10, v8, 0x21

    and-int/lit8 v8, v8, 0x21

    const/4 v11, 0x1

    shl-int/2addr v8, v11

    add-int/2addr v10, v8

    rem-int/lit16 v8, v10, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v8, 0x2

    rem-int/2addr v10, v8

    const/4 v8, 0x1

    goto :goto_11

    :goto_12
    :try_start_d
    aput-boolean v8, v9, v10
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    const/4 v8, 0x4

    const/16 v10, 0x10

    if-ge v4, v10, :cond_c

    const/4 v10, 0x1

    goto :goto_13

    :cond_c
    move v10, v2

    :goto_13
    packed-switch v10, :pswitch_data_4

    move v10, v2

    goto :goto_14

    :pswitch_4
    sget v10, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v10, v10, 0x1a

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v11, 0x2

    rem-int/2addr v10, v11

    const/4 v10, 0x1

    :goto_14
    :try_start_e
    aput-boolean v10, v9, v8

    const/16 v8, 0x8

    const/16 v10, 0x10

    if-ge v4, v10, :cond_d

    const/4 v4, 0x1

    goto :goto_15

    :cond_d
    move v4, v2

    :goto_15
    aput-boolean v4, v9, v8
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_16

    :catch_5
    move-exception v0

    :goto_16
    move v4, v2

    move v8, v4

    :goto_17
    if-nez v8, :cond_62

    const/16 v10, 0x9

    if-ge v4, v10, :cond_e

    const/4 v10, 0x1

    goto :goto_18

    :cond_e
    move v10, v2

    :goto_18
    packed-switch v10, :pswitch_data_5

    sget v10, Lcom/mastercard/terminalsdk/internal/do;->T:I

    xor-int/lit8 v11, v10, 0x7d

    and-int/lit8 v10, v10, 0x7d

    const/4 v15, 0x1

    shl-int/2addr v10, v15

    add-int/2addr v11, v10

    rem-int/lit16 v10, v11, 0x80

    sput v10, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v10, 0x2

    rem-int/2addr v11, v10

    :try_start_f
    aget-boolean v10, v9, v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    if-eqz v10, :cond_61

    :try_start_10
    aget-boolean v11, v5, v4

    aget-object v15, v12, v4

    aget-boolean v24, v6, v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_55

    if-eqz v11, :cond_f

    const/16 v25, 0x1

    goto :goto_19

    :cond_f
    move/from16 v25, v2

    :goto_19
    const/16 v26, 0x2a

    packed-switch v25, :pswitch_data_6

    if-eqz v15, :cond_5a

    goto :goto_1a

    :pswitch_5
    move-object/from16 v25, v5

    goto :goto_1b

    :goto_1a
    :try_start_11
    sget-object v25, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v18, 0x2c

    aget-byte v10, v25, v18

    int-to-byte v10, v10

    const/16 v19, 0x84

    aget-byte v2, v25, v19

    int-to-byte v2, v2

    invoke-static {v10, v2, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v10, 0x58

    aget-byte v10, v25, v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_52

    int-to-byte v10, v10

    const/16 v17, 0x142

    :try_start_12
    aget-byte v13, v25, v17
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_51

    int-to-byte v13, v13

    move-object/from16 v25, v5

    const/16 v5, 0xba

    int-to-short v5, v5

    :try_start_13
    invoke-static {v10, v13, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v15, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_50

    if-eqz v2, :cond_58

    :goto_1b
    if-eqz v11, :cond_22

    :try_start_14
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_12

    :try_start_15
    sget-object v10, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v13, 0x1d

    aget-byte v13, v10, v13

    int-to-byte v13, v13

    const/16 v19, 0x84

    aget-byte v2, v10, v19
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    int-to-byte v2, v2

    move-object/from16 v27, v6

    :try_start_16
    sget v6, Lcom/mastercard/terminalsdk/internal/do;->V:I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    move-object/from16 v28, v7

    xor-int/lit16 v7, v6, 0x301

    and-int/lit16 v6, v6, 0x301

    or-int/2addr v6, v7

    int-to-short v6, v6

    :try_start_17
    invoke-static {v13, v2, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v6, 0x10

    aget-byte v7, v10, v6

    int-to-byte v6, v7

    const/16 v7, 0x142

    aget-byte v10, v10, v7

    int-to-byte v7, v10

    const/16 v10, 0x51

    int-to-short v10, v10

    invoke-static {v6, v7, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    const-wide/32 v29, -0x2eb00283

    xor-long v6, v6, v29

    :try_start_18
    invoke-virtual {v5, v6, v7}, Ljava/util/Random;->setSeed(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_1c
    if-nez v2, :cond_10

    const/4 v13, 0x0

    goto :goto_1d

    :cond_10
    const/4 v13, 0x1

    :goto_1d
    packed-switch v13, :pswitch_data_7

    if-nez v6, :cond_11

    goto :goto_1e

    :pswitch_6
    move/from16 v36, v4

    move-object v13, v6

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    goto/16 :goto_37

    :goto_1e
    const/4 v13, 0x1

    goto :goto_1f

    :cond_11
    const/4 v13, 0x0

    :goto_1f
    packed-switch v13, :pswitch_data_8

    if-nez v7, :cond_12

    goto :goto_20

    :pswitch_7
    move-object/from16 v29, v2

    const/4 v2, 0x6

    goto :goto_21

    :goto_20
    move-object/from16 v29, v2

    const/4 v2, 0x5

    goto :goto_21

    :cond_12
    if-nez v10, :cond_13

    sget v13, Lcom/mastercard/terminalsdk/internal/do;->X:I

    or-int/lit8 v29, v13, 0x5

    const/16 v23, 0x1

    shl-int/lit8 v29, v29, 0x1

    const/16 v22, 0x5

    xor-int/lit8 v13, v13, 0x5

    sub-int v13, v29, v13

    move-object/from16 v29, v2

    rem-int/lit16 v2, v13, 0x80

    sput v2, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v2, 0x2

    rem-int/2addr v13, v2

    const/4 v2, 0x4

    goto :goto_21

    :cond_13
    move-object/from16 v29, v2

    const/4 v2, 0x3

    :goto_21
    :try_start_19
    new-instance v13, Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    move/from16 v30, v8

    add-int/lit8 v8, v2, 0x1

    :try_start_1a
    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v8, 0x2e

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_22
    if-ge v8, v2, :cond_14

    const/16 v31, 0x50

    goto :goto_23

    :cond_14
    const/16 v31, 0x53

    :goto_23
    packed-switch v31, :pswitch_data_9

    move/from16 v36, v4

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v32, v9

    move-object/from16 v35, v10

    move-object/from16 v31, v12

    if-eqz v24, :cond_1f

    goto/16 :goto_2a

    :pswitch_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    if-nez v6, :cond_16

    const/4 v6, 0x2

    :try_start_1b
    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v8, v6

    const/4 v2, 0x0

    aput-object v15, v8, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v6, 0x2c

    aget-byte v13, v2, v6
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    int-to-byte v6, v13

    move-object/from16 v31, v12

    const/16 v13, 0x84

    :try_start_1c
    aget-byte v12, v2, v13

    int-to-byte v12, v12

    invoke-static {v6, v12, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Class;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    move-object/from16 v32, v9

    const/16 v12, 0x2c

    :try_start_1d
    aget-byte v9, v2, v12

    int-to-byte v9, v9

    const/16 v12, 0x84

    aget-byte v2, v2, v12

    int-to-byte v2, v2

    invoke-static {v9, v2, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v13, v9

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v13, v9

    invoke-virtual {v6, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    move-object v6, v2

    :goto_24
    move/from16 v36, v4

    move-object/from16 v2, v29

    goto/16 :goto_28

    :catchall_1
    move-exception v0

    goto :goto_25

    :catchall_2
    move-exception v0

    move-object/from16 v32, v9

    goto :goto_25

    :catchall_3
    move-exception v0

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    :goto_25
    move-object v2, v0

    :try_start_1e
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_15

    throw v5

    :cond_15
    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object v12, v3

    move/from16 v36, v4

    goto/16 :goto_34

    :cond_16
    move-object/from16 v32, v9

    move-object/from16 v31, v12

    if-nez v7, :cond_18

    sget v7, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v7, v7, 0x3e

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    :try_start_1f
    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x0

    aput-object v15, v7, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v8, 0x2c

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/16 v9, 0x84

    aget-byte v12, v2, v9

    int-to-byte v9, v12

    invoke-static {v8, v9, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x2

    new-array v12, v9, [Ljava/lang/Class;

    const/16 v9, 0x2c

    aget-byte v13, v2, v9

    int-to-byte v9, v13

    const/16 v13, 0x84

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v9, v2, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v9, 0x0

    aput-object v2, v12, v9

    const-class v2, Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v2, v12, v9

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    move-object v7, v2

    goto :goto_24

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_20
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_17

    throw v5

    :cond_17
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    :cond_18
    if-nez v10, :cond_19

    const/4 v8, 0x5

    goto :goto_26

    :cond_19
    const/16 v8, 0x2b

    :goto_26
    packed-switch v8, :pswitch_data_a

    const/4 v8, 0x2

    goto :goto_27

    :pswitch_9
    const/4 v8, 0x2

    :try_start_21
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v2, v9, v8

    const/4 v2, 0x0

    aput-object v15, v9, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v8, 0x2c

    aget-byte v10, v2, v8

    int-to-byte v8, v10

    const/16 v10, 0x84

    aget-byte v12, v2, v10

    int-to-byte v10, v12

    invoke-static {v8, v10, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Class;

    const/16 v10, 0x2c

    aget-byte v13, v2, v10

    int-to-byte v10, v13

    const/16 v13, 0x84

    aget-byte v2, v2, v13

    int-to-byte v2, v2

    invoke-static {v10, v2, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v10, 0x0

    aput-object v2, v12, v10

    const-class v2, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v2, v12, v10

    invoke-virtual {v8, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_6

    move-object v10, v2

    goto/16 :goto_24

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1a

    throw v5

    :cond_1a
    throw v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :goto_27
    :try_start_23
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x1

    aput-object v2, v9, v8

    const/4 v2, 0x0

    aput-object v15, v9, v2

    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v8, 0x2c

    aget-byte v12, v2, v8

    int-to-byte v8, v12

    const/16 v12, 0x84

    aget-byte v13, v2, v12

    int-to-byte v12, v13

    invoke-static {v8, v12, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Class;

    move-object/from16 v33, v6

    const/16 v12, 0x2c

    aget-byte v6, v2, v12

    int-to-byte v6, v6

    move-object/from16 v34, v7

    const/16 v12, 0x84

    aget-byte v7, v2, v12

    int-to-byte v7, v7

    invoke-static {v6, v7, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v13, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v13, v7

    invoke-virtual {v8, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :try_start_24
    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v8, v7

    const/16 v7, 0xb

    aget-byte v9, v2, v7

    int-to-byte v7, v9

    const/16 v9, 0x84

    aget-byte v12, v2, v9

    int-to-byte v9, v12

    const/16 v12, 0xd1

    int-to-short v12, v12

    invoke-static {v7, v9, v12}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x1

    new-array v13, v9, [Ljava/lang/Class;

    move-object/from16 v35, v10

    const/16 v9, 0x2c

    aget-byte v10, v2, v9
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9

    int-to-byte v9, v10

    move/from16 v36, v4

    const/16 v10, 0x84

    :try_start_25
    aget-byte v4, v2, v10

    int-to-byte v4, v4

    invoke-static {v9, v4, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v13, v9

    invoke-virtual {v7, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_8

    sget v7, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v7, v7, 0x72

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v8, 0x2

    rem-int/2addr v7, v8

    const/16 v7, 0xb

    :try_start_26
    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x84

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    invoke-static {v7, v8, v12}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v8, v2, v26

    int-to-byte v8, v8

    const/16 v9, 0x142

    aget-byte v2, v2, v9

    int-to-byte v2, v2

    const/16 v9, 0x13a

    int-to-short v10, v9

    invoke-static {v8, v2, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    move-object v2, v6

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v10, v35

    :goto_28
    move/from16 v8, v30

    move-object/from16 v12, v31

    move-object/from16 v9, v32

    move/from16 v4, v36

    goto/16 :goto_1c

    :catchall_7
    move-exception v0

    move-object v2, v0

    :try_start_27
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1b

    throw v4

    :cond_1b
    throw v2

    :catchall_8
    move-exception v0

    goto :goto_29

    :catchall_9
    move-exception v0

    move/from16 v36, v4

    :goto_29
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1c

    throw v4

    :cond_1c
    throw v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_6
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    aget-byte v7, v5, v26

    int-to-byte v7, v7

    const/16 v8, 0x34

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    or-int/lit8 v9, v8, 0x49

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2e

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    or-int/lit8 v7, v6, 0x4e

    int-to-byte v7, v7

    const/16 v8, 0x2bf

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    const/4 v6, 0x2

    :try_start_29
    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v2, v7, v6

    const/4 v2, 0x0

    aput-object v4, v7, v2

    const/16 v2, 0xae

    aget-byte v4, v5, v2

    int-to-byte v2, v4

    const/16 v4, 0x84

    aget-byte v5, v5, v4

    int-to-byte v4, v5

    const/16 v5, 0xb3

    int-to-short v5, v5

    invoke-static {v2, v4, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

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
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    :try_start_2a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1d

    throw v4

    :cond_1d
    throw v2

    :catchall_b
    move-exception v0

    move/from16 v36, v4

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_1e

    throw v4

    :cond_1e
    throw v2

    :goto_2a
    const/16 v4, 0x15

    goto :goto_2b

    :cond_1f
    const/16 v4, 0x3a

    :goto_2b
    packed-switch v4, :pswitch_data_b

    const/16 v4, 0xc

    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_11

    goto :goto_2d

    :pswitch_a
    sget v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v4, v4, 0x63

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v6, 0x2

    rem-int/2addr v4, v6

    const/16 v4, 0x1a

    :try_start_2b
    invoke-virtual {v5, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v5}, Ljava/util/Random;->nextBoolean()Z

    move-result v6
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_11

    if-eqz v6, :cond_20

    sget v6, Lcom/mastercard/terminalsdk/internal/do;->T:I

    or-int/lit8 v7, v6, 0x6b

    const/4 v9, 0x1

    shl-int/2addr v7, v9

    xor-int/lit8 v6, v6, 0x6b

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v6, 0x2

    rem-int/2addr v7, v6

    xor-int/lit8 v6, v4, 0x41

    and-int/lit8 v4, v4, 0x41

    const/4 v7, 0x1

    shl-int/2addr v4, v7

    add-int/2addr v6, v4

    goto :goto_2c

    :cond_20
    add-int/lit8 v6, v4, 0x60

    :goto_2c
    int-to-char v4, v6

    :try_start_2c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2e

    :goto_2d
    add-int/lit16 v4, v4, 0x2000

    int-to-char v4, v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v31

    move-object/from16 v9, v32

    move-object/from16 v6, v33

    move-object/from16 v7, v34

    move-object/from16 v10, v35

    move/from16 v4, v36

    goto/16 :goto_22

    :catchall_c
    move-exception v0

    move/from16 v36, v4

    goto :goto_32

    :catchall_d
    move-exception v0

    move/from16 v36, v4

    goto :goto_31

    :catchall_e
    move-exception v0

    move/from16 v36, v4

    goto :goto_30

    :catchall_f
    move-exception v0

    move/from16 v36, v4

    goto :goto_2f

    :catchall_10
    move-exception v0

    move/from16 v36, v4

    move-object/from16 v27, v6

    :goto_2f
    move-object/from16 v28, v7

    :goto_30
    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_21

    throw v4

    :cond_21
    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_11

    :catchall_11
    move-exception v0

    goto :goto_33

    :catchall_12
    move-exception v0

    move/from16 v36, v4

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    :goto_31
    move/from16 v30, v8

    :goto_32
    move-object/from16 v32, v9

    move-object/from16 v31, v12

    :goto_33
    move-object v2, v0

    move-object v12, v3

    :goto_34
    move v9, v14

    :goto_35
    const/16 v10, 0x142

    :goto_36
    const/16 v11, 0x15

    goto/16 :goto_6c

    :cond_22
    move/from16 v36, v4

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    :goto_37
    const/16 v4, 0x18e0

    :try_start_2d
    new-array v4, v4, [B

    const-class v5, Lcom/mastercard/terminalsdk/internal/do;

    sget-object v6, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v8, 0xa0

    aget-byte v8, v6, v8

    int-to-byte v8, v8

    const/16 v9, 0x88

    aget-byte v9, v6, v9

    int-to-byte v9, v9

    const/4 v12, 0x0

    aget-byte v15, v6, v12

    const/4 v12, 0x1

    add-int/2addr v15, v12

    int-to-short v15, v15

    invoke-static {v8, v9, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_4f

    :try_start_2e
    new-array v8, v12, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/16 v5, 0x3a

    aget-byte v9, v6, v5

    int-to-byte v5, v9

    const/16 v9, 0x84

    aget-byte v12, v6, v9

    int-to-byte v9, v12

    const/16 v12, 0x1d9

    int-to-short v12, v12

    invoke-static {v5, v9, v12}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x1

    new-array v15, v9, [Ljava/lang/Class;

    move-object/from16 v24, v2

    const/16 v9, 0xae

    aget-byte v2, v6, v9

    int-to-byte v2, v2

    move-object/from16 v29, v7

    const/16 v9, 0x84

    aget-byte v7, v6, v9

    int-to-byte v7, v7

    move-object/from16 v33, v10

    const/16 v9, 0x2e

    aget-byte v10, v6, v9

    int-to-short v9, v10

    invoke-static {v2, v7, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v15, v7

    invoke-virtual {v5, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_4e

    sget v5, Lcom/mastercard/terminalsdk/internal/do;->X:I

    and-int/lit8 v7, v5, 0x75

    or-int/lit8 v5, v5, 0x75

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v5, 0x2

    rem-int/2addr v7, v5

    const/4 v5, 0x1

    :try_start_2f
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v7, v5

    const/16 v5, 0x3a

    aget-byte v8, v6, v5

    int-to-byte v5, v8

    const/16 v8, 0x84

    aget-byte v9, v6, v8

    int-to-byte v8, v9

    invoke-static {v5, v8, v12}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v8, 0x16

    aget-byte v8, v6, v8
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_4d

    int-to-byte v8, v8

    const/16 v9, 0x15

    :try_start_30
    aget-byte v10, v6, v9
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_4c

    int-to-byte v9, v10

    const/16 v10, 0x2e2

    int-to-short v10, v10

    :try_start_31
    invoke-static {v8, v9, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v10, v9

    invoke-virtual {v5, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_4d

    const/16 v5, 0x3a

    :try_start_32
    aget-byte v7, v6, v5

    int-to-byte v5, v7

    const/16 v7, 0x84

    aget-byte v8, v6, v7

    int-to-byte v7, v8

    invoke-static {v5, v7, v12}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v7, v6, v26
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_4b

    int-to-byte v7, v7

    const/16 v8, 0x142

    :try_start_33
    aget-byte v6, v6, v8
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_4a

    int-to-byte v6, v6

    const/16 v8, 0x13a

    int-to-short v9, v8

    :try_start_34
    invoke-static {v7, v6, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_4b

    const/16 v5, 0x18b2

    move-object/from16 v7, v28

    const/4 v6, 0x0

    const/16 v10, 0x10

    :goto_38
    or-int/lit16 v8, v10, 0x235

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    xor-int/lit16 v12, v10, 0x235

    sub-int/2addr v8, v12

    or-int/lit16 v12, v10, 0x33f

    shl-int/2addr v12, v9

    xor-int/lit16 v15, v10, 0x33f

    sub-int/2addr v12, v15

    :try_start_35
    aget-byte v12, v4, v12

    xor-int/lit8 v15, v12, 0x5

    const/16 v22, 0x5

    and-int/lit8 v12, v12, 0x5

    shl-int/2addr v12, v9

    add-int/2addr v15, v12

    int-to-byte v12, v15

    aput-byte v12, v4, v8

    array-length v8, v4
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_4f

    neg-int v12, v10

    or-int v15, v8, v12

    shl-int/2addr v15, v9

    xor-int/2addr v8, v12

    sub-int/2addr v15, v8

    const/4 v8, 0x3

    :try_start_36
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v9, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v9, v12

    const/4 v8, 0x0

    aput-object v4, v9, v8

    sget-object v4, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v8, 0x76

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v12, 0x84

    aget-byte v15, v4, v12

    int-to-byte v12, v15

    const/16 v15, 0x320

    int-to-short v15, v15

    invoke-static {v8, v12, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v12, 0x3

    new-array v15, v12, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v15, v12

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x1

    aput-object v12, v15, v23

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x2

    aput-object v12, v15, v20

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v38, v8

    check-cast v38, Ljava/io/InputStream;
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_49

    :try_start_37
    sget-object v8, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_4f

    if-nez v8, :cond_23

    const/16 v43, 0x1

    const/16 v40, 0x0

    const v8, 0x23099b9f

    const/4 v12, 0x2

    :try_start_38
    new-array v15, v12, [I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_14

    move-object v12, v3

    :try_start_39
    sget-wide v2, Lcom/mastercard/terminalsdk/internal/do;->R:J

    const/16 v35, 0x20

    move/from16 v44, v10

    ushr-long v9, v2, v35

    long-to-int v9, v9

    and-int v10, v9, v8

    not-int v10, v10

    or-int/2addr v9, v8

    and-int/2addr v9, v10

    const/4 v10, 0x0

    aput v9, v15, v10

    long-to-int v2, v2

    xor-int/2addr v2, v8

    const/4 v3, 0x1

    aput v2, v15, v3

    new-instance v2, Lcom/mastercard/terminalsdk/internal/a;

    sget v41, Lcom/mastercard/terminalsdk/internal/do;->U:I

    const/16 v42, 0x0

    move-object/from16 v37, v2

    move-object/from16 v39, v15

    invoke-direct/range {v37 .. v43}, Lcom/mastercard/terminalsdk/internal/a;-><init>(Ljava/io/InputStream;[I[BIZI)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_13

    move/from16 v35, v5

    move-object/from16 v38, v6

    move-object/from16 v37, v13

    :goto_39
    const/16 v3, 0x16

    goto/16 :goto_3b

    :catchall_13
    move-exception v0

    goto :goto_3a

    :catchall_14
    move-exception v0

    move-object v12, v3

    :goto_3a
    move-object v2, v0

    goto/16 :goto_34

    :cond_23
    move-object v12, v3

    move/from16 v44, v10

    const v2, -0x40a053b2

    const/4 v3, 0x3

    :try_start_3a
    new-array v9, v3, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v10

    const/4 v3, 0x2

    aput-object v10, v9, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v9, v3

    const/4 v2, 0x0

    aput-object v38, v9, v2

    const/16 v2, 0x1da

    aget-byte v2, v4, v2
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_48

    neg-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x142

    :try_start_3b
    aget-byte v10, v4, v3
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_47

    int-to-byte v3, v10

    xor-int/lit16 v10, v3, 0x10b

    and-int/lit16 v15, v3, 0x10b

    or-int/2addr v10, v15

    int-to-short v10, v10

    :try_start_3c
    invoke-static {v2, v3, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ClassLoader;

    const/4 v10, 0x1

    invoke-static {v2, v10, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x2e

    aget-byte v10, v4, v3

    int-to-byte v3, v10

    const/16 v10, 0x23d

    aget-byte v15, v4, v10

    int-to-byte v10, v15

    or-int/lit16 v15, v10, 0x10c

    int-to-short v15, v15

    invoke-static {v3, v10, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x3

    new-array v15, v10, [Ljava/lang/Class;

    move/from16 v35, v5

    const/16 v10, 0xae

    aget-byte v5, v4, v10

    int-to-byte v5, v5

    move-object/from16 v37, v13

    const/16 v10, 0x84

    aget-byte v13, v4, v10

    int-to-byte v10, v13

    move-object/from16 v38, v6

    const/16 v13, 0x2e

    aget-byte v6, v4, v13

    int-to-short v6, v6

    invoke-static {v5, v10, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v15, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v15, v6

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v15, v6

    invoke-virtual {v2, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_48

    goto/16 :goto_39

    :goto_3b
    int-to-long v5, v3

    const/4 v8, 0x1

    :try_start_3d
    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v9, v6

    const/16 v5, 0xae

    aget-byte v6, v4, v5

    int-to-byte v5, v6

    const/16 v6, 0x84

    aget-byte v8, v4, v6

    int-to-byte v6, v8

    const/16 v8, 0x2e

    aget-byte v10, v4, v8

    int-to-short v8, v10

    invoke-static {v5, v6, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0xe

    aget-byte v6, v4, v6

    int-to-byte v6, v6

    aget-byte v8, v4, v26

    int-to-byte v8, v8

    const/16 v10, 0x1a1

    int-to-short v10, v10

    invoke-static {v6, v8, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v8, v10, v13

    invoke-virtual {v5, v6, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_46

    if-eqz v11, :cond_24

    const/4 v5, 0x1

    goto :goto_3c

    :cond_24
    const/4 v5, 0x0

    :goto_3c
    packed-switch v5, :pswitch_data_c

    move-object/from16 v35, v7

    move/from16 v39, v11

    :try_start_3e
    new-instance v3, Ljava/util/zip/ZipInputStream;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_45

    goto/16 :goto_4b

    :pswitch_b
    :try_start_3f
    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_13

    if-nez v5, :cond_25

    const/4 v6, 0x0

    goto :goto_3d

    :cond_25
    const/4 v6, 0x1

    :goto_3d
    packed-switch v6, :pswitch_data_d

    move-object/from16 v6, v29

    goto :goto_3e

    :pswitch_c
    move-object/from16 v6, v37

    :goto_3e
    if-nez v5, :cond_26

    const/16 v5, 0x3d

    goto :goto_3f

    :cond_26
    const/16 v5, 0x3e

    :goto_3f
    packed-switch v5, :pswitch_data_e

    move-object/from16 v5, v33

    goto :goto_40

    :pswitch_d
    move-object/from16 v5, v24

    :goto_40
    const/4 v8, 0x1

    :try_start_40
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v9, v8

    const/16 v8, 0xb

    aget-byte v10, v4, v8

    int-to-byte v8, v10

    const/16 v10, 0x84

    aget-byte v13, v4, v10

    int-to-byte v10, v13

    const/16 v13, 0xd1

    int-to-short v13, v13

    invoke-static {v8, v10, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/Class;

    const/16 v10, 0x2c

    aget-byte v3, v4, v10

    int-to-byte v3, v3

    const/16 v10, 0x84

    aget-byte v4, v4, v10

    int-to-byte v4, v4

    invoke-static {v3, v4, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v15, v4

    invoke-virtual {v8, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_25

    sget v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v4, v4, 0x56

    const/4 v8, 0x1

    sub-int/2addr v4, v8

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v8, 0x2

    rem-int/2addr v4, v8

    if-nez v4, :cond_27

    const/4 v4, 0x0

    goto :goto_41

    :cond_27
    const/4 v4, 0x1

    :goto_41
    packed-switch v4, :pswitch_data_f

    const/16 v4, 0x400

    :try_start_41
    new-array v4, v4, [B
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_24

    goto :goto_42

    :pswitch_e
    const/16 v4, 0x2737

    :try_start_42
    new-array v4, v4, [B

    :goto_42
    move/from16 v8, v35

    goto :goto_43

    :catchall_15
    move-exception v0

    move-object v2, v0

    move-object v7, v5

    goto/16 :goto_4a

    :goto_43
    if-lez v8, :cond_2a

    array-length v9, v4

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    const/4 v10, 0x3

    :try_start_43
    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v15, v10

    const/4 v9, 0x1

    aput-object v12, v15, v9

    const/4 v9, 0x0

    aput-object v4, v15, v9

    sget-object v9, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    move-object/from16 v35, v7

    const/16 v10, 0xae

    aget-byte v7, v9, v10

    int-to-byte v7, v7

    move/from16 v39, v11

    const/16 v10, 0x84

    aget-byte v11, v9, v10
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_18

    int-to-byte v10, v11

    move-object/from16 v40, v5

    const/16 v11, 0x2e

    :try_start_44
    aget-byte v5, v9, v11

    int-to-short v5, v5

    invoke-static {v7, v10, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0xe

    aget-byte v7, v9, v7

    int-to-byte v7, v7

    const/16 v10, 0x15

    aget-byte v11, v9, v10

    int-to-byte v10, v11

    const/16 v11, 0x2c2

    int-to-short v11, v11

    invoke-static {v7, v10, v11}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v1, v11, v10

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v23, 0x1

    aput-object v10, v11, v23

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x2

    aput-object v10, v11, v20

    invoke-virtual {v5, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_17

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2b

    const/4 v7, 0x3

    :try_start_45
    new-array v10, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v12, v10, v7

    const/4 v7, 0x0

    aput-object v4, v10, v7

    const/16 v7, 0xb

    aget-byte v11, v9, v7

    int-to-byte v7, v11

    const/16 v11, 0x84

    aget-byte v15, v9, v11

    int-to-byte v11, v15

    invoke-static {v7, v11, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aget-byte v11, v9, v26

    int-to-byte v11, v11

    const/16 v15, 0x2e

    aget-byte v9, v9, v15

    int-to-byte v9, v9

    xor-int/lit16 v15, v9, 0x2d0

    move-object/from16 v41, v4

    and-int/lit16 v4, v9, 0x2d0

    or-int/2addr v4, v15

    int-to-short v4, v4

    invoke-static {v11, v9, v4}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x3

    new-array v11, v9, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v11, v9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v9, v11, v15

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v9, v11, v15

    invoke-virtual {v7, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_16

    sub-int/2addr v8, v5

    move-object/from16 v7, v35

    move/from16 v11, v39

    move-object/from16 v5, v40

    move-object/from16 v4, v41

    goto/16 :goto_43

    :catchall_16
    move-exception v0

    move-object v2, v0

    :try_start_46
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_28

    throw v3

    :cond_28
    throw v2

    :catchall_17
    move-exception v0

    goto :goto_44

    :catchall_18
    move-exception v0

    move-object/from16 v40, v5

    :goto_44
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_29

    throw v3

    :cond_29
    throw v2
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_19

    :catchall_19
    move-exception v0

    move-object v2, v0

    move-object/from16 v7, v40

    goto/16 :goto_4a

    :cond_2a
    move-object/from16 v40, v5

    move-object/from16 v35, v7

    move/from16 v39, v11

    :cond_2b
    :try_start_47
    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v4, 0xb

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x84

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    invoke-static {v4, v5, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v2, v26

    int-to-byte v5, v5

    const/16 v7, 0x10

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x182

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_23

    const/16 v5, 0x2d

    :try_start_48
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v7, 0x84

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x22

    aget-byte v8, v2, v8

    int-to-short v8, v8

    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/16 v7, 0xe

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    aget-byte v8, v2, v26

    int-to-byte v8, v8

    xor-int/lit16 v9, v8, 0x271

    and-int/lit16 v10, v8, 0x271

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_22

    sget v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v4, v4, 0x3d

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    const/16 v4, 0xb

    :try_start_49
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x84

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    invoke-static {v4, v5, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v5, v2, v26

    int-to-byte v5, v5

    const/16 v7, 0x142

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    const/16 v8, 0x13a

    int-to-short v9, v8

    invoke-static {v5, v7, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_21

    const/16 v3, 0x142

    :try_start_4a
    aget-byte v4, v2, v3

    int-to-byte v3, v4

    const/16 v4, 0x23d

    aget-byte v5, v2, v4

    int-to-byte v4, v5

    xor-int/lit16 v5, v4, 0x2ac

    and-int/lit16 v7, v4, 0x2ac

    or-int/2addr v5, v7

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x5d

    aget-byte v4, v2, v4

    int-to-byte v4, v4

    const/16 v5, 0x2c

    aget-byte v7, v2, v5

    int-to-byte v5, v7

    const/16 v7, 0x1c3

    int-to-short v7, v7

    invoke-static {v4, v5, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v7, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const-class v5, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v5, v7, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-virtual {v3, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_20

    const/16 v4, 0x2c

    :try_start_4b
    aget-byte v7, v2, v4

    int-to-byte v4, v7

    const/16 v7, 0x84

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v7, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x83

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x10

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    xor-int/lit16 v9, v8, 0xe8

    and-int/lit16 v10, v8, 0xe8

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_1f

    const/4 v7, 0x0

    :try_start_4c
    aput-object v4, v5, v7
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_20

    const/16 v4, 0x2c

    :try_start_4d
    aget-byte v7, v2, v4

    int-to-byte v4, v7

    const/16 v7, 0x84

    aget-byte v8, v2, v7

    int-to-byte v7, v8

    invoke-static {v4, v7, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v7, 0x83

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    const/16 v8, 0x10

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    xor-int/lit16 v9, v8, 0xe8

    and-int/lit16 v10, v8, 0xe8

    or-int/2addr v9, v10

    int-to-short v9, v9

    invoke-static {v7, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_1e

    move-object/from16 v7, v40

    :try_start_4e
    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4e
    .catchall {:try_start_4e .. :try_end_4e} :catchall_1d

    const/4 v9, 0x1

    :try_start_4f
    aput-object v4, v5, v9

    const/4 v4, 0x2

    aput-object v12, v5, v4

    invoke-virtual {v3, v8, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_26

    const/16 v4, 0x2c

    :try_start_50
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x84

    aget-byte v8, v2, v5

    int-to-byte v5, v8

    invoke-static {v4, v5, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15

    aget-byte v8, v2, v5

    int-to-byte v5, v8

    const/16 v8, 0x23d

    aget-byte v9, v2, v8

    int-to-byte v8, v9

    const/16 v9, 0x187

    int-to-short v9, v9

    invoke-static {v5, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_50
    .catchall {:try_start_50 .. :try_end_50} :catchall_1c

    const/16 v4, 0x2c

    :try_start_51
    aget-byte v5, v2, v4

    int-to-byte v4, v5

    const/16 v5, 0x84

    aget-byte v6, v2, v5

    int-to-byte v5, v6

    invoke-static {v4, v5, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15

    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x23d

    aget-byte v8, v2, v6

    int-to-byte v6, v8

    invoke-static {v5, v6, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_1b

    sget v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    and-int/lit8 v5, v4, 0x47

    or-int/lit8 v4, v4, 0x47

    add-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v6, 0x2

    rem-int/2addr v5, v6

    :try_start_52
    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    if-nez v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_45

    :cond_2c
    const/4 v5, 0x0

    :goto_45
    packed-switch v5, :pswitch_data_10

    const-class v5, Lcom/mastercard/terminalsdk/internal/do;
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_13

    or-int/lit8 v6, v4, 0x79

    const/4 v7, 0x1

    shl-int/2addr v6, v7

    xor-int/lit8 v4, v4, 0x79

    sub-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v4, 0x2

    rem-int/2addr v6, v4

    if-eqz v6, :cond_2d

    :try_start_53
    const-class v4, Ljava/lang/Class;

    const/16 v6, 0x4b0c

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x2e

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    xor-int/lit16 v7, v2, 0x42a0

    and-int/lit16 v8, v2, 0x42a0

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v6, v2, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_53
    .catchall {:try_start_53 .. :try_end_53} :catchall_1a

    :goto_46
    :try_start_54
    sput-object v2, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_13

    goto :goto_47

    :cond_2d
    :try_start_55
    const-class v4, Ljava/lang/Class;

    const/16 v6, 0x84

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0x10

    aget-byte v2, v2, v7

    int-to-byte v2, v2

    xor-int/lit16 v7, v2, 0x18e

    and-int/lit16 v8, v2, 0x18e

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v6, v2, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_55
    .catchall {:try_start_55 .. :try_end_55} :catchall_1a

    goto :goto_46

    :goto_47
    :pswitch_f
    move v9, v14

    const/4 v13, 0x5

    goto/16 :goto_54

    :catchall_1a
    move-exception v0

    move-object v2, v0

    :try_start_56
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2e

    throw v3

    :cond_2e
    throw v2

    :catchall_1b
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2f

    throw v3

    :cond_2f
    throw v2

    :catchall_1c
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_30

    throw v3

    :cond_30
    throw v2
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_13

    :catchall_1d
    move-exception v0

    goto :goto_48

    :catchall_1e
    move-exception v0

    move-object/from16 v7, v40

    :goto_48
    move-object v2, v0

    :try_start_57
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_31

    throw v3

    :cond_31
    throw v2

    :catchall_1f
    move-exception v0

    move-object/from16 v7, v40

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_32

    throw v3

    :cond_32
    throw v2

    :catchall_20
    move-exception v0

    move-object/from16 v7, v40

    goto :goto_49

    :catchall_21
    move-exception v0

    move-object/from16 v7, v40

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_33

    throw v3

    :cond_33
    throw v2

    :catchall_22
    move-exception v0

    move-object/from16 v7, v40

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_34

    throw v3

    :cond_34
    throw v2

    :catchall_23
    move-exception v0

    move-object/from16 v7, v40

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_35

    throw v3

    :cond_35
    throw v2
    :try_end_57
    .catchall {:try_start_57 .. :try_end_57} :catchall_26

    :catchall_24
    move-exception v0

    move-object v7, v5

    goto :goto_49

    :catchall_25
    move-exception v0

    move-object v7, v5

    move-object v2, v0

    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_36

    throw v3

    :cond_36
    throw v2
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_7
    .catchall {:try_start_58 .. :try_end_58} :catchall_26

    :catchall_26
    move-exception v0

    :goto_49
    move-object v2, v0

    goto/16 :goto_4a

    :catch_7
    move-exception v0

    move-object v2, v0

    :try_start_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    aget-byte v5, v4, v26

    int-to-byte v5, v5

    const/16 v8, 0x34

    aget-byte v8, v4, v8

    int-to-byte v8, v8

    const/16 v9, 0x258

    int-to-short v9, v9

    invoke-static {v5, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x2e

    aget-byte v5, v4, v5

    int-to-byte v5, v5

    xor-int/lit8 v8, v5, 0x4e

    and-int/lit8 v9, v5, 0x4e

    or-int/2addr v8, v9

    int-to-byte v8, v8

    const/16 v9, 0x2bf

    int-to-short v9, v9

    invoke-static {v5, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_26

    const/4 v5, 0x2

    :try_start_5a
    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v2, v8, v5

    const/4 v2, 0x0

    aput-object v3, v8, v2

    const/16 v2, 0xae

    aget-byte v3, v4, v2

    int-to-byte v2, v3

    const/16 v3, 0x84

    aget-byte v4, v4, v3

    int-to-byte v3, v4

    const/16 v4, 0xb3

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_5a
    .catchall {:try_start_5a .. :try_end_5a} :catchall_27

    :catchall_27
    move-exception v0

    move-object v2, v0

    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_37

    throw v3

    :cond_37
    throw v2
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_26

    :goto_4a
    :try_start_5c
    sget-object v3, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v4, 0x2c

    aget-byte v5, v3, v4

    int-to-byte v4, v5

    const/16 v5, 0x84

    aget-byte v8, v3, v5

    int-to-byte v5, v8

    invoke-static {v4, v5, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15

    aget-byte v8, v3, v5

    int-to-byte v5, v8

    const/16 v8, 0x23d

    aget-byte v9, v3, v8

    int-to-byte v8, v9

    const/16 v9, 0x187

    int-to-short v9, v9

    invoke-static {v5, v8, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_29

    sget v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v4, v4, 0x30

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v5, 0x2

    rem-int/2addr v4, v5

    const/16 v4, 0x2c

    :try_start_5d
    aget-byte v5, v3, v4

    int-to-byte v4, v5

    const/16 v5, 0x84

    aget-byte v6, v3, v5

    int-to-byte v5, v6

    invoke-static {v4, v5, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x15

    aget-byte v6, v3, v5

    int-to-byte v5, v6

    const/16 v6, 0x23d

    aget-byte v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v5, v3, v9}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_28

    :try_start_5e
    throw v2

    :catchall_28
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_38

    throw v3

    :cond_38
    throw v2

    :catchall_29
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_39

    throw v3

    :cond_39
    throw v2
    :try_end_5e
    .catchall {:try_start_5e .. :try_end_5e} :catchall_13

    :goto_4b
    :try_start_5f
    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v2
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_45

    const/4 v5, 0x1

    :try_start_60
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    sget v3, Lcom/mastercard/terminalsdk/internal/do;->V:I

    const/4 v5, 0x2

    ushr-int/2addr v3, v5

    int-to-byte v3, v3

    const/16 v5, 0x84

    aget-byte v7, v4, v5

    int-to-byte v5, v7

    const/16 v7, 0x383

    int-to-short v7, v7

    invoke-static {v3, v5, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Class;

    const/16 v5, 0xae

    aget-byte v9, v4, v5

    int-to-byte v5, v9

    const/16 v9, 0x84

    aget-byte v10, v4, v9

    int-to-byte v9, v10

    const/16 v10, 0x2e

    aget-byte v11, v4, v10

    int-to-short v10, v11

    invoke-static {v5, v9, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_44

    const/16 v5, 0x76

    :try_start_61
    aget-byte v5, v4, v5

    add-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x84

    aget-byte v4, v4, v6

    int-to-byte v4, v4

    xor-int/lit16 v6, v4, 0x1b0

    and-int/lit16 v8, v4, 0x1b0

    or-int/2addr v6, v8

    int-to-short v6, v6

    invoke-static {v5, v4, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_61
    .catchall {:try_start_61 .. :try_end_61} :catchall_43

    const/16 v5, 0x400

    :try_start_62
    new-array v5, v5, [B
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_45

    const/4 v6, 0x0

    :goto_4c
    const/4 v8, 0x1

    :try_start_63
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v9, v8

    sget v8, Lcom/mastercard/terminalsdk/internal/do;->V:I

    const/4 v10, 0x2

    ushr-int/2addr v8, v10

    int-to-byte v8, v8

    sget-object v10, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v11, 0x84

    aget-byte v13, v10, v11

    int-to-byte v11, v13

    invoke-static {v8, v11, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v11, 0xe

    aget-byte v11, v10, v11
    :try_end_63
    .catchall {:try_start_63 .. :try_end_63} :catchall_42

    int-to-byte v11, v11

    const/16 v13, 0x15

    :try_start_64
    aget-byte v15, v10, v13
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_41

    int-to-byte v13, v15

    const/16 v15, 0x2c2

    int-to-short v15, v15

    :try_start_65
    invoke-static {v11, v13, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v8, v11, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_65
    .catchall {:try_start_65 .. :try_end_65} :catchall_42

    if-lez v8, :cond_3a

    const/4 v9, 0x1

    goto :goto_4d

    :cond_3a
    const/4 v9, 0x0

    :goto_4d
    packed-switch v9, :pswitch_data_11

    move v9, v14

    int-to-long v13, v6

    :try_start_66
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v40
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_40

    goto :goto_4e

    :pswitch_10
    move v9, v14

    :cond_3b
    const/4 v11, 0x3

    goto/16 :goto_50

    :goto_4e
    cmp-long v11, v13, v40

    if-gez v11, :cond_3b

    const/4 v11, 0x3

    :try_start_67
    new-array v13, v11, [Ljava/lang/Object;
    :try_end_67
    .catchall {:try_start_67 .. :try_end_67} :catchall_2b

    :try_start_68
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v13, v14

    const/4 v11, 0x1

    aput-object v12, v13, v11

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/16 v14, 0x76

    aget-byte v14, v10, v14

    and-int/lit8 v15, v14, 0x1

    or-int/2addr v14, v11

    add-int/2addr v15, v14

    int-to-byte v11, v15

    const/16 v14, 0x84

    aget-byte v15, v10, v14

    int-to-byte v14, v15

    xor-int/lit16 v15, v14, 0x1b0

    move-object/from16 v40, v2

    and-int/lit16 v2, v14, 0x1b0

    or-int/2addr v2, v15

    int-to-short v2, v2

    invoke-static {v11, v14, v2}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aget-byte v11, v10, v26

    int-to-byte v11, v11

    const/16 v14, 0x2e

    aget-byte v10, v10, v14

    int-to-byte v10, v10

    xor-int/lit16 v14, v10, 0x2d0

    and-int/lit16 v15, v10, 0x2d0

    or-int/2addr v14, v15

    int-to-short v14, v14

    invoke-static {v11, v10, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2a

    const/4 v11, 0x3

    :try_start_69
    new-array v14, v11, [Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v21, 0x1

    aput-object v15, v14, v21

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x2

    aput-object v15, v14, v20

    invoke-virtual {v2, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2b

    add-int/2addr v6, v8

    move v14, v9

    move-object/from16 v2, v40

    goto/16 :goto_4c

    :catchall_2a
    move-exception v0

    const/4 v11, 0x3

    goto :goto_4f

    :catchall_2b
    move-exception v0

    :goto_4f
    move-object v2, v0

    :try_start_6a
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3c

    throw v3

    :cond_3c
    throw v2
    :try_end_6a
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2c

    :catchall_2c
    move-exception v0

    move-object v2, v0

    goto/16 :goto_35

    :goto_50
    const/16 v2, 0x76

    :try_start_6b
    aget-byte v2, v10, v2

    or-int/lit8 v5, v2, 0x1

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/2addr v2, v6

    sub-int/2addr v5, v2

    int-to-byte v2, v5

    const/16 v5, 0x84

    aget-byte v6, v10, v5

    int-to-byte v5, v6

    xor-int/lit16 v6, v5, 0x1b0

    and-int/lit16 v8, v5, 0x1b0

    or-int/2addr v6, v8

    int-to-short v6, v6

    invoke-static {v2, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x96

    aget-byte v5, v10, v5

    int-to-byte v5, v5

    const/16 v6, 0xe

    aget-byte v6, v10, v6

    int-to-byte v6, v6

    const/16 v8, 0x9b

    aget-byte v8, v10, v8

    int-to-short v8, v8

    invoke-static {v5, v6, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_3f

    :try_start_6c
    sget v5, Lcom/mastercard/terminalsdk/internal/do;->V:I

    const/4 v6, 0x2

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x84

    aget-byte v8, v10, v6

    int-to-byte v6, v8

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v10, v26

    int-to-byte v6, v6

    const/16 v7, 0x142

    aget-byte v8, v10, v7

    int-to-byte v7, v8

    const/16 v8, 0x13a

    int-to-short v10, v8

    invoke-static {v6, v7, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2d

    goto :goto_51

    :catchall_2d
    move-exception v0

    move-object v3, v0

    :try_start_6d
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_3d

    throw v5

    :cond_3d
    throw v3
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6d} :catch_8
    .catchall {:try_start_6d .. :try_end_6d} :catchall_2c

    :catch_8
    move-exception v0

    :goto_51
    sget v3, Lcom/mastercard/terminalsdk/internal/do;->X:I

    or-int/lit8 v5, v3, 0x27

    const/4 v6, 0x1

    shl-int/2addr v5, v6

    xor-int/lit8 v3, v3, 0x27

    sub-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v3, 0x2

    rem-int/2addr v5, v3

    :try_start_6e
    sget-object v3, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v5, 0x76

    aget-byte v5, v3, v5

    and-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    or-int/2addr v5, v7

    add-int/2addr v6, v5

    int-to-byte v5, v6

    const/16 v6, 0x84

    aget-byte v7, v3, v6

    int-to-byte v6, v7

    xor-int/lit16 v7, v6, 0x1b0

    and-int/lit16 v8, v6, 0x1b0

    or-int/2addr v7, v8

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aget-byte v6, v3, v26

    int-to-byte v6, v6

    const/16 v7, 0x142

    aget-byte v3, v3, v7

    int-to-byte v3, v3

    const/16 v7, 0x13a

    int-to-short v8, v7

    invoke-static {v6, v3, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_2e

    goto :goto_52

    :catchall_2e
    move-exception v0

    move-object v3, v0

    :try_start_6f
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_3e

    throw v4

    :cond_3e
    throw v3
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_6f} :catch_9
    .catchall {:try_start_6f .. :try_end_6f} :catchall_2c

    :catch_9
    move-exception v0

    :goto_52
    :try_start_70
    const-class v3, Lcom/mastercard/terminalsdk/internal/do;
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_40

    :try_start_71
    const-class v4, Ljava/lang/Class;

    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v6, 0x84

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    const/16 v7, 0x10

    aget-byte v8, v5, v7

    int-to-byte v7, v8

    xor-int/lit16 v8, v7, 0x18e

    and-int/lit16 v10, v7, 0x18e

    or-int/2addr v8, v10

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_71
    .catchall {:try_start_71 .. :try_end_71} :catchall_3e

    const/16 v4, 0x19

    :try_start_72
    aget-byte v4, v5, v4

    and-int/lit8 v6, v4, -0x1

    or-int/lit8 v4, v4, -0x1

    add-int/2addr v6, v4

    int-to-byte v4, v6

    const/16 v6, 0x23d

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    const/16 v7, 0x305

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const/16 v6, 0xae

    aget-byte v8, v5, v6

    int-to-byte v6, v8

    const/16 v8, 0x84

    aget-byte v10, v5, v8

    int-to-byte v8, v10

    const/16 v10, 0x349

    int-to-short v10, v10

    invoke-static {v6, v8, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_40

    const/16 v6, 0x142

    :try_start_73
    aget-byte v8, v5, v6
    :try_end_73
    .catchall {:try_start_73 .. :try_end_73} :catchall_3d

    int-to-byte v6, v8

    const/16 v8, 0x84

    :try_start_74
    aget-byte v13, v5, v8

    int-to-byte v8, v13

    const/16 v13, 0x202

    int-to-short v13, v13

    invoke-static {v6, v8, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_40

    :try_start_75
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    const/16 v2, 0xae

    aget-byte v8, v5, v2

    int-to-byte v2, v8

    const/16 v8, 0x84

    aget-byte v13, v5, v8

    int-to-byte v8, v13

    invoke-static {v2, v8, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v8, 0xe

    aget-byte v8, v5, v8

    int-to-byte v8, v8

    const/16 v10, 0x2e

    aget-byte v13, v5, v10

    int-to-byte v10, v13

    xor-int/lit8 v13, v10, 0x1a

    and-int/lit8 v14, v10, 0x1a

    or-int/2addr v13, v14

    int-to-short v13, v13

    invoke-static {v8, v10, v13}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    new-array v13, v10, [Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v2, v8, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_3c

    :try_start_76
    aput-object v2, v7, v14

    aput-object v3, v7, v10

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_40

    const/16 v4, 0x341

    :try_start_77
    aget-byte v4, v5, v4

    int-to-byte v4, v4

    const/16 v6, 0x23d

    aget-byte v7, v5, v6

    int-to-byte v6, v7

    const/16 v7, 0x2a2

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v6, 0x58

    aget-byte v6, v5, v6

    int-to-byte v6, v6

    int-to-byte v7, v6

    const/16 v8, 0xa1

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/16 v8, 0xb

    aget-byte v10, v5, v8

    int-to-byte v13, v10

    const/16 v14, 0x9

    aget-byte v15, v5, v14

    int-to-byte v14, v15

    int-to-short v10, v10

    invoke-static {v13, v14, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v13, 0x5

    aget-byte v14, v5, v13

    int-to-byte v14, v14

    const/16 v15, 0x9

    aget-byte v5, v5, v15

    int-to-byte v5, v5

    const/16 v15, 0x152

    int-to-short v15, v15

    invoke-static {v14, v5, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v14, Ljava/util/ArrayList;

    check-cast v7, Ljava/util/List;

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    invoke-static {v7, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_77} :catch_d
    .catchall {:try_start_77 .. :try_end_77} :catchall_40

    const/4 v8, 0x0

    :goto_53
    if-ge v8, v15, :cond_3f

    :try_start_78
    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v8, v11}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_78} :catch_a
    .catchall {:try_start_78 .. :try_end_78} :catchall_2c

    and-int/lit8 v11, v8, 0x1

    or-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v11

    const/4 v11, 0x3

    goto :goto_53

    :catch_a
    move-exception v0

    move-object v2, v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    goto/16 :goto_60

    :cond_3f
    :try_start_79
    invoke-virtual {v10, v4, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_79} :catch_d
    .catchall {:try_start_79 .. :try_end_79} :catchall_40

    :try_start_7a
    sget-object v3, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_40

    if-nez v3, :cond_40

    :try_start_7b
    sput-object v2, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    :cond_40
    move-object v3, v2

    :goto_54
    if-eqz v39, :cond_44

    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_2c

    const/16 v4, 0x142

    :try_start_7c
    aget-byte v5, v2, v4
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_33

    int-to-byte v4, v5

    const/16 v5, 0x23d

    :try_start_7d
    aget-byte v5, v2, v5

    int-to-byte v5, v5

    xor-int/lit16 v6, v5, 0x2ac

    and-int/lit16 v7, v5, 0x2ac

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x16

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x2c

    aget-byte v7, v2, v6

    int-to-byte v6, v7

    const/16 v7, 0xf3

    aget-byte v7, v2, v7

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v7, v8
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_2c

    const/16 v6, 0x142

    :try_start_7e
    aget-byte v8, v2, v6
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_32

    int-to-byte v6, v8

    const/16 v8, 0x84

    :try_start_7f
    aget-byte v10, v2, v8

    int-to-byte v8, v10

    const/16 v10, 0x202

    int-to-short v10, v10

    invoke-static {v6, v8, v10}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v35, v7, v6

    const-class v6, Lcom/mastercard/terminalsdk/internal/do;
    :try_end_7f
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2c

    :try_start_80
    const-class v8, Ljava/lang/Class;

    const/16 v10, 0x84

    aget-byte v11, v2, v10
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_31

    int-to-byte v10, v11

    const/16 v11, 0x10

    :try_start_81
    aget-byte v14, v2, v11

    int-to-byte v14, v14

    or-int/lit16 v15, v14, 0x18e

    int-to-short v15, v15

    invoke-static {v10, v14, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    invoke-virtual {v8, v10, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_81
    .catchall {:try_start_81 .. :try_end_81} :catchall_30

    const/4 v8, 0x1

    :try_start_82
    aput-object v6, v7, v8

    invoke-virtual {v5, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_2c

    if-eqz v5, :cond_41

    const/4 v6, 0x1

    goto :goto_55

    :cond_41
    const/4 v6, 0x0

    :goto_55
    packed-switch v6, :pswitch_data_12

    goto :goto_56

    :pswitch_11
    sget v6, Lcom/mastercard/terminalsdk/internal/do;->T:I

    or-int/lit8 v7, v6, 0x43

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    xor-int/lit8 v6, v6, 0x43

    sub-int/2addr v7, v6

    rem-int/lit16 v6, v7, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v6, 0x2

    rem-int/2addr v7, v6

    :try_start_83
    aget-byte v6, v2, v26
    :try_end_83
    .catchall {:try_start_83 .. :try_end_83} :catchall_2c

    int-to-byte v6, v6

    const/16 v7, 0x142

    :try_start_84
    aget-byte v2, v2, v7
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_2f

    int-to-byte v2, v2

    const/16 v7, 0x13a

    int-to-short v8, v7

    :try_start_85
    invoke-static {v6, v2, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2c

    goto :goto_56

    :catchall_2f
    move-exception v0

    move-object v2, v0

    move v10, v7

    goto/16 :goto_36

    :goto_56
    sget v2, Lcom/mastercard/terminalsdk/internal/do;->X:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v4, 0x2

    rem-int/2addr v2, v4

    if-eqz v2, :cond_42

    const/16 v8, 0x2c

    goto :goto_57

    :cond_42
    const/16 v8, 0x2d

    :goto_57
    packed-switch v8, :pswitch_data_13

    :pswitch_12
    move-object v2, v5

    const/16 v6, 0x2c

    goto :goto_59

    :catchall_30
    move-exception v0

    goto :goto_58

    :catchall_31
    move-exception v0

    const/16 v11, 0x10

    :goto_58
    move-object v2, v0

    :try_start_86
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_43

    throw v3

    :cond_43
    throw v2
    :try_end_86
    .catchall {:try_start_86 .. :try_end_86} :catchall_2c

    :catchall_32
    move-exception v0

    move-object v2, v0

    move v10, v6

    goto/16 :goto_36

    :catchall_33
    move-exception v0

    move-object v2, v0

    move v10, v4

    goto/16 :goto_36

    :cond_44
    const/16 v11, 0x10

    :try_start_87
    sget-object v2, Lcom/mastercard/terminalsdk/internal/do;->W:[B
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_40

    const/16 v4, 0x142

    :try_start_88
    aget-byte v5, v2, v4
    :try_end_88
    .catchall {:try_start_88 .. :try_end_88} :catchall_3a

    int-to-byte v4, v5

    const/16 v5, 0x84

    :try_start_89
    aget-byte v6, v2, v5

    int-to-byte v5, v6

    const/16 v6, 0x202

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x16

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x2c

    aget-byte v7, v2, v6

    int-to-byte v7, v7

    const/16 v8, 0xf3

    aget-byte v2, v2, v8

    int-to-short v2, v2

    invoke-static {v5, v7, v2}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v7, v10

    invoke-virtual {v4, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_40

    :try_start_8a
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v35, v4, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8a .. :try_end_8a} :catch_b
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2c

    goto :goto_59

    :catch_b
    move-exception v0

    move-object v2, v0

    :try_start_8b
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    throw v2
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8b .. :try_end_8b} :catch_c
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2c

    :catch_c
    move-exception v0

    const/4 v2, 0x0

    :goto_59
    if-eqz v2, :cond_49

    :try_start_8c
    check-cast v2, Ljava/lang/Class;

    sget-object v4, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v5, 0x1da

    aget-byte v5, v4, v5
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_40

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v7, 0x142

    :try_start_8d
    aget-byte v8, v4, v7
    :try_end_8d
    .catchall {:try_start_8d .. :try_end_8d} :catchall_39

    int-to-byte v7, v8

    const/16 v8, 0x250

    int-to-short v8, v8

    :try_start_8e
    invoke-static {v5, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v8, v10

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v5, v8, v10

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v8, 0x2

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v10, v8

    if-nez v39, :cond_45

    const/4 v3, 0x0

    goto :goto_5a

    :cond_45
    const/4 v3, 0x1

    :goto_5a
    packed-switch v3, :pswitch_data_14

    const/4 v3, 0x0

    goto :goto_5b

    :pswitch_13
    const/4 v3, 0x1

    :goto_5b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v10, v8

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sput-object v3, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;

    const/16 v3, 0x350

    new-array v3, v3, [B

    const-class v8, Lcom/mastercard/terminalsdk/internal/do;

    const/16 v10, 0xa0

    aget-byte v10, v4, v10

    int-to-byte v10, v10

    const/16 v14, 0x88

    aget-byte v14, v4, v14

    int-to-byte v14, v14

    xor-int/lit16 v15, v14, 0x130

    and-int/lit16 v5, v14, 0x130

    or-int/2addr v5, v15

    int-to-short v5, v5

    invoke-static {v10, v14, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_40

    const/4 v8, 0x1

    :try_start_8f
    new-array v10, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v10, v8

    const/16 v5, 0x3a

    aget-byte v8, v4, v5

    int-to-byte v5, v8

    const/16 v8, 0x84

    aget-byte v14, v4, v8

    int-to-byte v8, v14

    const/16 v14, 0x1d9

    int-to-short v14, v14

    invoke-static {v5, v8, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v8, 0x1

    new-array v15, v8, [Ljava/lang/Class;

    const/16 v8, 0xae

    aget-byte v6, v4, v8

    int-to-byte v6, v6

    const/16 v8, 0x84

    aget-byte v11, v4, v8

    int-to-byte v8, v11

    const/16 v11, 0x2e

    aget-byte v13, v4, v11

    int-to-short v11, v13

    invoke-static {v6, v8, v11}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v15, v8

    invoke-virtual {v5, v15}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_8f
    .catchall {:try_start_8f .. :try_end_8f} :catchall_38

    sget v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    xor-int/lit8 v8, v6, 0x11

    and-int/lit8 v6, v6, 0x11

    const/4 v10, 0x1

    shl-int/2addr v6, v10

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v6, 0x2

    rem-int/2addr v8, v6

    :try_start_90
    new-array v6, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v6, v8

    const/16 v8, 0x3a

    aget-byte v10, v4, v8

    int-to-byte v8, v10

    const/16 v10, 0x84

    aget-byte v11, v4, v10

    int-to-byte v10, v11

    invoke-static {v8, v10, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/16 v10, 0x16

    aget-byte v10, v4, v10
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_37

    int-to-byte v10, v10

    const/16 v11, 0x15

    :try_start_91
    aget-byte v13, v4, v11

    int-to-byte v13, v13

    const/16 v15, 0x2e2

    int-to-short v15, v15

    invoke-static {v10, v13, v15}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x1

    new-array v15, v13, [Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v1, v15, v13

    invoke-virtual {v8, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_91
    .catchall {:try_start_91 .. :try_end_91} :catchall_36

    sget v6, Lcom/mastercard/terminalsdk/internal/do;->X:I

    and-int/lit8 v8, v6, 0x45

    or-int/lit8 v6, v6, 0x45

    add-int/2addr v8, v6

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lcom/mastercard/terminalsdk/internal/do;->T:I

    const/4 v6, 0x2

    rem-int/2addr v8, v6

    const/16 v6, 0x3a

    :try_start_92
    aget-byte v8, v4, v6

    int-to-byte v6, v8

    const/16 v8, 0x84

    aget-byte v10, v4, v8

    int-to-byte v8, v10

    invoke-static {v6, v8, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aget-byte v8, v4, v26
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_35

    int-to-byte v8, v8

    const/16 v10, 0x142

    :try_start_93
    aget-byte v4, v4, v10

    int-to-byte v4, v4

    const/16 v13, 0x13a

    int-to-short v14, v13

    invoke-static {v8, v4, v14}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_34

    :try_start_94
    invoke-static/range {v44 .. v44}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object v6, v2

    move v10, v4

    move v14, v9

    move-object/from16 v13, v37

    move/from16 v11, v39

    const/16 v5, 0x328

    move-object v4, v3

    move-object v3, v12

    goto/16 :goto_38

    :catchall_34
    move-exception v0

    goto :goto_5c

    :catchall_35
    move-exception v0

    const/16 v10, 0x142

    :goto_5c
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_46

    throw v3

    :cond_46
    throw v2

    :catchall_36
    move-exception v0

    const/16 v10, 0x142

    goto :goto_5d

    :catchall_37
    move-exception v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    :goto_5d
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_47

    throw v3

    :cond_47
    throw v2

    :catchall_38
    move-exception v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_48

    throw v3

    :cond_48
    throw v2

    :catchall_39
    move-exception v0

    move v10, v7

    goto/16 :goto_67

    :cond_49
    const/16 v10, 0x142

    const/16 v11, 0x15

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v2, v4, v5

    move-object/from16 v2, v38

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v5, v4

    if-nez v39, :cond_4a

    const/16 v3, 0x1d

    goto :goto_5e

    :cond_4a
    const/16 v3, 0x29

    :goto_5e
    packed-switch v3, :pswitch_data_15

    const/4 v3, 0x0

    goto :goto_5f

    :pswitch_14
    const/4 v3, 0x1

    :goto_5f
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/16 v5, 0x3a

    const/16 v6, 0x84

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_74

    :catchall_3a
    move-exception v0

    move v10, v4

    goto/16 :goto_67

    :catch_d
    move-exception v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    :goto_60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    aget-byte v6, v5, v26

    int-to-byte v6, v6

    const/16 v7, 0x34

    aget-byte v7, v5, v7

    int-to-byte v7, v7

    const/16 v8, 0x254

    int-to-short v8, v8

    invoke-static {v6, v7, v8}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    aget-byte v4, v5, v4

    int-to-byte v4, v4

    xor-int/lit8 v6, v4, 0x4e

    and-int/lit8 v7, v4, 0x4e

    or-int/2addr v6, v7

    int-to-byte v6, v6

    const/16 v7, 0x2bf

    int-to-short v7, v7

    invoke-static {v4, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_94
    .catchall {:try_start_94 .. :try_end_94} :catchall_54

    const/4 v4, 0x2

    :try_start_95
    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x0

    aput-object v3, v6, v2

    const/16 v2, 0xae

    aget-byte v3, v5, v2

    int-to-byte v2, v3

    const/16 v3, 0x84

    aget-byte v4, v5, v3

    int-to-byte v3, v4

    const/16 v4, 0xb3

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const-class v3, Ljava/lang/Throwable;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_3b

    :catchall_3b
    move-exception v0

    move-object v2, v0

    :try_start_96
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4b

    throw v3

    :cond_4b
    throw v2

    :catchall_3c
    move-exception v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4c

    throw v3

    :cond_4c
    throw v2

    :catchall_3d
    move-exception v0

    move v10, v6

    goto/16 :goto_67

    :catchall_3e
    move-exception v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4d

    throw v3

    :cond_4d
    throw v2

    :catchall_3f
    move-exception v0

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4e

    throw v3

    :cond_4e
    throw v2

    :catchall_40
    move-exception v0

    goto/16 :goto_66

    :catchall_41
    move-exception v0

    move v11, v13

    move v9, v14

    const/16 v10, 0x142

    goto :goto_61

    :catchall_42
    move-exception v0

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    :goto_61
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4f

    throw v3

    :cond_4f
    throw v2

    :catchall_43
    move-exception v0

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_50

    throw v3

    :cond_50
    throw v2

    :catchall_44
    move-exception v0

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_51

    throw v3

    :cond_51
    throw v2

    :catchall_45
    move-exception v0

    goto/16 :goto_65

    :catchall_46
    move-exception v0

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_52

    throw v3

    :cond_52
    throw v2

    :catchall_47
    move-exception v0

    move v10, v3

    move v9, v14

    goto :goto_62

    :catchall_48
    move-exception v0

    move v9, v14

    const/16 v10, 0x142

    :goto_62
    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_53

    throw v3

    :cond_53
    throw v2

    :catchall_49
    move-exception v0

    move-object v12, v3

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_54

    throw v3

    :cond_54
    throw v2

    :catchall_4a
    move-exception v0

    move-object v12, v3

    move v10, v8

    move v9, v14

    goto :goto_63

    :catchall_4b
    move-exception v0

    move-object v12, v3

    move v9, v14

    const/16 v10, 0x142

    :goto_63
    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_55

    throw v3

    :cond_55
    throw v2

    :catchall_4c
    move-exception v0

    move-object v12, v3

    move v11, v9

    move v9, v14

    const/16 v10, 0x142

    goto :goto_64

    :catchall_4d
    move-exception v0

    move-object v12, v3

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    :goto_64
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_56

    throw v3

    :cond_56
    throw v2

    :catchall_4e
    move-exception v0

    move-object v12, v3

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_57

    throw v3

    :cond_57
    throw v2

    :catchall_4f
    move-exception v0

    move-object v12, v3

    :goto_65
    move v9, v14

    :goto_66
    const/16 v10, 0x142

    :goto_67
    const/16 v11, 0x15

    goto/16 :goto_6b

    :cond_58
    move/from16 v36, v4

    goto :goto_6a

    :catchall_50
    move-exception v0

    move/from16 v36, v4

    goto :goto_68

    :catchall_51
    move-exception v0

    move/from16 v36, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    move v9, v14

    move/from16 v10, v17

    goto :goto_69

    :catchall_52
    move-exception v0

    move/from16 v36, v4

    move-object/from16 v25, v5

    :goto_68
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    move v9, v14

    const/16 v10, 0x142

    :goto_69
    const/16 v11, 0x15

    move-object v12, v3

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_59

    throw v3

    :cond_59
    throw v2

    :cond_5a
    move/from16 v36, v4

    move-object/from16 v25, v5

    :goto_6a
    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    move v9, v14

    const/16 v10, 0x142

    const/16 v11, 0x15

    move-object v12, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    aget-byte v4, v3, v26

    int-to-byte v4, v4

    const/16 v5, 0x34

    aget-byte v5, v3, v5

    int-to-byte v5, v5

    const/16 v6, 0x25c

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2e

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    xor-int/lit8 v5, v4, 0x4e

    and-int/lit8 v6, v4, 0x4e

    or-int/2addr v5, v6

    int-to-byte v5, v5

    const/16 v6, 0x2bf

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_96
    .catchall {:try_start_96 .. :try_end_96} :catchall_54

    const/4 v4, 0x1

    :try_start_97
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v5, v4

    const/16 v2, 0xae

    aget-byte v4, v3, v2

    int-to-byte v2, v4

    const/16 v4, 0x84

    aget-byte v3, v3, v4

    int-to-byte v3, v3

    const/16 v4, 0xb3

    int-to-short v4, v4

    invoke-static {v2, v3, v4}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_53

    :catchall_53
    move-exception v0

    move-object v2, v0

    :try_start_98
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5b

    throw v3

    :cond_5b
    throw v2
    :try_end_98
    .catchall {:try_start_98 .. :try_end_98} :catchall_54

    :catchall_54
    move-exception v0

    goto :goto_6b

    :catchall_55
    move-exception v0

    move/from16 v36, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    move v11, v13

    move v9, v14

    const/16 v10, 0x142

    move-object v12, v3

    :goto_6b
    move-object v2, v0

    :goto_6c
    xor-int/lit8 v3, v36, 0x1

    and-int/lit8 v4, v36, 0x1

    const/4 v5, 0x1

    shl-int/2addr v4, v5

    add-int/2addr v3, v4

    :goto_6d
    const/16 v4, 0x9

    if-ge v3, v4, :cond_5c

    const/16 v5, 0x2b

    goto :goto_6e

    :cond_5c
    const/4 v5, 0x5

    :goto_6e
    packed-switch v5, :pswitch_data_16

    :pswitch_15
    const/4 v3, 0x0

    goto :goto_70

    :pswitch_16
    :try_start_99
    aget-boolean v5, v32, v3
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_99} :catch_e

    if-eqz v5, :cond_5e

    sget v3, Lcom/mastercard/terminalsdk/internal/do;->T:I

    xor-int/lit8 v5, v3, 0x2b

    and-int/lit8 v3, v3, 0x2b

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v3, 0x2

    rem-int/2addr v5, v3

    if-nez v5, :cond_5d

    const/16 v3, 0x50

    goto :goto_6f

    :cond_5d
    const/16 v3, 0x44

    :goto_6f
    packed-switch v3, :pswitch_data_17

    const/4 v3, 0x1

    goto :goto_70

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    :goto_70
    if-nez v3, :cond_5f

    const/4 v3, 0x1

    goto :goto_71

    :cond_5f
    const/4 v3, 0x0

    :goto_71
    packed-switch v3, :pswitch_data_18

    :try_start_9a
    sget-object v1, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v5, 0x3a

    goto :goto_72

    :pswitch_17
    const/4 v3, 0x0

    sput-object v3, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;

    sput-object v3, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v5, 0x3a

    const/16 v6, 0x84

    const/4 v7, 0x0

    goto/16 :goto_73

    :goto_72
    aget-byte v3, v1, v5

    int-to-byte v3, v3

    const/16 v4, 0x34

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    xor-int/lit16 v5, v4, 0x240

    and-int/lit16 v6, v4, 0x240

    or-int/2addr v5, v6

    int-to-short v5, v5

    invoke-static {v3, v4, v5}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v3
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9a} :catch_e

    const/4 v4, 0x2

    :try_start_9b
    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v2, v5, v4

    const/4 v2, 0x0

    aput-object v3, v5, v2

    const/16 v2, 0xae

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v6, 0x84

    aget-byte v1, v1, v6

    int-to-byte v1, v1

    const/16 v3, 0xb3

    int-to-short v3, v3

    invoke-static {v2, v1, v3}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_9b
    .catchall {:try_start_9b .. :try_end_9b} :catchall_56

    :catchall_56
    move-exception v0

    move-object v1, v0

    :try_start_9c
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_60

    throw v2

    :cond_60
    throw v1

    :cond_61
    move/from16 v36, v4

    move-object/from16 v25, v5

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v12

    move v11, v13

    move v9, v14

    const/16 v4, 0x9

    const/16 v5, 0x3a

    const/16 v6, 0x84

    const/16 v10, 0x142

    move v7, v2

    move-object v12, v3

    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_73
    move/from16 v8, v30

    :goto_74
    or-int/lit8 v13, v36, -0x5

    const/4 v14, 0x1

    shl-int/2addr v13, v14

    xor-int/lit8 v15, v36, -0x5

    sub-int/2addr v13, v15

    or-int/lit8 v15, v13, 0x6

    shl-int/2addr v15, v14

    const/16 v16, 0x6

    xor-int/lit8 v13, v13, 0x6

    sub-int v13, v15, v13

    move v2, v7

    move v14, v9

    move-object v3, v12

    move v4, v13

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    move-object/from16 v7, v28

    move-object/from16 v12, v31

    move-object/from16 v9, v32

    move v13, v11

    goto/16 :goto_17

    :cond_62
    :pswitch_18
    return-void

    :catchall_57
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_63

    throw v2

    :cond_63
    throw v1

    :catchall_58
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_64

    throw v2

    :cond_64
    throw v1
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_9c} :catch_e

    :catch_e
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x49
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x14
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_18
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x53
        :pswitch_8
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x5
        :pswitch_9
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x15
        :pswitch_a
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_c
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x3e
        :pswitch_d
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x0
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
    .packed-switch 0x1
        :pswitch_11
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x2c
        :pswitch_12
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x1d
        :pswitch_14
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x2b
        :pswitch_16
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x50
        :pswitch_15
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

.method public static a(Ljava/lang/Object;)I
    .locals 7

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 v1, v0, 0x3a

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x3a

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v1, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;

    and-int/lit8 v3, v0, 0x3b

    or-int/lit8 v0, v0, 0x3b

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v3, v3, 0x2

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    sget-object p0, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v4, 0x1da

    aget-byte v4, p0, v4

    neg-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x142

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    or-int/lit16 v6, v5, 0x10b

    int-to-short v6, v6

    invoke-static {v4, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {v4, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const/16 v5, 0x2e

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x2d

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    const/16 v6, 0x129

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object p0

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-virtual {v4, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    add-int/lit8 v0, v0, 0x68

    sub-int/2addr v0, v2

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0

    :goto_1
    const/4 p0, 0x0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method

.method public static d(I)I
    .locals 8

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    add-int/lit8 v1, v0, 0x32

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x48

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    add-int/lit8 v0, v0, 0x68

    sub-int/2addr v0, v2

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/lit8 v0, v0, 0x2

    :try_start_1
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v0, v4

    sget-object p0, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 v5, 0x1da

    aget-byte v5, p0, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x142

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    or-int/lit16 v7, v6, 0x10b

    int-to-short v7, v7

    invoke-static {v5, v6, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    check-cast v6, Ljava/lang/ClassLoader;

    invoke-static {v5, v2, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const/16 v6, 0x2e

    aget-byte v6, p0, v6

    int-to-byte v6, v6

    const/16 v7, 0xae

    aget-byte p0, p0, v7

    int-to-byte p0, p0

    sget v7, Lcom/mastercard/terminalsdk/internal/do;->V:I

    or-int/lit16 v7, v7, 0x82

    int-to-short v7, v7

    invoke-static {v6, p0, v7}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object p0

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v5, p0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->T:I

    or-int/lit8 v1, v0, 0xb

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0xb

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    move v2, v4

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return p0

    :goto_2
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static d(IIC)Ljava/lang/Object;
    .locals 8

    sget v0, Lcom/mastercard/terminalsdk/internal/do;->T:I

    or-int/lit8 v1, v0, 0x29

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x29

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    const/4 v3, 0x2

    rem-int/2addr v1, v3

    if-nez v1, :cond_0

    const/16 v1, 0x51

    goto :goto_0

    :cond_0
    const/16 v1, 0x2c

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/mastercard/terminalsdk/internal/do;->Q:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    or-int/lit8 v4, v0, 0x6b

    shl-int/2addr v4, v2

    xor-int/lit8 v0, v0, 0x6b

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->T:I

    rem-int/2addr v4, v3

    const/4 v0, 0x3

    :try_start_1
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

    sget-object p0, Lcom/mastercard/terminalsdk/internal/do;->W:[B

    const/16 p2, 0x1da

    aget-byte p2, p0, p2

    neg-int p2, p2

    int-to-byte p2, p2

    const/16 v5, 0x142

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    or-int/lit16 v6, v5, 0x10b

    int-to-short v6, v6

    invoke-static {p2, v5, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Lcom/mastercard/terminalsdk/internal/do;->O:Ljava/lang/Object;

    check-cast v5, Ljava/lang/ClassLoader;

    invoke-static {p2, v2, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const/16 v5, 0x2e

    aget-byte v5, p0, v5

    int-to-byte v5, v5

    const/16 v6, 0x23d

    aget-byte p0, p0, v6

    int-to-byte p0, p0

    xor-int/lit16 v6, p0, 0x10c

    and-int/lit16 v7, p0, 0x10c

    or-int/2addr v6, v7

    int-to-short v6, v6

    invoke-static {v5, p0, v6}, Lcom/mastercard/terminalsdk/internal/do;->$$c(BBS)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, p1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v3

    invoke-virtual {p2, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    sget p2, Lcom/mastercard/terminalsdk/internal/do;->T:I

    add-int/lit8 p2, p2, 0x54

    sub-int/2addr p2, v2

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lcom/mastercard/terminalsdk/internal/do;->X:I

    rem-int/2addr p2, v3

    if-nez p2, :cond_1

    const/16 p2, 0x18

    goto :goto_2

    :cond_1
    const/16 p2, 0x5a

    :goto_2
    packed-switch p2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object p0

    :goto_3
    const/16 p2, 0x4b

    :try_start_2
    div-int/2addr p2, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    throw p1

    :cond_2
    throw p0

    :pswitch_data_0
    .packed-switch 0x51
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_1
    .end packed-switch
.end method
