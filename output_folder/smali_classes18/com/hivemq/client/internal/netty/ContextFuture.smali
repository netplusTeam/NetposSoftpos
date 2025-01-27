.class public interface abstract Lcom/hivemq/client/internal/netty/ContextFuture;
.super Ljava/lang/Object;
.source "ContextFuture.java"

# interfaces
.implements Lio/netty/channel/ChannelFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/netty/ContextFuture$Listener;,
        Lcom/hivemq/client/internal/netty/ContextFuture$Promise;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/channel/ChannelFuture;"
    }
.end annotation


# virtual methods
.method public abstract getContext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method
