.class Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;
.super Lcom/sleepycat/je/utilint/StatsAccumulator;
.source "BtreeVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/BtreeVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerifierStatsAccumulator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;Ljava/io/PrintStream;I)V
    .locals 0
    .param p2, "progressStream"    # Ljava/io/PrintStream;
    .param p3, "progressInterval"    # I

    .line 2196
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 2197
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/utilint/StatsAccumulator;-><init>(Ljava/io/PrintStream;I)V

    .line 2198
    return-void
.end method


# virtual methods
.method public verifyNode(Lcom/sleepycat/je/tree/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/sleepycat/je/tree/Node;

    .line 2208
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-static {v0}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$900(Lcom/sleepycat/je/util/verify/BtreeVerifier;)Lcom/sleepycat/je/VerifyConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/VerifyConfig;->getRepairReservedFiles()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/BtreeVerifier$VerifierStatsAccumulator;->this$0:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-static {v0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->access$1000(Lcom/sleepycat/je/util/verify/BtreeVerifier;Lcom/sleepycat/je/tree/Node;)V

    .line 2211
    :cond_0
    return-void
.end method
