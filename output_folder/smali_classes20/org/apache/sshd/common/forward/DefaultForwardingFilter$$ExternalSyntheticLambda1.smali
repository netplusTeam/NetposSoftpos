.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/io/IoHandlerFactory;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda1;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->lambda$new$1$org-apache-sshd-common-forward-DefaultForwardingFilter()Lorg/apache/sshd/common/io/IoHandler;

    move-result-object v0

    return-object v0
.end method
