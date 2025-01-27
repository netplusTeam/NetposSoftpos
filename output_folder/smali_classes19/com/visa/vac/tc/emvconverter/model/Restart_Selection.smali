.class public Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;
    }
.end annotation


# static fields
.field private static $$a:I

.field private static ContactlessConfiguration:I


# instance fields
.field EncryptedParameter:Ljava/lang/String;

.field From:Ljava/lang/String;

.field To:Ljava/lang/String;

.field parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ParameterContainer"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;

    invoke-direct {v0, p0}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;-><init>(Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;)V

    invoke-virtual {p0, v0}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->setTo(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p2}, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->setFrom(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getEncryptedParameter()Ljava/lang/String;
    .locals 2

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->EncryptedParameter:Ljava/lang/String;

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFrom()Ljava/lang/String;
    .locals 2

    .line 48
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->From:Ljava/lang/String;

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

.method public getParameterContainer()Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;
    .locals 4

    .line 32
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;

    goto :goto_0

    :pswitch_0
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_0
    add-int/lit8 v2, v2, 0x7

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    const/16 v2, 0x29

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v1

    :goto_2
    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_1
    .end packed-switch
.end method

.method public getTo()Ljava/lang/String;
    .locals 3

    .line 40
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x49

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->To:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setEncryptedParameter(Ljava/lang/String;)V
    .locals 3

    .line 60
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    const/16 v1, 0x3d

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->EncryptedParameter:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 p1, v2, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x11

    :goto_0
    packed-switch v1, :pswitch_data_0

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

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 3

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    add-int/lit8 v1, v0, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->From:Ljava/lang/String;

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public setParameterContainer(Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;)V
    .locals 2

    .line 36
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->parameterContainer:Lcom/visa/vac/tc/emvconverter/model/Restart_Selection$ParameterContainer;

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 2

    .line 44
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->$$a:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->To:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Restart_Selection;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 p1, 0x1b

    goto :goto_0

    :cond_1
    const/16 p1, 0x41

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
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method
