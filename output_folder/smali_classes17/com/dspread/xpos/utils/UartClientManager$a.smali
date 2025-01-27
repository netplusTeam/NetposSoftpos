.class Lcom/dspread/xpos/utils/UartClientManager$a;
.super Ljava/lang/Object;
.source "UartClientManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/utils/UartClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "UartClientManager"

    const-string v0, "Uart Service client"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/dspread/xpos/utils/UartClientManager;->a()Lcom/dspread/sp/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p2}, Lcom/dspread/sp/b$b;->a(Landroid/os/IBinder;)Lcom/dspread/sp/b;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/utils/UartClientManager;->a(Lcom/dspread/sp/b;)Lcom/dspread/sp/b;

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p2, v0, :cond_0

    .line 7
    :try_start_0
    const-string p2, "Uart Service update Success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/dspread/xpos/utils/UartClientManager;->a()Lcom/dspread/sp/b;

    move-result-object p1

    invoke-static {}, Lcom/dspread/xpos/utils/UartClientManager;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/dspread/sp/b;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
