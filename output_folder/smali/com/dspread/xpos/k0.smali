.class public Lcom/dspread/xpos/k0;
.super Lcom/dspread/xpos/Vpos;
.source "SerialPortConsole.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/k0$c;,
        Lcom/dspread/xpos/k0$b;
    }
.end annotation


# static fields
.field private static Y:Lcom/dspread/xpos/k0;


# instance fields
.field protected P:Landroid_serialport_api/SerialPort;

.field protected Q:Ljava/io/OutputStream;

.field private R:Ljava/io/InputStream;

.field protected S:Lcom/dspread/xpos/k0$b;

.field private T:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:I

.field protected X:Lcom/dspread/xpos/k0$c;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/k0;->T:Z

    .line 3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/k0;->U:Z

    .line 4
    const-string v1, "/dev/ttyS3"

    iput-object v1, p0, Lcom/dspread/xpos/k0;->V:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/dspread/xpos/k0;->W:I

    return-void
.end method

.method public static F()Lcom/dspread/xpos/k0;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/k0;->Y:Lcom/dspread/xpos/k0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/k0;

    invoke-direct {v0}, Lcom/dspread/xpos/k0;-><init>()V

    sput-object v0, Lcom/dspread/xpos/k0;->Y:Lcom/dspread/xpos/k0;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/k0;->Y:Lcom/dspread/xpos/k0;

    return-object v0
.end method

.method static synthetic a(Lcom/dspread/xpos/k0;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/k0;->R:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic b(Lcom/dspread/xpos/k0;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/dspread/xpos/k0;->W:I

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/k0;->T:Z

    if-eqz v0, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/dspread/xpos/k0;->V:Ljava/lang/String;

    const v1, 0x1c200

    invoke-virtual {p0, v0, v1}, Lcom/dspread/xpos/k0;->a(Ljava/lang/String;I)V

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dspread/xpos/k0;->T:Z

    return v0
.end method

.method public B()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/k0;->S:Lcom/dspread/xpos/k0$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/dspread/xpos/b;->a()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/dspread/xpos/k0;->P:Landroid_serialport_api/SerialPort;

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/k0;->Q:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/k0;->R:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public a(Lcom/dspread/xpos/k0$c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/k0;->X:Lcom/dspread/xpos/k0$c;

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 0

    .line 3
    :try_start_0
    invoke-static {p1, p2}, Lcom/dspread/xpos/b;->a(Ljava/lang/String;I)Landroid_serialport_api/SerialPort;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/k0;->P:Landroid_serialport_api/SerialPort;

    .line 4
    invoke-virtual {p1}, Landroid_serialport_api/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/k0;->Q:Ljava/io/OutputStream;

    .line 5
    iget-object p1, p0, Lcom/dspread/xpos/k0;->P:Landroid_serialport_api/SerialPort;

    invoke-virtual {p1}, Landroid_serialport_api/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/k0;->R:Ljava/io/InputStream;

    .line 8
    new-instance p1, Lcom/dspread/xpos/k0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/dspread/xpos/k0$b;-><init>(Lcom/dspread/xpos/k0;Lcom/dspread/xpos/k0$a;)V

    iput-object p1, p0, Lcom/dspread/xpos/k0;->S:Lcom/dspread/xpos/k0$b;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/k0;->V:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 2
    iput-boolean v0, p0, Lcom/dspread/xpos/k0;->U:Z

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/k0;->G()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/k0;->T:Z

    return-void
.end method

.method protected e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/k0;->d()V

    return-void
.end method

.method public f([B)V
    .locals 0

    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
