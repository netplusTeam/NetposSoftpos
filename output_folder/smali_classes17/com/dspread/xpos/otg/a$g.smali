.class Lcom/dspread/xpos/otg/a$g;
.super Ljava/lang/Thread;
.source "CH34xUARTDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/otg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field a:Landroid/hardware/usb/UsbEndpoint;

.field b:Landroid/hardware/usb/UsbDeviceConnection;

.field final synthetic c:Lcom/dspread/xpos/otg/a;


# direct methods
.method constructor <init>(Lcom/dspread/xpos/otg/a;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/dspread/xpos/otg/a$g;->a:Landroid/hardware/usb/UsbEndpoint;

    .line 3
    iput-object p3, p0, Lcom/dspread/xpos/otg/a$g;->b:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x14

    if-ge p2, p3, :cond_0

    .line 5
    iget-object p3, p1, Lcom/dspread/xpos/otg/a;->E:[Landroid/hardware/usb/UsbRequest;

    new-instance v0, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v0}, Landroid/hardware/usb/UsbRequest;-><init>()V

    aput-object v0, p3, p2

    .line 6
    iget-object p3, p1, Lcom/dspread/xpos/otg/a;->E:[Landroid/hardware/usb/UsbRequest;

    aget-object p3, p3, p2

    iget-object v0, p0, Lcom/dspread/xpos/otg/a$g;->b:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/dspread/xpos/otg/a$g;->a:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {p3, v0, v1}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 7
    iget-object p3, p1, Lcom/dspread/xpos/otg/a;->F:[Ljava/nio/ByteBuffer;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    const/16 v3, 0x14

    if-ge v1, v3, :cond_0

    .line 1
    iget-object v3, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    iget-object v4, v3, Lcom/dspread/xpos/otg/a;->E:[Landroid/hardware/usb/UsbRequest;

    aget-object v4, v4, v1

    iget-object v3, v3, Lcom/dspread/xpos/otg/a;->F:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v4, v3, v2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v1}, Lcom/dspread/xpos/otg/a;->h(Lcom/dspread/xpos/otg/a;)Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v1}, Lcom/dspread/xpos/otg/a;->i(Lcom/dspread/xpos/otg/a;)I

    move-result v1

    const v4, 0x9ff01

    if-le v1, v4, :cond_1

    const-wide/16 v4, 0x5

    .line 6
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/otg/a$g;->a:Landroid/hardware/usb/UsbEndpoint;

    if-eqz v1, :cond_0

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_0

    .line 20
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->b:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    iget-object v6, v5, Lcom/dspread/xpos/otg/a;->E:[Landroid/hardware/usb/UsbRequest;

    aget-object v6, v6, v1

    if-ne v4, v6, :cond_6

    .line 21
    iget-object v4, v5, Lcom/dspread/xpos/otg/a;->F:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v5, v4}, Lcom/dspread/xpos/otg/a;->a(Lcom/dspread/xpos/otg/a;[B)[B

    .line 22
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    iget-object v5, v4, Lcom/dspread/xpos/otg/a;->F:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    move-result v5

    invoke-static {v4, v5}, Lcom/dspread/xpos/otg/a;->d(Lcom/dspread/xpos/otg/a;I)I

    .line 24
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->k(Lcom/dspread/xpos/otg/a;)I

    move-result v4

    if-lez v4, :cond_4

    .line 26
    :try_start_1
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->l(Lcom/dspread/xpos/otg/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 30
    :goto_3
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->k(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/dspread/xpos/otg/a;->c(Lcom/dspread/xpos/otg/a;I)I

    move v4, v0

    .line 31
    :goto_4
    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v5}, Lcom/dspread/xpos/otg/a;->k(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    const/high16 v6, 0xa0000

    if-ge v4, v5, :cond_2

    .line 32
    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v5}, Lcom/dspread/xpos/otg/a;->m(Lcom/dspread/xpos/otg/a;)[B

    move-result-object v5

    iget-object v7, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v7}, Lcom/dspread/xpos/otg/a;->c(Lcom/dspread/xpos/otg/a;)I

    move-result v7

    iget-object v8, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v8}, Lcom/dspread/xpos/otg/a;->j(Lcom/dspread/xpos/otg/a;)[B

    move-result-object v8

    aget-byte v8, v8, v4

    aput-byte v8, v5, v7

    .line 33
    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v5}, Lcom/dspread/xpos/otg/a;->d(Lcom/dspread/xpos/otg/a;)I

    .line 34
    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v5, v6}, Lcom/dspread/xpos/otg/a;->a(Lcom/dspread/xpos/otg/a;I)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 36
    :cond_2
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->c(Lcom/dspread/xpos/otg/a;)I

    move-result v4

    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v5}, Lcom/dspread/xpos/otg/a;->e(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 37
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->c(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    iget-object v6, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v6}, Lcom/dspread/xpos/otg/a;->e(Lcom/dspread/xpos/otg/a;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/dspread/xpos/otg/a;->b(Lcom/dspread/xpos/otg/a;I)I

    goto :goto_5

    .line 39
    :cond_3
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->e(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    sub-int/2addr v6, v5

    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    .line 40
    invoke-static {v5}, Lcom/dspread/xpos/otg/a;->c(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    add-int/2addr v6, v5

    .line 41
    invoke-static {v4, v6}, Lcom/dspread/xpos/otg/a;->b(Lcom/dspread/xpos/otg/a;I)I

    .line 44
    :goto_5
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->l(Lcom/dspread/xpos/otg/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_6

    .line 46
    :cond_4
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v4}, Lcom/dspread/xpos/otg/a;->k(Lcom/dspread/xpos/otg/a;)I

    move-result v4

    if-gez v4, :cond_5

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    invoke-static {v5}, Lcom/dspread/xpos/otg/a;->k(Lcom/dspread/xpos/otg/a;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CH34xAndroidDriver"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_5
    :goto_6
    iget-object v4, p0, Lcom/dspread/xpos/otg/a$g;->c:Lcom/dspread/xpos/otg/a;

    iget-object v5, v4, Lcom/dspread/xpos/otg/a;->E:[Landroid/hardware/usb/UsbRequest;

    aget-object v5, v5, v1

    iget-object v4, v4, Lcom/dspread/xpos/otg/a;->F:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v1

    invoke-virtual {v5, v4, v2}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;I)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_7
    return-void
.end method
