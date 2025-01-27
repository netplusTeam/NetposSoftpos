.class public Lcom/woleapp/netpos/contactless/model/Biller;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;,
        Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;,
        Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;,
        Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;,
        Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;,
        Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;,
        Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;,
        Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;
    }
.end annotation


# instance fields
.field private biller_code:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biller_code"
    .end annotation
.end field

.field private biller_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "biller_name"
    .end annotation
.end field

.field private id:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;

.field private operation:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "operation"
    .end annotation
.end field

.field private service_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_type"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field private verification_status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verification_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "service_type"    # Ljava/lang/String;
    .param p3, "biller_name"    # Ljava/lang/String;
    .param p4, "biller_code"    # Ljava/lang/String;
    .param p5, "operation"    # Ljava/lang/String;
    .param p6, "status"    # Ljava/lang/String;
    .param p7, "verification_status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "service_type",
            "biller_name",
            "biller_code",
            "operation",
            "status",
            "verification_status"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->id:Ljava/lang/Integer;

    .line 28
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/Biller;->service_type:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_name:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_code:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/model/Biller;->operation:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/model/Biller;->status:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/model/Biller;->verification_status:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "service_type"    # Ljava/lang/String;
    .param p3, "biller_name"    # Ljava/lang/String;
    .param p4, "biller_code"    # Ljava/lang/String;
    .param p5, "operation"    # Ljava/lang/String;
    .param p6, "status"    # Ljava/lang/String;
    .param p7, "verification_status"    # Ljava/lang/String;
    .param p8, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "service_type",
            "biller_name",
            "biller_code",
            "operation",
            "status",
            "verification_status",
            "imageUrl"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->id:Ljava/lang/Integer;

    .line 17
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/Biller;->service_type:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_name:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_code:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/model/Biller;->operation:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/model/Biller;->status:Ljava/lang/String;

    .line 22
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/model/Biller;->verification_status:Ljava/lang/String;

    .line 23
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/model/Biller;->imageUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getBiller_code()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_code:Ljava/lang/String;

    return-object v0
.end method

.method public getBiller_name()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->operation:Ljava/lang/String;

    return-object v0
.end method

.method public getService_type()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->service_type:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getVerification_status()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/model/Biller;->verification_status:Ljava/lang/String;

    return-object v0
.end method

.method public setBiller_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "biller_code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "biller_code"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_code:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setBiller_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "biller_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "biller_name"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->biller_name:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->id:Ljava/lang/Integer;

    .line 82
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageUrl"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->imageUrl:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "operation"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->operation:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setService_type(Ljava/lang/String;)V
    .locals 0
    .param p1, "service_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service_type"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->service_type:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->status:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setVerification_status(Ljava/lang/String;)V
    .locals 0
    .param p1, "verification_status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verification_status"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller;->verification_status:Ljava/lang/String;

    .line 130
    return-void
.end method
