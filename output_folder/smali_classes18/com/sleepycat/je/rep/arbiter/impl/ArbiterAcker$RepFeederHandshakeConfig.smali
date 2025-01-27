.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;
.super Ljava/lang/Object;
.source "ArbiterAcker.java"

# interfaces
.implements Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepFeederHandshakeConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$1;

    .line 833
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$900(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$500(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    return-object v0
.end method

.method public getNamedChannel()Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$800(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 853
    sget-object v0, Lcom/sleepycat/je/rep/NodeType;->ARBITER:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;->access$200(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterAcker;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method
