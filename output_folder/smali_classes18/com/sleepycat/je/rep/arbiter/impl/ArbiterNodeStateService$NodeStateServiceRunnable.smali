.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;
.source "ArbiterNodeStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NodeStateServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/NodeStateProtocol;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;
    .param p2, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/impl/NodeStateProtocol;

    .line 73
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;-><init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol;Z)V

    .line 75
    return-void
.end method


# virtual methods
.method protected getResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 2
    .param p1, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;->protocol:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->process(Ljava/lang/Object;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->access$000(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService$NodeStateServiceRunnable;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;->access$100(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterNodeStateService;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 87
    return-void
.end method
