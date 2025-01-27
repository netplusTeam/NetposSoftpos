.class public final synthetic Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/concurrent/TimeUnit;

.field public final synthetic f$3:Lorg/apache/sshd/common/future/DefaultSshFuture;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/common/session/helpers/SessionHelper;JLjava/util/concurrent/TimeUnit;Lorg/apache/sshd/common/future/DefaultSshFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iput-wide p2, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$1:J

    iput-object p4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$3:Lorg/apache/sshd/common/future/DefaultSshFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$0:Lorg/apache/sshd/common/session/helpers/SessionHelper;

    iget-wide v1, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$1:J

    iget-object v3, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lorg/apache/sshd/common/session/helpers/SessionHelper$$ExternalSyntheticLambda3;->f$3:Lorg/apache/sshd/common/future/DefaultSshFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/sshd/common/session/helpers/SessionHelper;->lambda$writePacket$0$org-apache-sshd-common-session-helpers-SessionHelper(JLjava/util/concurrent/TimeUnit;Lorg/apache/sshd/common/future/DefaultSshFuture;)V

    return-void
.end method
