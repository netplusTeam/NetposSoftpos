.class Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;
.super Ljava/lang/Object;
.source "RepImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/RepImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VLSNIndexAccess"
.end annotation


# instance fields
.field private savedRange:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 0

    .line 2258
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/impl/RepImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/impl/RepImpl$1;

    .line 2258
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;)V

    return-void
.end method


# virtual methods
.method declared-synchronized abnormalCloseVLSNIndex()V
    .locals 2

    monitor-enter p0

    .line 2286
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->abnormalClose()V

    .line 2288
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->savedRange:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 2289
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$102(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;
    :cond_0
    monitor-exit p0

    return-void

    .line 2285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized closeVLSNIndex(Z)V
    .locals 2
    .param p1, "checkpointed"    # Z

    monitor-enter p0

    .line 2274
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2275
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->close(Z)V

    .line 2276
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->savedRange:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    .line 2277
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$102(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2279
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;
    :cond_0
    monitor-exit p0

    return-void

    .line 2273
    .end local p1    # "checkpointed":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    monitor-enter p0

    .line 2263
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->this$0:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->access$100(Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2266
    .end local p0    # "this":Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/RepImpl$VLSNIndexAccess;->savedRange:Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
