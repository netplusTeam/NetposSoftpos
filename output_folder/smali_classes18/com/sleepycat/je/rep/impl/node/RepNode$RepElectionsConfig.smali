.class Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;
.super Ljava/lang/Object;
.source "RepNode.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/ElectionsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/RepNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RepElectionsConfig"
.end annotation


# instance fields
.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/RepNode;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 0
    .param p2, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 2639
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->this$0:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2640
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 2641
    return-void
.end method


# virtual methods
.method public getElectionPriority()I
    .locals 1

    .line 2660
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getElectionPriority()I

    move-result v0

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 2

    .line 2645
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->GROUP_NAME:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 2665
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogVersion()I

    move-result v0

    return v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 2650
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 2670
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1

    .line 2675
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    return-object v0
.end method

.method public getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .locals 1

    .line 2655
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/RepNode$RepElectionsConfig;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v0

    return-object v0
.end method
