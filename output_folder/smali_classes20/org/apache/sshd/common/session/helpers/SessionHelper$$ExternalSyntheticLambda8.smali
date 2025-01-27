.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$1:I

    iput-object p3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$4:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$1:I

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda8;->f$4:Z

    move-object v5, p1

    check-cast v5, Lorg/apache/sshd/common/session/SessionListener;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$signalDisconnect$9$org-apache-sshd-common-session-helpers-SessionHelper(ILjava/lang/String;Ljava/lang/String;ZLorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
