.class public final synthetic Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/forward/DefaultForwardingFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda11;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/forward/DefaultForwardingFilter$$ExternalSyntheticLambda11;->f$0:Lorg/apache/sshd/common/forward/DefaultForwardingFilter;

    invoke-virtual {v0}, Lorg/apache/sshd/common/forward/DefaultForwardingFilter;->lambda$getLocalForwardsBindings$11$org-apache-sshd-common-forward-DefaultForwardingFilter()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
