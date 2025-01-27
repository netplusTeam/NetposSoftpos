.class public Lcom/visa/vac/tc/emvconverter/model/Response;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ContactlessConfiguration:I

.field private static getInstance:I


# instance fields
.field private error:Ljava/lang/String;

.field private errorResponse:Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;

.field private error_description:Ljava/lang/String;

.field private responseStatus:Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 4

    .line 27
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->error:Ljava/lang/String;

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
    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x43

    goto :goto_2

    :cond_1
    const/16 v1, 0x5b

    :goto_2
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    const/16 v1, 0x19

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method public getErrorResponse()Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;
    .locals 5

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    const/16 v2, 0xc

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->errorResponse:Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->errorResponse:Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;

    const/16 v4, 0xe

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    move v1, v3

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_1
    div-int/2addr v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getError_description()Ljava/lang/String;
    .locals 2

    .line 35
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->error_description:Ljava/lang/String;

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
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch
.end method

.method public getResponseStatus()Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;
    .locals 2

    .line 11
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->responseStatus:Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;

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

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setError(Ljava/lang/String;)V
    .locals 3

    .line 31
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    add-int/lit8 v1, v0, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xe

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->error:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x10

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x50

    goto :goto_1

    :cond_1
    const/16 p1, 0x3d

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/16 p1, 0x40

    :try_start_1
    div-int/lit8 p1, p1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_1
    .end packed-switch
.end method

.method public setErrorResponse(Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;)V
    .locals 3

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->errorResponse:Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x5e

    goto :goto_0

    :cond_1
    const/16 p1, 0x21

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
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public setError_description(Ljava/lang/String;)V
    .locals 3

    .line 39
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->error_description:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x34

    goto :goto_1

    :cond_1
    const/16 p1, 0x3a

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch
.end method

.method public setResponseStatus(Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;)V
    .locals 2

    .line 15
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Response;->getInstance:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Response;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Response;->responseStatus:Lcom/visa/vac/tc/emvconverter/model/ResponseStatus;

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
