.class public Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static getTerminalData:I


# instance fields
.field CardholderChoiceAvailable:Z

.field CardholderChoiceOrder:Ljava/lang/String;

.field InterfaceID:Ljava/lang/String;

.field SvIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/SvIDCDO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardholderChoiceAvailable()Z
    .locals 3

    .line 34
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-boolean v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->CardholderChoiceAvailable:Z

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x5d

    goto :goto_0

    :cond_1
    const/16 v1, 0x30

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x49

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method public getCardholderChoiceOrder()Ljava/lang/String;
    .locals 4

    .line 42
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->CardholderChoiceOrder:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->CardholderChoiceOrder:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/4 v3, 0x5

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getInterfaceID()Ljava/lang/String;
    .locals 4

    .line 26
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->InterfaceID:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->InterfaceID:Ljava/lang/String;

    const/16 v3, 0x4e

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x55

    goto :goto_2

    :cond_1
    const/16 v1, 0x25

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch
.end method

.method public getSvIDList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/SvIDCDO;",
            ">;"
        }
    .end annotation

    .line 18
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->SvIDList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

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

.method public setCardholderChoiceAvailable(Z)V
    .locals 2

    .line 38
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-boolean p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->CardholderChoiceAvailable:Z

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x5b

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public setCardholderChoiceOrder(Ljava/lang/String;)V
    .locals 2

    .line 46
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->CardholderChoiceOrder:Ljava/lang/String;

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

.method public setInterfaceID(Ljava/lang/String;)V
    .locals 3

    .line 30
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->InterfaceID:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setSvIDList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/SvIDCDO;",
            ">;)V"
        }
    .end annotation

    .line 22
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->getTerminalData:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmPreProcessingList;->SvIDList:Ljava/util/ArrayList;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
