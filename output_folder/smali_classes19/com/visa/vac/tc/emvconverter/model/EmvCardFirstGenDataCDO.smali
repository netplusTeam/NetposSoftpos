.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getTerminalData:I


# instance fields
.field ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

.field Status:Ljava/lang/Object;

.field emv_card_FirstGenDataCDO_AID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AID"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_AIP:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AIP"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_ATC:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ATC"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_CARD:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CARD"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_CID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CID"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_CardBlob:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardBlob"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_IAD:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAD"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_TransactionType:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TransactionType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    nop

    .line 37
    const-string v0, "emv.card.FirstGenDataCDO.AID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_AID(Ljava/lang/Object;)V

    .line 38
    nop

    .line 39
    const-string v0, "emv.card.FirstGenDataCDO.AIP"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_AIP(Ljava/lang/Object;)V

    .line 40
    nop

    .line 41
    const-string v0, "emv.card.FirstGenDataCDO.ATC"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_ATC(Ljava/lang/Object;)V

    .line 42
    nop

    .line 43
    const-string v0, "emv.card.FirstGenDataCDO.CardBlob"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_CardBlob(Ljava/lang/Object;)V

    .line 44
    nop

    .line 45
    const-string v0, "emv.card.FirstGenDataCDO.CARD"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_CARD(Ljava/lang/Object;)V

    .line 46
    nop

    .line 47
    const-string v0, "emv.card.FirstGenDataCDO.CID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_CID(Ljava/lang/Object;)V

    .line 48
    nop

    .line 49
    const-string v0, "emv.card.FirstGenDataCDO.IAD"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->setEmv_card_FirstGenDataCDO_IAD(Ljava/lang/Object;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getEmv_card_FirstGenDataCDO_AID()Ljava/lang/Object;
    .locals 2

    .line 75
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x23

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_AID:Ljava/lang/Object;

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

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FirstGenDataCDO_AIP()Ljava/lang/Object;
    .locals 3

    .line 83
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_AIP:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_AIP:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v2, 0x2f

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FirstGenDataCDO_ATC()Ljava/lang/Object;
    .locals 3

    .line 91
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_ATC:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    const/16 v0, 0x5a

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

.method public getEmv_card_FirstGenDataCDO_CARD()Ljava/lang/Object;
    .locals 2

    .line 107
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_CARD:Ljava/lang/Object;

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
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FirstGenDataCDO_CID()Ljava/lang/Object;
    .locals 3

    .line 115
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_CID:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x52

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x9

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_FirstGenDataCDO_CardBlob()Ljava/lang/Object;
    .locals 3

    .line 99
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_CardBlob:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getEmv_card_FirstGenDataCDO_IAD()Ljava/lang/Object;
    .locals 4

    .line 123
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x13

    goto :goto_0

    :cond_0
    const/16 v1, 0x2c

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_IAD:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x41

    goto :goto_2

    :cond_1
    const/16 v0, 0x30

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v1

    :goto_3
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_1
    .end packed-switch
.end method

.method public getEmv_card_FirstGenDataCDO_TransactionType()Ljava/lang/Object;
    .locals 2

    .line 131
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_TransactionType:Ljava/lang/Object;

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
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public getResponseRequirementCDO()Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;
    .locals 4

    .line 66
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public getStatus()Ljava/lang/Object;
    .locals 4

    .line 58
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->Status:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->Status:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v3, 0x50

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FirstGenDataCDO_AID(Ljava/lang/Object;)V
    .locals 5

    .line 79
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_AID:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/2addr v0, v3

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
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
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_card_FirstGenDataCDO_AIP(Ljava/lang/Object;)V
    .locals 2

    .line 87
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_AIP:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setEmv_card_FirstGenDataCDO_ATC(Ljava/lang/Object;)V
    .locals 2

    .line 95
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x46

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_ATC:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x27

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
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FirstGenDataCDO_CARD(Ljava/lang/Object;)V
    .locals 2

    .line 111
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_CARD:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setEmv_card_FirstGenDataCDO_CID(Ljava/lang/Object;)V
    .locals 2

    .line 119
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_CID:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x3a

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
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FirstGenDataCDO_CardBlob(Ljava/lang/Object;)V
    .locals 2

    .line 103
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x53

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_CardBlob:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

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
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FirstGenDataCDO_IAD(Ljava/lang/Object;)V
    .locals 2

    .line 127
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_IAD:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x42

    goto :goto_0

    :cond_1
    const/16 p1, 0x21

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
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_card_FirstGenDataCDO_TransactionType(Ljava/lang/String;)V
    .locals 2

    .line 136
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->emv_card_FirstGenDataCDO_TransactionType:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x1f

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

.method public setResponseRequirementCDO(Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;)V
    .locals 2

    .line 71
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setStatus(Ljava/lang/Object;)V
    .locals 2

    .line 62
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->Status:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x52

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
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 140
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

    sget v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->getTerminalData:I

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardFirstGenDataCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x2f

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

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
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method
