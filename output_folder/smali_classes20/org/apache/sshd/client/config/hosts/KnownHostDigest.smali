.class public final enum Lorg/apache/sshd/client/config/hosts/KnownHostDigest;
.super Ljava/lang/Enum;
.source "KnownHostDigest.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/client/config/hosts/KnownHostDigest;",
        ">;",
        "Lorg/apache/sshd/common/NamedFactory<",
        "Lorg/apache/sshd/common/mac/Mac;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

.field public static final enum SHA1:Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/config/hosts/KnownHostDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    sget-object v1, Lorg/apache/sshd/common/mac/BuiltinMacs;->hmacsha1:Lorg/apache/sshd/common/mac/BuiltinMacs;

    const-string v2, "SHA1"

    const/4 v3, 0x0

    const-string v4, "1"

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/Factory;)V

    sput-object v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->SHA1:Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    .line 39
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    aput-object v0, v1, v3

    sput-object v1, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->$VALUES:[Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    .line 42
    const-class v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    .line 43
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->VALUES:Ljava/util/Set;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/Factory;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p4, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/mac/Mac;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    const-string p1, "No name"

    invoke-static {p3, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->name:Ljava/lang/String;

    .line 50
    const-string p1, "No factory"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sshd/common/Factory;

    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->factory:Lorg/apache/sshd/common/Factory;

    .line 51
    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostDigest;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostDigest;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/client/config/hosts/KnownHostDigest;
    .locals 1

    .line 39
    sget-object v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->$VALUES:[Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    invoke-virtual {v0}, [Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->create()Lorg/apache/sshd/common/mac/Mac;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/mac/Mac;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->factory:Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/mac/Mac;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->name:Ljava/lang/String;

    return-object v0
.end method
