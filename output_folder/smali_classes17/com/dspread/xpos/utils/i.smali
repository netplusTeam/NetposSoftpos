.class public Lcom/dspread/xpos/utils/i;
.super Ljava/lang/Object;
.source "ThreadPoolUtil.java"


# static fields
.field private static b:Ljava/util/concurrent/ThreadPoolExecutor; = null

.field private static c:Lcom/dspread/xpos/utils/i; = null

.field private static final d:I = 0xf

.field private static final e:I = 0x2e

.field private static final f:I = 0x3c


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v6, p0, Lcom/dspread/xpos/utils/i;->a:Ljava/util/concurrent/BlockingQueue;

    .line 40
    sget-object v0, Lcom/dspread/xpos/utils/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 41
    const-string v0, "pool is = 15"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 42
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x2e

    const-wide/16 v3, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v9, Lcom/dspread/xpos/utils/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_0
    return-void
.end method

.method public static a()Lcom/dspread/xpos/utils/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/utils/i;->c:Lcom/dspread/xpos/utils/i;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/utils/i;

    invoke-direct {v0}, Lcom/dspread/xpos/utils/i;-><init>()V

    sput-object v0, Lcom/dspread/xpos/utils/i;->c:Lcom/dspread/xpos/utils/i;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/utils/i;->c:Lcom/dspread/xpos/utils/i;

    return-object v0
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/dspread/xpos/utils/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/dspread/xpos/utils/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/utils/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/utils/i;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void
.end method
