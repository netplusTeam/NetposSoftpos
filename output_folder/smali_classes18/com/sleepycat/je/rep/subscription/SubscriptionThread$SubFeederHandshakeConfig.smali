.class Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;
.super Ljava/lang/Object;
.source "SubscriptionThread.java"

# interfaces
.implements Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/SubscriptionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubFeederHandshakeConfig"
.end annotation


# instance fields
.field private final nodeType:Lcom/sleepycat/je/rep/NodeType;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Lcom/sleepycat/je/rep/NodeType;)V
    .locals 0
    .param p2, "nodeType"    # Lcom/sleepycat/je/rep/NodeType;

    .line 867
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 869
    invoke-static {p1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->access$100(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object p1

    check-cast p1, Lcom/sleepycat/je/rep/impl/RepImpl;

    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 870
    return-void
.end method


# virtual methods
.method public getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .locals 2

    .line 881
    new-instance v0, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    invoke-static {}, Lcom/sleepycat/je/rep/impl/RepImpl;->getClockSkewMs()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;-><init>(I)V

    return-object v0
.end method

.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 4

    .line 895
    new-instance v0, Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 896
    invoke-static {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->access$300(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getGroupName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 898
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getCurrentJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;-><init>(Ljava/lang/String;ZLcom/sleepycat/je/JEVersion;)V

    .line 901
    .local v0, "repGroupImpl":Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-static {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->access$300(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getGroupUUID()Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 902
    iget-object v1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-static {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->access$300(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getGroupUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/impl/RepGroupImpl;->setUUID(Ljava/util/UUID;)V

    .line 904
    :cond_0
    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    return-object v0
.end method

.method public getNamedChannel()Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-static {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->access$200(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->nodeType:Lcom/sleepycat/je/rep/NodeType;

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$SubFeederHandshakeConfig;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method
