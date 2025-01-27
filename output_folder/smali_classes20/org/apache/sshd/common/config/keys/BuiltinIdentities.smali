.class public enum Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
.super Ljava/lang/Enum;
.source "BuiltinIdentities.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/Identity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/keys/BuiltinIdentities$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/config/keys/BuiltinIdentities;",
        ">;",
        "Lorg/apache/sshd/common/config/keys/Identity;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

.field public static final enum DSA:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

.field public static final enum ECDSA:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

.field public static final enum ED25119:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

.field public static final NAMES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RSA:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/config/keys/BuiltinIdentities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final prvType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private final pubType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 52
    new-instance v7, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    const-class v4, Ljava/security/interfaces/RSAPublicKey;

    const-class v5, Ljava/security/interfaces/RSAPrivateKey;

    const-string v1, "RSA"

    const/4 v2, 0x0

    const-string v3, "RSA"

    const-string v6, "ssh-rsa"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v7, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->RSA:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 53
    new-instance v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    const-class v12, Ljava/security/interfaces/DSAPublicKey;

    const-class v13, Ljava/security/interfaces/DSAPrivateKey;

    const-string v9, "DSA"

    const/4 v10, 0x1

    const-string v11, "DSA"

    const-string v14, "ssh-dss"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->DSA:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 54
    new-instance v1, Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;

    const-class v20, Ljava/security/interfaces/ECPublicKey;

    const-class v21, Ljava/security/interfaces/ECPrivateKey;

    sget-object v2, Lorg/apache/sshd/common/cipher/ECCurves;->VALUES:Ljava/util/Set;

    .line 55
    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/apache/sshd/common/config/keys/BuiltinIdentities$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/util/Collection;

    const-string v16, "ECDSA"

    const/16 v17, 0x2

    const-string v18, "ECDSA"

    const-string v19, "EC"

    move-object v15, v1

    invoke-direct/range {v15 .. v22}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    sput-object v1, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->ECDSA:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 61
    new-instance v2, Lorg/apache/sshd/common/config/keys/BuiltinIdentities$2;

    .line 62
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getEDDSAPublicKeyType()Ljava/lang/Class;

    move-result-object v13

    .line 63
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getEDDSAPrivateKeyType()Ljava/lang/Class;

    move-result-object v14

    const-string v9, "ED25119"

    const/4 v10, 0x3

    const-string v11, "ED25519"

    const-string v12, "EdDSA"

    const-string v15, "ssh-ed25519"

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities$2;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v2, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->ED25119:Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 51
    const/4 v3, 0x4

    new-array v3, v3, [Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    sput-object v3, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->$VALUES:[Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 71
    const-class v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 72
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    .line 77
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 80
    invoke-static {v0}, Lorg/apache/sshd/common/NamedResource;->getNameList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->NAMES:Ljava/util/NavigableSet;

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p3, "type"    # Ljava/lang/String;
    .param p6, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 89
    .local p4, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PublicKey;>;"
    .local p5, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PrivateKey;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 10
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p7, "keyType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 96
    .local p5, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PublicKey;>;"
    .local p6, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PrivateKey;>;"
    nop

    .line 98
    const-string v0, "No key type specified"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 96
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/Class;
    .param p6, "x5"    # Ljava/lang/Class;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;

    .line 51
    invoke-direct/range {p0 .. p7}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 1
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p5, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PublicKey;>;"
    .local p6, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/PrivateKey;>;"
    .local p7, "keyTypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->name:Ljava/lang/String;

    .line 106
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->algorithm:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->pubType:Ljava/lang/Class;

    .line 108
    iput-object p6, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->prvType:Ljava/lang/Class;

    .line 109
    sget-object p1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 111
    const-string v0, "No key type names provided"

    invoke-static {p7, v0, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p2

    .line 110
    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 109
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->types:Ljava/util/NavigableSet;

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/Class;
    .param p6, "x5"    # Ljava/lang/Class;
    .param p7, "x6"    # Ljava/util/Collection;
    .param p8, "x7"    # Lorg/apache/sshd/common/config/keys/BuiltinIdentities$1;

    .line 51
    invoke-direct/range {p0 .. p7}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    return-void
.end method

.method public static fromAlgorithm(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 159
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    return-object v1

    .line 163
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 164
    .local v2, "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    return-object v2

    .line 167
    .end local v2    # "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    :cond_1
    goto :goto_0

    .line 169
    :cond_2
    return-object v1
.end method

.method public static fromKey(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 1
    .param p0, "key"    # Ljava/security/Key;

    .line 200
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->fromKeyType(Ljava/lang/Class;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    move-result-object v0

    return-object v0
.end method

.method public static fromKeyPair(Ljava/security/KeyPair;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 4
    .param p0, "kp"    # Ljava/security/KeyPair;

    .line 180
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 181
    return-object v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->fromKey(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    move-result-object v1

    .line 185
    .local v1, "i1":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->fromKey(Ljava/security/Key;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    move-result-object v2

    .line 186
    .local v2, "i2":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    return-object v1

    .line 189
    :cond_1
    return-object v0
.end method

.method public static fromKeyType(Ljava/lang/Class;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/sshd/common/config/keys/BuiltinIdentities;"
        }
    .end annotation

    .line 212
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const-class v1, Ljava/security/Key;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 216
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    .line 217
    .local v2, "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->getPublicKeyType()Ljava/lang/Class;

    move-result-object v3

    .line 218
    .local v3, "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->getPrivateKeyType()Ljava/lang/Class;

    move-result-object v4

    .line 220
    .local v4, "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1

    if-nez v3, :cond_2

    .line 221
    goto :goto_0

    .line 223
    :cond_2
    const-class v5, Ljava/security/PrivateKey;

    if-eq v4, v5, :cond_1

    const-class v5, Ljava/security/PublicKey;

    if-ne v3, v5, :cond_3

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {v3, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v4, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 229
    .end local v2    # "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .end local v3    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    goto :goto_0

    .line 227
    .restart local v2    # "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .restart local v3    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_1
    return-object v2

    .line 231
    .end local v2    # "id":Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .end local v3    # "pubType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "prvType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    return-object v0

    .line 213
    :cond_7
    :goto_2
    return-object v0
.end method

.method public static fromKeyTypeName(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 1
    .param p0, "typeName"    # Ljava/lang/String;

    .line 243
    sget-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0}, Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;->findSupporterByKeyTypeName(Ljava/lang/String;Ljava/util/Collection;)Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/config/keys/BuiltinIdentities;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->$VALUES:[Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/config/keys/BuiltinIdentities;

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrivateKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->prvType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getPublicKeyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->pubType:Ljava/lang/Class;

    return-object v0
.end method

.method public getSupportedKeyTypes()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/apache/sshd/common/config/keys/BuiltinIdentities;->types:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 121
    const/4 v0, 0x1

    return v0
.end method
