.class public Lorg/apache/sshd/server/auth/UserAuthNoneFactory;
.super Lorg/apache/sshd/server/auth/AbstractUserAuthFactory;
.source "UserAuthNoneFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/auth/UserAuthNoneFactory;

.field public static final NAME:Ljava/lang/String; = "none"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/apache/sshd/server/auth/UserAuthNoneFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/UserAuthNoneFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/UserAuthNoneFactory;->INSTANCE:Lorg/apache/sshd/server/auth/UserAuthNoneFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "none"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuthFactory;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p1, Lorg/apache/sshd/server/session/ServerSession;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/UserAuthNoneFactory;->createUserAuth(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/UserAuthNone;

    move-result-object p1

    return-object p1
.end method

.method public createUserAuth(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/UserAuthNone;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lorg/apache/sshd/server/auth/UserAuthNone;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/UserAuthNone;-><init>()V

    return-object v0
.end method
