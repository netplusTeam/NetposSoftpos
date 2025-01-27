.class final Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;
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
    name = "CompositeMatcher"
.end annotation


# instance fields
.field private final matchers:[Lio/netty/channel/group/ChannelMatcher;


# direct methods
.method varargs constructor <init>([Lio/netty/channel/group/ChannelMatcher;)V
    .locals 0
    .param p1, "matchers"    # [Lio/netty/channel/group/ChannelMatcher;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;->matchers:[Lio/netty/channel/group/ChannelMatcher;

    .line 118
    return-void
.end method


# virtual methods
.method public matches(Lio/netty/channel/Channel;)Z
    .locals 6
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 122
    iget-object v0, p0, Lio/netty/channel/group/ChannelMatchers$CompositeMatcher;->matchers:[Lio/netty/channel/group/ChannelMatcher;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 123
    .local v4, "m":Lio/netty/channel/group/ChannelMatcher;
    invoke-interface {v4, p1}, Lio/netty/channel/group/ChannelMatcher;->matches(Lio/netty/channel/Channel;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    return v2

    .line 122
    .end local v4    # "m":Lio/netty/channel/group/ChannelMatcher;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
