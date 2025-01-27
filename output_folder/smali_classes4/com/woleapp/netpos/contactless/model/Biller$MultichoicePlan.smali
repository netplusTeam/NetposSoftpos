.class public Lcom/woleapp/netpos/contactless/model/Biller$MultichoicePlan;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/Biller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultichoicePlan"
.end annotation


# instance fields
.field public currentPrice:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Current Price"
    .end annotation
.end field

.field public newPrice:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "New Price"
    .end annotation
.end field

.field public product:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Products"
    .end annotation
.end field

.field public productCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Product Code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
