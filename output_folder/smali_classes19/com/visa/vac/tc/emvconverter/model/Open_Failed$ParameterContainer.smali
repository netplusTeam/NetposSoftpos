.class public Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/Open_Failed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getInstance:I


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

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/Open_Failed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/Open_Failed;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/Open_Failed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string p1, "emv.tx.cal.ErrorCode"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->setEmv_tx_cal_ErrorCode(Ljava/lang/Object;)V

    .line 67
    const-string p1, "emv.tx.cal.ActiveInterfaceID"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->setEmv_tx_cal_ActiveInterfaceID(Ljava/lang/Object;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getEmv_tx_cal_ActiveInterfaceID()Ljava/lang/Object;
    .locals 3

    .line 71
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

    const/16 v2, 0xb

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_tx_cal_ErrorCode()Ljava/lang/Object;
    .locals 3

    .line 79
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->emv_tx_cal_ErrorCode:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setEmv_tx_cal_ActiveInterfaceID(Ljava/lang/Object;)V
    .locals 2

    .line 75
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x24

    :try_start_0
    div-int/2addr p1, v1
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_tx_cal_ErrorCode(Ljava/lang/Object;)V
    .locals 2

    .line 83
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->emv_tx_cal_ErrorCode:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x5b

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    add-int/lit8 p1, p1, 0x4f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4c

    goto :goto_0

    :cond_0
    const/16 v1, 0x47

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

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method
