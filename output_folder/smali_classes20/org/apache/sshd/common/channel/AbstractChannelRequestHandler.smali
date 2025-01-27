.class public abstract Lorg/apache/sshd/common/channel/AbstractChannelRequestHandler;
.super Lorg/apache/sshd/common/channel/AbstractRequestHandler;
.source "AbstractChannelRequestHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/ChannelRequestHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/channel/AbstractRequestHandler<",
        "Lorg/apache/sshd/common/channel/Channel;",
        ">;",
        "Lorg/apache/sshd/common/channel/ChannelRequestHandler;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/sshd/common/channel/AbstractRequestHandler;-><init>()V

    .line 28
    return-void
.end method
