.class public Lcom/woleapp/netpos/contactless/model/Biller$SmileInternet;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/Biller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmileInternet"
.end annotation


# instance fields
.field public bundleName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Bundle Name"
    .end annotation
.end field

.field public price:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Price"
    .end annotation
.end field

.field public unitCreditId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Unit Credit ID"
    .end annotation
.end field

.field public validity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Validity"
    .end annotation
.end field

.field public volume:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Volume"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
