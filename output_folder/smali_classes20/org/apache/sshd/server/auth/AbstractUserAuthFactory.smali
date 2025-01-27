.class public abstract Lorg/apache/sshd/server/auth/AbstractUserAuthFactory;
.super Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;
.source "AbstractUserAuthFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/UserAuthFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory<",
        "Lorg/apache/sshd/server/session/ServerSession;",
        "Lorg/apache/sshd/server/auth/UserAuth;",
        ">;",
        "Lorg/apache/sshd/server/auth/UserAuthFactory;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/auth/AbstractUserAuthMethodFactory;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method
