.class public abstract Lio/netty/util/internal/TypeParameterMatcher;
.super Ljava/lang/Object;
.source "TypeParameterMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;
    }
.end annotation


# static fields
.field private static final NOOP:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lio/netty/util/internal/TypeParameterMatcher$1;

    invoke-direct {v0}, Lio/netty/util/internal/TypeParameterMatcher$1;-><init>()V

    sput-object v0, Lio/netty/util/internal/TypeParameterMatcher;->NOOP:Lio/netty/util/internal/TypeParameterMatcher;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fail(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "typeParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 146
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot determine the type of the type parameter \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "typeParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/util/internal/TypeParameterMatcher;"
        }
    .end annotation

    .line 57
    .local p1, "parametrizedSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherFindCache()Ljava/util/Map;

    move-result-object v0

    .line 58
    .local v0, "findCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 60
    .local v1, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 61
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/netty/util/internal/TypeParameterMatcher;>;"
    if-nez v2, :cond_0

    .line 62
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_0
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/TypeParameterMatcher;

    .line 67
    .local v3, "matcher":Lio/netty/util/internal/TypeParameterMatcher;
    if-nez v3, :cond_1

    .line 68
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/TypeParameterMatcher;->find0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v3

    .line 69
    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    return-object v3
.end method

.method private static find0(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "typeParamName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 78
    .local p1, "parametrizedSuperclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 79
    .local v0, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    .line 81
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p1, :cond_b

    .line 82
    const/4 v2, -0x1

    .line 83
    .local v2, "typeParamIndex":I
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 84
    .local v3, "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 85
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 86
    move v2, v4

    .line 87
    goto :goto_2

    .line 84
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 91
    .end local v4    # "i":I
    :cond_1
    :goto_2
    if-ltz v2, :cond_a

    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 97
    .local v4, "genericSuperType":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-nez v5, :cond_2

    .line 98
    const-class v5, Ljava/lang/Object;

    return-object v5

    .line 101
    :cond_2
    move-object v5, v4

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 103
    .local v5, "actualTypeParams":[Ljava/lang/reflect/Type;
    aget-object v6, v5, v2

    .line 104
    .local v6, "actualTypeParam":Ljava/lang/reflect/Type;
    instance-of v7, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3

    .line 105
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 107
    :cond_3
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_4

    .line 108
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    return-object v7

    .line 110
    :cond_4
    instance-of v7, v6, Ljava/lang/reflect/GenericArrayType;

    if-eqz v7, :cond_6

    .line 111
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v7}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 112
    .local v7, "componentType":Ljava/lang/reflect/Type;
    instance-of v8, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v8, :cond_5

    .line 113
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 115
    :cond_5
    instance-of v8, v7, Ljava/lang/Class;

    if-eqz v8, :cond_6

    .line 116
    move-object v8, v7

    check-cast v8, Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    return-object v8

    .line 119
    .end local v7    # "componentType":Ljava/lang/reflect/Type;
    :cond_6
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_9

    .line 121
    move-object v7, v6

    check-cast v7, Ljava/lang/reflect/TypeVariable;

    .line 122
    .local v7, "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v1, v0

    .line 123
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Class;

    if-nez v8, :cond_7

    .line 124
    const-class v8, Ljava/lang/Object;

    return-object v8

    .line 127
    :cond_7
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v8

    move-object p1, v8

    check-cast p1, Ljava/lang/Class;

    .line 128
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 130
    goto/16 :goto_0

    .line 132
    :cond_8
    const-class v8, Ljava/lang/Object;

    return-object v8

    .line 136
    .end local v7    # "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_9
    invoke-static {v0, p2}, Lio/netty/util/internal/TypeParameterMatcher;->fail(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    return-object v7

    .line 92
    .end local v4    # "genericSuperType":Ljava/lang/reflect/Type;
    .end local v5    # "actualTypeParams":[Ljava/lang/reflect/Type;
    .end local v6    # "actualTypeParam":Ljava/lang/reflect/Type;
    :cond_a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown type parameter \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v2    # "typeParamIndex":I
    .end local v3    # "typeParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 139
    if-nez v1, :cond_c

    .line 140
    invoke-static {v0, p2}, Lio/netty/util/internal/TypeParameterMatcher;->fail(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2

    .line 139
    :cond_c
    goto/16 :goto_0
.end method

.method public static get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lio/netty/util/internal/TypeParameterMatcher;"
        }
    .end annotation

    .line 38
    .local p0, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->typeParameterMatcherGetCache()Ljava/util/Map;

    move-result-object v0

    .line 40
    .local v0, "getCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lio/netty/util/internal/TypeParameterMatcher;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/TypeParameterMatcher;

    .line 41
    .local v1, "matcher":Lio/netty/util/internal/TypeParameterMatcher;
    if-nez v1, :cond_1

    .line 42
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    .line 43
    sget-object v1, Lio/netty/util/internal/TypeParameterMatcher;->NOOP:Lio/netty/util/internal/TypeParameterMatcher;

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;

    invoke-direct {v2, p0}, Lio/netty/util/internal/TypeParameterMatcher$ReflectiveMatcher;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    .line 47
    :goto_0
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    return-object v1
.end method


# virtual methods
.method public abstract match(Ljava/lang/Object;)Z
.end method
