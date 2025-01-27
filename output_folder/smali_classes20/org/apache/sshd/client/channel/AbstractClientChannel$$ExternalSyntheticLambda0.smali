.class public final synthetic Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/EventNotifier;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/client/channel/AbstractClientChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/client/channel/AbstractClientChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/channel/AbstractClientChannel;

    return-void
.end method


# virtual methods
.method public final notifyEvent(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/client/channel/AbstractClientChannel$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/client/channel/AbstractClientChannel;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/client/channel/AbstractClientChannel;->lambda$new$0$org-apache-sshd-client-channel-AbstractClientChannel(Ljava/lang/String;)V

    return-void
.end method
