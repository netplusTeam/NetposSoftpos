.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:Lorg/apache/sshd/common/session/SessionListener$Event;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Lorg/apache/sshd/common/session/SessionListener$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput-object p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;->f$1:Lorg/apache/sshd/common/session/SessionListener$Event;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda11;->f$1:Lorg/apache/sshd/common/session/SessionListener$Event;

    check-cast p1, Lorg/apache/sshd/common/session/SessionListener;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$signalSessionEvent$5$org-apache-sshd-common-session-helpers-SessionHelper(Lorg/apache/sshd/common/session/SessionListener$Event;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
