.class Lio/netty/channel/oio/AbstractOioChannel$3;
.super Ljava/lang/Object;
.source "AbstractOioChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/oio/AbstractOioChannel;->setReadPending(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/oio/AbstractOioChannel;

.field final synthetic val$readPending:Z


# direct methods
.method constructor <init>(Lio/netty/channel/oio/AbstractOioChannel;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/oio/AbstractOioChannel;

    .line 133
    iput-object p1, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    iput-boolean p2, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->val$readPending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 136
    iget-object v0, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->this$0:Lio/netty/channel/oio/AbstractOioChannel;

    iget-boolean v1, p0, Lio/netty/channel/oio/AbstractOioChannel$3;->val$readPending:Z

    iput-boolean v1, v0, Lio/netty/channel/oio/AbstractOioChannel;->readPending:Z

    .line 137
    return-void
.end method
