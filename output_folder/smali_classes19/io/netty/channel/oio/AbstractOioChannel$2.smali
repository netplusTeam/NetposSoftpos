.class Lio/netty/channel/oio/AbstractOioChannel$2;
.super Ljava/lang/Object;
.source "AbstractOioChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/oio/AbstractOioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/oio/AbstractOioChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/oio/AbstractOioChannel;

    .line 43
    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel$2;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel$2;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    .line 47
    return-void
.end method
