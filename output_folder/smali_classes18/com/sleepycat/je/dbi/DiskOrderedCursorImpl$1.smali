.class Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;
.super Ljava/lang/Thread;
.source "DiskOrderedCursorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;-><init>([Lcom/sleepycat/je/dbi/DatabaseImpl;Lcom/sleepycat/je/DiskOrderedCursorConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 178
    iput-object p1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$300(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    move-result-object v0

    const-string v1, "DiskOrderedCursor"

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    .line 184
    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$200(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getNodeSequence()Lcom/sleepycat/je/dbi/NodeSequence;

    move-result-object v2

    .line 185
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/NodeSequence;->getNextDiskOrderedCursorId()J

    move-result-wide v2

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->scan(Ljava/lang/String;J)V

    .line 187
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$400(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "T":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$500(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/lang/RuntimeException;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$400(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->isClosed:Z

    .line 193
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$400(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$Processor;->setException(Ljava/lang/Throwable;)V

    .line 201
    iget-object v1, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v1}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$700(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$1;->this$0:Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;

    invoke-static {v2}, Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;->access$600(Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl;)Lcom/sleepycat/je/dbi/DiskOrderedCursorImpl$KeyAndData;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 203
    .end local v0    # "T":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
