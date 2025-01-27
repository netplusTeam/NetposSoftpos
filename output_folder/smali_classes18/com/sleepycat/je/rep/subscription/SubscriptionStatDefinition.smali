.class Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;
.super Ljava/lang/Object;
.source "SubscriptionStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Subscription statistics"

.field public static final GROUP_NAME:Ljava/lang/String; = "Subscription"

.field public static final SUB_MAX_PENDING_INPUT:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SUB_MSG_RECEIVED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SUB_MSG_RESPONDED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SUB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SUB_OPS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SUB_TXN_ABORTED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final SUB_TXN_COMMITTED:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 25
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nReplayQueueOverflow"

    const-string v2, "The number inserts into the replay queue that failed because the queue was full."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 31
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "msg_received"

    const-string v2, "The number of messages received from feeder"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_MSG_RECEIVED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 36
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "msg_responded"

    const-string v2, "The number of messages responded to feeder"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_MSG_RESPONDED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 41
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "ops_processed"

    const-string v2, "The number of data operations processed by subscriber"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_OPS_PROCESSED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 46
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "txn_committed"

    const-string v2, "The number of committed transactions received from feeder "

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_TXN_COMMITTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 51
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "txn_aborted"

    const-string v2, "The number of aborted transactions received from feeder "

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_TXN_ABORTED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 56
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "max_pending_input"

    const-string v2, "The max number of pending items in the input queue"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionStatDefinition;->SUB_MAX_PENDING_INPUT:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
