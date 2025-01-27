.class Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;
.source "GroupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/GroupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/GroupService;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/GroupService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/RepGroupProtocol;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/GroupService;
    .param p2, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/impl/RepGroupProtocol;

    .line 335
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/GroupService;

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;-><init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol;Z)V

    .line 337
    invoke-static {p1, p2}, Lcom/sleepycat/je/rep/impl/GroupService;->access$000(Lcom/sleepycat/je/rep/impl/GroupService;Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 338
    return-void
.end method


# virtual methods
.method protected getResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    .locals 3
    .param p1, "request"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->protocol:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/GroupService;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->process(Ljava/lang/Object;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    .line 351
    .local v0, "rm":Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/GroupService;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/impl/GroupService;->access$100(Lcom/sleepycat/je/rep/impl/GroupService;Lcom/sleepycat/je/rep/net/DataChannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/GroupService;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/GroupService;->access$200(Lcom/sleepycat/je/rep/impl/GroupService;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/GroupService$GroupServiceRunnable;->this$0:Lcom/sleepycat/je/rep/impl/GroupService;

    iget-object v1, v1, Lcom/sleepycat/je/rep/impl/GroupService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 357
    return-void
.end method
