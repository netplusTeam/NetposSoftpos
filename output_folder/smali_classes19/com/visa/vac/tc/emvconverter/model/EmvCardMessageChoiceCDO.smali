.class public Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static $$a:I

.field private static getInstance:I


# instance fields
.field Format:Ljava/lang/String;

.field PayloadContainer:Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->getInstance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "JSONExtended"

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->Format:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;

    invoke-direct {v0}, Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;-><init>()V

    iput-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->PayloadContainer:Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;

    .line 14
    return-void
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 3

    .line 17
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->getInstance:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->Format:Ljava/lang/String;

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
    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getPayloadContainer()Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;
    .locals 3

    .line 25
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->$$a:I

    add-int/lit8 v1, v0, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->PayloadContainer:Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2

    .line 21
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->$$a:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->Format:Ljava/lang/String;

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
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public setPayloadContainer(Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;)V
    .locals 2

    .line 29
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->getInstance:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EmvCardMessageChoiceCDO;->PayloadContainer:Lcom/visa/vac/tc/emvconverter/model/PayloadContainer;

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
