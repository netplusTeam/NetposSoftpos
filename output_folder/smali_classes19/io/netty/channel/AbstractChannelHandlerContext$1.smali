.class final Lio/netty/channel/AbstractChannelHandlerContext$1;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered(Lio/netty/channel/AbstractChannelHandlerContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$next:Lio/netty/channel/AbstractChannelHandlerContext;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$1;->val$next:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$1;->val$next:Lio/netty/channel/AbstractChannelHandlerContext;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->access$000(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 158
    return-void
.end method
