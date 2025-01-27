.class Lcom/sleepycat/je/rep/elections/Proposer$2;
.super Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Proposer;->tallyPhase2Results(Lcom/sleepycat/je/rep/QuorumPolicy;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;)Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;
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
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Proposer;

.field final synthetic val$quorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

.field final synthetic val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Proposer;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;Lcom/sleepycat/je/rep/QuorumPolicy;)V
    .locals 10
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Proposer;
    .param p3, "completionTimeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "logger"    # Ljava/util/logging/Logger;
    .param p7, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p8, "formatter"    # Ljava/util/logging/Formatter;

    .line 302
    .local p2, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/sleepycat/je/rep/elections/Proposer$2;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;

    move-object/from16 v0, p10

    iput-object v0, v8, Lcom/sleepycat/je/rep/elections/Proposer$2;->val$quorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

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

    .line 343
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Proposer;->access$200(Lcom/sleepycat/je/rep/elections/Proposer;)Z

    move-result v0

    return v0
.end method

.method protected processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 10
    .param p1, "me"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 306
    nop

    .line 307
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    .line 309
    .local v0, "responseMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v1

    .line 310
    .local v1, "protocol":Lcom/sleepycat/je/rep/elections/Protocol;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v2

    .line 311
    .local v2, "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol;->REJECT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-eq v2, v3, :cond_3

    .line 314
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol;->ACCEPTED:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v2, v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;->accepts:Ljava/util/Set;

    iget-object v4, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->val$quorumPolicy:Lcom/sleepycat/je/rep/QuorumPolicy;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Proposer$Phase2Result;->accepts:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/rep/elections/Proposer;->access$500(Lcom/sleepycat/je/rep/elections/Proposer;Lcom/sleepycat/je/rep/QuorumPolicy;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/elections/Proposer$HaveQuorum;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/elections/Proposer$HaveQuorum;-><init>()V

    throw v3

    .line 325
    :cond_1
    iget-object v3, v1, Lcom/sleepycat/je/rep/elections/Protocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v2, v3, :cond_2

    .line 326
    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    .line 328
    .local v3, "errorMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v4, v4, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v6, v6, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Proposer phase 2 protocol error:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 332
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 333
    .end local v3    # "errorMessage":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    goto :goto_0

    .line 334
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v4, v4, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v5, v5, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proposer Phase 2 unknown response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 312
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$2;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    invoke-static {v3}, Lcom/sleepycat/je/rep/elections/Proposer;->access$400(Lcom/sleepycat/je/rep/elections/Proposer;)Lcom/sleepycat/je/utilint/IntStat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 313
    new-instance v3, Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;

    iget-object v4, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-direct {v3, v4}, Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;-><init>(Ljava/net/InetSocketAddress;)V

    throw v3
.end method
