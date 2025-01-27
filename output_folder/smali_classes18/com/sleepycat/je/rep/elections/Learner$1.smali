.class Lcom/sleepycat/je/rep/elections/Learner$1;
.super Ljava/lang/Object;
.source "Learner.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/Learner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Learner;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/elections/Protocol;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/elections/Learner;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Learner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/elections/Learner;

    .line 100
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Learner$1;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Lcom/sleepycat/je/rep/elections/Proposer$Proposal;Lcom/sleepycat/je/rep/elections/Protocol$Value;)V
    .locals 6
    .param p1, "proposal"    # Lcom/sleepycat/je/rep/elections/Proposer$Proposal;
    .param p2, "value"    # Lcom/sleepycat/je/rep/elections/Protocol$Value;

    .line 103
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Learner$1;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v0, v0, Lcom/sleepycat/je/rep/elections/Learner;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Learner$1;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    invoke-static {v1}, Lcom/sleepycat/je/rep/elections/Learner;->access$000(Lcom/sleepycat/je/rep/elections/Learner;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Learner$1;->this$0:Lcom/sleepycat/je/rep/elections/Learner;

    iget-object v2, v2, Lcom/sleepycat/je/rep/elections/Learner;->formatter:Lcom/sleepycat/je/rep/utilint/ReplicationFormatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Learner notified. Proposal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 106
    return-void
.end method
