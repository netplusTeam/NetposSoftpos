.class final Lio/netty/util/concurrent/AbstractScheduledEventExecutor$1;
.super Ljava/lang/Object;
.source "AbstractScheduledEventExecutor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/AbstractScheduledEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/netty/util/concurrent/ScheduledFutureTask<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/netty/util/concurrent/ScheduledFutureTask;Lio/netty/util/concurrent/ScheduledFutureTask;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;",
            "Lio/netty/util/concurrent/ScheduledFutureTask<",
            "*>;)I"
        }
    .end annotation

    .line 37
    .local p1, "o1":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    .local p2, "o2":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {p1, p2}, Lio/netty/util/concurrent/ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 34
    check-cast p1, Lio/netty/util/concurrent/ScheduledFutureTask;

    check-cast p2, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor$1;->compare(Lio/netty/util/concurrent/ScheduledFutureTask;Lio/netty/util/concurrent/ScheduledFutureTask;)I

    move-result p1

    return p1
.end method
