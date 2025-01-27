.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$2:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$5:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    iput-object p2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object p3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$2:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-boolean p4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$3:Z

    iput-object p5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$4:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object p6, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$5:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$2:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-boolean v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$3:Z

    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$4:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-object v5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda5;->f$5:Ljava/lang/Throwable;

    move-object v6, p1

    check-cast v6, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->lambda$signalEstablishedExplicitTunnel$9$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
