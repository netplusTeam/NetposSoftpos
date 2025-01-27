.class public Lcom/dspread/xpos/otg/b$a;
.super Lcom/dspread/xpos/otg/d;
.source "CdcAcmSerialDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static final J:I = 0x1

.field private static final K:I = 0x21

.field private static final L:I = 0x20

.field private static final M:I = 0x21

.field private static final N:I = 0x22

.field private static final O:I = 0x23


# instance fields
.field private final A:Z

.field private B:Landroid/hardware/usb/UsbInterface;

.field private C:Landroid/hardware/usb/UsbInterface;

.field private D:Landroid/hardware/usb/UsbEndpoint;

.field private E:Landroid/hardware/usb/UsbEndpoint;

.field private F:Landroid/hardware/usb/UsbEndpoint;

.field private G:Z

.field private H:Z

.field final synthetic I:Lcom/dspread/xpos/otg/b;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/otg/b;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/b$a;->I:Lcom/dspread/xpos/otg/b;

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/dspread/xpos/otg/d;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    .line 3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/dspread/xpos/otg/b$a;->G:Z

    .line 4
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/b$a;->H:Z

    .line 16
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x11

    if-lt p2, p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/b$a;->A:Z

    return-void
.end method

.method private a(II[B)I
    .locals 8

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz p3, :cond_0

    .line 38
    array-length v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    const/16 v7, 0x1388

    .line 39
    const/16 v1, 0x21

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private k()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "claiming interfaces, count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POS CdcAcmSerialDriver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Control iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Control endpoint direction: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-string v0, "Claiming data interface."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    const/16 v4, 0x80

    const/4 v5, 0x2

    if-ne v3, v4, :cond_0

    .line 27
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 28
    const-string v3, "Found reading endpoint"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    .line 30
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 33
    const-string v3, "Found writing endpoint"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    .line 35
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim data interface."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim control interface."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    .line 38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to open, reset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private l()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Control iface="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POS CdcAcmSerialDriver"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data iface="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->C:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_6

    .line 19
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    .line 20
    iput-object v4, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    .line 21
    iput-object v4, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    :goto_0
    if-ge v1, v0, :cond_4

    .line 23
    iget-object v4, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_0

    .line 25
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 26
    const-string v5, "Found controlling endpoint"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object v4, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 28
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v6, :cond_1

    .line 29
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    if-ne v5, v7, :cond_1

    .line 30
    const-string v5, "Found reading endpoint"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-object v4, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v5

    if-nez v5, :cond_2

    .line 33
    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 34
    const-string v5, "Found writing endpoint"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iput-object v4, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    .line 39
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v4, :cond_3

    .line 42
    const-string v0, "Found all required endpoints"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v0, :cond_5

    return-void

    .line 50
    :cond_5
    const-string v0, "Could not establish all endpoints"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not enough endpoints - need 3. count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insufficient number of endpoints("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dspread/xpos/otg/b$a;->B:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not claim shared control/data interface."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/b$a;->G:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/dspread/xpos/otg/b$a;->H:Z

    or-int/2addr v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x0

    .line 2
    invoke-direct {p0, v1, v0, v2}, Lcom/dspread/xpos/otg/b$a;->a(II[B)I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/b$a;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 41
    new-instance p2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {p2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p2, v0, v2}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 44
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    array-length p1, p1

    invoke-virtual {p2, v0, p1}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/hardware/usb/UsbRequest;->close()V

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/hardware/usb/UsbRequest;->close()V

    return v1

    .line 63
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Null response"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Error queueing request."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 80
    invoke-virtual {p2}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 81
    throw p1

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->u:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_2
    array-length v2, p1

    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->w:[B

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    iget-object v3, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    iget-object v5, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-virtual {v3, v4, v5, v2, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--bulkTransfer numBytesRead: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    if-gez v2, :cond_5

    const p1, 0x7fffffff

    if-ne p2, p1, :cond_4

    const/4 p1, -0x1

    .line 97
    monitor-exit v0

    return p1

    :cond_4
    nop

    .line 99
    monitor-exit v0

    return v1

    .line 101
    :cond_5
    iget-object p2, p0, Lcom/dspread/xpos/otg/d;->w:[B

    invoke-static {p2, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(IIII)V
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p3, v3, :cond_2

    if-eq p3, v1, :cond_1

    if-ne p3, v0, :cond_0

    move p3, v3

    goto :goto_0

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad value for stopBits: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move p3, v1

    goto :goto_0

    :cond_2
    move p3, v2

    :goto_0
    const/4 v4, 0x4

    packed-switch p4, :pswitch_data_0

    .line 113
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad value for parity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move p4, v4

    goto :goto_1

    :pswitch_1
    move p4, v0

    goto :goto_1

    :pswitch_2
    move p4, v1

    goto :goto_1

    :pswitch_3
    move p4, v3

    goto :goto_1

    :pswitch_4
    move p4, v2

    :goto_1
    const/4 v5, 0x7

    .line 116
    new-array v5, v5, [B

    and-int/lit16 v6, p1, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    shr-int/lit8 v6, p1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v5, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v5, v0

    aput-byte p3, v5, v4

    const/4 p1, 0x5

    aput-byte p4, v5, p1

    int-to-byte p1, p2

    const/4 p2, 0x6

    aput-byte p1, v5, p2

    const/16 p1, 0x20

    .line 124
    invoke-direct {p0, p1, v2, v5}, Lcom/dspread/xpos/otg/b$a;->a(II[B)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_2

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "++mDevice.getInterfaceCount(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 11
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->r:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "POS CdcAcmSerialDriver"

    if-ne p1, v0, :cond_0

    .line 12
    :try_start_1
    const-string p1, "device might be castrated ACM device, trying single interface logic"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcom/dspread/xpos/otg/b$a;->l()V

    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "trying default interface logic"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-direct {p0}, Lcom/dspread/xpos/otg/b$a;->k()V

    .line 19
    :goto_0
    iget-boolean p1, p0, Lcom/dspread/xpos/otg/b$a;->A:Z

    if-eqz p1, :cond_1

    .line 20
    const-string p1, "Async reads enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 22
    :cond_1
    const-string p1, "Async reads disabled."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_1
    nop

    .line 22
    return-void

    :catchall_0
    move-exception p1

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    .line 31
    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->D:Landroid/hardware/usb/UsbEndpoint;

    .line 32
    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->E:Landroid/hardware/usb/UsbEndpoint;

    .line 33
    iput-object v0, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    .line 35
    throw p1

    .line 36
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Already open"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/b$a;->H:Z

    .line 126
    invoke-direct {p0}, Lcom/dspread/xpos/otg/b$a;->m()V

    return-void
.end method

.method public a()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public b([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/dspread/xpos/otg/d;->v:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    array-length v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->x:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v1, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 13
    :cond_0
    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->x:[B

    invoke-static {p1, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget-object v4, p0, Lcom/dspread/xpos/otg/d;->x:[B

    .line 16
    :goto_1
    iget-object v5, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v5, :cond_1

    .line 17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++mWriteEndpoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 18
    :cond_1
    iget-object v5, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v6, p0, Lcom/dspread/xpos/otg/b$a;->F:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5, v6, v4, v3, p2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    .line 20
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_2

    add-int/2addr v1, v4

    goto :goto_0

    .line 24
    :cond_2
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes at offset "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return v1
.end method

.method public b(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iput-boolean p1, p0, Lcom/dspread/xpos/otg/b$a;->G:Z

    .line 28
    invoke-direct {p0}, Lcom/dspread/xpos/otg/b$a;->m()V

    return-void
.end method

.method public b()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/b$a;->G:Z

    return v0
.end method

.method public c()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/b$a;->H:Z

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/dspread/xpos/otg/d;->t:Landroid/hardware/usb/UsbDeviceConnection;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lcom/dspread/xpos/otg/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/otg/b$a;->I:Lcom/dspread/xpos/otg/b;

    return-object v0
.end method

.method public e()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
