.class public Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.source "BinaryNodeStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "BinaryNodeState"


# instance fields
.field private final dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field private final logger:Ljava/util/logging/Logger;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 1
    .param p1, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 52
    const-string v0, "BinaryNodeState"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 53
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 54
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->logger:Ljava/util/logging/Logger;

    .line 57
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;)Ljava/util/logging/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;

    .line 41
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 66
    new-instance v0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService$NodeStateServiceRunnable;-><init>(Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;Lcom/sleepycat/je/rep/net/DataChannel;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/BinaryNodeStateService;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    const-string v1, "BinaryNodeState"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 62
    return-void
.end method
