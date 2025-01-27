.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput-object p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda5;->f$2:Ljava/util/List;

    check-cast p1, Lorg/apache/sshd/common/session/SessionListener;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$signalPeerIdentificationReceived$4$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/lang/String;Ljava/util/List;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
