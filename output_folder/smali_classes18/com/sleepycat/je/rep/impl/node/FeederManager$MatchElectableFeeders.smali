.class Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;
.super Ljava/lang/Object;
.source "FeederManager.java"

# interfaces
.implements Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/FeederManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchElectableFeeders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sleepycat/je/rep/utilint/SizeAwaitMap$Predicate<",
        "Lcom/sleepycat/je/rep/impl/node/Feeder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;Lcom/sleepycat/je/rep/impl/node/FeederManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/impl/node/FeederManager$1;

    .line 262
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;-><init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;)V

    return-void
.end method


# virtual methods
.method public match(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z
    .locals 2
    .param p1, "value"    # Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 267
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v0

    .line 268
    .local v0, "replica":Lcom/sleepycat/je/rep/impl/RepNodeImpl;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    .line 269
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->replicaAcksQualify(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    .line 262
    check-cast p1, Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager$MatchElectableFeeders;->match(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z

    move-result p1

    return p1
.end method
