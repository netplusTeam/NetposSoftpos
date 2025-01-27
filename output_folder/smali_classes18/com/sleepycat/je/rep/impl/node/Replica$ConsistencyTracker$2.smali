.class Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker$2;
.super Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "this$1"    # Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1366
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker$2;->this$1:Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    iget-object v0, p1, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/rep/impl/node/Replica$OrderedLatches;-><init>(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-void
.end method


# virtual methods
.method tripPredicate(JJ)Z
    .locals 1
    .param p1, "keyLag"    # J
    .param p3, "currentLag"    # J

    .line 1369
    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
