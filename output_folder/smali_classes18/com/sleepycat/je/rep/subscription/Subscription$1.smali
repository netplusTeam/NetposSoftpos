.class Lcom/sleepycat/je/rep/subscription/Subscription$1;
.super Lcom/sleepycat/je/utilint/PollCondition;
.source "Subscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/subscription/Subscription;->waitForSubscriptionInitDone(Lcom/sleepycat/je/rep/subscription/SubscriptionThread;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/subscription/Subscription;

.field final synthetic val$t:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/subscription/Subscription;JJLcom/sleepycat/je/rep/subscription/SubscriptionThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/subscription/Subscription;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .line 291
    iput-object p1, p0, Lcom/sleepycat/je/rep/subscription/Subscription$1;->this$0:Lcom/sleepycat/je/rep/subscription/Subscription;

    iput-object p6, p0, Lcom/sleepycat/je/rep/subscription/Subscription$1;->val$t:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sleepycat/je/utilint/PollCondition;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method protected condition()Z
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/Subscription$1;->val$t:Lcom/sleepycat/je/rep/subscription/SubscriptionThread;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionThread;->getStatus()Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;->INIT:Lcom/sleepycat/je/rep/subscription/SubscriptionStatus;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
