.class final Lcom/sleepycat/je/rep/elections/Utils$1;
.super Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/elections/Utils;->checkFutures(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
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
.field final synthetic val$envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 0
    .param p2, "completionTimeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "logger"    # Ljava/util/logging/Logger;
    .param p6, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p7, "formatter"    # Ljava/util/logging/Formatter;

    .line 154
    .local p1, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    iput-object p8, p0, Lcom/sleepycat/je/rep/elections/Utils$1;->val$envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct/range {p0 .. p7}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V

    return-void
.end method


# virtual methods
.method protected isShutdown()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Utils$1;->val$envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

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
    .locals 0
    .param p1, "result"    # Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 159
    return-void
.end method
