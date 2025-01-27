.class Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;
.super Ljava/lang/Object;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyQueueEntry"
.end annotation


# instance fields
.field private final entry:Lcom/sleepycat/je/log/entry/LogEntry;

.field private final repContext:Lcom/sleepycat/je/log/ReplicationContext;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)V
    .locals 0
    .param p1, "entry"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "repContext"    # Lcom/sleepycat/je/log/ReplicationContext;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    .line 134
    iput-object p2, p0, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;Lcom/sleepycat/je/log/LogManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/log/entry/LogEntry;
    .param p2, "x1"    # Lcom/sleepycat/je/log/ReplicationContext;
    .param p3, "x2"    # Lcom/sleepycat/je/log/LogManager$1;

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;-><init>(Lcom/sleepycat/je/log/entry/LogEntry;Lcom/sleepycat/je/log/ReplicationContext;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;)Lcom/sleepycat/je/log/entry/LogEntry;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;->entry:Lcom/sleepycat/je/log/entry/LogEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;)Lcom/sleepycat/je/log/ReplicationContext;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/log/LogManager$LazyQueueEntry;->repContext:Lcom/sleepycat/je/log/ReplicationContext;

    return-object v0
.end method
