.class public Lcom/dspread/xpos/otg/h;
.super Ljava/lang/Object;
.source "ProlificSerialDriver.java"

# interfaces
.implements Lcom/dspread/xpos/otg/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/otg/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/hardware/usb/UsbDevice;

.field private final c:Lcom/dspread/xpos/otg/k;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/dspread/xpos/otg/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/h;->a:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/dspread/xpos/otg/h;->b:Landroid/hardware/usb/UsbDevice;

    .line 9
    new-instance v0, Lcom/dspread/xpos/otg/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dspread/xpos/otg/h$a;-><init>(Lcom/dspread/xpos/otg/h;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/dspread/xpos/otg/h;->c:Lcom/dspread/xpos/otg/k;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/otg/h;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const/16 v1, 0x67b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x2303

    aput v4, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/otg/k;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/otg/h;->c:Lcom/dspread/xpos/otg/k;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/h;->b:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method
