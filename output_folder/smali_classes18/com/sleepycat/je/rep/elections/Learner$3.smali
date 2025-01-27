.class final Lcom/sleepycat/je/rep/elections/Learner$3;
.super Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.source "Learner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Learner;->findMaster(Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/Set;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)Lcom/sleepycat/je/rep/elections/MasterValue;
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
.field final synthetic val$formatter:Ljava/util/logging/Formatter;

.field final synthetic val$logger:Ljava/util/logging/Logger;

.field final synthetic val$protocol:Lcom/sleepycat/je/rep/elections/Protocol;

.field final synthetic val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/elections/Protocol;Ljava/util/List;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
    .locals 0
    .param p2, "completionTimeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "logger"    # Ljava/util/logging/Logger;
    .param p6, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p7, "formatter"    # Ljava/util/logging/Formatter;

    .line 407
    .local p1, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    iput-object p8, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iput-object p9, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$results:Ljava/util/List;

    iput-object p10, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$logger:Ljava/util/logging/Logger;

    iput-object p11, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iput-object p12, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$formatter:Ljava/util/logging/Formatter;

    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    return-void
.end method


# virtual methods
.method protected isShutdown()Z
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

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

.method protected processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 7
    .param p1, "me"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 412
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    .line 414
    .local v0, "response":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v2, v2, Lcom/sleepycat/je/rep/elections/Protocol;->MASTER_QUERY_RESPONSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v1, v2, :cond_0

    .line 416
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$results:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner$3;->val$formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected MasterQuery response:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 421
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->wireFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 418
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 423
    :goto_0
    return-void
.end method
