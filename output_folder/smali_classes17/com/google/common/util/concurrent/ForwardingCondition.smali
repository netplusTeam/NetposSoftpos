.class abstract Lcom/google/common/util/concurrent/ForwardingCondition;
.super Ljava/lang/Object;
.source "ForwardingCondition.java"

# interfaces
.implements Ljava/util/concurrent/locks/Condition;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 29
    return-void
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public awaitNanos(J)J
    .locals 2
    .param p1, "nanosTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public awaitUninterruptibly()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 39
    return-void
.end method

.method public awaitUntil(Ljava/util/Date;)Z
    .locals 1
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method abstract delegate()Ljava/util/concurrent/locks/Condition;
.end method

.method public signal()V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 54
    return-void
.end method

.method public signalAll()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ForwardingCondition;->delegate()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 59
    return-void
.end method
