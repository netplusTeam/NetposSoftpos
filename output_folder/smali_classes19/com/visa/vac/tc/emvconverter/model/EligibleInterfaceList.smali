.class public Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BuildConfig:I

.field private static ContactlessConfiguration:I


# instance fields
.field EligibleInterfaceCDO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;",
            ">;"
        }
    .end annotation
.end field

.field InterfaceID:Ljava/lang/String;

.field SecureChannelRequirement:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEligibleInterfaceCDO()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;",
            ">;"
        }
    .end annotation

    .line 23
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->EligibleInterfaceCDO:Ljava/util/ArrayList;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->EligibleInterfaceCDO:Ljava/util/ArrayList;

    const/16 v3, 0x46

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getInterfaceID()Ljava/lang/String;
    .locals 2

    .line 15
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/16 v0, 0x17

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->InterfaceID:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->InterfaceID:Ljava/lang/String;

    goto :goto_2

    :goto_1
    const/16 v1, 0x3d

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public getSecureChannelRequirement()Ljava/lang/String;
    .locals 2

    .line 32
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x34

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->SecureChannelRequirement:Ljava/lang/String;

    return-object v0

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
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method public setEligibleInterfaceCDO(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceCDO;",
            ">;)V"
        }
    .end annotation

    .line 28
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    add-int/lit8 v1, v0, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x1c

    goto :goto_0

    :cond_0
    const/16 v1, 0x1a

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->EligibleInterfaceCDO:Ljava/util/ArrayList;

    packed-switch v1, :pswitch_data_0

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
    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method public setInterfaceID(Ljava/lang/String;)V
    .locals 2

    .line 19
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->InterfaceID:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setSecureChannelRequirement(Ljava/lang/String;)V
    .locals 2

    .line 36
    sget v0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->SecureChannelRequirement:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

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
