.class public Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getInstance:I


# instance fields
.field DataDelivery:Ljava/lang/String;

.field MethodID:Ljava/lang/String;

.field TerminalInteraction:Ljava/lang/String;

.field Validator:Ljava/lang/String;

.field scDataToCVEDContainer:Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataDelivery()Ljava/lang/String;
    .locals 3

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->DataDelivery:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x36

    goto :goto_0

    :cond_1
    const/16 v1, 0x26

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
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method public getMethodID()Ljava/lang/String;
    .locals 3

    .line 15
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->MethodID:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

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

.method public getScDataToCVEDContainer()Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;
    .locals 3

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->scDataToCVEDContainer:Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getTerminalInteraction()Ljava/lang/String;
    .locals 3

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->TerminalInteraction:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getValidator()Ljava/lang/String;
    .locals 3

    .line 47
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->Validator:Ljava/lang/String;

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
    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setDataDelivery(Ljava/lang/String;)V
    .locals 3

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :cond_0
    const/16 v1, 0x59

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->DataDelivery:Ljava/lang/String;

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
    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x15

    goto :goto_2

    :cond_1
    const/16 p1, 0x47

    :goto_2
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_1
    .end packed-switch
.end method

.method public setMethodID(Ljava/lang/String;)V
    .locals 5

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v4, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->MethodID:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return-void

    :goto_1
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
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
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setScDataToCVEDContainer(Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;)V
    .locals 2

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->scDataToCVEDContainer:Lcom/visa/vac/tc/emvconverter/model/SCDataToCVEDContainer;

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x23

    goto :goto_0

    :cond_1
    const/16 p1, 0x19

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
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public setTerminalInteraction(Ljava/lang/String;)V
    .locals 2

    .line 43
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x5f

    goto :goto_0

    :cond_0
    const/16 v0, 0x4f

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->TerminalInteraction:Ljava/lang/String;

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
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public setValidator(Ljava/lang/String;)V
    .locals 3

    .line 51
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->Validator:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;->$$a:I

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

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method
