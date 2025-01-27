.class final Lcom/dspread/xpos/bt2mode/dbridge4/e;
.super Ljava/lang/Object;
.source "ConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge4/e$b;,
        Lcom/dspread/xpos/bt2mode/dbridge4/e$a;
    }
.end annotation


# static fields
.field private static final e:Z = false

.field private static final f:Ljava/lang/String; = "ConnectionListener"


# instance fields
.field private a:Landroid/bluetooth/BluetoothAdapter;

.field private b:Lcom/dspread/xpos/bt2mode/dbridge4/e$b;

.field private c:Lcom/dspread/xpos/bt2mode/dbridge4/e$a;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/bt2mode/dbridge4/e$b;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->a:Landroid/bluetooth/BluetoothAdapter;

    .line 3
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->b:Lcom/dspread/xpos/bt2mode/dbridge4/e$b;

    .line 4
    iput-boolean p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/bt2mode/dbridge4/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/dspread/xpos/bt2mode/dbridge4/e;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->a:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/bt2mode/dbridge4/e;)Lcom/dspread/xpos/bt2mode/dbridge4/e$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->b:Lcom/dspread/xpos/bt2mode/dbridge4/e$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->c:Lcom/dspread/xpos/bt2mode/dbridge4/e$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/e$a;->a()V

    .line 5
    :cond_0
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/e$a;

    invoke-direct {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/e$a;-><init>(Lcom/dspread/xpos/bt2mode/dbridge4/e;)V

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->c:Lcom/dspread/xpos/bt2mode/dbridge4/e$a;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->d:Z

    if-eq v0, p1, :cond_0

    .line 8
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->d:Z

    .line 9
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/e;->b()V

    .line 10
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/e;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/e;->c:Lcom/dspread/xpos/bt2mode/dbridge4/e$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/e$a;->a()V

    :cond_0
    return-void
.end method
