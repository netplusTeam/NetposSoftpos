.class Lio/netty/channel/nio/AbstractNioChannel$1;
.super Ljava/lang/Object;
.source "AbstractNioChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/nio/AbstractNioChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/nio/AbstractNioChannel;

    .line 57
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioChannel$1;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioChannel$1;->this$0:Lio/netty/channel/nio/AbstractNioChannel;

    invoke-static {v0}, Lio/netty/channel/nio/AbstractNioChannel;->access$000(Lio/netty/channel/nio/AbstractNioChannel;)V

    .line 61
    return-void
.end method
