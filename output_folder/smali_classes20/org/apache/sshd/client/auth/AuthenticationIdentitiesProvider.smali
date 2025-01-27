.class public interface abstract Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
.super Ljava/lang/Object;
.source "AuthenticationIdentitiesProvider.java"

# interfaces
.implements Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;
.implements Lorg/apache/sshd/client/auth/password/PasswordIdentityProvider;


# static fields
.field public static final KEYPAIR_IDENTITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSWORD_IDENTITY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->PASSWORD_IDENTITY_COMPARATOR:Ljava/util/Comparator;

    .line 53
    new-instance v0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;->KEYPAIR_IDENTITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static findIdentityIndex(Ljava/util/List;Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 3
    .param p2, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 69
    .local p0, "identities":Ljava/util/List;, "Ljava/util/List<*>;"
    .local p1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {p1, v1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    .line 72
    return v0

    .line 69
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "index":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic lambda$static$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 43
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static synthetic lambda$static$1(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p0, Ljava/security/KeyPair;

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/security/KeyPair;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/security/KeyPair;

    move-object v1, p1

    check-cast v1, Ljava/security/KeyPair;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeyPairs(Ljava/security/KeyPair;Ljava/security/KeyPair;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static wrapIdentities(Ljava/lang/Iterable;)Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider;"
        }
    .end annotation

    .line 84
    .local p0, "identities":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/auth/AuthenticationIdentitiesProvider$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method


# virtual methods
.method public abstract loadIdentities()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "*>;"
        }
    .end annotation
.end method
