.class Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;
.super Ljava/lang/Object;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannelHandlerContext$Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    .line 1142
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;->this$0:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1145
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext$Tasks$2;->this$0:Lio/netty/channel/AbstractChannelHandlerContext$Tasks;

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext$Tasks;->access$1800(Lio/netty/channel/AbstractChannelHandlerContext$Tasks;)Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->access$2000(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 1146
    return-void
.end method
