.class public Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# instance fields
.field private emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.cal.ActiveInterfaceID"
    .end annotation
.end field

.field private emv_tx_cal_ErrorCode:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.cal.ErrorCode"
    .end annotation
.end field

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/Communication_Failed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string p1, "CommunicationError"

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->setEmv_tx_cal_ErrorCode(Ljava/lang/Object;)V

    .line 68
    const-string p1, "emv.tx.cal.ActiveInterfaceID"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->setEmv_tx_cal_ActiveInterfaceID(Ljava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public getEmv_tx_cal_ActiveInterfaceID()Ljava/lang/Object;
    .locals 2

    .line 80
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x24

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v1, 0x42

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_tx_cal_ErrorCode()Ljava/lang/Object;
    .locals 3

    .line 72
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->emv_tx_cal_ErrorCode:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setEmv_tx_cal_ActiveInterfaceID(Ljava/lang/Object;)V
    .locals 2

    .line 84
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_tx_cal_ErrorCode(Ljava/lang/Object;)V
    .locals 2

    .line 76
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->emv_tx_cal_ErrorCode:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x39

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->getTerminalData:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Communication_Failed$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
