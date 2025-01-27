.class public final synthetic Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/session/ServerUserAuthService;

.field public final synthetic f$1:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/session/ServerUserAuthService;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/server/session/ServerUserAuthService;

    iput-object p2, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;->f$0:Lorg/apache/sshd/server/session/ServerUserAuthService;

    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;->f$1:Lorg/apache/sshd/common/util/buffer/Buffer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->lambda$handleUserAuthRequestMessage$1$org-apache-sshd-server-session-ServerUserAuthService(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/Boolean;)V

    return-void
.end method
