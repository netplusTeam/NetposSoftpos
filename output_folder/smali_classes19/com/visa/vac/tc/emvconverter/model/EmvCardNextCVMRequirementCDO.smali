.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static ContactlessConfiguration:I


# instance fields
.field CardPresent:Z

.field CompletionStep:Ljava/lang/String;

.field NextChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

.field ProcessedCDO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->setCardPresent(Z)V

    .line 18
    const-string v0, "CVSuccessful"

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->setCompletionStep(Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->setNextChoiceCDO(Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getCompletionStep()Ljava/lang/String;
    .locals 3

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->CompletionStep:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getNextChoiceCDO()Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;
    .locals 2

    .line 47
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->NextChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getProcessedCDO()Ljava/lang/String;
    .locals 2

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ProcessedCDO:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ProcessedCDO:Ljava/lang/String;

    const/16 v1, 0x11

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
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method public isCardPresent()Z
    .locals 4

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->CardPresent:Z

    add-int/lit8 v2, v2, 0x2f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v1, v3

    :cond_1
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x1e

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCardPresent(Z)V
    .locals 2

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x55

    :goto_0
    iput-boolean p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->CardPresent:Z

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
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method public setCompletionStep(Ljava/lang/String;)V
    .locals 3

    .line 43
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->CompletionStep:Ljava/lang/String;

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
    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setNextChoiceCDO(Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;)V
    .locals 2

    .line 51
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->NextChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x5c

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

.method public setProcessedCDO(Ljava/lang/String;)V
    .locals 3

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    add-int/lit8 v1, v0, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ProcessedCDO:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 55
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

    sget v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardNextCVMRequirementCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x4e

    goto :goto_0

    :cond_0
    const/16 v1, 0x39

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
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method
