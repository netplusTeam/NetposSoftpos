.class public final enum Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;",
        ">;"
    }
.end annotation


# static fields
.field private static $$a:I

.field private static final synthetic $VALUES:[Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

.field public static final enum CVM_DECLINED:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

.field public static final enum CVM_NOT_REQUIRED:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

.field private static ContactlessConfiguration:I

.field public static final enum ONLINE_PIN:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

.field public static final enum SIGNATURE:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;


# instance fields
.field private final outcome:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ContactlessConfiguration:I

    const/4 v1, 0x1

    sput v1, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$$a:I

    new-instance v2, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v3, "CVM_NOT_REQUIRED"

    invoke-direct {v2, v3, v0, v0}, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->CVM_NOT_REQUIRED:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    .line 10
    new-instance v3, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v4, "SIGNATURE"

    invoke-direct {v3, v4, v1, v1}, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->SIGNATURE:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    .line 12
    new-instance v4, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v5, "ONLINE_PIN"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v6}, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ONLINE_PIN:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    .line 14
    new-instance v5, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    const-string v7, "CVM_DECLINED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->CVM_DECLINED:Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    .line 6
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    aput-object v2, v7, v0

    aput-object v3, v7, v1

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$VALUES:[Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    sget v2, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ContactlessConfiguration:I

    add-int/lit8 v2, v2, 0x69

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$$a:I

    rem-int/2addr v2, v6

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    int-to-byte p1, p3

    iput-byte p1, p0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->outcome:B

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;
    .locals 3

    .line 6
    const-class v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    sget v1, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    packed-switch v1, :pswitch_data_0

    const/16 v0, 0x30

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;
    .locals 3

    .line 6
    sget v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$VALUES:[Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    invoke-virtual {v0}, [Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;

    sget v1, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method


# virtual methods
.method public final getValue()B
    .locals 2

    .line 27
    sget v0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->$$a:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x32

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-byte v0, p0, Lcom/visa/app/ttpkernel/TtpCVMKernelOutcome;->outcome:B

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
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
