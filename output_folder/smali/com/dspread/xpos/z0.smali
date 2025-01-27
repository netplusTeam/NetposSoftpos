.class public Lcom/dspread/xpos/z0;
.super Ljava/lang/Object;
.source "WaitSetAmount.java"


# static fields
.field private static final c:Ljava/lang/String; = "CANCEL_AMOUNT"

.field private static final d:Ljava/lang/String; = "SET_AMOUNT"

.field private static final e:Ljava/lang/String; = "WAITING_AMOUNT"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/dspread/xpos/QPOSService;


# direct methods
.method protected constructor <init>(Lcom/dspread/xpos/QPOSService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "WAITING_AMOUNT"

    iput-object v0, p0, Lcom/dspread/xpos/z0;->a:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/dspread/xpos/z0;->b:Lcom/dspread/xpos/QPOSService;

    return-void
.end method

.method protected constructor <init>(Lcom/dspread/xpos/Service;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string p1, "WAITING_AMOUNT"

    iput-object p1, p0, Lcom/dspread/xpos/z0;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/z0;->a:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/z0;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 2
    const-string v0, "cancelWaitSetAmount"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    .line 3
    const-string v0, "CANCEL_AMOUNT"

    invoke-direct {p0, v0}, Lcom/dspread/xpos/z0;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 1
    const-string v0, "SET_AMOUNT"

    invoke-direct {p0, v0}, Lcom/dspread/xpos/z0;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected d()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/z0;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SET_AMOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 4
    :cond_0
    const-string v0, "WAITING_AMOUNT"

    invoke-direct {p0, v0}, Lcom/dspread/xpos/z0;->a(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/dspread/xpos/z0;->b:Lcom/dspread/xpos/QPOSService;

    invoke-virtual {v3}, Lcom/dspread/xpos/QPOSService;->G1()V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/dspread/xpos/z0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x14

    .line 9
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .line 15
    :cond_1
    invoke-direct {p0}, Lcom/dspread/xpos/z0;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CANCEL_AMOUNT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    return v4

    .line 17
    :cond_2
    invoke-direct {p0}, Lcom/dspread/xpos/z0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    invoke-direct {p0, v0}, Lcom/dspread/xpos/z0;->a(Ljava/lang/String;)V

    return v2

    :cond_3
    return v4
.end method
