.class Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise;
.super Lio/netty/util/concurrent/DefaultProgressivePromise;
.source "ImmediateEventExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/ImmediateEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImmediateProgressivePromise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/DefaultProgressivePromise<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .line 153
    .local p0, "this":Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise;, "Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultProgressivePromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected checkDeadLock()V
    .locals 0

    .line 159
    .local p0, "this":Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise;, "Lio/netty/util/concurrent/ImmediateEventExecutor$ImmediateProgressivePromise<TV;>;"
    return-void
.end method
