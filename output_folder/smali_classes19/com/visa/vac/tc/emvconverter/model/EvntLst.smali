.class public Lcom/visa/vac/tc/emvconverter/model/EvntLst;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static ContactlessConfiguration:I


# instance fields
.field BEGIN_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Begin_Transaction"
    .end annotation
.end field

.field CANCEL_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Cancel_Transaction"
    .end annotation
.end field

.field COMMUNICATION_FAILED:Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Communication_Failed"
    .end annotation
.end field

.field Detect_And_Open_And_Send:Lcom/visa/vac/tc/emvconverter/model/DetectAndOpenAndSend;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Detect_And_Open_And_Send"
    .end annotation
.end field

.field OPENED_AND_RECEIVE:Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Opened_And_Receive"
    .end annotation
.end field

.field OPEN_FAILED:Lcom/visa/vac/tc/emvconverter/model/Open_Failed;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Open_Failed"
    .end annotation
.end field

.field Open_And_Send:Lcom/visa/vac/tc/emvconverter/model/OpenAndSend;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Open_And_Send"
    .end annotation
.end field

.field RECEIVE_DATA:Lcom/visa/vac/tc/emvconverter/model/Receive_Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Receive_Data"
    .end annotation
.end field

.field RESTART_SELECTION:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Restart_Selection"
    .end annotation
.end field

.field SendData:Lcom/visa/vac/tc/emvconverter/model/SendData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Send_Data"
    .end annotation
.end field

.field captureCVM:Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Capture_CVM"
    .end annotation
.end field

.field close:Lcom/visa/vac/tc/emvconverter/model/Close;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Close"
    .end annotation
.end field

.field transactionCompletion:Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Transaction_Completion"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBEGIN_TRANSACTION()Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;
    .locals 3

    .line 34
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BEGIN_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BEGIN_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;

    const/16 v2, 0x5f

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public getCOMMUNICATION_FAILED()Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;
    .locals 3

    .line 58
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->COMMUNICATION_FAILED:Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v0, 0x36

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCancel_Transaction()Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;
    .locals 2

    .line 50
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->CANCEL_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCaptureCVM()Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;
    .locals 3

    .line 114
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->captureCVM:Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getClose()Lcom/visa/vac/tc/emvconverter/model/Close;
    .locals 3

    .line 130
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->close:Lcom/visa/vac/tc/emvconverter/model/Close;

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x23

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v0, 0x15

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public getDetect_And_Open_And_Send()Lcom/visa/vac/tc/emvconverter/model/DetectAndOpenAndSend;
    .locals 3

    .line 90
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->Detect_And_Open_And_Send:Lcom/visa/vac/tc/emvconverter/model/DetectAndOpenAndSend;

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getOPENED_AND_RECEIVE()Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;
    .locals 3

    .line 66
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->OPENED_AND_RECEIVE:Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;

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
    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getOPEN_FAILED()Lcom/visa/vac/tc/emvconverter/model/Open_Failed;
    .locals 3

    .line 82
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->OPEN_FAILED:Lcom/visa/vac/tc/emvconverter/model/Open_Failed;

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getOpen_And_Send()Lcom/visa/vac/tc/emvconverter/model/OpenAndSend;
    .locals 3

    .line 98
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->Open_And_Send:Lcom/visa/vac/tc/emvconverter/model/OpenAndSend;

    add-int/lit8 v1, v1, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getRECEIVE_DATA()Lcom/visa/vac/tc/emvconverter/model/Receive_Data;
    .locals 3

    .line 74
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->RECEIVE_DATA:Lcom/visa/vac/tc/emvconverter/model/Receive_Data;

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getRESTART_SELECTION()Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;
    .locals 3

    .line 42
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->RESTART_SELECTION:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x1f

    goto :goto_0

    :cond_1
    const/16 v1, 0x2b

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x4f

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public getSendData()Lcom/visa/vac/tc/emvconverter/model/SendData;
    .locals 3

    .line 106
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->SendData:Lcom/visa/vac/tc/emvconverter/model/SendData;

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x37

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v0, 0x52

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public getTransactionCompletion()Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;
    .locals 3

    .line 122
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->transactionCompletion:Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public setBEGIN_TRANSACTION()V
    .locals 3

    .line 38
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;

    const-string v1, "POIS"

    const-string v2, "POIL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BEGIN_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setCANCEL_TRANSACTION()V
    .locals 3

    .line 54
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;

    const-string v1, "POIS"

    const-string v2, "POIL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->CANCEL_TRANSACTION:Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCOMMUNICATION_FAILED()V
    .locals 3

    .line 62
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;

    const-string v1, "DCM"

    const-string v2, "CAL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->COMMUNICATION_FAILED:Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

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

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public setCaptureCVM(Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;)V
    .locals 3

    .line 118
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    const/16 v1, 0x49

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v1, 0x1c

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->captureCVM:Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public setClose(Lcom/visa/vac/tc/emvconverter/model/Close;)V
    .locals 2

    .line 134
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->close:Lcom/visa/vac/tc/emvconverter/model/Close;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x15

    :try_start_0
    div-int/2addr v0, p1
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

.method public setDetect_And_Open_And_Send(Lcom/visa/vac/tc/emvconverter/model/DetectAndOpenAndSend;)V
    .locals 3

    .line 94
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->Detect_And_Open_And_Send:Lcom/visa/vac/tc/emvconverter/model/DetectAndOpenAndSend;

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setOPENED_AND_RECEIVE()V
    .locals 3

    .line 70
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;

    const-string v1, "DCM"

    const-string v2, "CAL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->OPENED_AND_RECEIVE:Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x32

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setOPEN_FAILED()V
    .locals 3

    .line 86
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;

    const-string v1, "DCM"

    const-string v2, "CAL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->OPEN_FAILED:Lcom/visa/vac/tc/emvconverter/model/Open_Failed;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

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

.method public setOpen_And_Send(Lcom/visa/vac/tc/emvconverter/model/OpenAndSend;)V
    .locals 2

    .line 102
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->Open_And_Send:Lcom/visa/vac/tc/emvconverter/model/OpenAndSend;

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x3f

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setRECEIVE_DATA()V
    .locals 3

    .line 78
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Receive_Data;

    const-string v1, "DCM"

    const-string v2, "CAL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Receive_Data;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->RECEIVE_DATA:Lcom/visa/vac/tc/emvconverter/model/Receive_Data;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setRESTART_SELECTION()V
    .locals 3

    .line 46
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;

    const-string v1, "POIS"

    const-string v2, "POIL"

    invoke-direct {v0, v1, v2}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->RESTART_SELECTION:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x4e

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

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public setSendData(Lcom/visa/vac/tc/emvconverter/model/SendData;)V
    .locals 3

    .line 110
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v1, v0, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->SendData:Lcom/visa/vac/tc/emvconverter/model/SendData;

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setTransactionCompletion(Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;)V
    .locals 3

    .line 126
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->BuildConfig:I

    add-int/lit8 v1, v0, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->transactionCompletion:Lcom/visa/vac/tc/emvconverter/model/TransactionCompletion;

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EvntLst;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x17

    goto :goto_0

    :cond_1
    const/16 p1, 0x4c

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method
