.class Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;
.super Ljava/lang/Object;
.source "Replica.java"

# interfaces
.implements Lcom/sleepycat/je/rep/stream/ReplicaFeederHandshakeConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepFeederHandshakeConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Replica;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replica;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/rep/impl/node/Replica$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/impl/node/Replica$1;

    .line 1281
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica;)V

    return-void
.end method


# virtual methods
.method public getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getClock()Lcom/sleepycat/je/rep/utilint/RepUtils$Clock;

    move-result-object v0

    return-object v0
.end method

.method public getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;
    .locals 1

    .line 1306
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGroup()Lcom/sleepycat/je/rep/impl/RepGroupImpl;

    move-result-object v0

    return-object v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    return-object v0
.end method

.method public getNamedChannel()Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .locals 1

    .line 1311
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType()Lcom/sleepycat/je/rep/NodeType;
    .locals 1

    .line 1301
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNodeType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v0

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$RepFeederHandshakeConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method
