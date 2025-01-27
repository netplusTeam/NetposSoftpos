.class final Lio/netty/channel/group/ChannelMatchers$InstanceMatcher;
.super Ljava/lang/Object;
.source "ChannelMatchers.java"

# interfaces
.implements Lio/netty/channel/group/ChannelMatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/ChannelMatchers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceMatcher"
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;


# direct methods
.method constructor <init>(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lio/netty/channel/group/ChannelMatchers$InstanceMatcher;->channel:Lio/netty/channel/Channel;

    .line 149
    return-void
.end method


# virtual methods
.method public matches(Lio/netty/channel/Channel;)Z
    .locals 1
    .param p1, "ch"    # Lio/netty/channel/Channel;

    .line 153
    iget-object v0, p0, Lio/netty/channel/group/ChannelMatchers$InstanceMatcher;->channel:Lio/netty/channel/Channel;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
