.class public Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static ContactlessConfiguration:I


# instance fields
.field private httpCode:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpCode()Ljava/lang/String;
    .locals 3

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->httpCode:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

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

.method public getInfo()Ljava/lang/String;
    .locals 3

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    add-int/lit8 v1, v0, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->info:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    add-int/lit8 v1, v0, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->message:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

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

.method public getStatus()I
    .locals 3

    .line 11
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->status:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setHttpCode(Ljava/lang/String;)V
    .locals 3

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->httpCode:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

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
    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 2

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->info:Ljava/lang/String;

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    add-int/lit8 v1, v0, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->message:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

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

.method public setStatus(I)V
    .locals 3

    .line 15
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput p1, p0, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->status:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x42

    goto :goto_0

    :cond_1
    const/16 p1, 0x2f

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
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
