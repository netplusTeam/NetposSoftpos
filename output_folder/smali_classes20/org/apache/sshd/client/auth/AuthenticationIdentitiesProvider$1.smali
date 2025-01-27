.class final Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;
.super Ljava/lang/Object;
.source "AuthenticationIdentitiesProvider.java"

# interfaces
.implements Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->wrapIdentities(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$identities:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;->val$identities:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadIdentities()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;->val$identities:Ljava/lang/Iterable;

    const-class v1, Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->lazySelectMatchingTypes(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadKeys(Lorg/apache/sshd/common/session/SessionContext;)Ljava/lang/Iterable;
    .locals 2
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

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;->val$identities:Ljava/lang/Iterable;

    const-class v1, Ljava/security/KeyPair;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->lazySelectMatchingTypes(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public loadPasswords()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;->val$identities:Ljava/lang/Iterable;

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterable;->lazySelectMatchingTypes(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
