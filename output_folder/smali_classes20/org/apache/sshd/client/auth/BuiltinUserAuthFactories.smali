.class public final enum Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;
.super Ljava/lang/Enum;
.source "BuiltinUserAuthFactories.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;",
        ">;",
        "Lorg/apache/sshd/common/NamedFactory<",
        "Lorg/apache/sshd/client/auth/UserAuthFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

.field public static final enum HOSTBASED:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

.field public static final enum KBINTERACTIVE:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

.field public static final enum PASSWORD:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

.field public static final enum PUBLICKEY:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factory:Lorg/apache/sshd/client/auth/UserAuthFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 46
    new-instance v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    sget-object v1, Lorg/apache/sshd/client/auth/password/UserAuthPasswordFactory;->INSTANCE:Lorg/apache/sshd/client/auth/password/UserAuthPasswordFactory;

    const-string v2, "PASSWORD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/client/auth/UserAuthFactory;)V

    sput-object v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->PASSWORD:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    .line 47
    new-instance v1, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    sget-object v2, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;->INSTANCE:Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyFactory;

    const-string v4, "PUBLICKEY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/client/auth/UserAuthFactory;)V

    sput-object v1, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->PUBLICKEY:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    .line 48
    new-instance v2, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    sget-object v4, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;->INSTANCE:Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    const-string v6, "KBINTERACTIVE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/client/auth/UserAuthFactory;)V

    sput-object v2, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->KBINTERACTIVE:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    .line 49
    new-instance v4, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    sget-object v6, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;->INSTANCE:Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBasedFactory;

    const-string v8, "HOSTBASED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/client/auth/UserAuthFactory;)V

    sput-object v4, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->HOSTBASED:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    .line 45
    const/4 v6, 0x4

    new-array v6, v6, [Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->$VALUES:[Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    .line 51
    const-class v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    .line 52
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->VALUES:Ljava/util/Set;

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/sshd/client/auth/UserAuthFactory;)V
    .locals 0
    .param p3, "factory"    # Lorg/apache/sshd/client/auth/UserAuthFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    const-string p1, "No delegate factory instance"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sshd/client/auth/UserAuthFactory;

    iput-object p1, p0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->factory:Lorg/apache/sshd/client/auth/UserAuthFactory;

    .line 58
    return-void
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/client/auth/UserAuthFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 75
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    .line 76
    .local v0, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/client/auth/UserAuthFactory;>;"
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x0

    return-object v1

    .line 80
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/auth/UserAuthFactory;

    return-object v1
.end method

.method public static parseFactoriesList(Ljava/lang/String;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;
    .locals 1
    .param p0, "factories"    # Ljava/lang/String;

    .line 90
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->parseFactoriesList([Ljava/lang/String;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;"
        }
    .end annotation

    .line 98
    .local p0, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;->EMPTY:Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v0, "resolved":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/auth/UserAuthFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 104
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

    .line 105
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/client/auth/UserAuthFactory;

    move-result-object v4

    .line 106
    .local v4, "c":Lorg/apache/sshd/client/auth/UserAuthFactory;
    if-eqz v4, :cond_1

    .line 107
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 113
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "c":Lorg/apache/sshd/client/auth/UserAuthFactory;
    :goto_1
    goto :goto_0

    .line 117
    :cond_3
    new-instance v2, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseFactoriesList([Ljava/lang/String;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;
    .locals 1
    .param p0, "factories"    # [Ljava/lang/String;

    .line 94
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
    invoke-static {v0}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->parseFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/client/auth/UserAuthFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 121
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/client/auth/UserAuthFactory;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;
    .locals 1

    .line 45
    sget-object v0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->$VALUES:[Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    invoke-virtual {v0}, [Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->create()Lorg/apache/sshd/client/auth/UserAuthFactory;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/client/auth/UserAuthFactory;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->factory:Lorg/apache/sshd/client/auth/UserAuthFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/client/auth/BuiltinUserAuthFactories;->factory:Lorg/apache/sshd/client/auth/UserAuthFactory;

    invoke-interface {v0}, Lorg/apache/sshd/client/auth/UserAuthFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
