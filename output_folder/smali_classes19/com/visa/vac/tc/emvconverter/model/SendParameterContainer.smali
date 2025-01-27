.class public Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getTerminalData:I


# instance fields
.field emv_card_MessageChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.MessageChoiceCDO"
    .end annotation
.end field

.field emv_card_OpenDataContainer:Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.card.OpenDataContainer"
    .end annotation
.end field

.field private emv_poi_POID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.POID"
    .end annotation
.end field

.field private emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.cal.ActiveInterfaceID"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->setEmv_card_OpenDataContainer(Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;)V

    .line 26
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->setEmv_card_MessageChoiceCDO(Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;)V

    .line 27
    nop

    .line 28
    const-string v0, "emv.tx.cal.ActiveInterfaceID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->setEmv_tx_cal_ActiveInterfaceID(Ljava/lang/Object;)V

    .line 29
    nop

    .line 30
    const-string v0, "emv.poi.POID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->setEmv_poi_POID(Ljava/lang/Object;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getEmv_card_MessageChoiceCDO()Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;
    .locals 2

    .line 44
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x43

    goto :goto_0

    :cond_0
    const/16 v0, 0x56

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_card_MessageChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;

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
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_card_OpenDataContainer()Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;
    .locals 4

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x5b

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_card_OpenDataContainer:Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x46

    goto :goto_1

    :cond_1
    const/16 v1, 0x3a

    :goto_1
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_1
    .end packed-switch
.end method

.method public getEmv_poi_POID()Ljava/lang/Object;
    .locals 4

    .line 62
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    const/16 v3, 0x50

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object v0

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

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getEmv_tx_cal_ActiveInterfaceID()Ljava/lang/Object;
    .locals 2

    .line 54
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

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

.method public setEmv_card_MessageChoiceCDO(Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;)V
    .locals 2

    .line 49
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_card_MessageChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x3d

    goto :goto_0

    :cond_1
    const/16 p1, 0x47

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

.method public setEmv_card_OpenDataContainer(Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;)V
    .locals 2

    .line 40
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_card_OpenDataContainer:Lcom/visa/vac/tc/emvconverter/model/EmvCardOpenDataContainer;

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_POID(Ljava/lang/Object;)V
    .locals 3

    .line 66
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    const/16 v1, 0x2d

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v1, 0x4e

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-void

    :goto_0
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
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_tx_cal_ActiveInterfaceID(Ljava/lang/Object;)V
    .locals 2

    .line 58
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

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

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->emv_tx_cal_ActiveInterfaceID:Ljava/lang/Object;

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
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    goto :goto_2

    :cond_1
    const/16 p1, 0x4b

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 p1, 0x63

    :try_start_1
    div-int/2addr p1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->$$a:I

    add-int/lit8 v1, v1, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
