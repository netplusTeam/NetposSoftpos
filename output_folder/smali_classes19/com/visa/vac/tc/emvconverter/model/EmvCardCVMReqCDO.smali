.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;,
        Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;
    }
.end annotation


# static fields
.field private static $$a:I

.field private static ContactlessConfiguration:I


# instance fields
.field CardPresent:Z

.field CompletionStep:Ljava/lang/Object;

.field DeferredEntryList:Ljava/lang/Object;

.field NextCVMCDO:Ljava/lang/Object;

.field NextChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

.field ProcessedCDO:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;-><init>()V

    .line 27
    iget-object v1, v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;->MethodID:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->setDeferredEntryList()V

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->setNextCVMCDO(Ljava/lang/Object;)V

    .line 32
    :goto_0
    const-string v0, "CardPresent"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->setCardPresent(Ljava/lang/Object;)V

    .line 33
    const-string v0, "ProcessedCDO"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->setProcessedCDO(Ljava/lang/Object;)V

    .line 34
    const-string v0, "CompletionStep"

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/TagDataList;->getSecGenData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->setCompletionStep(Ljava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCompletionStep()Ljava/lang/Object;
    .locals 3

    .line 64
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->CompletionStep:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getDeferredEntryList()Ljava/lang/Object;
    .locals 3

    .line 88
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->DeferredEntryList:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getNextCVMCDO()Ljava/lang/Object;
    .locals 2

    .line 72
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->NextCVMCDO:Ljava/lang/Object;

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
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method

.method public getNextChoiceCDO()Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;
    .locals 4

    .line 80
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->NextChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x60

    goto :goto_1

    :cond_1
    const/16 v1, 0x2c

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v0

    :goto_2
    const/16 v1, 0x4a

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch
.end method

.method public getProcessedCDO()Ljava/lang/Object;
    .locals 3

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ProcessedCDO:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isCardPresent()Z
    .locals 3

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    add-int/lit8 v1, v0, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->CardPresent:Z

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x58

    goto :goto_0

    :cond_1
    const/16 v0, 0x21

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

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
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public setCardPresent(Ljava/lang/Object;)V
    .locals 4

    .line 51
    nop

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 45
    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 51
    sget v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    add-int/lit8 v2, v2, 0x77

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :pswitch_0
    iput-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->CardPresent:Z

    return-void

    .line 45
    :goto_1
    const/16 v2, 0xf

    goto :goto_2

    :cond_1
    const/16 v2, 0x3a

    :goto_2
    packed-switch v2, :pswitch_data_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_3
    goto :goto_5

    :pswitch_1
    instance-of v2, p1, Ljava/lang/String;

    const/16 v3, 0x56

    :try_start_0
    div-int/2addr v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_4

    :cond_2
    move v2, v0

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_3

    .line 51
    :catchall_0
    move-exception p1

    throw p1

    .line 45
    :goto_5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TRUE"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 46
    iput-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->CardPresent:Z

    .line 51
    return-void

    .line 48
    :cond_3
    :pswitch_2
    iput-boolean v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->CardPresent:Z

    .line 45
    sget p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_4

    .line 51
    return-void

    .line 45
    :cond_4
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I

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
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public setCompletionStep(Ljava/lang/Object;)V
    .locals 2

    .line 68
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x37

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->CompletionStep:Ljava/lang/Object;

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
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public setDeferredEntryList()V
    .locals 8

    .line 121
    nop

    .line 92
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;

    invoke-direct {v0, p0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;-><init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;)V

    .line 93
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setEntry(Ljava/lang/Object;)V

    .line 94
    const-string v2, "NoCVM"

    invoke-virtual {v0, v2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setMethodID(Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnCaptureNotAvailableChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    const-string v3, "Either"

    invoke-virtual {v0, v4, v3}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnPerformedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnBypassedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    new-instance v5, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    invoke-direct {v5}, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;-><init>()V

    invoke-virtual {v0, v5}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setParameterCDO(Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;)V

    .line 100
    new-instance v5, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;

    invoke-direct {v5, p0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;-><init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;)V

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setEntry(Ljava/lang/Object;)V

    .line 102
    const-string v6, "SignatureAfterTransaction"

    invoke-virtual {v5, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setMethodID(Ljava/lang/Object;)V

    .line 103
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnCaptureNotAvailableChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v5, v4, v3}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnPerformedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v4}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnBypassedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    new-instance v3, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    invoke-direct {v3}, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;-><init>()V

    invoke-virtual {v5, v3}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setParameterCDO(Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;)V

    .line 109
    new-instance v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;

    invoke-direct {v3, p0}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;-><init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;)V

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setEntry(Ljava/lang/Object;)V

    .line 111
    const-string v6, "MOIPIN"

    invoke-virtual {v3, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setMethodID(Ljava/lang/Object;)V

    .line 112
    const-string v6, "Online"

    invoke-virtual {v3, v4, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnPerformedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const-string v6, "Decline"

    invoke-virtual {v3, v4, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnBypassedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v3, v4, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setActionOnCaptureNotAvailableChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    new-instance v6, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    invoke-direct {v6}, Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;-><init>()V

    invoke-virtual {v3, v6}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->setParameterCDO(Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;)V

    .line 117
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual {v6, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {v6, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 121
    iput-object v6, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->DeferredEntryList:Ljava/lang/Object;

    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
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

.method public setNextCVMCDO(Ljava/lang/Object;)V
    .locals 3

    .line 76
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x47

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->NextCVMCDO:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x2f

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public setNextChoiceCDO(Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;)V
    .locals 2

    .line 84
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->NextChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setProcessedCDO(Ljava/lang/Object;)V
    .locals 3

    .line 60
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    add-int/lit8 v1, v0, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ProcessedCDO:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

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

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 195
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

    sget v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
