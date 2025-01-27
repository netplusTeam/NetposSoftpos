.class public final synthetic Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$EpollHolder;->$r8$lambda$3ZxCeKg5O4gtSd3zUJ-xNiHxF40(ILjava/util/concurrent/Executor;)Lio/netty/channel/epoll/EpollEventLoopGroup;

    move-result-object p1

    check-cast p1, Lio/netty/channel/MultithreadEventLoopGroup;

    return-object p1
.end method
