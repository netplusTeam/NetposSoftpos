.class public final synthetic Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/sshd/server/session/ServerUserAuthService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/apache/sshd/common/util/buffer/Buffer;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/sshd/server/session/ServerUserAuthService;ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;->f$0:Lorg/apache/sshd/server/session/ServerUserAuthService;

    iput p2, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;->f$2:Lorg/apache/sshd/common/util/buffer/Buffer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;->f$0:Lorg/apache/sshd/server/session/ServerUserAuthService;

    iget v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;->f$2:Lorg/apache/sshd/common/util/buffer/Buffer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->lambda$process$0$org-apache-sshd-server-session-ServerUserAuthService(ILorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/Boolean;)V

    return-void
.end method
