.class Lcom/dspread/xpos/k0$b;
.super Ljava/lang/Thread;
.source "SerialPortConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/dspread/xpos/k0;


# direct methods
.method private constructor <init>(Lcom/dspread/xpos/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/k0$b;->a:Lcom/dspread/xpos/k0;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dspread/xpos/k0;Lcom/dspread/xpos/k0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/dspread/xpos/k0$b;-><init>(Lcom/dspread/xpos/k0;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x40

    .line 5
    :try_start_0
    new-array v0, v0, [B

    .line 7
    iget-object v1, p0, Lcom/dspread/xpos/k0$b;->a:Lcom/dspread/xpos/k0;

    invoke-static {v1}, Lcom/dspread/xpos/k0;->a(Lcom/dspread/xpos/k0;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/dspread/xpos/k0$b;->a:Lcom/dspread/xpos/k0;

    invoke-static {v1}, Lcom/dspread/xpos/k0;->a(Lcom/dspread/xpos/k0;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 10
    iget-object v2, p0, Lcom/dspread/xpos/k0$b;->a:Lcom/dspread/xpos/k0;

    iget-object v3, v2, Lcom/dspread/xpos/k0;->X:Lcom/dspread/xpos/k0$c;

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v2}, Lcom/dspread/xpos/k0;->b(Lcom/dspread/xpos/k0;)I

    move-result v2

    invoke-interface {v3, v0, v1, v2}, Lcom/dspread/xpos/k0$c;->a([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method
