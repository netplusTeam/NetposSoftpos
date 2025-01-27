.class public final enum Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mastercard/terminalsdk/emv/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SourceSignal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACT:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

.field public static final enum DET:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

.field public static final enum K:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

.field public static final enum RA:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

.field private static final synthetic a:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

.field private static b:C

.field private static c:C

.field private static d:C

.field private static e:C

.field private static f:I

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    sput v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    const/4 v1, 0x1

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    invoke-static {}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->b()V

    new-instance v2, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const-string/jumbo v3, "\u8c8a\u6f0e\uc80b\ub96e"

    invoke-static {v3}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->ACT:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    new-instance v3, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const-string/jumbo v4, "\u09f6\u7920"

    invoke-static {v4}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->K:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    new-instance v4, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const-string/jumbo v5, "\ucc3c\uba5a\ua621\u12a5"

    invoke-static {v5}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->RA:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    new-instance v5, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const-string/jumbo v7, "\ucfc5\u2843\u9b2d\u8913"

    invoke-static {v7}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->DET:Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    aput-object v2, v7, v0

    aput-object v3, v7, v1

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->a:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    sget v2, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    add-int/lit8 v2, v2, 0xf

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    rem-int/2addr v2, v6

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
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

    :pswitch_data_0
    .packed-switch 0x0
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

.method static b()V
    .locals 1

    const v0, 0xfbab

    sput-char v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->e:C

    const/16 v0, 0x64f6

    sput-char v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->b:C

    const v0, 0xac3f

    sput-char v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->c:C

    const/16 v0, 0x6826

    sput-char v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->d:C

    return-void
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_1
    check-cast p0, [C

    array-length v3, p0

    new-array v3, v3, [C

    new-array v4, v1, [C

    move v5, v0

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_1

    const/16 v6, 0x3e

    goto :goto_3

    :cond_1
    const/16 v6, 0x35

    :goto_3
    packed-switch v6, :pswitch_data_1

    aget-char p0, v3, v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_1
    sget v6, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    add-int/lit8 v6, v6, 0x39

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    rem-int/2addr v6, v1

    aget-char v6, p0, v5

    aput-char v6, v4, v0

    add-int/lit8 v6, v5, 0x1

    aget-char v7, p0, v6

    aput-char v7, v4, v2

    sget-char v7, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->c:C

    sget-char v8, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->b:C

    sget-char v9, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->d:C

    sget-char v10, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->e:C

    invoke-static {v4, v7, v8, v9, v10}, Lcom/mastercard/terminalsdk/internal/n;->b([CCCCC)V

    aget-char v7, v4, v0

    aput-char v7, v3, v5

    aget-char v7, v4, v2

    aput-char v7, v3, v6

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;
    .locals 3

    const-class v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x22

    goto :goto_0

    :cond_0
    const/16 v1, 0x4e

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x2b

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;
    .locals 3

    sget v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->a:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->a:[Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    invoke-virtual {v0}, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;

    sget v1, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->f:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/mastercard/terminalsdk/emv/Tag$SourceSignal;->g:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method
