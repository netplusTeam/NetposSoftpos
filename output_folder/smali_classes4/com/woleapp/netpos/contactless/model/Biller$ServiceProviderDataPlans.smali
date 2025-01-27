.class public Lcom/woleapp/netpos/contactless/model/Biller$ServiceProviderDataPlans;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/Biller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceProviderDataPlans"
.end annotation


# instance fields
.field public airtelPlans:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AIRTEL"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;"
        }
    .end annotation
.end field

.field public etisalatPlans:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "9Mobile"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;"
        }
    .end annotation
.end field

.field public gloPlans:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GLO"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;"
        }
    .end annotation
.end field

.field public mtnPlans:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "MTN"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/Biller$DataPlan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
