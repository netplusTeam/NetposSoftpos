.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getTerminalData:I


# instance fields
.field CardBlob:Ljava/lang/Object;

.field ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

.field Status:Ljava/lang/Object;

.field emv_card_FirstGenDataCDO_AIP:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.FirstGenDataCDO.AIP"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_ATC:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.FirstGenDataCDO.ATC"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_CID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.FirstGenDataCDO.CID"
    .end annotation
.end field

.field emv_card_FirstGenDataCDO_IAD:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.FirstGenDataCDO.IAD"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "Status"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->setStatus(Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->Status:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->setResponseRequirementCDO(Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;)V

    .line 34
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    iget-object v0, v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->ReadyForOnlineResponse:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->Status:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setReadyForOnlineResponse(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    const-string v1, "emv.card.AuthCDO.ResponseRequirementCDO.Delegate"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setDelegate(Ljava/lang/Object;)V

    .line 38
    :cond_0
    const-string v0, "CardBlob"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->setCardBlob(Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getCardBlob()Ljava/lang/Object;
    .locals 2

    .line 91
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->CardBlob:Ljava/lang/Object;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getResponseRequirementCDO()Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;
    .locals 4

    .line 82
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

    const/16 v3, 0x5e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getStatus()Ljava/lang/Object;
    .locals 3

    .line 42
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

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
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->Status:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setCardBlob(Ljava/lang/Object;)V
    .locals 3

    .line 95
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->CardBlob:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setResponseRequirementCDO(Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;)V
    .locals 2

    .line 87
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->ResponseRequirementCDO:Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;

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
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public setStatus(Ljava/lang/Object;)V
    .locals 8

    .line 78
    nop

    .line 73
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v1, 0x4b

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 46
    nop

    .line 47
    nop

    .line 48
    const/16 v0, 0x7a

    .line 49
    const/16 v4, 0x7c

    .line 50
    const/16 v5, 0x51

    .line 51
    if-eqz p1, :cond_1

    goto :goto_0

    .line 46
    :cond_0
    nop

    .line 47
    nop

    .line 48
    const/16 v0, -0x80

    .line 49
    const/16 v4, 0x40

    .line 50
    const/16 v5, -0x40

    .line 51
    if-eqz p1, :cond_1

    .line 52
    :goto_0
    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    .line 53
    invoke-static {v6}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    move v7, v5

    move v5, v4

    move v4, v0

    move v0, v2

    goto :goto_1

    .line 57
    :cond_1
    const-string p1, "emv.card.FirstGenDataCDO.IAD"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 71
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    add-int/2addr v0, v1

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 59
    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v6

    .line 62
    const/4 v0, 0x4

    .line 63
    const/16 v4, 0x20

    .line 64
    const/16 v5, 0x10

    .line 65
    const/16 v7, 0x30

    goto :goto_1

    .line 58
    :cond_3
    move-object v6, v3

    move v7, v5

    move v5, v4

    move v4, v0

    move v0, v2

    .line 69
    :goto_1
    if-eqz v6, :cond_8

    .line 70
    aget-byte p1, v6, v0

    and-int v0, p1, v7

    if-ne v0, v4, :cond_4

    .line 51
    goto :goto_2

    :cond_4
    const/16 v1, 0x4d

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 72
    and-int/2addr p1, v7

    if-ne p1, v5, :cond_6

    goto :goto_3

    .line 78
    :pswitch_0
    sget p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    .line 71
    nop

    .line 78
    const-string p1, "Online"

    goto :goto_6

    .line 71
    :cond_5
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :catchall_0
    move-exception p1

    throw p1

    .line 51
    :goto_3
    goto :goto_4

    :cond_6
    const/4 v2, 0x1

    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 71
    sget p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_7

    goto :goto_5

    .line 75
    :pswitch_1
    nop

    .line 78
    const-string p1, "Decline"

    goto :goto_6

    .line 73
    :goto_5
    const-string p1, "Approve"

    goto :goto_6

    :cond_7
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :catchall_1
    move-exception p1

    throw p1

    .line 78
    :cond_8
    :goto_6
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->Status:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
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

    sget v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->getTerminalData:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardAuthCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x35

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method
