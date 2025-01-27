.class public Lcom/dspread/xpos/otg/c;
.super Ljava/lang/Object;
.source "Ch34xSerialDriver.java"

# interfaces
.implements Lcom/dspread/xpos/otg/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/otg/c$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "c"


# instance fields
.field private final a:Landroid/hardware/usb/UsbDevice;

.field private final b:Lcom/dspread/xpos/otg/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/otg/c;->a:Landroid/hardware/usb/UsbDevice;

    .line 3
    new-instance v0, Lcom/dspread/xpos/otg/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/dspread/xpos/otg/c$a;-><init>(Lcom/dspread/xpos/otg/c;Landroid/hardware/usb/UsbDevice;I)V

    iput-object v0, p0, Lcom/dspread/xpos/otg/c;->b:Lcom/dspread/xpos/otg/k;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/otg/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/util/Map;
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
    const/16 v1, 0x1a86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x7523

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

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/c;->b:Lcom/dspread/xpos/otg/k;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/c;->a:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method
