.class Lcom/sleepycat/je/rep/elections/Learner$2;
.super Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.source "Learner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Learner;->queryForMaster(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Learner;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Learner;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
    .locals 10
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Learner;
    .param p3, "completionTimeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "logger"    # Ljava/util/logging/Logger;
    .param p7, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p8, "formatter"    # Ljava/util/logging/Formatter;

    .line 332
    .local p2, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/sleepycat/je/rep/elections/Learner$2;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    return-void
.end method


# virtual methods
.method protected isShutdown()Z
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner$2;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Learner;->isShutdown()Z

    move-result v0

    return v0
.end method

.method protected processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 4
    .param p1, "me"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 337
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner$2;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Protocol;->MASTER_QUERY_RESPONSE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v0, v1, :cond_1

    .line 339
    nop

    .line 340
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;

    .line 341
    .local v0, "accept":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    nop

    .line 342
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->getValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/elections/MasterValue;

    .line 343
    .local v1, "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/MasterValue;->getNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Learner$2;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Learner;->protocol:Lcom/sleepycat/je/rep/elections/Protocol;

    .line 345
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Protocol;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner$2;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;->getProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sleepycat/je/rep/elections/Learner;->processResult(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V

    .line 356
    .end local v0    # "accept":Lcom/sleepycat/je/rep/elections/Protocol$MasterQueryResponse;
    .end local v1    # "masterValue":Lcom/sleepycat/je/rep/elections/MasterValue;
    :cond_1
    return-void
.end method
