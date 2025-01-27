.class Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;
.super Ljava/lang/RuntimeException;
.source "SubscriptionThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/subscription/SubscriptionThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionException"
.end annotation


# instance fields
.field private final retrySleepMs:J

.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;Ljava/lang/String;JLjava/lang/Throwable;)V
    .locals 0
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "retrySleepMs"    # J
    .param p5, "cause"    # Ljava/lang/Throwable;

    .line 918
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->this$0:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    .line 919
    invoke-direct {p0, p2, p5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 920
    iput-wide p3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->retrySleepMs:J

    .line 921
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 934
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "Fail to connect"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", will retry after sleeping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->retrySleepMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getRetrySleepMs()J
    .locals 2

    .line 929
    iget-wide v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionThread$ConnectionException;->retrySleepMs:J

    return-wide v0
.end method
