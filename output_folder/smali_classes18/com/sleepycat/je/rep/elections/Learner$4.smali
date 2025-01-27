.class final Lcom/sleepycat/je/rep/elections/Learner$4;
.super Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.source "Learner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Learner;->informLearners(Ljava/util/Set;Lcom/sleepycat/je/rep/elections/Proposer$WinningProposal;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/concurrent/ExecutorService;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler<",
        "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 0
    .param p2, "completionTimeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "logger"    # Ljava/util/logging/Logger;
    .param p6, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p7, "formatter"    # Ljava/util/logging/Formatter;

    .line 524
    .local p1, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    iput-object p8, p0, Lcom/sleepycat/je/rep/elections/Learner$4;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p9, p0, Lcom/sleepycat/je/rep/elections/Learner$4;->val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    return-void
.end method


# virtual methods
.method protected isShutdown()Z
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner$4;->val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected processNullResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 1
    .param p1, "me"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 534
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner$4;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 537
    :cond_0
    return-void
.end method

.method protected processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 1
    .param p1, "me"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 529
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner$4;->val$count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 530
    return-void
.end method
