.class public final enum Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/utility/PINUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PINFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

.field public static final enum ISO_Format0:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

.field public static final enum ISO_Format1:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

.field public static final enum ISO_Format2:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

.field public static final enum ISO_Format3:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

.field private static c:I

.field private static d:I

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    invoke-static {}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c()V

    new-instance v2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    const-string/jumbo v3, "\uffd6\u001a\u0007\u0013\u0018\u0015\uffec\u0005\ufff5\ufff9\uffef"

    const/16 v4, 0xb

    const/16 v5, 0xcc

    invoke-static {v1, v3, v4, v4, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->a(ZLjava/lang/String;III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ISO_Format0:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    new-instance v3, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    const-string v6, "\u0018\u0015\uffec\u0005\ufff5\ufff9\uffef\uffd7\u001a\u0007\u0013"

    const/4 v7, 0x7

    invoke-static {v1, v6, v7, v4, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->a(ZLjava/lang/String;III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v1}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ISO_Format1:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    new-instance v6, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    const/4 v8, 0x5

    const-string v9, "\u0018\u0013\u0007\u001a\uffd8\uffef\ufff9\ufff5\u0005\uffec\u0015"

    invoke-static {v0, v9, v8, v4, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->a(ZLjava/lang/String;III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ISO_Format2:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    new-instance v8, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    const-string/jumbo v10, "\uffec\u0015\u0018\u0013\u0007\u001a\uffd9\uffef\ufff9\ufff5\u0005"

    invoke-static {v0, v10, v7, v4, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->a(ZLjava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v8, v4, v5}, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->ISO_Format3:Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    const/4 v4, 0x4

    new-array v4, v4, [Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    aput-object v2, v4, v0

    aput-object v3, v4, v1

    aput-object v6, v4, v9

    aput-object v8, v4, v5

    sput-object v4, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->$VALUES:[Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    sget v1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    rem-int/2addr v1, v9

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v1, 0x56

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x16
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

.method private static a(ZLjava/lang/String;III)Ljava/lang/String;
    .locals 6

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :goto_1
    check-cast p1, [C

    new-array v2, p3, [C

    move v3, v1

    :goto_2
    if-ge v3, p3, :cond_1

    aget-char v4, p1, v3

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v2, v3

    sget v5, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->d:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    if-lez p2, :cond_2

    const/16 p1, 0x32

    goto :goto_3

    :cond_2
    const/16 p1, 0x52

    :goto_3
    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    rem-int/lit8 p1, p1, 0x2

    new-array p1, p3, [C

    invoke-static {v2, v1, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int p4, p3, p2

    invoke-static {p1, v1, v2, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, p2, v2, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    add-int/lit8 p1, p1, 0x2f

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    rem-int/lit8 p1, p1, 0x2

    :goto_4
    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_5

    :cond_3
    move p0, v0

    :goto_5
    packed-switch p0, :pswitch_data_2

    new-array p0, p3, [C

    move p1, v1

    :goto_6
    if-ge p1, p3, :cond_5

    sget p2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    add-int/lit8 p2, p2, 0x3b

    rem-int/lit16 p4, p2, 0x80

    sput p4, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    move p2, v0

    goto :goto_7

    :cond_4
    move p2, v1

    :goto_7
    packed-switch p2, :pswitch_data_3

    shl-int p2, p3, p1

    add-int/2addr p2, v1

    aget-char p2, v2, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x3a

    goto :goto_6

    :pswitch_2
    sub-int p2, p3, p1

    sub-int/2addr p2, v0

    aget-char p2, v2, p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_5
    sget p1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/16 p1, 0x17

    goto :goto_8

    :cond_6
    const/16 p1, 0x21

    :goto_8
    packed-switch p1, :pswitch_data_4

    :pswitch_3
    move-object v2, p0

    :pswitch_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x21
        :pswitch_3
    .end packed-switch
.end method

.method static c()V
    .locals 1

    const/16 v0, 0x72

    sput v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const-class v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v1, 0x38

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/16 v0, 0x61

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    rem-int/lit8 v0, v0, 0x2

    sget-object v0, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->$VALUES:[Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;

    sget v1, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->e:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/utility/PINUtility$PINFormat;->c:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
