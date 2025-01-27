.class public Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;
.super Ljava/lang/Object;
.source "Biller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/model/Biller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ElectricityBillers"
.end annotation


# instance fields
.field public billerName:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public postpaidCode:Ljava/lang/String;

.field public prepaidCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "billerName"    # Ljava/lang/String;
    .param p2, "prepaidCode"    # Ljava/lang/String;
    .param p3, "postpaidCode"    # Ljava/lang/String;
    .param p4, "imageUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "billerName",
            "prepaidCode",
            "postpaidCode",
            "imageUrl"
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;->billerName:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;->prepaidCode:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;->postpaidCode:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/model/Biller$ElectricityBillers;->imageUrl:Ljava/lang/String;

    .line 144
    return-void
.end method
