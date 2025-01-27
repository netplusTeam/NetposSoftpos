.class final Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;
.super Lcom/visa/vac/tc/emvconverter/EmvReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/app/ttpkernel/ContactlessKernel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactlessConfiguration"
.end annotation


# static fields
.field private static $$a:I

.field private static ContactlessConfiguration:I


# instance fields
.field private synthetic getInstance:Lcom/visa/app/ttpkernel/ContactlessKernel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    return-void
.end method

.method private constructor <init>(Lcom/visa/app/ttpkernel/ContactlessKernel;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->getInstance:Lcom/visa/app/ttpkernel/ContactlessKernel;

    invoke-direct {p0}, Lcom/visa/vac/tc/emvconverter/EmvReader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visa/app/ttpkernel/ContactlessKernel;B)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;-><init>(Lcom/visa/app/ttpkernel/ContactlessKernel;)V

    return-void
.end method


# virtual methods
.method public final getActiveInterface()I
    .locals 3

    .line 258
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x29

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    add-int/lit8 v1, v1, 0x7d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
    .end packed-switch
.end method

.method public final getInterfaceType()I
    .locals 3

    .line 261
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_0

    :cond_0
    const/16 v0, 0x47

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
    .end packed-switch
.end method

.method public final isCardPresent()Z
    .locals 3

    .line 264
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->getInstance:Lcom/visa/app/ttpkernel/ContactlessKernel;

    invoke-static {v0}, Lcom/visa/app/ttpkernel/ContactlessKernel;->access$200(Lcom/visa/app/ttpkernel/ContactlessKernel;)Lcom/visa/app/ttpkernel/NfcTransceiver;

    move-result-object v0

    invoke-interface {v0}, Lcom/visa/app/ttpkernel/NfcTransceiver;->isCardPresent()Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->getInstance:Lcom/visa/app/ttpkernel/ContactlessKernel;

    invoke-static {v0}, Lcom/visa/app/ttpkernel/ContactlessKernel;->access$200(Lcom/visa/app/ttpkernel/ContactlessKernel;)Lcom/visa/app/ttpkernel/NfcTransceiver;

    move-result-object v0

    invoke-interface {v0}, Lcom/visa/app/ttpkernel/NfcTransceiver;->isCardPresent()Z

    move-result v0

    sget v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    rem-int/lit8 v1, v1, 0x2

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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final sendAndReceive([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 277
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 274
    :cond_0
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessKernel;->access$300()Lcom/visa/app/ttpkernel/ContactlessResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visa/app/ttpkernel/ContactlessResult;->setLastCommand([B)V

    .line 275
    iget-object v0, p0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->getInstance:Lcom/visa/app/ttpkernel/ContactlessKernel;

    invoke-static {v0}, Lcom/visa/app/ttpkernel/ContactlessKernel;->access$200(Lcom/visa/app/ttpkernel/ContactlessKernel;)Lcom/visa/app/ttpkernel/NfcTransceiver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/visa/app/ttpkernel/NfcTransceiver;->transceive([B)[B

    move-result-object p1

    .line 276
    invoke-static {}, Lcom/visa/app/ttpkernel/ContactlessKernel;->access$300()Lcom/visa/app/ttpkernel/ContactlessResult;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/visa/app/ttpkernel/ContactlessResult;->setLastSW([B)V

    .line 277
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 v0, 0x55

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final sendCancel()V
    .locals 2

    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public final start()Z
    .locals 3

    .line 267
    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x5b

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x47

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public final stop()V
    .locals 2

    sget v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

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
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public final updateActivity(Landroid/app/Activity;)V
    .locals 1

    sget p1, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->ContactlessConfiguration:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lcom/visa/app/ttpkernel/ContactlessKernel$ContactlessConfiguration;->$$a:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
