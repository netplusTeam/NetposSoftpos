.class public Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;
.super Ljava/lang/Object;
.source "MultiKeyIdentityProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;


# instance fields
.field protected final providers:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p1, "providers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;->providers:Ljava/lang/Iterable;

    .line 39
    return-void
.end method


# virtual methods
.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider$1;-><init>(Lorg/apache/sshd/common/keyprovider/MultiKeyIdentityProvider;Lorg/apache/sshd/common/session/SessionContext;)V

    return-object v0
.end method
