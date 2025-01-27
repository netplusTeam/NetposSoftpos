.class Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/monitor/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorServiceRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/monitor/MonitorService;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/monitor/MonitorService;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/monitor/Protocol;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/monitor/MonitorService;
    .param p2, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/monitor/Protocol;

    .line 131
    iput-object p1, p0, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;->this$0:Lcom/sleepycat/je/rep/monitor/MonitorService;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingRunnable;-><init>(Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/impl/TextProtocol;Z)V

    .line 133
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

    .line 139
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;->protocol:Lcom/sleepycat/je/rep/impl/TextProtocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;->this$0:Lcom/sleepycat/je/rep/monitor/MonitorService;

    invoke-virtual {v0, v1, p1}, Lcom/sleepycat/je/rep/impl/TextProtocol;->process(Ljava/lang/Object;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;->this$0:Lcom/sleepycat/je/rep/monitor/MonitorService;

    invoke-static {v0}, Lcom/sleepycat/je/rep/monitor/MonitorService;->access$000(Lcom/sleepycat/je/rep/monitor/MonitorService;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/monitor/MonitorService$MonitorServiceRunnable;->this$0:Lcom/sleepycat/je/rep/monitor/MonitorService;

    invoke-static {v1}, Lcom/sleepycat/je/rep/monitor/MonitorService;->access$100(Lcom/sleepycat/je/rep/monitor/MonitorService;)Ljava/util/logging/Formatter;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0, v1, v2, p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 145
    return-void
.end method
