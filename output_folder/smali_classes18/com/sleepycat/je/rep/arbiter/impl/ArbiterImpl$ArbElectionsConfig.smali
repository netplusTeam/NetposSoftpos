.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;
.super Ljava/lang/Object;
.source "ArbiterImpl.java"

# interfaces
.implements Lcom/sleepycat/je/rep/elections/ElectionsConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArbElectionsConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;
    .param p2, "x1"    # Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$1;

    .line 809
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;-><init>(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)V

    return-void
.end method


# virtual methods
.method public getElectionPriority()I
    .locals 1

    .line 828
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$600(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 833
    const/16 v0, 0x11

    return v0
.end method

.method public getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    iget-object v0, v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    return-object v0
.end method

.method public getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$800(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    return-object v0
.end method

.method public getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;
    .locals 1

    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceDispatcher()Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl$ArbElectionsConfig;->this$0:Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;

    invoke-static {v0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;->access$700(Lcom/sleepycat/je/rep/arbiter/impl/ArbiterImpl;)Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    move-result-object v0

    return-object v0
.end method
