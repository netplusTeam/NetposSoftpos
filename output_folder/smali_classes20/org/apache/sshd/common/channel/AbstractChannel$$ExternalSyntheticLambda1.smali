.class public final synthetic Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iput-object p2, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    iget-object v1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Lorg/apache/sshd/common/channel/ChannelListener;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/common/channel/AbstractChannel;->lambda$notifyStateChanged$3$org-apache-sshd-common-channel-AbstractChannel(Ljava/lang/String;Lorg/apache/sshd/common/channel/ChannelListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
