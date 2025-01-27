.class public final synthetic Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/server/ExitCallback;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/channel/ChannelSession;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/channel/ChannelSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/server/channel/ChannelSession;

    return-void
.end method


# virtual methods
.method public final onExit(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/server/channel/ChannelSession$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/server/channel/ChannelSession;

    invoke-virtual {v0, p1, p2}, Lorg/apache/sshd/server/channel/ChannelSession;->lambda$prepareCommand$0$org-apache-sshd-server-channel-ChannelSession(ILjava/lang/String;)V

    return-void
.end method
