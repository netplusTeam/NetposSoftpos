.class public abstract enum Lorg/apache/sshd/common/signature/BuiltinSignatures;
.super Ljava/lang/Enum;
.source "BuiltinSignatures.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/signature/BuiltinSignatures;",
        ">;",
        "Lorg/apache/sshd/common/signature/SignatureFactory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field private static final EXTENSIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/signature/SignatureFactory;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/signature/BuiltinSignatures;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum dsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum ed25519:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum nistp256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum nistp384:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum nistp521:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum rsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum rsaSHA256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

.field public static final enum rsaSHA512:Lorg/apache/sshd/common/signature/BuiltinSignatures;


# instance fields
.field private final factoryName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 52
    new-instance v0, Lorg/apache/sshd/common/signature/BuiltinSignatures$1;

    const-string v1, "dsa"

    const/4 v2, 0x0

    const-string v3, "ssh-dss"

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/signature/BuiltinSignatures$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->dsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 58
    new-instance v1, Lorg/apache/sshd/common/signature/BuiltinSignatures$2;

    const-string v3, "rsa"

    const/4 v4, 0x1

    const-string v5, "ssh-rsa"

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/sshd/common/signature/BuiltinSignatures$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 64
    new-instance v3, Lorg/apache/sshd/common/signature/BuiltinSignatures$3;

    const-string v5, "rsaSHA256"

    const/4 v6, 0x2

    const-string v7, "rsa-sha2-256"

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/sshd/common/signature/BuiltinSignatures$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsaSHA256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 70
    new-instance v5, Lorg/apache/sshd/common/signature/BuiltinSignatures$4;

    const-string v7, "rsaSHA512"

    const/4 v8, 0x3

    const-string v9, "rsa-sha2-512"

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/sshd/common/signature/BuiltinSignatures$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsaSHA512:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 96
    new-instance v7, Lorg/apache/sshd/common/signature/BuiltinSignatures$5;

    sget-object v9, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP256:Ljava/lang/String;

    const-string v10, "nistp256"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lorg/apache/sshd/common/signature/BuiltinSignatures$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 107
    new-instance v9, Lorg/apache/sshd/common/signature/BuiltinSignatures$6;

    sget-object v10, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP384:Ljava/lang/String;

    const-string v12, "nistp384"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v10}, Lorg/apache/sshd/common/signature/BuiltinSignatures$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp384:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 118
    new-instance v10, Lorg/apache/sshd/common/signature/BuiltinSignatures$7;

    sget-object v12, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP521:Ljava/lang/String;

    const-string v14, "nistp521"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lorg/apache/sshd/common/signature/BuiltinSignatures$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp521:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 129
    new-instance v12, Lorg/apache/sshd/common/signature/BuiltinSignatures$8;

    const-string v14, "ed25519"

    const/4 v15, 0x7

    const-string v13, "ssh-ed25519"

    invoke-direct {v12, v14, v15, v13}, Lorg/apache/sshd/common/signature/BuiltinSignatures$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lorg/apache/sshd/common/signature/BuiltinSignatures;->ed25519:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 51
    const/16 v13, 0x8

    new-array v13, v13, [Lorg/apache/sshd/common/signature/BuiltinSignatures;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v11

    const/4 v0, 0x5

    aput-object v9, v13, v0

    const/4 v0, 0x6

    aput-object v10, v13, v0

    aput-object v12, v13, v15

    sput-object v13, Lorg/apache/sshd/common/signature/BuiltinSignatures;->$VALUES:[Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 141
    const-class v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 142
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->VALUES:Ljava/util/Set;

    .line 144
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->EXTENSIONS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "facName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->factoryName:Ljava/lang/String;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/signature/BuiltinSignatures$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lorg/apache/sshd/common/signature/BuiltinSignatures$1;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/signature/BuiltinSignatures;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static fromFactory(Lorg/apache/sshd/common/NamedFactory;)Lorg/apache/sshd/common/signature/BuiltinSignatures;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;)",
            "Lorg/apache/sshd/common/signature/BuiltinSignatures;"
        }
    .end annotation

    .line 250
    .local p0, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;"
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/NamedFactory;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;

    move-result-object v0

    return-object v0
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 263
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 230
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    return-object v1

    .line 234
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->VALUES:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/signature/BuiltinSignatures;

    .line 235
    .local v2, "c":Lorg/apache/sshd/common/signature/BuiltinSignatures;
    invoke-virtual {v2}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    return-object v2

    .line 238
    .end local v2    # "c":Lorg/apache/sshd/common/signature/BuiltinSignatures;
    :cond_1
    goto :goto_0

    .line 240
    :cond_2
    return-object v1
.end method

.method public static getByCurveSize(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/signature/Signature;
    .locals 2
    .param p0, "params"    # Ljava/security/spec/ECParameterSpec;

    .line 154
    invoke-static {p0}, Lorg/apache/sshd/common/cipher/ECCurves;->getCurveSize(Ljava/security/spec/ECParameterSpec;)I

    move-result v0

    .line 155
    .local v0, "curveSize":I
    const/16 v1, 0x100

    if-gt v0, v1, :cond_0

    .line 156
    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp256:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v1}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/signature/Signature;

    return-object v1

    .line 157
    :cond_0
    const/16 v1, 0x180

    if-gt v0, v1, :cond_1

    .line 158
    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp384:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v1}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/signature/Signature;

    return-object v1

    .line 160
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->nistp521:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v1}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/signature/Signature;

    return-object v1
