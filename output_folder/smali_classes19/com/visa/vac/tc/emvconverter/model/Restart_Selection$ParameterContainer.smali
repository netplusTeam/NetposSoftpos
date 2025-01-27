.class public Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;
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

.field private emv_poi_TransactionType:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.poi.TransactionType"
    .end annotation
.end field

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-string p1, "emv.poi.Amount"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_Amount(Ljava/lang/Object;)V

    .line 92
    const-string p1, "emv.poi.CountryCode"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_CountryCode(Ljava/lang/Object;)V

    .line 93
    const-string p1, "emv.poi.CurrencyCode"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_CurrencyCode(Ljava/lang/Object;)V

    .line 94
    const-string p1, "emv.poi.Date"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_Date(Ljava/lang/Object;)V

    .line 95
    const-string p1, "Final"

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_FinalTransactionDataIndicator(Ljava/lang/Object;)V

    .line 96
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_MerchantIndicatedHighRiskTransaction(Z)V

    .line 97
    const-string p1, "emv.poi.POID"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_POID(Ljava/lang/Object;)V

    .line 98
    const-string p1, "emv.poi.POIDIL"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_POIDIL(Ljava/lang/Object;)V

    .line 99
    const-string p1, "emv.poi.Time"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_Time(Ljava/lang/Object;)V

    .line 100
    const-string p1, "emv.poi.TransactionType"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_TransactionType(Ljava/lang/Object;)V

    .line 101
    new-instance p1, Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;

    invoke-direct {p1}, Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_PAServiceStatusList(Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;)V

    .line 102
    const-string p1, "emv.poi.RiskRulesAmount"

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->setEmv_poi_RiskRulesAmount(Ljava/lang/Object;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getEmv_poi_Amount()Ljava/lang/Object;
    .locals 3

    .line 114
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_Amount:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x49

    goto :goto_0

    :cond_1
    const/16 v0, 0x32

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x3c

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
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_CountryCode()Ljava/lang/Object;
    .locals 4

    .line 122
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x4a

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_CountryCode:Ljava/lang/Object;

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
    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x24

    goto :goto_2

    :cond_1
    const/16 v0, 0x47

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
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch
.end method

.method public getEmv_poi_CurrencyCode()Ljava/lang/Object;
    .locals 4

    .line 106
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_CurrencyCode:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_CurrencyCode:Ljava/lang/Object;

    const/16 v3, 0x30

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    const/16 v1, 0x1e

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getEmv_poi_Date()Ljava/lang/Object;
    .locals 3

    .line 130
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_Date:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getEmv_poi_FinalTransactionDataIndicator()Ljava/lang/Object;
    .locals 5

    .line 180
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_FinalTransactionDataIndicator:Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_FinalTransactionDataIndicator:Ljava/lang/Object;

    const/16 v4, 0x63

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    const/4 v0, 0x0

    :try_start_1
    throw v0
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
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getEmv_poi_MerchantIndicatedHighRiskTransaction()Z
    .locals 2

    .line 188
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x27

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    goto :goto_2

    :goto_1
    const/16 v1, 0x3d

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_PAServiceStatusList()Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;
    .locals 3

    .line 208
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_PAServiceStatusList:Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_POID()Ljava/lang/Object;
    .locals 3

    .line 139
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

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

    .line 147
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

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
    const/4 v1, 0x5

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getEmv_poi_RiskRulesAmount()Ljava/lang/Object;
    .locals 2

    .line 200
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_RiskRulesAmount:Ljava/lang/Object;

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

.method public getEmv_poi_Time()Ljava/lang/Object;
    .locals 2

    .line 164
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_Time:Ljava/lang/Object;

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

.method public getEmv_poi_TransactionType()Ljava/lang/Object;
    .locals 3

    .line 172
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_TransactionType:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public isEmv_poi_MerchantIndicatedHighRiskTransaction()Z
    .locals 3

    .line 196
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public setEmv_poi_Amount(Ljava/lang/Object;)V
    .locals 2

    .line 118
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

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

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_Amount:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x34

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

.method public setEmv_poi_CountryCode(Ljava/lang/Object;)V
    .locals 4

    .line 126
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_CountryCode:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_CurrencyCode(Ljava/lang/Object;)V
    .locals 2

    .line 110
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_CurrencyCode:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x41

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0xb

    goto :goto_0

    :cond_1
    const/16 p1, 0x44

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

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

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_poi_Date(Ljava/lang/Object;)V
    .locals 2

    .line 134
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x33

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_Date:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x14

    goto :goto_2

    :cond_1
    const/16 p1, 0x42

    :goto_2
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_FinalTransactionDataIndicator(Ljava/lang/Object;)V
    .locals 2

    .line 184
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_FinalTransactionDataIndicator:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setEmv_poi_MerchantIndicatedHighRiskTransaction(Z)V
    .locals 3

    .line 192
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-boolean p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_MerchantIndicatedHighRiskTransaction:Z

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

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

.method public setEmv_poi_PAServiceStatusList(Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;)V
    .locals 2

    .line 212
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_PAServiceStatusList:Lcom/visa/vac/tc/emvconverter/model/EmvPoiPAServiceStatusList;

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setEmv_poi_POID(Ljava/lang/Object;)V
    .locals 2

    .line 143
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_POID:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setEmv_poi_POIDIL(Ljava/lang/Object;)V
    .locals 5

    .line 158
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 151
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 153
    const/16 v1, 0x2b

    if-eqz p1, :cond_1

    .line 154
    const/16 v3, 0x37

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_3

    .line 158
    :pswitch_0
    sget v3, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    .line 153
    :cond_2
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 154
    const/16 v1, 0x15

    goto :goto_2

    :cond_3
    nop

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 158
    :pswitch_1
    sget v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 158
    goto :goto_3

    .line 154
    :cond_4
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :catchall_0
    move-exception p1

    throw p1

    .line 156
    :goto_3
    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    .line 158
    return-void

    .line 156
    :cond_5
    if-eqz p1, :cond_7

    .line 158
    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6

    .line 154
    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 158
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    goto :goto_5

    :pswitch_2
    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_POIDIL:Ljava/util/ArrayList;

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :cond_7
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public setEmv_poi_RiskRulesAmount(Ljava/lang/Object;)V
    .locals 2

    .line 204
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_RiskRulesAmount:Ljava/lang/Object;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setEmv_poi_Time(Ljava/lang/Object;)V
    .locals 2

    .line 168
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_Time:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x3b

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x43

    goto :goto_2

    :cond_1
    const/16 p1, 0x35

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    throw p1
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
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method public setEmv_poi_TransactionType(Ljava/lang/Object;)V
    .locals 2

    .line 176
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x28

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    invoke-static {p1}, Lcom/visa/vac/tc/emvconverter/Utils;->setDataOrQualifier(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->emv_poi_TransactionType:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    rem-int/lit8 p1, p1, 0x2

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
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 216
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
