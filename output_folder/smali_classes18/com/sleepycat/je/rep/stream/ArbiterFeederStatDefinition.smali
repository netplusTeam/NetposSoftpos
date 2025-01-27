.class public Lcom/sleepycat/je/rep/stream/ArbiterFeederStatDefinition;
.super Ljava/lang/Object;
.source "ArbiterFeederStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "ArbiterFeeder statistics"

.field public static final GROUP_NAME:Ljava/lang/String; = "ArbiterFeeder"

.field public static QUEUE_FULL:Lcom/sleepycat/je/utilint/StatDefinition;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "queueFull"

    const-string v2, "Number of times a item could not be queued because the queue was full."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/stream/ArbiterFeederStatDefinition;->QUEUE_FULL:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