.end method

.method public static getRegisteredExtensions()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Lorg/apache/sshd/common/signature/SignatureFactory;",
            ">;"
        }
    .end annotation

    .line 203
    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_0
    sget-object v1, Lorg/apache/sshd/common/NamedResource;->BY_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static parseSignatureList(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    .locals 1
    .param p0, "sigs"    # Ljava/lang/String;

    .line 277
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->parseSignatureList([Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseSignatureList(Ljava/util/Collection;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;"
        }
    .end annotation

    .line 285
    .local p0, "sigs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;->EMPTY:Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    return-object v0

    .line 289
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/signature/SignatureFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "unknown":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 292
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/signature/SignatureFactory;

    move-result-object v4

    .line 293
    .local v4, "s":Lorg/apache/sshd/common/signature/SignatureFactory;
    if-eqz v4, :cond_1

    .line 294
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 297
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 298
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 300
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "s":Lorg/apache/sshd/common/signature/SignatureFactory;
    :goto_1
    goto :goto_0

    .line 304
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseSignatureList([Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;
    .locals 1
    .param p0, "sigs"    # [Ljava/lang/String;

    .line 281
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->parseSignatureList(Ljava/util/Collection;)Lorg/apache/sshd/common/signature/BuiltinSignatures$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static registerExtension(Lorg/apache/sshd/common/signature/SignatureFactory;)V
    .locals 5
    .param p0, "extension"    # Lorg/apache/sshd/common/signature/SignatureFactory;

    .line 189
    const-string v0, "No extension provided"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/signature/SignatureFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/signature/SignatureFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const-string v4, "Extension overrides built-in: %s"

    invoke-static {v1, v4, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 192
    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 193
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const-string v3, "Extension overrides existing: %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/common/signature/SignatureFactory;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 313
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 317
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;

    move-result-object v0

    .line 318
    .local v0, "s":Lorg/apache/sshd/common/signature/SignatureFactory;
    if-eqz v0, :cond_1

    .line 319
    return-object v0

    .line 322
    :cond_1
    sget-object v1, Lorg/apache/sshd/common/signature/BuiltinSignatures;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v1

    .line 323
    :try_start_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/signature/SignatureFactory;

    monitor-exit v1

    return-object v2

    .line 324
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unregisterExtension(Ljava/lang/String;)Lorg/apache/sshd/common/signature/SignatureFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 215
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->EXTENSIONS:Ljava/util/Map;

    monitor-enter v0

    .line 220
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/signature/SignatureFactory;

    monitor-exit v0

    return-object v1

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/signature/BuiltinSignatures;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 51
    const-class v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/signature/BuiltinSignatures;
    .locals 1

    .line 51
    sget-object v0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->$VALUES:[Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/signature/BuiltinSignatures;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/signature/BuiltinSignatures;

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/common/signature/BuiltinSignatures;->factoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
