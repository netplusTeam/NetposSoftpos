.class final Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;
.super Ljava/lang/Object;
.source "CredentialHelper.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/server/auth/gss/CredentialHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "G"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Lorg/ietf/jgss/GSSCredential;",
        ">;"
    }
.end annotation


# instance fields
.field private mgr:Lorg/ietf/jgss/GSSManager;


# direct methods
.method private constructor <init>(Lorg/ietf/jgss/GSSManager;)V
    .locals 0
    .param p1, "mgr"    # Lorg/ietf/jgss/GSSManager;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;->mgr:Lorg/ietf/jgss/GSSManager;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lorg/ietf/jgss/GSSManager;Lorg/apache/sshd/server/auth/gss/CredentialHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/ietf/jgss/GSSManager;
    .param p2, "x1"    # Lorg/apache/sshd/server/auth/gss/CredentialHelper$1;

    .line 95
    invoke-direct {p0, p1}, Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;-><init>(Lorg/ietf/jgss/GSSManager;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;->run()Lorg/ietf/jgss/GSSCredential;

    move-result-object v0

    return-object v0
.end method

.method public run()Lorg/ietf/jgss/GSSCredential;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/ietf/jgss/GSSException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/server/auth/gss/CredentialHelper$G;->mgr:Lorg/ietf/jgss/GSSManager;

    sget-object v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->KRB5_MECH:Lorg/ietf/jgss/Oid;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/ietf/jgss/GSSManager;->createCredential(Lorg/ietf/jgss/GSSName;ILorg/ietf/jgss/Oid;I)Lorg/ietf/jgss/GSSCredential;

    move-result-object v0

    return-object v0
.end method
