.class public Lcom/visa/app/ttpkernel/Version;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I

.field private static final version:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/Version;->getTerminalData:I

    const/4 v1, 0x1

    sput v1, Lcom/visa/app/ttpkernel/Version;->ContactlessConfiguration:I

    const/4 v2, 0x2

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    sput-object v3, Lcom/visa/app/ttpkernel/Version;->version:[B

    add-int/lit8 v3, v1, 0x77

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/app/ttpkernel/Version;->getTerminalData:I

    rem-int/2addr v3, v2

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x2t
        0x10t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion()[B
    .locals 3

    .line 9
    sget v0, Lcom/visa/app/ttpkernel/Version;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/Version;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    sget-object v1, Lcom/visa/app/ttpkernel/Version;->version:[B

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/app/ttpkernel/Version;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method
