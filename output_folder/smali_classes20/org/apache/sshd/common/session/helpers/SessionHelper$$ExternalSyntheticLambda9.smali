.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput-object p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Throwable;

    check-cast p1, Lorg/apache/sshd/common/session/SessionListener;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$signalExceptionCaught$10$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/lang/Throwable;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
