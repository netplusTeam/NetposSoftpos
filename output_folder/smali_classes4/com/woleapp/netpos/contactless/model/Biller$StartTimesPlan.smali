.class public Lcom/woleapp/netpos/contactless/model/Biller$StartTimesPlan;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/Biller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartTimesPlan"
.end annotation


# instance fields
.field public dailyFee:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Daily"
    .end annotation
.end field

.field public monthlyFee:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Monthly"
    .end annotation
.end field

.field public plan:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PLANS"
    .end annotation
.end field

.field public weeklyFee:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Weekly"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
