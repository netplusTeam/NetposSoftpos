.class public final enum Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;
.super Ljava/lang/Enum;
.source "BuiltinUserAuthFactories.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;",
        ">;",
        "Lorg/apache/sshd/common/NamedFactory<",
        "Lorg/apache/sshd/server/auth/UserAuthFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

.field public static final enum GSS:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

.field public static final enum HOSTBASED:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

.field public static final enum KBINTERACTIVE:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

.field public static final enum PASSWORD:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

.field public static final enum PUBLICKEY:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final factory:Lorg/apache/sshd/server/auth/UserAuthFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 47
    new-instance v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    sget-object v1, Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;->INSTANCE:Lorg/apache/sshd/server/auth/password/UserAuthPasswordFactory;

    const-string v2, "PASSWORD"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/server/auth/UserAuthFactory;)V

    sput-object v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->PASSWORD:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 48
    new-instance v1, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    sget-object v2, Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;->INSTANCE:Lorg/apache/sshd/server/auth/pubkey/UserAuthPublicKeyFactory;

    const-string v4, "PUBLICKEY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/server/auth/UserAuthFactory;)V

    sput-object v1, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->PUBLICKEY:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 49
    new-instance v2, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    sget-object v4, Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;->INSTANCE:Lorg/apache/sshd/server/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    const-string v6, "KBINTERACTIVE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/server/auth/UserAuthFactory;)V

    sput-object v2, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->KBINTERACTIVE:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 50
    new-instance v4, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    sget-object v6, Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;->INSTANCE:Lorg/apache/sshd/server/auth/hostbased/UserAuthHostBasedFactory;

    const-string v8, "HOSTBASED"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/server/auth/UserAuthFactory;)V

    sput-object v4, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->HOSTBASED:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 51
    new-instance v6, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    sget-object v8, Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;->INSTANCE:Lorg/apache/sshd/server/auth/gss/UserAuthGSSFactory;

    const-string v10, "GSS"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;-><init>(Ljava/lang/String;ILorg/apache/sshd/server/auth/UserAuthFactory;)V

    sput-object v6, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->GSS:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 46
    const/4 v8, 0x5

    new-array v8, v8, [Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    aput-object v0, v8, v3

    aput-object v1, v8, v5

    aput-object v2, v8, v7

    aput-object v4, v8, v9

    aput-object v6, v8, v11

    sput-object v8, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->$VALUES:[Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 53
    const-class v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    .line 54
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->VALUES:Ljava/util/Set;

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/apache/sshd/server/auth/UserAuthFactory;)V
    .locals 0
    .param p3, "factory"    # Lorg/apache/sshd/server/auth/UserAuthFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    const-string p1, "No delegate factory instance"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/sshd/server/auth/UserAuthFactory;

    iput-object p1, p0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->factory:Lorg/apache/sshd/server/auth/UserAuthFactory;

    .line 60
    return-void
.end method

.method public static fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/server/auth/UserAuthFactory;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 77
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    sget-object v1, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->VALUES:Ljava/util/Set;

    invoke-static {p0, v0, v1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Factory;

    .line 78
    .local v0, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    if-nez v0, :cond_0

    .line 79
    const/4 v1, 0x0

    return-object v1

    .line 82
    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/server/auth/UserAuthFactory;

    return-object v1
.end method

.method public static parseFactoriesList(Ljava/lang/String;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;
    .locals 1
    .param p0, "factories"    # Ljava/lang/String;

    .line 92
    const/16 v0, 0x2c

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->parseFactoriesList([Ljava/lang/String;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;"
        }
    .end annotation

    .line 100
    .local p0, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;->EMPTY:Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    .local v0, "resolved":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 106
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

    .line 107
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/server/auth/UserAuthFactory;

    move-result-object v4

    .line 108
    .local v4, "c":Lorg/apache/sshd/server/auth/UserAuthFactory;
    if-eqz v4, :cond_1

    .line 109
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 115
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "c":Lorg/apache/sshd/server/auth/UserAuthFactory;
    :goto_1
    goto :goto_0

    .line 119
    :cond_3
    new-instance v2, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;

    invoke-direct {v2, v0, v1}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public static varargs parseFactoriesList([Ljava/lang/String;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;
    .locals 1
    .param p0, "factories"    # [Ljava/lang/String;

    .line 96
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
    invoke-static {v0}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->parseFactoriesList(Ljava/util/Collection;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories$ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static resolveFactory(Ljava/lang/String;)Lorg/apache/sshd/server/auth/UserAuthFactory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    return-object v0

    .line 127
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/server/auth/UserAuthFactory;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 46
    const-class v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->$VALUES:[Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    invoke-virtual {v0}, [Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->create()Lorg/apache/sshd/server/auth/UserAuthFactory;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/server/auth/UserAuthFactory;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->factory:Lorg/apache/sshd/server/auth/UserAuthFactory;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/server/auth/BuiltinUserAuthFactories;->factory:Lorg/apache/sshd/server/auth/UserAuthFactory;

    invoke-interface {v0}, Lorg/apache/sshd/server/auth/UserAuthFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
