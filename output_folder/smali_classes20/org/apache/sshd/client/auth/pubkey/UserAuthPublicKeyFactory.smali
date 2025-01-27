.class public Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;
.super Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;
.source "UserAuthPublicKeyFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;

.field public static final NAME:Ljava/lang/String; = "publickey"


# instance fields
.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->INSTANCE:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;-><init>(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    const-string v0, "publickey"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->factories:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method public createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->getSignatureFactories()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    check-cast p1, Lorg/apache/sshd/client/session/ClientSession;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getSignatureFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->factories:Ljava/util/List;

    return-object v0
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 68
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->factories:Ljava/util/List;

    .line 69
    return-void
.end method
