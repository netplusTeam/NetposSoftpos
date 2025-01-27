.class public Lcom/dspread/xpos/u;
.super Ljava/lang/Object;
.source "DspMConfig.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:Ljava/lang/String;

.field private static n:Z

.field private static o:Z

.field private static p:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    sput-object v0, Lcom/dspread/xpos/u;->c:Landroid/content/Context;

    .line 4
    const-string v0, ""

    sput-object v0, Lcom/dspread/xpos/u;->d:Ljava/lang/String;

    .line 5
    sput-object v0, Lcom/dspread/xpos/u;->e:Ljava/lang/String;

    .line 6
    sput-object v0, Lcom/dspread/xpos/u;->f:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/dspread/xpos/u;->g:Ljava/lang/String;

    .line 8
    sput-object v0, Lcom/dspread/xpos/u;->h:Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/dspread/xpos/u;->i:Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/dspread/xpos/u;->j:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/dspread/xpos/u;->k:Ljava/lang/String;

    .line 12
    const/4 v1, 0x0

    sput-boolean v1, Lcom/dspread/xpos/u;->l:Z

    .line 13
    sput-object v0, Lcom/dspread/xpos/u;->m:Ljava/lang/String;

    .line 14
    sput-boolean v1, Lcom/dspread/xpos/u;->n:Z

    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dspread/xpos/u;->o:Z

    .line 18
    const/4 v2, 0x4

    new-array v2, v2, [[B

    const/16 v3, 0xa

    new-array v4, v3, [B

    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const/4 v1, 0x2

    aput-object v0, v2, v1

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    sput-object v2, Lcom/dspread/xpos/u;->p:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x9t
        0x1t
        0x12t
        0x1t
        0x0t
        0x7ft
        0x20t
        0x2t
        0x9t
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x9t
        0x1t
        0x12t
        0x1t
        0x0t
        0x3t
        0x3t
        0x2t
        0x9t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x9t
        0x1t
        0x12t
        0x1t
        0x1t
        0x7ft
        0x7ft
        0x2t
        0x9t
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x12t
        0x1t
        0x24t
        0x1t
        0x0t
        0x7ft
        0x7ft
        0x4t
        0x12t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phone brand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",model: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 5
    sput-object p0, Lcom/dspread/xpos/u;->c:Landroid/content/Context;

    .line 6
    sput-object p1, Lcom/dspread/xpos/u;->f:Ljava/lang/String;

    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/dspread/xpos/u;->e:Ljava/lang/String;

    return-void
.end method

.method protected static a(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/dspread/xpos/u;->o:Z

    return-void
.end method

.method protected static b()Ljava/util/Hashtable;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "UOOGOU"

    const-string v1, "huawei"

    const-string/jumbo v2, "samsung"

    .line 3
    const/4 v3, 0x3

    const/16 v4, 0x1f4

    const/16 v5, 0x14

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x1

    const/16 v9, 0x32

    const/16 v10, 0xc8

    const/4 v11, 0x2

    :try_start_0
    sget-object v12, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "alps"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "QDB_E11"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/16 v4, 0x640

    move v3, v8

    move v8, v11

    goto/16 :goto_1

    .line 7
    :cond_0
    sget-object v12, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-object v12, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v13, "SM-N9109W"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v3, v6

    move v5, v7

    move v8, v11

    goto/16 :goto_1

    .line 11
    :cond_1
    sget-object v12, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string v13, "htc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    sget-object v12, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v13, "HTC 802t"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_2
    sget-object v12, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    sget-object v12, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v13, "HUAWEI P7"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    sget-object v12, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v12, "PE-TL"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v3, v6

    move v4, v10

    move v8, v11

    goto/16 :goto_1

    .line 18
    :cond_5
    sget-object v1, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v6

    move v5, v7

    move v4, v10

    goto/16 :goto_1

    .line 24
    :cond_6
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    const-string v1, "Honor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v1, "Che1-CL20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_7
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    const-string v1, "Huawei"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v1, "C8817D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    .line 31
    :cond_8
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v1, "SM-G5308W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v1, "SM-A5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_0

    .line 38
    :cond_a
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v1, "201"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    :cond_b
    :goto_0
    move v5, v9

    move v4, v10

    move v8, v11

    goto :goto_1

    .line 44
    :cond_c
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    const-string v1, "docomo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v1, "SO-03F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    const-string/jumbo v0, "sony*****"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 47
    invoke-static {v6}, Lcom/dspread/xpos/u;->a(Z)V

    move v5, v9

    move v4, v10

    goto :goto_1

    .line 54
    :cond_d
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM-N9008"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_e

    move v3, v6

    move v5, v7

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_e
    move v3, v6

    move v5, v9

    move v4, v10

    move v8, v11

    .line 68
    :goto_1
    invoke-static {}, Lcom/dspread/xpos/u;->i()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    invoke-static {}, Lcom/dspread/xpos/u;->h()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 70
    invoke-static {}, Lcom/dspread/xpos/A01Kernel;->a()Lcom/dspread/xpos/A01Kernel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dspread/xpos/A01Kernel;->java_get_jni_version()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/u;->g:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/dspread/xpos/z;

    invoke-direct {v0}, Lcom/dspread/xpos/z;-><init>()V

    .line 72
    sget-object v1, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->b(Ljava/lang/String;)V

    .line 73
    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->g(Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/dspread/xpos/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->c(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/dspread/xpos/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->a(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/dspread/xpos/u;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->i(Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->k(Ljava/lang/String;)V

    .line 79
    sget-boolean v1, Lcom/dspread/xpos/u;->l:Z

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->a(Z)V

    .line 80
    sget-object v1, Lcom/dspread/xpos/u;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->h(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/dspread/xpos/u;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->d(Ljava/lang/String;)V

    .line 82
    sget-object v1, Lcom/dspread/xpos/u;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->e(Ljava/lang/String;)V

    .line 83
    sget-object v1, Lcom/dspread/xpos/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->f(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/dspread/xpos/u;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/z;->j(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    :cond_f
    sget-object v0, Lcom/dspread/xpos/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 91
    invoke-static {}, Lcom/dspread/xpos/u;->j()Z

    .line 94
    :cond_10
    sget-object v0, Lcom/dspread/xpos/u;->p:[[B

    aget-object v0, v0, v3

    .line 96
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "audio_decode_config_index"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "PLAY_BUF_SIZE_COO"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "positive"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "negatvie"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/dspread/xpos/u;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "audioControl"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v2, "paras"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected static b(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dspread/xpos/u;->k:Ljava/lang/String;

    return-void
.end method

.method protected static b(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/dspread/xpos/u;->l:Z

    return-void
.end method

.method protected static c()Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected static c(Ljava/lang/String;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/dspread/xpos/u;->i:Ljava/lang/String;

    return-void
.end method

.method protected static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/dspread/xpos/u;->n:Z

    return-void
.end method

.method private static d()I
    .locals 6

    .line 2
    sget-object v0, Lcom/dspread/xpos/u;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-nez v0, :cond_1

    sget-object v0, Lcom/dspread/xpos/u;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_9

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MOTO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "MOTO_RTEU"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    .line 105
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "motorola"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    .line 107
    :cond_2
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "google"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 109
    :cond_3
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "samsung"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 110
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "OMAP_SS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 112
    :cond_4
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "GT-N7000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_3

    .line 114
    :cond_5
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "GT-N7100"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_4

    .line 116
    :cond_6
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "GT-S5570"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_2

    .line 118
    :cond_7
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "SM-N9008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    .line 120
    :cond_8
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "SM-N9109W"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_3

    .line 132
    :cond_9
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ZTE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 133
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "ZTE U970"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_5

    .line 135
    :cond_a
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "ZTE U930"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_5

    .line 110
    :cond_b
    :goto_1
    const/4 v0, 0x6

    goto/16 :goto_6

    .line 140
    :cond_c
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "LENOVO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "Lenovo A366t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_4

    .line 143
    :cond_d
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "Lenovo A66t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_3

    .line 148
    :cond_e
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "coolpad"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 149
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "Coolpad W706"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_3

    .line 155
    :cond_f
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "alps"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_3

    .line 157
    :cond_10
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "xiaomi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 158
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "MI 1S"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    goto :goto_3

    .line 164
    :cond_11
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "lge"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 116
    :goto_2
    goto :goto_4

    .line 169
    :cond_12
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "huawei"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 170
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "PE-TL20"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 143
    :cond_13
    const/16 v0, 0x9

    goto :goto_6

    .line 175
    :cond_14
    sget-object v0, Lcom/dspread/xpos/u;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "honor"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 176
    sget-object v0, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "Che1-CL20"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 107
    :goto_3
    move v0, v2

    goto :goto_6

    .line 141
    :cond_15
    :goto_4
    move v0, v1

    goto :goto_6

    .line 176
    :cond_16
    :goto_5
    move v0, v3

    .line 190
    :goto_6
    sget-object v4, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v5, "U9200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_7

    .line 192
    :cond_17
    sget-object v4, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v5, "LG-P970"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_9

    .line 194
    :cond_18
    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "HUAWEI T8600"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_8

    .line 196
    :cond_19
    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v4, "C8500"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 190
    :goto_7
    move v1, v2

    goto :goto_9

    .line 198
    :cond_1a
    sget-object v1, Lcom/dspread/xpos/u;->a:Ljava/lang/String;

    const-string v2, "MT887"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 194
    :goto_8
    move v1, v3

    goto :goto_9

    .line 198
    :cond_1b
    move v1, v0

    :goto_9
    return v1
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dspread/xpos/u;->h:Ljava/lang/String;

    return-void
.end method

.method protected static e(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dspread/xpos/u;->m:Ljava/lang/String;

    return-void
.end method

.method protected static f()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/u;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected static g()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/u;->o:Z

    return v0
.end method

.method protected static h()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/dspread/xpos/u;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v0, Lcom/dspread/xpos/u;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    .line 10
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    return v1

    .line 19
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    array-length v2, v0

    if-lez v2, :cond_4

    move v2, v1

    .line 23
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_4

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "===\u72b6\u6001==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "===\u7c7b\u578b==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    .line 28
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method protected static i()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/u;->n:Z

    return v0
.end method

.method protected static j()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/dspread/xpos/u;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_0
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 8
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 9
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 11
    invoke-static {}, Lcom/dspread/xpos/u;->d()I

    move-result v4

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max volume = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ,need set volume = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/2addr v2, v4

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",factor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    if-eq v4, v3, :cond_1

    const/4 v3, 0x4

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected e()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/dspread/xpos/u;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    .line 8
    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 16
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callState"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataActivity()I

    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataActivity"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    .line 42
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataState"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceId"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deviceSoftwareVersion"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "line1Number"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    .line 62
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    .line 64
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    .line 65
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    .line 66
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getPsc()I

    .line 68
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkCountryIso"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkOperator"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkOperatorName"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 95
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "networkTyp"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    .line 104
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "phoneType"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simCountryIso"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simOperator"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simOperatorName"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simSerialNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 127
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "simState"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "subscriberId"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "voiceMailAlphaTag"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "voiceMailNumber"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 138
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hasIccCard"

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    .line 141
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "isNetworkRoaming"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method
