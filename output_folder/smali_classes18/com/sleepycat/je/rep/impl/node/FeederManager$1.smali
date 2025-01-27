.class Lcom/sleepycat/je/rep/impl/node/FeederManager$1;
.super Lcom/sleepycat/je/utilint/PollCondition;
.source "FeederManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/impl/node/FeederManager;->shutdownFeeders(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/node/FeederManager;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 775
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$1;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/je/utilint/PollCondition;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method protected condition()Z
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$1;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$200(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
