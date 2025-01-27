.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

.field public final synthetic f$4:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    iput-object p2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-boolean p3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$2:Z

    iput-object p4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$3:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iput-object p5, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$1:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-boolean v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$2:Z

    iget-object v3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$3:Lorg/apache/sshd/common/util/net/SshdSocketAddress;

    iget-object v4, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Throwable;

    move-object v5, p1

    check-cast v5, Lorg/apache/sshd/common/forward/PortForwardingEventListener;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->lambda$signalTornDownExplicitTunnel$3$org-apache-sshd-common-forward-DefaultForwardingFilter(Lorg/apache/sshd/common/util/net/SshdSocketAddress;ZLorg/apache/sshd/common/util/net/SshdSocketAddress;Ljava/lang/Throwable;Lorg/apache/sshd/common/forward/PortForwardingEventListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
