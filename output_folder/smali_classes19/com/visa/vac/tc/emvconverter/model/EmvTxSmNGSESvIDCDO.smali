.class public Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static ContactlessConfiguration:I


# instance fields
.field EligibleInterfaceCDO:Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;

.field EligibleInterfaceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;",
            ">;"
        }
    .end annotation
.end field

.field SvID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEligibleInterfaceCDO()Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;
    .locals 5

    .line 14
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->EligibleInterfaceCDO:Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;

    const/16 v3, 0x29

    add-int/2addr v1, v3

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x1f

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v0

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
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch
.end method

.method public getEligibleInterfaceList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;",
            ">;"
        }
    .end annotation

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->EligibleInterfaceList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x47

    goto :goto_0

    :cond_1
    const/16 v1, 0xf

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
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
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public getSvID()Ljava/lang/String;
    .locals 2

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->SvID:Ljava/lang/String;

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

.method public setEligibleInterfaceCDO(Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;)V
    .locals 2

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->EligibleInterfaceCDO:Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;

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

.method public setEligibleInterfaceList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;",
            ">;)V"
        }
    .end annotation

    .line 36
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->EligibleInterfaceList:Ljava/util/ArrayList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

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

.method public setSvID(Ljava/lang/String;)V
    .locals 4

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x32

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->SvID:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EmvTxSmNGSESvIDCDO;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    :try_start_1
    throw v3
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
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
