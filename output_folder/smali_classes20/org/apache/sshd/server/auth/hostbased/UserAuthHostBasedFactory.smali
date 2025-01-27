.class public Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;
.super Lorg/apache/sshd/server/auth/AbstractUserAuthFactory;
.source "UserAuthHostBasedFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;

.field public static final NAME:Ljava/lang/String; = "hostbased"


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

    .line 37
    new-instance v0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory$1;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->INSTANCE:Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;-><init>(Ljava/util/List;)V

    .line 55
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

    .line 58
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    const-string v0, "hostbased"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuthFactory;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->factories:Ljava/util/List;

    .line 60
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

    .line 35
    check-cast p1, Lorg/apache/sshd/server/session/ServerSession;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->createUserAuth(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;

    move-result-object p1

    return-object p1
.end method

.method public createUserAuth(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;

    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->getSignatureFactories()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBased;-><init>(Ljava/util/List;)V

    return-object v0
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

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->factories:Ljava/util/List;

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

    .line 69
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->factories:Ljava/util/List;

    .line 70
    return-void
.end method
