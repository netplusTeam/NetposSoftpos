.class public Lcom/hivemq/client/internal/netty/DefaultContextPromise;
.super Lio/netty/channel/DefaultChannelPromise;
.source "DefaultContextPromise.java"

# interfaces
.implements Lcom/hivemq/client/internal/netty/ContextFuture$Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/DefaultChannelPromise;",
        "Lcom/hivemq/client/internal/netty/ContextFuture$Promise<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;Ljava/lang/Object;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            "TC;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/hivemq/client/internal/netty/DefaultContextPromise;, "Lcom/hivemq/client/internal/netty/DefaultContextPromise<TC;>;"
    .local p2, "context":Ljava/lang/Object;, "TC;"
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;)V

    .line 32
    iput-object p2, p0, Lcom/hivemq/client/internal/netty/DefaultContextPromise;->context:Ljava/lang/Object;

    .line 33
    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 37
    .local p0, "this":Lcom/hivemq/client/internal/netty/DefaultContextPromise;, "Lcom/hivemq/client/internal/netty/DefaultContextPromise<TC;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/netty/DefaultContextPromise;->context:Ljava/lang/Object;

    return-object v0
.end method
