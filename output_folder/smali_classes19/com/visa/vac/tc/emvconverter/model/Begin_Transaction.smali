.class public Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;
    }
.end annotation


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# instance fields
.field EncryptedParameter:Ljava/lang/String;

.field From:Ljava/lang/String;

.field To:Ljava/lang/String;

.field parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ParameterContainer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;

    invoke-direct {v0, p0}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;-><init>(Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;)V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->setTo(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->setFrom(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getEncryptedParameter()Ljava/lang/String;
    .locals 3

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->EncryptedParameter:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->EncryptedParameter:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v2, 0x3c

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFrom()Ljava/lang/String;
    .locals 3

    .line 48
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v1, v0, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->From:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x3d

    goto :goto_0

    :cond_1
    const/16 v0, 0x48

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object v1

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
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public getParameterContainer()Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;
    .locals 3

    .line 32
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 3

    .line 40
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    const/16 v1, 0x49

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->To:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->To:Ljava/lang/String;

    goto :goto_2

    :goto_1
    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v2, v2, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public setEncryptedParameter(Ljava/lang/String;)V
    .locals 3

    .line 60
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x30

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->EncryptedParameter:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 p1, 0x7

    goto :goto_1

    :cond_1
    const/16 p1, 0x10

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_3
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1
    .end packed-switch
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 3

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->From:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;)V
    .locals 2

    .line 36
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction$ParameterContainer;

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x4b

    goto :goto_0

    :cond_1
    const/16 p1, 0x3e

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
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 3

    .line 44
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->BuildConfig:I

    add-int/lit8 v1, v0, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->To:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Begin_Transaction;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

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
