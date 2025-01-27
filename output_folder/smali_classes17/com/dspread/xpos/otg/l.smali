.class public Lcom/dspread/xpos/otg/l;
.super Ljava/lang/Object;
.source "UsbSerialProber.java"


# instance fields
.field private final a:Lcom/dspread/xpos/otg/g;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/otg/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/otg/l;->a:Lcom/dspread/xpos/otg/g;

    return-void
.end method

.method public static a()Lcom/dspread/xpos/otg/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/dspread/xpos/otg/g;

    invoke-direct {v0}, Lcom/dspread/xpos/otg/g;-><init>()V

    .line 2
    const-class v1, Lcom/dspread/xpos/otg/b;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/otg/g;->a(Ljava/lang/Class;)Lcom/dspread/xpos/otg/g;

    .line 3
    const-class v1, Lcom/dspread/xpos/otg/e;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/otg/g;->a(Ljava/lang/Class;)Lcom/dspread/xpos/otg/g;

    .line 4
    const-class v1, Lcom/dspread/xpos/otg/FtdiSerialDriver;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/otg/g;->a(Ljava/lang/Class;)Lcom/dspread/xpos/otg/g;

    .line 5
    const-class v1, Lcom/dspread/xpos/otg/h;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/otg/g;->a(Ljava/lang/Class;)Lcom/dspread/xpos/otg/g;

    .line 6
    const-class v1, Lcom/dspread/xpos/otg/c;

    invoke-virtual {v0, v1}, Lcom/dspread/xpos/otg/g;->a(Ljava/lang/Class;)Lcom/dspread/xpos/otg/g;

    return-object v0
.end method

.method public static b()Lcom/dspread/xpos/otg/l;
    .locals 2

    .line 1
    new-instance v0, Lcom/dspread/xpos/otg/l;

    invoke-static {}, Lcom/dspread/xpos/otg/l;->a()Lcom/dspread/xpos/otg/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dspread/xpos/otg/l;-><init>(Lcom/dspread/xpos/otg/g;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/hardware/usb/UsbDevice;)Lcom/dspread/xpos/otg/j;
    .locals 5

    .line 13
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    .line 16
    iget-object v2, p0, Lcom/dspread/xpos/otg/l;->a:Lcom/dspread/xpos/otg/g;

    .line 17
    invoke-virtual {v2, v0, v1}, Lcom/dspread/xpos/otg/g;->a(II)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/hardware/usb/UsbDevice;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dspread/xpos/otg/j;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p1

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/hardware/usb/UsbManager;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbManager;",
            ")",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/otg/j;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 10
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/otg/l;->a(Landroid/hardware/usb/UsbDevice;)Lcom/dspread/xpos/otg/j;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
