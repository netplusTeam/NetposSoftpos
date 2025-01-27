.class public Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# instance fields
.field MethodID:Ljava/lang/Object;

.field ParameterCDO:Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

.field SCDataToCVEDContainer:Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SCDataToCVEDContainer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "emv.tx.cal.ActiveInterfaceID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Contactless"

    if-ne v0, v1, :cond_3

    .line 28
    const/16 v0, -0x609a

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalValue(S)[B

    move-result-object v0

    check-cast v0, [B

    .line 29
    const-string v1, "svIDCDO.CVMethodIDList"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 30
    const-string v2, "paymentsystem.card.CTQIndicatorList"

    invoke-static {v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 32
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v3, "OnlinePIN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    aget-byte v3, v0, v4

    const/4 v5, 0x4

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_0

    .line 38
    const-string v0, "MOIPIN"

    invoke-virtual {p0, v0, v1}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->setMethodID(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    const-string v3, "CDCVMPerformed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_1

    aget-byte v3, v0, v5

    const/16 v6, 0x40

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_1

    .line 40
    const-string v0, "AnyOnDeviceCVM"

    invoke-virtual {p0, v0, v1}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->setMethodID(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :cond_1
    const-string v3, "Signature"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-byte v0, v0, v4

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2

    .line 42
    const-string v0, "SignatureAfterTransaction"

    invoke-virtual {p0, v0, v1}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->setMethodID(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "NoCVM"

    invoke-virtual {p0, v0, v0}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->setMethodID(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    :goto_0
    const-string v0, "CompletionStep"

    const-string v1, "CVSuccessful"

    invoke-static {v0, v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "CardPresent"

    const-string v1, "FALSE"

    invoke-static {v0, v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getMethodID()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "svIDCDO.MethodID"

    invoke-static {v1, v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->storeSecGenData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->setSCDataToCVEDContainer(Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;)V

    .line 60
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->setParameterCDO(Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getMethodID()Ljava/lang/Object;
    .locals 3

    .line 65
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x24

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->MethodID:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->MethodID:Ljava/lang/Object;

    const/16 v2, 0x2a

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x2c

    goto :goto_2

    :cond_1
    const/4 v0, 0x3

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-object v1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch
.end method

.method public getParameterCDO()Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;
    .locals 4

    .line 84
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ParameterCDO:Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    const/4 v2, 0x1

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
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

.method public getSCDataToCVEDContainer()Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;
    .locals 3

    .line 75
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->SCDataToCVEDContainer:Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

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

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public setMethodID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 70
    nop

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 70
    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    packed-switch p2, :pswitch_data_0

    sget p2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    add-int/lit8 v2, p2, 0x5b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v2, 0xc

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    :goto_1
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->MethodID:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_0
    const/16 p1, 0x39

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    add-int/lit8 p2, p2, 0x2d

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public setParameterCDO(Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;)V
    .locals 2

    .line 88
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ParameterCDO:Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setSCDataToCVEDContainer(Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;)V
    .locals 5

    .line 80
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->SCDataToCVEDContainer:Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
