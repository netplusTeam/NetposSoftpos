.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getTerminalData:I


# instance fields
.field private ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

.field private Status:Ljava/lang/Object;

.field private emv_card_FinalFirstGenDataCDO_AID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AID"
    .end annotation
.end field

.field private emv_card_FinalFirstGenDataCDO_AIP:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AIP"
    .end annotation
.end field

.field private emv_card_FinalFirstGenDataCDO_ATC:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ATC"
    .end annotation
.end field

.field private emv_card_FinalFirstGenDataCDO_CID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CID"
    .end annotation
.end field

.field private emv_card_FinalFirstGenDataCDO_CardBlob:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardBlob"
    .end annotation
.end field

.field private emv_card_FinalFirstGenDataCDO_IAD:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAD"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    nop

    .line 30
    const-string v0, "emv.card.FinalFirstGenDataCDO.AID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->setEmv_card_FinalFirstGenDataCDO_AID(Ljava/lang/Object;)V

    .line 31
    nop

    .line 32
    const-string v0, "emv.card.FinalFirstGenDataCDO.AIP"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->setEmv_card_FinalFirstGenDataCDO_AIP(Ljava/lang/Object;)V

    .line 33
    nop

    .line 34
    const-string v0, "emv.card.FinalFirstGenDataCDO.ATC"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->setEmv_card_FinalFirstGenDataCDO_ATC(Ljava/lang/Object;)V

    .line 35
    nop

    .line 36
    const-string v0, "emv.card.FinalFirstGenDataCDO.CardBlob"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->setEmv_card_FinalFirstGenDataCDO_CardBlob(Ljava/lang/Object;)V

    .line 37
    nop

    .line 38
    const-string v0, "emv.card.FinalFirstGenDataCDO.CID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->setEmv_card_FinalFirstGenDataCDO_CID(Ljava/lang/Object;)V

    .line 39
    nop

    .line 40
    const-string v0, "emv.card.FinalFirstGenDataCDO.IAD"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->setEmv_card_FinalFirstGenDataCDO_IAD(Ljava/lang/Object;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getEmv_card_FinalFirstGenDataCDO_AID()Ljava/lang/Object;
    .locals 3

    .line 61
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_AID:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FinalFirstGenDataCDO_AIP()Ljava/lang/Object;
    .locals 3

    .line 69
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_AIP:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getEmv_card_FinalFirstGenDataCDO_ATC()Ljava/lang/Object;
    .locals 3

    .line 77
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    goto :goto_0

    :cond_0
    const/16 v1, 0x2c

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_ATC:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

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
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FinalFirstGenDataCDO_CID()Ljava/lang/Object;
    .locals 2

    .line 93
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_CID:Ljava/lang/Object;

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
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FinalFirstGenDataCDO_CardBlob()Ljava/lang/Object;
    .locals 3

    .line 85
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_CardBlob:Ljava/lang/Object;

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
    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FinalFirstGenDataCDO_IAD()Ljava/lang/Object;
    .locals 3

    .line 101
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_IAD:Ljava/lang/Object;

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
    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getResponseRequirementCDO()Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;
    .locals 3

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getStatus()Ljava/lang/Object;
    .locals 3

    .line 44
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->Status:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x31

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FinalFirstGenDataCDO_AID(Ljava/lang/Object;)V
    .locals 3

    .line 65
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x3e

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_AID:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_card_FinalFirstGenDataCDO_AIP(Ljava/lang/Object;)V
    .locals 3

    .line 73
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    const/16 v1, 0x48

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_AIP:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x38

    goto :goto_1

    :cond_1
    const/16 p1, 0x5f

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_card_FinalFirstGenDataCDO_ATC(Ljava/lang/Object;)V
    .locals 2

    .line 81
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_ATC:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x3c

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
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FinalFirstGenDataCDO_CID(Ljava/lang/Object;)V
    .locals 2

    .line 97
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_CID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FinalFirstGenDataCDO_CardBlob(Ljava/lang/Object;)V
    .locals 3

    .line 89
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_CardBlob:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

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
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FinalFirstGenDataCDO_IAD(Ljava/lang/Object;)V
    .locals 3

    .line 105
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->emv_card_FinalFirstGenDataCDO_IAD:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setResponseRequirementCDO(Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;)V
    .locals 3

    .line 57
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x40

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setStatus(Ljava/lang/Object;)V
    .locals 2

    .line 48
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->Status:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFinalFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
