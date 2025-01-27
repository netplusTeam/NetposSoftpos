.class public Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static BuildConfig:I

.field private static ContactlessConfiguration:I


# instance fields
.field private emv_poi_Amount:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.Amount"
    .end annotation
.end field

.field private emv_poi_CountryCode:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.CountryCode"
    .end annotation
.end field

.field private emv_poi_CurrencyCode:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.CurrencyCode"
    .end annotation
.end field

.field private emv_poi_Date:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.Date"
    .end annotation
.end field

.field private emv_poi_FinalTransactionDataIndicator:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.FinalTransactionDataIndicator"
    .end annotation
.end field

.field private emv_poi_MerchantIndicatedHighRiskTransaction:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.MerchantIndicatedHighRiskTransaction"
    .end annotation
.end field

.field private emv_poi_PAServiceStatusList:Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.PAServiceStatusList"
    .end annotation
.end field

.field private emv_poi_POID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.POID"
    .end annotation
.end field

.field private emv_poi_POIDIL:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.POIDIL"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field emv_poi_RiskRulesAmount:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.RiskRulesAmount"
    .end annotation
.end field

.field private emv_poi_Time:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.Time"
    .end annotation
.end field

.field emv_poi_TransactionID:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.TransactionID"
    .end annotation
.end field

.field private emv_poi_TransactionType:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.TransactionType"
    .end annotation
.end field

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string p1, "emv.poi.Amount"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_Amount(Ljava/lang/Object;)V

    .line 93
    const-string p1, "emv.poi.CountryCode"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_CountryCode(Ljava/lang/Object;)V

    .line 94
    const-string p1, "emv.poi.CurrencyCode"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_CurrencyCode(Ljava/lang/Object;)V

    .line 95
    const-string p1, "emv.poi.Date"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_Date(Ljava/lang/Object;)V

    .line 96
    const-string p1, "Final"

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_FinalTransactionDataIndicator(Ljava/lang/Object;)V

    .line 97
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_MerchantIndicatedHighRiskTransaction(Z)V

    .line 98
    const-string p1, "emv.poi.POID"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_POID(Ljava/lang/Object;)V

    .line 99
    const-string p1, "emv.poi.POIDIL"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_POIDIL(Ljava/lang/Object;)V

    .line 100
    const-string p1, "emv.poi.Time"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_Time(Ljava/lang/Object;)V

    .line 101
    const-string p1, "emv.poi.TransactionType"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_TransactionType(Ljava/lang/Object;)V

    .line 102
    new-instance p1, Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;

    invoke-direct {p1}, Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_PAServiceStatusList(Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;)V

    .line 103
    const-string p1, "emv.poi.RiskRulesAmount"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_RiskRulesAmount(Ljava/lang/Object;)V

    .line 104
    const-string p1, "emv.poi.TransactionID"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->setEmv_poi_TransactionID(Ljava/lang/Object;)V

    .line 105
    return-void
.end method


# virtual methods
.method public getEmv_poi_Amount()Ljava/lang/Object;
    .locals 3

    .line 116
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Amount:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getEmv_poi_CountryCode()Ljava/lang/Object;
    .locals 2

    .line 130
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0xb

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_CountryCode:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_CountryCode:Ljava/lang/Object;

    const/4 v1, 0x0

    :try_start_0
    div-int/2addr v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_CurrencyCode()Ljava/lang/Object;
    .locals 3

    .line 108
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_CurrencyCode:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getEmv_poi_Date()Ljava/lang/Object;
    .locals 2

    .line 138
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

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
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Date:Ljava/lang/Object;

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

.method public getEmv_poi_FinalTransactionDataIndicator()Ljava/lang/Object;
    .locals 3

    .line 188
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_FinalTransactionDataIndicator:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_MerchantIndicatedHighRiskTransaction()Z
    .locals 3

    .line 196
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public getEmv_poi_PAServiceStatusList()Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;
    .locals 2

    .line 216
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_PAServiceStatusList:Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;

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

