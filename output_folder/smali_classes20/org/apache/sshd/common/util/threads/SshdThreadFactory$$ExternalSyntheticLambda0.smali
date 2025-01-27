.class public final synthetic Lorg/apache/sshd/common/util/threads/SshdThreadFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/util/threads/SshdThreadFactory;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/util/threads/SshdThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/util/threads/SshdThreadFactory$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/threads/SshdThreadFactory;

    iput-object p2, p0, Lorg/apache/sshd/common/util/threads/SshdThreadFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/util/threads/SshdThreadFactory$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/util/threads/SshdThreadFactory;

    iget-object v1, p0, Lorg/apache/sshd/common/util/threads/SshdThreadFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/threads/SshdThreadFactory;->lambda$newThread$0$org-apache-sshd-common-util-threads-SshdThreadFactory(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
