.class public Lcom/visa/vac/tc/emvconverter/model/SvIDList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# instance fields
.field AdditionalKDIL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field CEID:Ljava/lang/Object;

.field CVMethodIDList:Ljava/lang/Object;

.field ConfirmationRequired:Z

.field CountryCode:Ljava/lang/Object;

.field CurrencyCode:Ljava/lang/Object;

.field DataDelivery:Ljava/lang/Object;

.field DataEncoding:Ljava/lang/Object;

.field EligibleAcquirerIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field FirstGenAID:Ljava/lang/Object;

.field FirstGenKernelID:Ljava/lang/Object;

.field IIN:Ljava/lang/Object;

.field InteropVersionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Label:Ljava/lang/Object;

.field MethodID:Ljava/lang/Object;

.field PAServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field PreferredLanguage:Ljava/lang/Object;

.field PreferredName:Ljava/lang/Object;

.field Priority:I

.field SCAlgorithmSuiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field SupportsCVMethodIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field SupportsTRMList:Ljava/lang/Object;

.field SvID:Ljava/lang/Object;

.field SvIDGroup:Ljava/lang/Object;

.field TRMCapabilityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Technology:Ljava/lang/Object;

.field TerminalInteraction:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "CEID"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setSvID(Ljava/lang/Object;)V

    .line 55
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setFirstGenAID(Ljava/lang/Object;)V

    .line 56
    const-string v1, "FirstGenKernelID"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setFirstGenKernelID(Ljava/lang/Object;)V

    .line 57
    const-string v1, "svIDCDO.CurrencyCode"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setCurrencyCode(Ljava/lang/Object;)V

    .line 58
    const-string v1, "emv.ngse.Label"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setLabel(Ljava/lang/Object;)V

    .line 59
    const-string v1, "emv.ngse.Priority"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setPriority(Ljava/lang/Object;)V

    .line 60
    const-string v1, "emv.ngse.SvIDCDO.PreferredLanguage"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setPreferredLanguage(Ljava/lang/Object;)V

    .line 61
    const-string v1, "emv.ngse.SvIDCDO.PreferredName"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setPreferredName(Ljava/lang/Object;)V

    .line 62
    const-string v1, "svIDCDO.Technology"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setTechnology(Ljava/lang/Object;)V

    .line 63
    const-string v1, "svIDCDO.ConfirmationRequired"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setConfirmationRequired(Ljava/lang/Object;)V

    .line 64
    const-string v1, "svIDCDO.SvIDGroup"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setSvIDGroup(Ljava/lang/Object;)V

    .line 66
    const-string v1, "emv.card.IssuerCountryCode"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setCountryCode(Ljava/lang/Object;)V

    .line 67
    const-string v1, "emv.card.IIN"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setIIN(Ljava/lang/Object;)V

    .line 70
    const-string v1, "svIDCDO.AdditionalKDIL"

    invoke-static {v1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setAdditionalKDIL(Ljava/lang/Object;)V

    .line 71
    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setCEID(Ljava/lang/Object;)V

    .line 72
    const-string v0, "emv.card.DataEncoding"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setDataEncoding(Ljava/lang/Object;)V

    .line 73
    const-string v0, "emv.card.InteropVersionList"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setInteropVersionList(Ljava/lang/Object;)V

    .line 74
    const-string v0, "svIDCDO.SCAlgorithmSuiteList"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->setSCAlgorithmSuiteList(Ljava/lang/Object;)V

    .line 77
    return-void
.end method


# virtual methods
.method public getAdditionalKDIL()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x5d

    goto :goto_0

    :cond_0
    const/16 v1, 0x60

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->AdditionalKDIL:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto :goto_1

    :cond_1
    const/16 v0, 0x13

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v1

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

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
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
    .end packed-switch
.end method

.method public getCEID()Ljava/lang/Object;
    .locals 4

    .line 98
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CEID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

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

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getCVMethodIDList()Ljava/lang/Object;
    .locals 3

    .line 139
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CVMethodIDList:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

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

.method public getConfirmationRequired()Z
    .locals 3

    .line 106
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->ConfirmationRequired:Z

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public getCountryCode()Ljava/lang/Object;
    .locals 3

    .line 122
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CountryCode:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x58

    goto :goto_0

    :cond_1
    const/16 v1, 0x24

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

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
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrencyCode()Ljava/lang/Object;
    .locals 3

    .line 130
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CurrencyCode:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 v1, 0x43

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public getDataDelivery()Ljava/lang/Object;
    .locals 5

    .line 168
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v0, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->DataDelivery:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->DataDelivery:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v4, 0x4f

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    move v2, v3

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-object v1

    :goto_4
    const/16 v0, 0x59

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getDataEncoding()Ljava/lang/Object;
    .locals 4

    .line 176
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3e

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->DataEncoding:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getEligibleAcquirerIDList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 184
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->EligibleAcquirerIDList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-object v1

    :goto_1
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getFirstGenAID()Ljava/lang/Object;
    .locals 3

    .line 326
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->FirstGenAID:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

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
    const/16 v0, 0x5f

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

.method public getFirstGenKernelID()Ljava/lang/Object;
    .locals 3

    .line 334
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->FirstGenKernelID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getIIN()Ljava/lang/Object;
    .locals 3

    .line 192
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->IIN:Ljava/lang/Object;

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
    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getInteropVersionList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->InteropVersionList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x2d

    goto :goto_1

    :cond_1
    const/16 v0, 0x43

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-object v1

    :pswitch_1
    const/16 v0, 0x4c

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    const/4 v0, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_1
    .end packed-switch
.end method

.method public getLabel()Ljava/lang/Object;
    .locals 3

    .line 221
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Label:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getMethodID()Ljava/lang/Object;
    .locals 3

    .line 229
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->MethodID:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    goto :goto_0

    :cond_1
    const/16 v0, 0x12

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
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public getPAServiceList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 237
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    const/16 v0, 0x34

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PAServiceList:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PAServiceList:Ljava/util/ArrayList;

    const/16 v2, 0x30

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public getPreferredLanguage()Ljava/lang/Object;
    .locals 3

    .line 245
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PreferredLanguage:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

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

.method public getPreferredName()Ljava/lang/Object;
    .locals 3

    .line 253
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PreferredName:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x39

    goto :goto_0

    :cond_1
    const/16 v0, 0x1a

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public getPriority()I
    .locals 2

    .line 261
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Priority:I

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
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getSCAlgorithmSuiteList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x63

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SCAlgorithmSuiteList:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SCAlgorithmSuiteList:Ljava/util/ArrayList;

    const/16 v1, 0x8

    :try_start_0
    div-int/lit8 v1, v1, 0x0
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
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public getSupportsCVMethodIDList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SupportsCVMethodIDList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getSupportsTRMList()Ljava/lang/Object;
    .locals 4

    .line 310
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SupportsTRMList:Ljava/lang/Object;

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
    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x4d

    goto :goto_2

    :cond_1
    const/16 v1, 0x2b

    :goto_2
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
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
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch
.end method

.method public getSvID()Ljava/lang/Object;
    .locals 3

    .line 318
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SvID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x71

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getSvIDGroup()Ljava/lang/Object;
    .locals 4

    .line 345
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SvIDGroup:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x4c

    goto :goto_1

    :cond_1
    const/16 v1, 0x61

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v0

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_1
    .end packed-switch
.end method

.method public getTRMCapabilityList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 369
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->TRMCapabilityList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/16 v1, 0x1d

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

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
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getTechnology()Ljava/lang/Object;
    .locals 3

    .line 353
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Technology:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0xe

    goto :goto_0

    :cond_1
    const/16 v1, 0x4b

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
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public getTerminalInteraction()Ljava/lang/Object;
    .locals 4

    .line 361
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->TerminalInteraction:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->TerminalInteraction:Ljava/lang/Object;

    goto :goto_2

    :goto_1
    const/16 v3, 0xd

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x58

    goto :goto_3

    :cond_1
    const/16 v1, 0x5a

    :goto_3
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    const/16 v1, 0x3a

    :try_start_1
    div-int/2addr v1, v2
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch
.end method

.method public setAdditionalKDIL(Ljava/lang/Object;)V
    .locals 3

    .line 90
    nop

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    if-eqz p1, :cond_0

    .line 90
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 88
    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 90
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x39

    goto :goto_1

    :cond_2
    const/16 p1, 0x17

    :goto_1
    :pswitch_0
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->AdditionalKDIL:Ljava/util/ArrayList;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setAdditionalKDIL(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 94
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->AdditionalKDIL:Ljava/util/ArrayList;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1c

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCEID(Ljava/lang/Object;)V
    .locals 2

    .line 102
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CEID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCVMethodIDList(Ljava/lang/Object;)V
    .locals 6

    .line 159
    nop

    .line 143
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 145
    check-cast p1, Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    const-string v1, "CDCVMPerformed"

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 151
    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 148
    :pswitch_0
    const-string v2, "AnyOnDeviceCVM"

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 159
    nop

    .line 150
    :goto_1
    const-string v2, "Signature"

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    move v3, v4

    goto :goto_2

    :cond_1
    nop

    :goto_2
    packed-switch v3, :pswitch_data_1

    .line 159
    sget v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v3, v3, 0x7b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v3, v3, 0x2

    const-string v4, "SignatureAfterTransaction"

    if-eqz v3, :cond_7

    .line 151
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 153
    :pswitch_1
    const-string v3, "OnlinePIN"

    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 159
    sget v4, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    .line 154
    :cond_2
    const-string v4, "MOIPIN"

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 151
    const/16 v1, 0x17

    goto :goto_3

    :cond_4
    const/16 v1, 0x36

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_4

    .line 156
    :pswitch_2
    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 159
    sget v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 156
    :cond_5
    invoke-virtual {p1, v3}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 157
    const-string p1, "NoCVM"

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_6
    :goto_4
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CVMethodIDList:Ljava/lang/Object;

    goto :goto_5

    .line 151
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :catchall_0
    move-exception p1

    throw p1

    :cond_8
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_2
    .end packed-switch
.end method

.method public setCVMethodIDList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x62

    goto :goto_0

    :cond_0
    const/16 v1, 0x47

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CVMethodIDList:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    goto :goto_2

    :cond_1
    const/4 p1, 0x6

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
    .end packed-switch
.end method

.method public setConfirmationRequired(Ljava/lang/Object;)V
    .locals 4

    .line 117
    nop

    .line 110
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 117
    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    iput-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->ConfirmationRequired:Z

    return-void

    :pswitch_0
    sget v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v2, v2, 0x5b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 111
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 117
    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_1

    add-int/lit8 v3, v3, 0xf

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    .line 111
    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TRUE"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 117
    const/16 p1, 0x5c

    goto :goto_2

    :cond_4
    const/16 p1, 0x33

    :goto_2
    packed-switch p1, :pswitch_data_2

    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    goto :goto_3

    .line 114
    :pswitch_1
    iput-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->ConfirmationRequired:Z

    return-void

    .line 112
    :cond_5
    :goto_3
    iput-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->ConfirmationRequired:Z

    .line 117
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method

.method public setCountryCode(Ljava/lang/Object;)V
    .locals 2

    .line 126
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CountryCode:Ljava/lang/Object;

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
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrencyCode(Ljava/lang/Object;)V
    .locals 3

    .line 134
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->CurrencyCode:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x3f

    goto :goto_0

    :cond_1
    const/16 p1, 0x14

    :goto_0
    packed-switch p1, :pswitch_data_0

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
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public setDataDelivery(Ljava/lang/String;)V
    .locals 4

    .line 172
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    const/4 v3, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->DataDelivery:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setDataEncoding(Ljava/lang/Object;)V
    .locals 3

    .line 180
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->DataEncoding:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x37

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x42

    goto :goto_2

    :cond_1
    const/16 p1, 0x1c

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 p1, 0x0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method public setEligibleAcquirerIDList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 188
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1c

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->EligibleAcquirerIDList:Ljava/util/ArrayList;

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x5c

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x1f

    goto :goto_1

    :cond_1
    const/16 p1, 0x54

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/16 p1, 0xf

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch
.end method

.method public setFirstGenAID(Ljava/lang/Object;)V
    .locals 2

    .line 330
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->FirstGenAID:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0xe

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
    .packed-switch 0x40
        :pswitch_0
    .end packed-switch
.end method

.method public setFirstGenKernelID(Ljava/lang/Object;)V
    .locals 3

    .line 341
    nop

    .line 339
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    const/16 v1, 0x29

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 338
    :cond_0
    if-eqz p1, :cond_1

    .line 339
    const/16 v0, 0x1a

    goto :goto_0

    :cond_1
    const/16 v0, 0x58

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 341
    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 339
    goto :goto_1

    :cond_2
    const/16 v1, 0x4c

    :goto_1
    check-cast p1, Ljava/lang/String;

    packed-switch v1, :pswitch_data_1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    nop

    :pswitch_1
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->FirstGenKernelID:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public setIIN(Ljava/lang/Object;)V
    .locals 2

    .line 196
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->IIN:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x20

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
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public setInteropVersionList(Ljava/lang/Object;)V
    .locals 3

    .line 211
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 204
    :cond_0
    if-eqz p1, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    if-eqz p1, :cond_1

    .line 211
    const/16 v1, 0x4d

    goto :goto_0

    :cond_1
    const/16 v1, 0x54

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_2

    .line 207
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 211
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_1

    .line 209
    :goto_2
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->InteropVersionList:Ljava/util/ArrayList;

    return-void

    :cond_3
    if-eqz p1, :cond_6

    .line 211
    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const/16 v0, 0x61

    goto :goto_3

    :cond_4
    const/16 v0, 0x37

    :goto_3
    packed-switch v0, :pswitch_data_1

    instance-of v0, p1, Ljava/util/ArrayList;

    goto :goto_4

    .line 209
    :pswitch_1
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 211
    :goto_4
    const/16 v1, 0x49

    const/4 v2, 0x0

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    packed-switch v2, :pswitch_data_2

    goto :goto_6

    :goto_5
    :pswitch_2
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->InteropVersionList:Ljava/util/ArrayList;

    goto :goto_6

    :catchall_0
    move-exception p1

    throw p1

    :cond_6
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public setInteropVersionList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->InteropVersionList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setLabel(Ljava/lang/Object;)V
    .locals 2

    .line 225
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Label:Ljava/lang/Object;

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

.method public setMethodID(Ljava/lang/String;)V
    .locals 2

    .line 233
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->MethodID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setPAServiceList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 241
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PAServiceList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setPreferredLanguage(Ljava/lang/Object;)V
    .locals 2

    .line 249
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PreferredLanguage:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setPreferredName(Ljava/lang/Object;)V
    .locals 3

    .line 257
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->PreferredName:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setPriority(Ljava/lang/Object;)V
    .locals 3

    .line 270
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 265
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 270
    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 267
    :cond_2
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Priority:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    return-void

    .line 269
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    iput v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Priority:I

    :pswitch_0
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSCAlgorithmSuiteList(Ljava/lang/Object;)V
    .locals 3

    .line 286
    nop

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const/16 v1, 0x38

    goto :goto_0

    :cond_0
    const/16 v1, 0x50

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 286
    :pswitch_0
    sget v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x3b

    if-nez v1, :cond_1

    .line 284
    const/16 v1, 0x43

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const/16 p1, 0x1f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 286
    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/2addr p1, v2

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    :cond_2
    :goto_3
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SCAlgorithmSuiteList:Ljava/util/ArrayList;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method public setSCAlgorithmSuiteList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 290
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SCAlgorithmSuiteList:Ljava/util/ArrayList;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setSupportsCVMethodIDList(Ljava/lang/String;)V
    .locals 3

    .line 302
    nop

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    if-eqz p1, :cond_0

    .line 302
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 300
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 302
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 p1, p1, 0x5f

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    :cond_1
    :pswitch_0
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SupportsCVMethodIDList:Ljava/util/ArrayList;

    return-void

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setSupportsCVMethodIDList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SupportsCVMethodIDList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setSupportsTRMList(Ljava/lang/String;)V
    .locals 2

    .line 314
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SupportsTRMList:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setSvID(Ljava/lang/Object;)V
    .locals 3

    .line 322
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SvID:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setSvIDGroup(Ljava/lang/Object;)V
    .locals 3

    .line 349
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x1

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->SvIDGroup:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setTRMCapabilityList(Ljava/lang/Object;)V
    .locals 4

    .line 377
    nop

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    const/16 v1, 0x38

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 377
    sget v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 375
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 377
    :pswitch_0
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->TRMCapabilityList:Ljava/util/ArrayList;

    .line 375
    sget p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x9

    goto :goto_1

    :cond_1
    const/16 p1, 0x39

    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 377
    return-void

    .line 375
    :pswitch_1
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 377
    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
    .end packed-switch
.end method

.method public setTRMCapabilityList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 381
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x25

    goto :goto_0

    :cond_0
    const/16 v1, 0x5a

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->TRMCapabilityList:Ljava/util/ArrayList;

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x10

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setTechnology(Ljava/lang/Object;)V
    .locals 2

    .line 357
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    add-int/lit8 v0, v0, 0x19

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->Technology:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

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

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method public setTerminalInteraction(Ljava/lang/Object;)V
    .locals 2

    .line 365
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->TerminalInteraction:Ljava/lang/Object;

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
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 385
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

    sget v1, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->BuildConfig:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SvIDList;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
