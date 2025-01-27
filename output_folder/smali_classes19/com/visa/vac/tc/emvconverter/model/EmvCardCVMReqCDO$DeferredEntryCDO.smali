.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeferredEntryCDO"
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getInstance:I


# instance fields
.field ActionOnBypassedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

.field ActionOnCaptureNotAvailableChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

.field ActionOnPerformedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

.field CurrentEntryNumber:Ljava/lang/Object;

.field MethodID:Ljava/lang/Object;

.field ParameterCDO:Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionOnBypassedChoiceCDO()Ljava/lang/Object;
    .locals 3

    .line 168
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnBypassedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnBypassedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    goto :goto_2

    :goto_1
    const/16 v2, 0x42

    :try_start_0
    div-int/lit8 v2, v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public getActionOnCaptureNotAvailableChoiceCDO()Ljava/lang/Object;
    .locals 2

    .line 176
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnCaptureNotAvailableChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

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
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public getActionOnPerformedChoiceCDO()Ljava/lang/Object;
    .locals 4

    .line 160
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnPerformedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnPerformedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    const/16 v3, 0x32

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getEntry()Ljava/lang/Object;
    .locals 4

    .line 136
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    goto :goto_0

    :cond_0
    const/16 v1, 0xf

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->CurrentEntryNumber:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v1

    :goto_2
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_3
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getMethodID()Ljava/lang/Object;
    .locals 3

    .line 144
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->MethodID:Ljava/lang/Object;

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
    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterCDO()Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;
    .locals 3

    .line 152
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ParameterCDO:Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setActionOnBypassedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 172
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;

    invoke-direct {v0, v1, p1, p2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;-><init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnBypassedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x79

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setActionOnCaptureNotAvailableChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 180
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;

    invoke-direct {v0, v1, p1, p2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;-><init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnCaptureNotAvailableChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    add-int/lit8 p1, p1, 0x3d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method public setActionOnPerformedChoiceCDO(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 164
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->this$0:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;

    invoke-direct {v0, v1, p1, p2}, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;-><init>(Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ActionOnPerformedChoiceCDO:Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$ActionCDO;

    sget p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setEntry(Ljava/lang/Object;)V
    .locals 2

    .line 140
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->CurrentEntryNumber:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

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
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setMethodID(Ljava/lang/Object;)V
    .locals 2

    .line 148
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->MethodID:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setParameterCDO(Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;)V
    .locals 4

    .line 156
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->ParameterCDO:Lcom/visa/vac/tc/emvconverter/model/ParameterCDO;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvCardCVMReqCDO$DeferredEntryCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v2, 0x24

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    throw v3
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
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch
.end method
