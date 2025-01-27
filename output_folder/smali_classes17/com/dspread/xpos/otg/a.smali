.class public Lcom/dspread/xpos/otg/a;
.super Ljava/lang/Object;
.source "CH34xUARTDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/otg/a$g;,
        Lcom/dspread/xpos/otg/a$f;,
        Lcom/dspread/xpos/otg/a$b;,
        Lcom/dspread/xpos/otg/a$d;,
        Lcom/dspread/xpos/otg/a$c;,
        Lcom/dspread/xpos/otg/a$e;
    }
.end annotation


# static fields
.field private static final I:Ljava/lang/String; = "CH34xAndroidDriver"


# instance fields
.field private A:I

.field private B:I

.field final C:I

.field final D:I

.field E:[Landroid/hardware/usb/UsbRequest;

.field F:[Ljava/nio/ByteBuffer;

.field private G:Ljava/util/concurrent/Semaphore;

.field private final H:Landroid/content/BroadcastReceiver;

.field private a:Landroid/hardware/usb/UsbManager;

.field private b:Landroid/app/PendingIntent;

.field private c:Landroid/hardware/usb/UsbDevice;

.field private d:Landroid/hardware/usb/UsbInterface;

.field private e:Landroid/hardware/usb/UsbEndpoint;

.field private f:Landroid/hardware/usb/UsbEndpoint;

.field private g:Landroid/hardware/usb/UsbEndpoint;

.field public h:Landroid/hardware/usb/UsbDeviceConnection;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Z

.field private n:Z

.field private o:Lcom/dspread/xpos/otg/a$g;

.field private p:[B

.field private q:[B

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:I

.field private final y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->k:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->l:Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/otg/a;->m:Z

    .line 5
    iput-boolean v0, p0, Lcom/dspread/xpos/otg/a;->n:Z

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    .line 17
    const/high16 v1, 0xa0000

    iput v1, p0, Lcom/dspread/xpos/otg/a;->y:I

    .line 21
    const/16 v2, 0x1f4

    iput v2, p0, Lcom/dspread/xpos/otg/a;->B:I

    .line 23
    const/16 v2, 0x14

    iput v2, p0, Lcom/dspread/xpos/otg/a;->C:I

    .line 24
    const/16 v3, 0x20

    iput v3, p0, Lcom/dspread/xpos/otg/a;->D:I

    .line 26
    new-array v3, v2, [Landroid/hardware/usb/UsbRequest;

    iput-object v3, p0, Lcom/dspread/xpos/otg/a;->E:[Landroid/hardware/usb/UsbRequest;

    .line 27
    new-array v2, v2, [Ljava/nio/ByteBuffer;

    iput-object v2, p0, Lcom/dspread/xpos/otg/a;->F:[Ljava/nio/ByteBuffer;

    .line 29
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v2, p0, Lcom/dspread/xpos/otg/a;->G:Ljava/util/concurrent/Semaphore;

    .line 730
    new-instance v2, Lcom/dspread/xpos/otg/a$a;

    invoke-direct {v2, p0}, Lcom/dspread/xpos/otg/a$a;-><init>(Lcom/dspread/xpos/otg/a;)V

    iput-object v2, p0, Lcom/dspread/xpos/otg/a;->H:Landroid/content/BroadcastReceiver;

    .line 731
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->p:[B

    .line 732
    const/16 v1, 0x1f9c

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->q:[B

    .line 733
    iput v0, p0, Lcom/dspread/xpos/otg/a;->r:I

    .line 734
    iput v0, p0, Lcom/dspread/xpos/otg/a;->s:I

    .line 735
    iput v0, p0, Lcom/dspread/xpos/otg/a;->u:I

    .line 737
    iput-object p1, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    .line 738
    iput-object p2, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    .line 739
    iput-object p3, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    .line 740
    const/16 p1, 0x2710

    iput p1, p0, Lcom/dspread/xpos/otg/a;->z:I

    .line 741
    iput p1, p0, Lcom/dspread/xpos/otg/a;->A:I

    .line 743
    const-string p1, "1a86:7523"

    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/a;->a(Ljava/lang/String;)V

    .line 744
    const-string p1, "1a86:5523"

    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/a;->a(Ljava/lang/String;)V

    .line 745
    const-string p1, "1a86:5512"

    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/a;->a(Ljava/lang/String;)V

    .line 746
    const-string p1, "1a86:e010"

    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(I)I
    .locals 2

    not-int p1, p1

    .line 52
    const/16 v0, 0xa4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/dspread/xpos/otg/a;->a(III)I

    move-result p1

    return p1
.end method

.method private a(III)I
    .locals 8

    .line 50
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    iget v7, p0, Lcom/dspread/xpos/otg/a;->B:I

    const/16 v1, 0x40

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method private a(III[BI)I
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    iget v7, p0, Lcom/dspread/xpos/otg/a;->B:I

    const/16 v1, 0xc0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/dspread/xpos/otg/a;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/otg/a;->r:I

    rem-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/otg/a;->r:I

    return v0
.end method

.method static synthetic a(Lcom/dspread/xpos/otg/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/dspread/xpos/otg/a;->w:I

    return-void
.end method

.method private a(Landroid/hardware/usb/UsbInterface;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 151
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 152
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_2

    .line 155
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_1

    .line 156
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->f:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    .line 158
    :cond_1
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->g:Landroid/hardware/usb/UsbEndpoint;

    .line 160
    :goto_1
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v1

    iput v1, p0, Lcom/dspread/xpos/otg/a;->x:I

    goto :goto_2

    .line 161
    :cond_2
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 162
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->e:Landroid/hardware/usb/UsbEndpoint;

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/dspread/xpos/otg/a;[B)[B
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/dspread/xpos/otg/a;->q:[B

    return-object p1
.end method

.method private b(II)I
    .locals 3

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x2

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    or-int/lit8 v0, v0, 0x20

    :cond_1
    and-int/lit8 p1, p2, 0x4

    if-ne p1, v1, :cond_2

    and-int/lit8 v0, v0, -0x41

    :cond_2
    and-int/lit8 p1, p2, 0x2

    if-ne p1, v2, :cond_3

    and-int/lit8 v0, v0, -0x21

    .line 45
    :cond_3
    invoke-direct {p0, v0}, Lcom/dspread/xpos/otg/a;->a(I)I

    move-result p1

    return p1
.end method

.method private b(III)I
    .locals 8

    .line 44
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    iget v7, p0, Lcom/dspread/xpos/otg/a;->B:I

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/otg/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/dspread/xpos/otg/a;->u:I

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/otg/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 50
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 53
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->c:Landroid/hardware/usb/UsbDevice;

    .line 54
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    :cond_1
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 60
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_3

    .line 62
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 63
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    return-object v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method static synthetic c(Lcom/dspread/xpos/otg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/otg/a;->r:I

    return p0
.end method

.method static synthetic c(Lcom/dspread/xpos/otg/a;I)I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/otg/a;->u:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/dspread/xpos/otg/a;->u:I

    return v0
.end method

.method static synthetic d(Lcom/dspread/xpos/otg/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/dspread/xpos/otg/a;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/dspread/xpos/otg/a;->r:I

    return v0
.end method

.method static synthetic d(Lcom/dspread/xpos/otg/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/dspread/xpos/otg/a;->t:I

    return p1
.end method

.method static synthetic e(Lcom/dspread/xpos/otg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/otg/a;->s:I

    return p0
.end method

.method static synthetic f(Lcom/dspread/xpos/otg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/otg/a;->w:I

    return p0
.end method

.method static synthetic g(Lcom/dspread/xpos/otg/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic h(Lcom/dspread/xpos/otg/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/otg/a;->n:Z

    return p0
.end method

.method static synthetic i(Lcom/dspread/xpos/otg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/otg/a;->u:I

    return p0
.end method

.method static synthetic j(Lcom/dspread/xpos/otg/a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/a;->q:[B

    return-object p0
.end method

.method static synthetic k(Lcom/dspread/xpos/otg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/otg/a;->t:I

    return p0
.end method

.method static synthetic l(Lcom/dspread/xpos/otg/a;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/a;->G:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic m(Lcom/dspread/xpos/otg/a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/otg/a;->p:[B

    return-object p0
.end method


# virtual methods
.method public a([BI)I
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/a;->G:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt p2, v2, :cond_3

    .line 66
    :try_start_1
    iget v2, p0, Lcom/dspread/xpos/otg/a;->u:I

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    if-le p2, v2, :cond_1

    move p2, v2

    :cond_1
    sub-int/2addr v2, p2

    .line 79
    iput v2, p0, Lcom/dspread/xpos/otg/a;->u:I

    :goto_1
    if-ge v1, p2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->p:[B

    iget v3, p0, Lcom/dspread/xpos/otg/a;->s:I

    aget-byte v2, v2, v3

    aput-byte v2, p1, v1

    add-int/lit8 v3, v3, 0x1

    .line 86
    iput v3, p0, Lcom/dspread/xpos/otg/a;->s:I

    const/high16 v2, 0xa0000

    .line 91
    rem-int/2addr v3, v2

    iput v3, p0, Lcom/dspread/xpos/otg/a;->s:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/otg/a;->G:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 95
    monitor-exit v0

    return p2

    .line 96
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/dspread/xpos/otg/a;->G:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 97
    monitor-exit v0

    return v1

    .line 125
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a([BII)I
    .locals 8

    .line 126
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/dspread/xpos/otg/a;->g:Landroid/hardware/usb/UsbEndpoint;

    if-nez v1, :cond_0

    const/4 p1, -0x1

    .line 131
    monitor-exit v0

    return p1

    :cond_0
    const/4 v1, 0x0

    move v3, p2

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_3

    .line 133
    iget v4, p0, Lcom/dspread/xpos/otg/a;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 134
    new-array v5, v4, [B

    if-nez v2, :cond_1

    .line 136
    invoke-static {p1, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    nop

    .line 138
    invoke-static {p1, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    :goto_1
    iget-object v6, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v7, p0, Lcom/dspread/xpos/otg/a;->g:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6, v7, v5, v4, p3}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    if-gez v4, :cond_2

    const/4 p1, -0x2

    .line 143
    monitor-exit v0

    return p1

    :cond_2
    add-int/2addr v2, v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 149
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()V
    .locals 5

    .line 26
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/a;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 27
    iput-boolean v1, p0, Lcom/dspread/xpos/otg/a;->n:Z

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 31
    iget-object v4, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    .line 33
    iput-object v3, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->c:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_3

    .line 40
    iput-object v3, p0, Lcom/dspread/xpos/otg/a;->c:Landroid/hardware/usb/UsbDevice;

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_4

    .line 44
    iput-object v3, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    .line 47
    :cond_4
    iget-boolean v0, p0, Lcom/dspread/xpos/otg/a;->m:Z

    if-ne v0, v2, :cond_5

    .line 48
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    iput-boolean v1, p0, Lcom/dspread/xpos/otg/a;->m:Z

    :cond_5
    return-void
.end method

.method public a(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/dspread/xpos/otg/a;->b(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v1, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, p1}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 12
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    iput-object p1, p0, Lcom/dspread/xpos/otg/a;->c:Landroid/hardware/usb/UsbDevice;

    .line 15
    iput-object v1, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    .line 16
    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    .line 17
    invoke-direct {p0, v0}, Lcom/dspread/xpos/otg/a;->a(Landroid/hardware/usb/UsbInterface;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 21
    :cond_1
    iget-boolean p1, p0, Lcom/dspread/xpos/otg/a;->n:Z

    if-nez p1, :cond_2

    .line 22
    iput-boolean v2, p0, Lcom/dspread/xpos/otg/a;->n:Z

    .line 23
    new-instance p1, Lcom/dspread/xpos/otg/a$g;

    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->f:Landroid/hardware/usb/UsbEndpoint;

    iget-object v1, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p1, p0, v0, v1}, Lcom/dspread/xpos/otg/a$g;-><init>(Lcom/dspread/xpos/otg/a;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V

    iput-object p1, p0, Lcom/dspread/xpos/otg/a;->o:Lcom/dspread/xpos/otg/a$g;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public a(IBBBB)Z
    .locals 8

    const/16 v0, 0x8

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p4, 0x38

    goto :goto_0

    :pswitch_1
    const/16 p4, 0x28

    goto :goto_0

    :pswitch_2
    const/16 p4, 0x18

    :goto_0
    int-to-char p4, p4

    goto :goto_2

    :pswitch_3
    int-to-char p4, v0

    goto :goto_2

    :goto_1
    :pswitch_4
    move p4, v1

    :goto_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    or-int/lit8 p3, p4, 0x4

    int-to-char p4, p3

    :cond_0
    const/4 p3, 0x1

    const/4 v3, 0x3

    packed-switch p2, :pswitch_data_1

    or-int/lit8 p2, p4, 0x3

    goto :goto_3

    :pswitch_5
    or-int/lit8 p2, p4, 0x2

    goto :goto_3

    :pswitch_6
    or-int/lit8 p2, p4, 0x1

    goto :goto_3

    :pswitch_7
    or-int/lit8 p2, p4, 0x0

    :goto_3
    int-to-char p2, p2

    or-int/lit16 p2, p2, 0xc0

    int-to-char p2, p2

    shl-int/2addr p2, v0

    or-int/lit16 p2, p2, 0x9c

    const/16 p4, 0xf3

    const/16 v4, 0xcc

    const/16 v5, 0xd9

    const/16 v6, 0xb2

    const/16 v7, 0x64

    sparse-switch p1, :sswitch_data_0

    goto :goto_9

    :sswitch_0
    const/16 p4, 0xfe

    goto :goto_4

    :sswitch_1
    const/16 p4, 0xfd

    goto :goto_4

    :sswitch_2
    const/16 p4, 0xfa

    goto :goto_4

    :sswitch_3
    const/4 v2, 0x7

    goto :goto_a

    :sswitch_4
    const/16 p4, 0xf4

    goto :goto_4

    :sswitch_5
    const/16 p4, 0xe6

    goto :goto_4

    :sswitch_6
    move v2, v3

    goto :goto_5

    :sswitch_7
    const/16 p4, 0x98

    :goto_4
    :sswitch_8
    move v2, v3

    goto :goto_a

    :sswitch_9
    move v2, v3

    goto :goto_7

    :sswitch_a
    move v2, p3

    goto :goto_6

    :sswitch_b
    move v2, p3

    :goto_5
    move p4, v4

    goto :goto_a

    :sswitch_c
    move v2, p3

    goto :goto_9

    :sswitch_d
    move v2, p3

    goto :goto_7

    :sswitch_e
    move v2, v1

    :goto_6
    :sswitch_f
    move p4, v5

    goto :goto_a

    :sswitch_10
    move v2, v1

    goto :goto_9

    :sswitch_11
    const/16 p4, 0xa9

    goto :goto_8

    :sswitch_12
    const/16 p4, 0x96

    goto :goto_8

    :sswitch_13
    move v2, v1

    :goto_7
    :sswitch_14
    move p4, v7

    goto :goto_a

    :sswitch_15
    const/16 p4, 0x16

    :goto_8
    move v2, v1

    goto :goto_a

    :goto_9
    :sswitch_16
    move p4, v6

    :goto_a
    or-int/lit16 p1, v2, 0x88

    or-int/2addr p1, v1

    shl-int/2addr p4, v0

    or-int/2addr p1, p4

    const/16 p4, 0xa1

    .line 53
    invoke-direct {p0, p4, p2, p1}, Lcom/dspread/xpos/otg/a;->a(III)I

    move-result p1

    if-ne p5, p3, :cond_1

    const/4 p2, 0x6

    .line 55
    invoke-direct {p0, p2, v1}, Lcom/dspread/xpos/otg/a;->b(II)I

    :cond_1
    if-ltz p1, :cond_2

    return p3

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_15
        0x4b -> :sswitch_13
        0x6e -> :sswitch_12
        0x87 -> :sswitch_11
        0x96 -> :sswitch_10
        0x12c -> :sswitch_e
        0x258 -> :sswitch_d
        0x4b0 -> :sswitch_c
        0x708 -> :sswitch_b
        0x960 -> :sswitch_a
        0x12c0 -> :sswitch_14
        0x2580 -> :sswitch_16
        0x4b00 -> :sswitch_f
        0x9600 -> :sswitch_9
        0xe100 -> :sswitch_7
        0x1c200 -> :sswitch_6
        0x38400 -> :sswitch_5
        0x70800 -> :sswitch_8
        0x7a120 -> :sswitch_4
        0xe1000 -> :sswitch_3
        0xf4240 -> :sswitch_2
        0x1e8480 -> :sswitch_1
        0x2dc6c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(II)Z
    .locals 0

    .line 6
    iput p1, p0, Lcom/dspread/xpos/otg/a;->z:I

    .line 7
    iput p2, p0, Lcom/dspread/xpos/otg/a;->A:I

    const/4 p1, 0x1

    return p1
.end method

.method public b([BI)I
    .locals 1

    .line 46
    iget v0, p0, Lcom/dspread/xpos/otg/a;->z:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/dspread/xpos/otg/a;->a([BII)I

    move-result p1

    return p1
.end method

.method public b()Landroid/hardware/usb/UsbDevice;
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    .line 4
    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->b:Landroid/app/PendingIntent;

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    const-string v1, "No matching device found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object v3

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    move v4, v2

    .line 16
    :goto_0
    iget v5, p0, Lcom/dspread/xpos/otg/a;->w:I

    if-ge v4, v5, :cond_1

    const/4 v5, 0x2

    .line 17
    new-array v5, v5, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 25
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 27
    const-string v6, "%04x:%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/dspread/xpos/otg/a;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iput-boolean v7, p0, Lcom/dspread/xpos/otg/a;->m:Z

    return-object v1

    .line 43
    :cond_2
    const-string v5, "CH34xAndroidDriver"

    const-string v6, "String.format not match"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public c()I
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    .line 4
    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->b:Landroid/app/PendingIntent;

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    const-string v1, "No matching device found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    move v4, v2

    .line 16
    :goto_0
    iget v5, p0, Lcom/dspread/xpos/otg/a;->w:I

    if-ge v4, v5, :cond_1

    const/4 v5, 0x2

    .line 17
    new-array v5, v5, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 25
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 27
    const-string v6, "%04x:%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v3, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    iget-object v4, p0, Lcom/dspread/xpos/otg/a;->H:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 39
    iput-boolean v7, p0, Lcom/dspread/xpos/otg/a;->m:Z

    .line 40
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/otg/a;->a(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    .line 48
    :cond_2
    iget-object v5, p0, Lcom/dspread/xpos/otg/a;->H:Landroid/content/BroadcastReceiver;

    monitor-enter v5

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/dspread/xpos/otg/a;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 51
    monitor-exit v5

    :goto_1
    return v2

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 57
    :cond_3
    const-string v5, "CH34xAndroidDriver"

    const-string v6, "String.format not match"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public d()I
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    .line 4
    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    .line 5
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->j:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/otg/a;->b:Landroid/app/PendingIntent;

    .line 7
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    const-string v1, "No matching device found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v3

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 14
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    move v4, v2

    .line 16
    :goto_0
    iget v5, p0, Lcom/dspread/xpos/otg/a;->w:I

    if-ge v4, v5, :cond_1

    const/4 v5, 0x2

    .line 17
    new-array v5, v5, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v6

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 25
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    .line 26
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 27
    const-string v6, "%04x:%04x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/dspread/xpos/otg/a;->v:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 37
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->H:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/dspread/xpos/otg/a;->a:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/dspread/xpos/otg/a;->b:Landroid/app/PendingIntent;

    invoke-virtual {v2, v1, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 43
    monitor-exit v0

    const/4 v0, -0x2

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return v2

    .line 48
    :cond_3
    const-string v5, "CH34xAndroidDriver"

    const-string v6, "String.format not match"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public e()Z
    .locals 9

    .line 2
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 3
    const/16 v1, 0xa1

    const/4 v7, 0x0

    invoke-direct {p0, v1, v7, v7}, Lcom/dspread/xpos/otg/a;->a(III)I

    .line 4
    const/16 v2, 0x5f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v1, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/dspread/xpos/otg/a;->a(III[BI)I

    move-result v1

    if-gez v1, :cond_0

    return v7

    :cond_0
    const/16 v1, 0x1312

    const v2, 0xd982

    .line 7
    const/16 v8, 0x9a

    invoke-direct {p0, v8, v1, v2}, Lcom/dspread/xpos/otg/a;->a(III)I

    const/16 v1, 0xf2c

    const/4 v2, 0x4

    .line 8
    invoke-direct {p0, v8, v1, v2}, Lcom/dspread/xpos/otg/a;->a(III)I

    const/16 v2, 0x95

    const/16 v3, 0x2518

    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 9
    move-object v1, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/dspread/xpos/otg/a;->a(III[BI)I

    move-result v0

    if-gez v0, :cond_1

    return v7

    :cond_1
    const/16 v0, 0x2727

    .line 12
    invoke-direct {p0, v8, v0, v7}, Lcom/dspread/xpos/otg/a;->a(III)I

    const/16 v0, 0xa4

    const/16 v1, 0xff

    .line 13
    invoke-direct {p0, v0, v1, v7}, Lcom/dspread/xpos/otg/a;->a(III)I

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected g()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->c:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->c:Landroid/hardware/usb/UsbDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->d:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dspread/xpos/otg/a;->h:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
