.class public final enum Lorg/apache/sshd/common/digest/BuiltinDigests;
.super Ljava/lang/Enum;
.source "BuiltinDigests.java"

# interfaces
.implements Lorg/apache/sshd/common/digest/DigestFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/digest/BuiltinDigests$Constants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/digest/BuiltinDigests;",
        ">;",
        "Lorg/apache/sshd/common/digest/DigestFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/digest/BuiltinDigests;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/digest/BuiltinDigests;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum md5:Lorg/apache/sshd/common/digest/BuiltinDigests;

.field public static final enum sha1:Lorg/apache/sshd/common/digest/BuiltinDigests;

.field public static final enum sha224:Lorg/apache/sshd/common/digest/BuiltinDigests;

.field public static final enum sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

.field public static final enum sha384:Lorg/apache/sshd/common/digest/BuiltinDigests;

.field public static final enum sha512:Lorg/apache/sshd/common/digest/BuiltinDigests;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final blockSize:I

.field private final factoryName:Ljava/lang/String;

.field private final supported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 36
    new-instance v6, Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v1, "md5"

    const/4 v2, 0x0

    const-string v3, "md5"

    const-string v4, "MD5"

    const/16 v5, 0x10

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/digest/BuiltinDigests;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/sshd/common/digest/BuiltinDigests;->md5:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 37
    new-instance v0, Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v8, "sha1"

    const/4 v9, 0x1

    const-string v10, "sha1"

    const-string v11, "SHA-1"

    const/16 v12, 0x14

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/sshd/common/digest/BuiltinDigests;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha1:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 38
    new-instance v1, Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v14, "sha224"

    const/4 v15, 0x2

    const-string v16, "sha224"

    const-string v17, "SHA-224"

    const/16 v18, 0x1c

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lorg/apache/sshd/common/digest/BuiltinDigests;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha224:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 39
    new-instance v2, Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v8, "sha256"

    const/4 v9, 0x3

    const-string v10, "sha256"

    const-string v11, "SHA-256"

    const/16 v12, 0x20

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lorg/apache/sshd/common/digest/BuiltinDigests;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha256:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 40
    new-instance v3, Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v14, "sha384"

    const/4 v15, 0x4

    const-string v16, "sha384"

    const-string v17, "SHA-384"

    const/16 v18, 0x30

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lorg/apache/sshd/common/digest/BuiltinDigests;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha384:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 41
    new-instance v4, Lorg/apache/sshd/common/digest/BuiltinDigests;

    const-string v8, "sha512"

    const/4 v9, 0x5

    const-string v10, "sha512"

    const-string v11, "SHA-512"

    const/16 v12, 0x40

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lorg/apache/sshd/common/digest/BuiltinDigests;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/sshd/common/digest/BuiltinDigests;->sha512:Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 35
    const/4 v5, 0x6

    new-array v5, v5, [Lorg/apache/sshd/common/digest/BuiltinDigests;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    sput-object v5, Lorg/apache/sshd/common/digest/BuiltinDigests;->$VALUES:[Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 43
    const-class v0, Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 44
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/digest/BuiltinDigests;->VALUES:Ljava/util/Set;

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p3, "factoryName"    # Ljava/lang/String;
    .param p4, "algorithm"    # Ljava/lang/String;
    .param p5, "blockSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->factoryName:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->algorithm:Ljava/lang/String;

    .line 54
    iput p5, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->blockSize:I

    .line 61
    invoke-static {p4}, Lorg/apache/sshd/common/digest/DigestUtils;->checkSupported(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->supported:Z

    .line 62
    return-void
.end method

.method public static fromAlgorithm(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 2
    .param p0, "algo"    # Ljava/lang/String;

    .line 151
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/digest/BuiltinDigests;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/digest/DigestUtils;->findFactoryByAlgorithm(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/digest/DigestFactory;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/BuiltinDigests;

    return-object v0
.end method

.method public static fromDigest(Lorg/apache/sshd/common/digest/Digest;)Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 1
    .param p0, "d"    # Lorg/apache/sshd/common/digest/Digest;

    .line 142
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/digest/Digest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->fromAlgorithm(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;

    move-result-object v0

    return-object v0
.end method

.method public static fromFactory(Lorg/apache/sshd/common/NamedFactory;)Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedFactory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;)",
            "Lorg/apache/sshd/common/digest/BuiltinDigests;"
        }
    .end annotation

    .line 120
    .local p0, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<+Lorg/apache/sshd/common/digest/Digest;>;"
    if-nez p0, :cond_0

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;

    move-result-object v0

    return-object v0
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/digest/BuiltinDigests;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/BuiltinDigests;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 100
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 101
    return-object v1

    .line 104
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/digest/BuiltinDigests;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/digest/BuiltinDigests;

    .line 105
    .local v2, "c":Lorg/apache/sshd/common/digest/BuiltinDigests;
    invoke-virtual {v2}, Lorg/apache/sshd/common/digest/BuiltinDigests;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    return-object v2

    .line 108
    .end local v2    # "c":Lorg/apache/sshd/common/digest/BuiltinDigests;
    :cond_1
    goto :goto_0

    .line 110
    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lorg/apache/sshd/common/digest/BuiltinDigests;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/BuiltinDigests;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/digest/BuiltinDigests;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/sshd/common/digest/BuiltinDigests;->$VALUES:[Lorg/apache/sshd/common/digest/BuiltinDigests;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/digest/BuiltinDigests;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/digest/BuiltinDigests;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->create()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v0

    return-object v0
.end method

.method public final create()Lorg/apache/sshd/common/digest/Digest;
    .locals 3

    .line 86
    new-instance v0, Lorg/apache/sshd/common/digest/BaseDigest;

    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->getBlockSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/digest/BaseDigest;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->blockSize:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->factoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final isSupported()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/apache/sshd/common/digest/BuiltinDigests;->supported:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/sshd/common/digest/BuiltinDigests;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
