.class public Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/model/ErrorResponse$ErrorResponseDetail;
    }
.end annotation


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# instance fields
.field private details:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/visa/vac/tc/emvconverter/model/ErrorResponse$ErrorResponseDetail;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/visa/vac/tc/emvconverter/model/ErrorResponse$ErrorResponseDetail;",
            ">;"
        }
    .end annotation

    .line 41
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->details:Ljava/util/List;

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

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 33
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    add-int/lit8 v1, v0, 0x4b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->message:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

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
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getReason()Ljava/lang/String;
    .locals 3

    .line 25
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->reason:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x5e

    goto :goto_0

    :cond_1
    const/16 v1, 0x51

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x2c

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch
.end method

.method public getStatus()I
    .locals 3

    .line 17
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget v0, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->status:I

    add-int/lit8 v1, v1, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public setDetails(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/visa/vac/tc/emvconverter/model/ErrorResponse$ErrorResponseDetail;",
            ">;)V"
        }
    .end annotation

    .line 45
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    add-int/lit8 v1, v0, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->details:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 3

    .line 37
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    add-int/lit8 v1, v0, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->message:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 2

    .line 29
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->reason:Ljava/lang/String;

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

.method public setStatus(I)V
    .locals 2

    .line 21
    sget v0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput p1, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->status:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 p1, 0x30

    goto :goto_0

    :cond_1
    const/16 p1, 0x60

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
    .packed-switch 0x30
        :pswitch_0
    .end packed-switch
.end method
