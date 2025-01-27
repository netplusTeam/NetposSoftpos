.class public Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getTerminalData:I


# instance fields
.field Delegate:Ljava/lang/Object;

.field ReadyForOnlineResponse:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->getTerminalData:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "emv.card.AuthCDO.ResponseRequirementCDO.ReadyForOnlineResponse"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 23
    const/16 v1, -0x609a

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getTerminalValue(S)[B

    move-result-object v1

    .line 24
    const-string v2, "emv.card.AuthCDO.ResponseRequirementCDO.Delegate"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    const-string p1, "true"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    aget-byte p1, v1, p1

    const/16 v0, -0x80

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    .line 27
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setReadyForOnlineResponse(Ljava/lang/Object;)V

    goto :goto_0

    .line 29
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setReadyForOnlineResponse(Ljava/lang/Object;)V

    .line 31
    :goto_0
    invoke-static {v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setDelegate(Ljava/lang/Object;)V

    .line 32
    return-void

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "emv.tx.cal.ActiveInterfaceID"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Contact"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 33
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setReadyForOnlineResponse(Ljava/lang/Object;)V

    .line 34
    invoke-static {v2}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->setDelegate(Ljava/lang/Object;)V

    .line 36
    :cond_2
    return-void
.end method


# virtual methods
.method public getDelegate()Ljava/lang/Object;
    .locals 2

    .line 47
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->getTerminalData:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/16 v1, 0xb

    :cond_0
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->Delegate:Ljava/lang/Object;

    return-object v0

    :goto_0
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
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getReadyForOnlineResponse()Ljava/lang/Object;
    .locals 4

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->ReadyForOnlineResponse:Ljava/lang/Object;

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
    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x40

    goto :goto_2

    :cond_1
    const/16 v0, 0x33

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v1

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method

.method public setDelegate(Ljava/lang/Object;)V
    .locals 3

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->getTerminalData:I

    add-int/lit8 v1, v0, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->Delegate:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x28

    goto :goto_0

    :cond_1
    const/16 p1, 0x4a

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
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public setReadyForOnlineResponse(Ljava/lang/Object;)V
    .locals 2

    .line 43
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->getTerminalData:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->ReadyForOnlineResponse:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ResponseRequirementCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x45

    goto :goto_0

    :cond_1
    const/16 p1, 0x1a

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
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method
