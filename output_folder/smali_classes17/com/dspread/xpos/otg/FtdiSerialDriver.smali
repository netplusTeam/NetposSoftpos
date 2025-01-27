.class public Lcom/dspread/xpos/otg/FtdiSerialDriver;
.super Ljava/lang/Object;
.source "FtdiSerialDriver.java"

# interfaces
.implements Lcom/dspread/xpos/otg/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/otg/FtdiSerialDriver$a;,
        Lcom/dspread/xpos/otg/FtdiSerialDriver$DeviceType;
    }
.end annotation


# instance fields
.field private final a:Landroid/hardware/usb/UsbDevice;

.field private final b:Lcom/dspread/xpos/otg/k;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver;->a:Landroid/hardware/usb/UsbDevice;

    .line 3
    new-instance v0, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dspread/xpos/otg/FtdiSerialDriver$a;-><init>(Lcom/dspread/xpos/otg/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver;->b:Lcom/dspread/xpos/otg/k;

    return-void
.end method

.method public static c()Ljava/util/Map;
    .locals 3
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
    const/16 v1, 0x403

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x6001
        0x6015
    .end array-data
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

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver;->b:Lcom/dspread/xpos/otg/k;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/FtdiSerialDriver;->a:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method
