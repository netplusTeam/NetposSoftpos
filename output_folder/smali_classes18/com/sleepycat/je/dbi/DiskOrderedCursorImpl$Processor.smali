.class Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;
.super Ljava/lang/Object;
.source "DiskOrderedCursorImpl.java"

# interfaces
.implements Lcom/sleepycat/je/dbi/DiskOrderedScanner$RecordProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field public isClosed:Z

.field private volatile shutdownNow:Z

.field final synthetic this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->isClosed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;
    .param p2, "x1"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;

    .line 211
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;-><init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    .line 211
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setShutdown()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    .line 211
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->getException()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method private getException()Ljava/lang/Throwable;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method private setShutdown()V
    .locals 1

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->shutdownNow:Z

    .line 301
    return-void
.end method


# virtual methods
.method public canProcessWithoutBlocking(I)Z
    .locals 1
    .param p1, "nRecords"    # I

    .line 250
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$700(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkShutdown()V
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->shutdownNow:Z

    if-nez v0, :cond_0

    .line 311
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$500(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method close()V
    .locals 5

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$700(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$900(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$500(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/lang/RuntimeException;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setException(Ljava/lang/Throwable;)V

    .line 270
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setShutdown()V

    .line 273
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->isClosed:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "IE":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 277
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$200(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    .line 276
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setException(Ljava/lang/Throwable;)V

    .line 278
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setShutdown()V

    .line 280
    .end local v0    # "IE":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public getCapacity()I
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$1000(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)I

    move-result v0

    return v0
.end method

.method public process(I[B[BIZ)V
    .locals 8
    .param p1, "dbIdx"    # I
    .param p2, "key"    # [B
    .param p3, "data"    # [B
    .param p4, "expiration"    # I
    .param p5, "expirationInHours"    # Z

    .line 231
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->checkShutdown()V

    .line 234
    :try_start_0
    new-instance v7, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;-><init>(I[B[BIZLcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;)V

    move-object v0, v7

    .line 237
    .local v0, "e":Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$700(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$900(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->checkShutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "e":Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;
    :cond_0
    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "IE":Ljava/lang/InterruptedException;
    new-instance v1, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 243
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$200(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    .line 242
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setException(Ljava/lang/Throwable;)V

    .line 244
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setShutdown()V

    .line 246
    .end local v0    # "IE":Ljava/lang/InterruptedException;
    :goto_1
    return-void
.end method

.method setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 286
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->exception:Ljava/lang/Throwable;

    .line 287
    return-void
.end method
