.class public Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;
.super Ljava/lang/Object;
.source "UserAuthGSSFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/UserAuthFactory;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

.field public static final NAME:Ljava/lang/String; = "gssapi-with-mic"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;->INSTANCE:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
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

    .line 30
    check-cast p1, Lorg/apache/sshd/server/session/ServerSession;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;->createUserAuth(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/UserAuth;

    move-result-object p1

    return-object p1
.end method

.method public createUserAuth(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/UserAuth;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;-><init>()V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "gssapi-with-mic"

    return-object v0
.end method
