.class public final synthetic Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/channel/AbstractChannel;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/channel/AbstractChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda4;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/apache/sshd/common/channel/AbstractChannel$$ExternalSyntheticLambda4;->f$0:Lorg/apache/sshd/common/channel/AbstractChannel;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/AbstractChannel;->lambda$getInnerCloseable$4$org-apache-sshd-common-channel-AbstractChannel()V

    return-void
.end method