.method public getEmv_poi_POID()Ljava/lang/Object;
    .locals 3

    .line 147
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getEmv_poi_POIDIL()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x50

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

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
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_RiskRulesAmount()Ljava/lang/Object;
    .locals 3

    .line 208
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_RiskRulesAmount:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x16

    goto :goto_0

    :cond_1
    const/16 v1, 0x59

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
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_Time()Ljava/lang/Object;
    .locals 3

    .line 172
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Time:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

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
    const/16 v0, 0x9

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

.method public getEmv_poi_TransactionID()Ljava/lang/Object;
    .locals 2

    .line 224
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_TransactionID:Ljava/lang/Object;

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
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_TransactionType()Ljava/lang/Object;
    .locals 3

    .line 180
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_TransactionType:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public isEmv_poi_MerchantIndicatedHighRiskTransaction()Z
    .locals 5

    .line 204
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    return v0

    :pswitch_1
    const/16 v1, 0x53

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_Amount(Ljava/lang/Object;)V
    .locals 3

    .line 124
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x41

    if-nez p1, :cond_2

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 122
    :cond_1
    const-string p1, "0"

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Amount:Ljava/lang/Object;

    .line 124
    return-void

    :cond_2
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Amount:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 121
    goto :goto_2

    :cond_3
    const/16 v1, 0x5c

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 124
    return-void

    :pswitch_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_CountryCode(Ljava/lang/Object;)V
    .locals 2

    .line 134
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x37

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_CountryCode:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
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

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_CurrencyCode(Ljava/lang/Object;)V
    .locals 3

    .line 112
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    invoke-static {p1, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_CurrencyCode:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_Date(Ljava/lang/Object;)V
    .locals 2

    .line 142
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Date:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
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

.method public setEmv_poi_FinalTransactionDataIndicator(Ljava/lang/Object;)V
    .locals 3

    .line 192
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_FinalTransactionDataIndicator:Ljava/lang/Object;

    goto :goto_2

    :pswitch_0
    invoke-static {p1, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_MerchantIndicatedHighRiskTransaction(Z)V
    .locals 2

    .line 200
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-boolean p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    add-int/lit8 v1, v1, 0x75

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x4c

    goto :goto_0

    :cond_1
    const/16 p1, 0x4f

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
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_PAServiceStatusList(Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;)V
    .locals 2

    .line 220
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_PAServiceStatusList:Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;

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
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_POID(Ljava/lang/Object;)V
    .locals 2

    .line 151
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setEmv_poi_POIDIL(Ljava/lang/Object;)V
    .locals 3

    .line 166
    nop

    .line 159
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    if-eqz p1, :cond_1

    .line 166
    sget v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 161
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_4

    const/16 p1, 0x4c

    goto :goto_1

    :cond_4
    const/16 p1, 0x3a

    :goto_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_RiskRulesAmount(Ljava/lang/Object;)V
    .locals 3

    .line 212
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v2}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_RiskRulesAmount:Ljava/lang/Object;

    goto :goto_2

    :pswitch_0
    invoke-static {p1, v1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :goto_2
    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x5

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_Time(Ljava/lang/Object;)V
    .locals 2

    .line 176
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_Time:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setEmv_poi_TransactionID(Ljava/lang/Object;)V
    .locals 2

    .line 229
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 228
    :cond_0
    if-eqz p1, :cond_1

    .line 229
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_TransactionID:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x45

    goto :goto_1

    :cond_2
    const/16 p1, 0x47

    goto :goto_1

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_TransactionType(Ljava/lang/Object;)V
    .locals 2

    .line 184
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->emv_poi_TransactionType:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x44

    goto :goto_0

    :cond_1
    const/16 p1, 0x18

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x17

    :try_start_0
    div-int/2addr p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x60

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f

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

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method
