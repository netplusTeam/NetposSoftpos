.class public Lcom/mastercard/terminalsdk/objects/ThirdPartyData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;
    }
.end annotation


# instance fields
.field private a:[B

.field private b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

.field private c:[B

.field private d:[B

.field private e:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->i:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    array-length v0, p1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->e:[B

    const/4 v0, 0x4

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->d:[B

    invoke-virtual {p0}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->isDeviceTypePresent()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    array-length v2, p1

    if-lt v2, v1, :cond_0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->c:[B

    invoke-direct {p0}, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->a()Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    move-result-object v0

    iput-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    move v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F00:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p1, v0}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p1

    :cond_1
    :goto_0
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->a:[B

    return-void

    :cond_2
    new-instance p1, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;

    sget-object v0, Lcom/mastercard/terminalsdk/exception/ExceptionCode;->X6F00:Lcom/mastercard/terminalsdk/exception/ExceptionCode;

    invoke-direct {p1, v0}, Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;-><init>(Lcom/mastercard/terminalsdk/exception/ExceptionCode;)V

    throw p1
.end method

.method private a()Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;
    .locals 3

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->c:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->h:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->j:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->a:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->d:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->e:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->c:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;->i:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getCountryCode()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->e:[B

    return-object v0
.end method

.method public final getDeviceType()Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->b:Lcom/mastercard/terminalsdk/objects/ThirdPartyData$DeviceType;

    return-object v0
.end method

.method public final getDeviceTypeCode()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->c:[B

    return-object v0
.end method

.method public final getProprietaryData()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->a:[B

    return-object v0
.end method

.method public final isDeviceTypePresent()Z
    .locals 2

    iget-object v0, p0, Lcom/mastercard/terminalsdk/objects/ThirdPartyData;->d:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, -0x80

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
