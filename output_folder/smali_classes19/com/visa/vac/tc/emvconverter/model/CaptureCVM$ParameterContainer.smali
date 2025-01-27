.class public Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getInstance:I


# instance fields
.field cvmToCapture:Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emv.tx.cvm.CVMToCaptureCDO"
    .end annotation
.end field

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->getInstance:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/CaptureCVM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCvmToCapture()Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;
    .locals 3

    .line 52
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v0, 0x7

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->cvmToCapture:Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method public setCvmToCapture(Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;)V
    .locals 2

    .line 56
    sget v0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->getInstance:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->cvmToCapture:Lcom/visa/vac/tc/emvconverter/model/CvmToCaptureCDO;

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 p1, v1, 0x80

    sput p1, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->ContactlessConfiguration:I

    rem-int/lit8 v1, v1, 0x2

    const/4 p1, 0x0

    if-nez v1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x2d

    :try_start_0
    div-int/2addr v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/CaptureCVM$ParameterContainer;->getInstance:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
