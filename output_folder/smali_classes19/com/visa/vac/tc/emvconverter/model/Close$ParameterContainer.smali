.class public Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/Close;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static BuildConfig:I

.field private static getInstance:I


# instance fields
.field eligibleInterfaceList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.sm.EligibleInterfaceList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;",
            ">;"
        }
    .end annotation
.end field

.field emv_ngk_dcm_Disconnect:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.ngk.dcm.Disconnect"
    .end annotation
.end field

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/Close;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->BuildConfig:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/Close;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/Close;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEligibleInterfaceList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;",
            ">;"
        }
    .end annotation

    .line 57
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->eligibleInterfaceList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

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

.method public getEmv_ngk_dcm_Disconnect()Ljava/lang/String;
    .locals 2

    .line 66
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->BuildConfig:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->emv_ngk_dcm_Disconnect:Ljava/lang/String;

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
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch
.end method

.method public setEligibleInterfaceList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/visa/vac/tc/emvconverter/model/EligibleInterfaceList;",
            ">;)V"
        }
    .end annotation

    .line 62
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->BuildConfig:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->eligibleInterfaceList:Ljava/util/ArrayList;

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x7

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_0
    .end packed-switch
.end method

.method public setEmv_ngk_dcm_Disconnect(Ljava/lang/String;)V
    .locals 3

    .line 70
    sget v0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v0, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x1e

    goto :goto_0

    :cond_0
    const/16 v1, 0x61

    :goto_0
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->emv_ngk_dcm_Disconnect:Ljava/lang/String;

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 p1, 0x1b

    goto :goto_1

    :cond_1
    const/16 p1, 0x32

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_0
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->BuildConfig:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Close$ParameterContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
