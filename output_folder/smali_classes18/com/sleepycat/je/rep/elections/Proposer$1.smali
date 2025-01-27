.class Lcom/sleepycat/je/rep/elections/Proposer$1;
.super Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.source "Proposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Proposer;->tallyPhase1Results(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;)Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;
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

.field final synthetic val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Proposer;Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;)V
    .locals 10
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Proposer;
    .param p3, "completionTimeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "logger"    # Ljava/util/logging/Logger;
    .param p7, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p8, "formatter"    # Ljava/util/logging/Formatter;

    .line 190
    .local p2, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    move-object/from16 v0, p9

    iput-object v0, v8, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

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

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    invoke-static {v0}, Lcom/sleepycat/je/rep/elections/Proposer;->access$200(Lcom/sleepycat/je/rep/elections/Proposer;)Z

    move-result v0

    return v0
.end method

.method protected processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 8
    .param p1, "me"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 195
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;->getOp()Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    move-result-object v0

    .line 196
    .local v0, "op":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v1

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Protocol;->REJECT:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-eq v0, v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v1

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Protocol;->PROMISE:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v0, v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisories:Ljava/util/Set;

    iget-object v2, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->promisoryMessages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/elections/Protocol$Promise;

    .line 207
    .local v1, "accept":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getHighestProposal()Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    move-result-object v2

    .line 208
    .local v2, "acceptProposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->acceptProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->acceptProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 210
    invoke-interface {v2, v3}, Lcom/sleepycat/je/rep/elections/Proposer$Proposal;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    iput-object v2, v3, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->acceptProposal:Lcom/sleepycat/je/rep/elections/Proposer$Proposal;

    .line 213
    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->val$result:Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Protocol$Promise;->getAcceptedValue()Lcom/sleepycat/je/rep/elections/Protocol$Value;

    move-result-object v4

    iput-object v4, v3, Lcom/sleepycat/je/rep/elections/Proposer$Phase1Result;->acceptedValue:Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 215
    .end local v1    # "accept":Lcom/sleepycat/je/rep/elections/Protocol$Promise;
    .end local v2    # "acceptProposal":Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    :cond_1
    nop

    .line 231
    return-void

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/elections/Elections;->getProtocol()Lcom/sleepycat/je/rep/elections/Protocol;

    move-result-object v1

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Protocol;->PROTOCOL_ERROR:Lcom/sleepycat/je/rep/impl/TextProtocol$MessageOp;

    if-ne v0, v1, :cond_3

    .line 216
    nop

    .line 217
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;

    .line 219
    .local v1, "protocolError":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v2, v2, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v4, v4, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Proposer phase 1 protocol error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 222
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 223
    return-void

    .line 225
    .end local v1    # "protocolError":Lcom/sleepycat/je/rep/impl/TextProtocol$ProtocolError;
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v1, v1, Lcom/sleepycat/je/rep/elections/Proposer;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v2, v2, Lcom/sleepycat/je/rep/elections/Proposer;->elections:Lcom/sleepycat/je/rep/elections/Elections;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/elections/Elections;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    iget-object v3, v3, Lcom/sleepycat/je/rep/elections/Proposer;->formatter:Ljava/util/logging/Formatter;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proposer phase 1 unknown response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 229
    return-void

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Proposer$1;->this$0:Lcom/sleepycat/je/rep/elections/Proposer;

    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Proposer;->access$100(Lcom/sleepycat/je/rep/elections/Proposer;)Lcom/sleepycat/je/utilint/IntStat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/IntStat;->increment()V

    .line 202
    new-instance v1, Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;

    iget-object v2, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/elections/Proposer$HigherNumberedProposal;-><init>(Ljava/net/InetSocketAddress;)V

    throw v1
.end method
