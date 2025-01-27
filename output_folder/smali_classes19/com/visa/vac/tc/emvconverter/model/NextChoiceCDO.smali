.class public Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static getInstance:I

.field private static getTerminalData:I


# instance fields
.field NextCVMCDO:Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->setNextCVMCDO(Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getNextCVMCDO()Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;
    .locals 2

    .line 14
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getInstance:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->NextCVMCDO:Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;

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

.method public setNextCVMCDO(Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;)V
    .locals 3

    .line 18
    sget v0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->NextCVMCDO:Lcom/visa/vac/tc/emvconverter/model/NextCVMCDO;

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/NextChoiceCDO;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x10

    goto :goto_0

    :cond_1
    const/16 p1, 0x4a

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
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method
