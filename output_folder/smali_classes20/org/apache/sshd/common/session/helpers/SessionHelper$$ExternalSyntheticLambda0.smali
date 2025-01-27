.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFutureListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    check-cast p1, Lorg/apache/sshd/common/io/IoWriteFuture;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$disconnect$8$org-apache-sshd-common-session-helpers-SessionHelper(ILjava/lang/String;Lorg/apache/sshd/common/io/IoWriteFuture;)V

    return-void
.end method
