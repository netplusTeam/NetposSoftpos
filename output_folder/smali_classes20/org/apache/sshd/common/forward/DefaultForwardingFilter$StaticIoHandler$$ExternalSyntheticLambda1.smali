.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;

.field public final synthetic f$1:Lorg/apache/sshd/common/io/IoSession;

.field public final synthetic f$2:Lorg/apache/sshd/common/forward/TcpipClientChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/forward/TcpipClientChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;

    iput-object p2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;->f$1:Lorg/apache/sshd/common/io/IoSession;

    iput-object p3, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;->f$2:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;

    iget-object v1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;->f$1:Lorg/apache/sshd/common/io/IoSession;

    iget-object v2, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler$$ExternalSyntheticLambda1;->f$2:Lorg/apache/sshd/common/forward/TcpipClientChannel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$StaticIoHandler;->lambda$messageReceived$2$org-apache-sshd-common-forward-DefaultForwardingFilter$StaticIoHandler(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/forward/TcpipClientChannel;Ljava/lang/Throwable;)V

    return-void
.end method
