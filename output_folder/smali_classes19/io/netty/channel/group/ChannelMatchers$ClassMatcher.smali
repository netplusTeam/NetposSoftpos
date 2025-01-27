.class final Lio/netty/channel/group/ChannelMatchers$ClassMatcher;
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
    name = "ClassMatcher"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/netty/channel/Channel;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lio/netty/channel/group/ChannelMatchers$ClassMatcher;->clazz:Ljava/lang/Class;

    .line 162
    return-void
.end method


# virtual methods
.method public matches(Lio/netty/channel/Channel;)Z
    .locals 1
    .param p1, "ch"    # Lio/netty/channel/Channel;

    .line 166
    iget-object v0, p0, Lio/netty/channel/group/ChannelMatchers$ClassMatcher;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
