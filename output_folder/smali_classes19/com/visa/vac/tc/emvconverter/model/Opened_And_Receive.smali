.class public Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getInstance:I


# instance fields
.field EncryptedParameter:Ljava/lang/String;

.field From:Ljava/lang/String;

.field To:Ljava/lang/String;

.field parameterContainer:Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ParameterContainer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->setTo(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->setFrom(Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getEncryptedParameter()Ljava/lang/String;
    .locals 2

    .line 51
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    add-int/lit8 v0, v0, 0x1b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4e

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->EncryptedParameter:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->EncryptedParameter:Ljava/lang/String;

    const/16 v1, 0x10

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
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public getFrom()Ljava/lang/String;
    .locals 3

    .line 43
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->From:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getParameterContainer()Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;
    .locals 3

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getTo()Ljava/lang/String;
    .locals 3

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    add-int/lit8 v1, v0, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->To:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setEncryptedParameter(Ljava/lang/String;)V
    .locals 3

    .line 55
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    add-int/lit8 v1, v0, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->EncryptedParameter:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x27

    goto :goto_0

    :cond_1
    const/16 p1, 0x5e

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
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2

    .line 47
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->From:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/16 p1, 0x1c

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
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;)V
    .locals 3

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/SendParameterContainer;

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 2

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->To:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Opened_And_Receive;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x3f

    goto :goto_0

    :cond_1
    const/16 p1, 0x4a

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
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method
