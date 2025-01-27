.class public Lcom/visa/vac/tc/emvconverter/model/Open_Failed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;
    }
.end annotation


# static fields
.field private static getInstance:I

.field private static getTerminalData:I


# instance fields
.field EncryptedParameter:Ljava/lang/String;

.field From:Ljava/lang/String;

.field To:Ljava/lang/String;

.field parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ParameterContainer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;

    invoke-direct {v0, p0}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;-><init>(Lcom/visa/vac/tc/emvconverter/model/Open_Failed;)V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;)V

    .line 23
    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->setTo(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->setFrom(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getEncryptedParameter()Ljava/lang/String;
    .locals 2

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3e

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->EncryptedParameter:Ljava/lang/String;

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
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 44
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->From:Ljava/lang/String;

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

.method public getParameterContainer()Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;
    .locals 3

    .line 28
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 6

    .line 36
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

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

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->To:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_0
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_2
    :try_start_1
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I

    throw v4
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
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setEncryptedParameter(Ljava/lang/String;)V
    .locals 3

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v1, v0, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->EncryptedParameter:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x1d

    goto :goto_0

    :cond_1
    const/16 p1, 0x56

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p1, 0x2e

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 2

    .line 48
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->From:Ljava/lang/String;

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
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;)V
    .locals 3

    .line 32
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v1, v0, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Open_Failed$ParameterContainer;

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 2

    .line 40
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getTerminalData:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Open_Failed;->To:Ljava/lang/String;

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
    .packed-switch 0x39
        :pswitch_0
    .end packed-switch
.end method
