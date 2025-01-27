.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$2:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$3:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    iput-object p2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object p3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$2:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object p4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$2:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda2;->f$3:Ljava/lang/Throwable;

    check-cast p1, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->lambda$signalEstablishedDynamicTunnel$4$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
