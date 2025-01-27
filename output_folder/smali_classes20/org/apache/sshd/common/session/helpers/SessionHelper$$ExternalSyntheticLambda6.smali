.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/sshd/common/util/Invoker;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:Ljava/util/Map;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Ljava/util/Map;

.field public final synthetic f$4:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput-object p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$1:Ljava/util/Map;

    iput-object p3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$3:Ljava/util/Map;

    iput-object p5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget-object v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$1:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$3:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda6;->f$4:Ljava/lang/Throwable;

    move-object v5, p1

    check-cast v5, Lorg/apache/sshd/common/session/SessionListener;

    invoke-virtual/range {v0 .. v5}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$signalNegotiationEnd$7$org-apache-sshd-common-session-helpers-SessionHelper(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Throwable;Lorg/apache/sshd/common/session/SessionListener;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
