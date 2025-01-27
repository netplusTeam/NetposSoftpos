.class public Lcom/visa/vac/tc/emvconverter/model/SendData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static getInstance:I

.field private static getTerminalData:I


# instance fields
.field EncryptedParameter:Ljava/lang/String;

.field From:Ljava/lang/String;

.field To:Ljava/lang/String;

.field parameterContainer:Lcom/visa/vac/tc/emvconverter/model/OpenParameterContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ParameterContainer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncryptedParameter()Ljava/lang/String;
    .locals 4

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->EncryptedParameter:Ljava/lang/String;

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
    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x23

    goto :goto_2

    :cond_1
    const/16 v0, 0x4b

    :goto_2
    packed-switch v0, :pswitch_data_1

    return-object v1

    :pswitch_1
    const/16 v0, 0x15

    :try_start_1
    div-int/2addr v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_1
    .end packed-switch
.end method

.method public getFrom()Ljava/lang/String;
    .locals 3

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->From:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getParameterContainer()Lcom/visa/vac/tc/emvconverter/model/OpenParameterContainer;
    .locals 3

    .line 15
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    add-int/lit8 v1, v0, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x27

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/OpenParameterContainer;

    add-int/2addr v0, v2

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

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

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public getTo()Ljava/lang/String;
    .locals 3

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->To:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x5c

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v1

    :goto_1
    const/16 v0, 0x2c

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setEncryptedParameter(Ljava/lang/String;)V
    .locals 2

    .line 43
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->EncryptedParameter:Ljava/lang/String;

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

.method public setFrom(Ljava/lang/String;)V
    .locals 3

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    add-int/lit8 v1, v0, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->From:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x9

    goto :goto_0

    :cond_1
    const/16 p1, 0x54

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
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/OpenParameterContainer;)V
    .locals 2

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/OpenParameterContainer;

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

.method public setTo(Ljava/lang/String;)V
    .locals 3

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/SendData;->getTerminalData:I

    add-int/lit8 v1, v0, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/SendData;->To:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/SendData;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x5f

    goto :goto_0

    :cond_1
    const/16 p1, 0x36

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
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method
