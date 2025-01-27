.class public Lcom/visa/vac/tc/emvconverter/Receipt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static convertToArrayMap:I

.field private static getKernelData:I


# instance fields
.field private $$a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.Date"
    .end annotation
.end field

.field private BuildConfig:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.ApplicationLabel"
    .end annotation
.end field

.field private ContactlessConfiguration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.MaskedPANLast4"
    .end annotation
.end field

.field private ContactlessKernel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.ExpiryDate"
    .end annotation
.end field

.field private clear:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ReceiptData"
    .end annotation
.end field

.field private getInstance:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.Amount"
    .end annotation
.end field

.field private getTerminalData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.Time"
    .end annotation
.end field

.field private performTransaction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.CurrencyCode"
    .end annotation
.end field

.field private setTerminalData:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.SvID"
    .end annotation
.end field

.field private setTerminate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ApprovalCode"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 3

    .line 64
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->getInstance:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x3c

    goto :goto_0

    :cond_1
    const/16 v1, 0x4e

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

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
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public getApplicationLabel()Ljava/lang/Object;
    .locals 3

    .line 32
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->BuildConfig:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getApprovalCode()Ljava/lang/String;
    .locals 3

    .line 96
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x35

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->setTerminate:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->setTerminate:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v2, 0x2e

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x49

    goto :goto_3

    :cond_1
    const/16 v1, 0x2a

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v0

    :goto_4
    const/16 v1, 0x1d

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrencyCode()Ljava/lang/String;
    .locals 3

    .line 88
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->performTransaction:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->performTransaction:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v2, 0x31

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDate()Ljava/lang/String;
    .locals 3

    .line 48
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->$$a:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getExpDate()Ljava/lang/String;
    .locals 4

    .line 80
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/16 v0, 0x2a

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->ContactlessKernel:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->ContactlessKernel:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v3, 0x18

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getMaskedPANLast4()Ljava/lang/String;
    .locals 3

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->ContactlessConfiguration:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getReceiptData()Ljava/lang/String;
    .locals 2

    .line 104
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->clear:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSvID()Ljava/lang/String;
    .locals 3

    .line 72
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->setTerminalData:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0x3e

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

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
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch
.end method

.method public getTime()Ljava/lang/String;
    .locals 3

    .line 40
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->getTerminalData:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setAmount(Ljava/lang/String;)V
    .locals 2

    .line 68
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->getInstance:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x3d

    goto :goto_0

    :cond_1
    const/16 p1, 0x4b

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public setApplicationLabel(Ljava/lang/Object;)V
    .locals 3

    .line 36
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->BuildConfig:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setApprovalCode(Ljava/lang/String;)V
    .locals 2

    .line 100
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->setTerminate:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x9

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrencyCode(Ljava/lang/String;)V
    .locals 3

    .line 92
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->performTransaction:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 3

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x18

    goto :goto_0

    :cond_0
    const/16 v1, 0x12

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->$$a:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setExpDate(Ljava/lang/String;)V
    .locals 2

    .line 84
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->ContactlessKernel:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x1d

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x21

    goto :goto_2

    :cond_1
    const/16 p1, 0x27

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch
.end method

.method public setMaskedPANLast4(Ljava/lang/String;)V
    .locals 2

    .line 60
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->ContactlessConfiguration:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setReceiptData(Ljava/lang/String;)V
    .locals 2

    .line 108
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->clear:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setSvID(Ljava/lang/String;)V
    .locals 3

    .line 76
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->setTerminalData:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 3

    .line 44
    sget v0, Lcom/visa/vac/tc/emvconverter/Receipt;->getKernelData:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/Receipt;->getTerminalData:Ljava/lang/String;

    const/4 p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/Receipt;->convertToArrayMap:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x58

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
