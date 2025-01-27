.class public Lcom/woleapp/netpos/contactless/model/Biller$BillerPlans;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/Biller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillerPlans"
.end annotation


# instance fields
.field public multichoicePlans:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MULTICHOICE SUBSCRIPTION PLANS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;",
            ">;"
        }
    .end annotation
.end field

.field public smileInternetList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SMILE DATA PLANS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;",
            ">;"
        }
    .end annotation
.end field

.field public spectranetInternetList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SPECTRANET DATA PLANS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$SpectranetInternet;",
            ">;"
        }
    .end annotation
.end field

.field public startTimesPlans:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "STARTIMES SUBSCRIPTION PLANS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
