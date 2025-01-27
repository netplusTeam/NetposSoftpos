.class public Lcom/dspread/xpos/y0;
.super Ljava/lang/Object;
.source "WaitDevicePermission.java"


# static fields
.field private static final c:Ljava/lang/String; = "PERMISSION_WAITING"

.field private static final d:Ljava/lang/String; = "PERMISSION_ALREADY"


# instance fields
.field private a:Lcom/dspread/xpos/QPOSService;

.field private b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/y0;->a:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/y0;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/y0;->b:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const-string v0, "PERMISSION_WAITING"

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/y0;->a(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/y0;->a:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v1}, Lcom/dspread/xpos/QPOSService;->z1()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-direct {p0}, Lcom/dspread/xpos/y0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x5dc

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v2, 0x14

    .line 9
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/y0;->a(Ljava/lang/String;)V

    return-void
.end method
