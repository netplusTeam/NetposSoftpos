.class public Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LazyQueuingService"
.end annotation


# instance fields
.field private final serviceThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p4, "serviceThread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;",
            "Ljava/lang/Thread;",
            ")V"
        }
    .end annotation

    .line 1076
    .local p3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sleepycat/je/rep/net/DataChannel;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 1078
    invoke-direct {p0, p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;-><init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V

    .line 1079
    iput-object p4, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    .line 1080
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    goto :goto_0

    .line 1124
    :catch_0
    move-exception v0

    .line 1128
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->cancel()V

    .line 1129
    return-void
.end method

.method requestDispatch(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 6
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1085
    sget-object v0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$1;->$SwitchMap$java$lang$Thread$State:[I

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Thread started for service: "

    packed-switch v0, :pswitch_data_0

    .line 1103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread for service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is in state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    .line 1106
    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .line 1107
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$000(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$100(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$200(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 1109
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 1107
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1110
    throw v0

    .line 1098
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :pswitch_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$000(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$100(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$200(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1100
    goto :goto_0

    .line 1088
    :pswitch_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->serviceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1089
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$000(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$100(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$200(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$LazyQueuingService;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v4, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1091
    nop

    .line 1112
    :goto_0
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->requestDispatch(Lcom/sleepycat/je/rep/net/DataChannel;)V

    .line 1113
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
