.class final Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "AnnotatedCreatorCollector.java"


# instance fields
.field private _defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

.field private final _typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)V
    .locals 0
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 37
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 38
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 39
    return-void
.end method

.method private _findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 13
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    .line 92
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 93
    .local v0, "defaultCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    const/4 v1, 0x0

    .line 100
    .local v1, "ctors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 101
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v2

    .line 102
    .local v2, "declaredCtors":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 103
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-static {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 104
    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 107
    move-object v0, v6

    goto :goto_1

    .line 109
    :cond_1
    if-nez v1, :cond_2

    .line 110
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 112
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 118
    .end local v2    # "declaredCtors":[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    :cond_3
    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 121
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    if-nez v0, :cond_4

    .line 122
    return-object v4

    .line 124
    :cond_4
    const/4 v5, 0x0

    .local v5, "ctorCount":I
    goto :goto_3

    .line 126
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    .end local v5    # "ctorCount":I
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 127
    .restart local v5    # "ctorCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_6

    .line 129
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 134
    .end local v6    # "i":I
    :cond_6
    :goto_3
    if-eqz p2, :cond_b

    .line 135
    const/4 v6, 0x0

    .line 136
    .local v6, "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getConstructors(Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    move-result-object v7

    array-length v8, v7

    :goto_4
    if-ge v3, v8, :cond_b

    aget-object v9, v7, v3

    .line 137
    .local v9, "mixinCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v10

    if-nez v10, :cond_7

    .line 138
    if-eqz v0, :cond_a

    .line 139
    invoke-virtual {p0, v0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v10

    iput-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 140
    const/4 v0, 0x0

    goto :goto_7

    .line 144
    :cond_7
    if-eqz v1, :cond_a

    .line 145
    if-nez v6, :cond_8

    .line 146
    new-array v6, v5, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 147
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v5, :cond_8

    .line 148
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v11, v6, v10

    .line 147
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 151
    .end local v10    # "i":I
    :cond_8
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Constructor;)V

    .line 153
    .local v10, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v5, :cond_a

    .line 154
    aget-object v12, v6, v11

    invoke-virtual {v10, v12}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 155
    nop

    .line 156
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v12, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v12

    .line 155
    invoke-interface {v4, v11, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 157
    goto :goto_7

    .line 153
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 136
    .end local v9    # "mixinCtor":Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .end local v10    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v11    # "i":I
    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 164
    .end local v6    # "ctorKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_b
    if-eqz v0, :cond_c

    .line 165
    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v3

    iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 167
    :cond_c
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v5, :cond_e

    .line 168
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 169
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-nez v6, :cond_d

    .line 170
    nop

    .line 171
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    invoke-virtual {p0, v7, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v7

    .line 170
    invoke-interface {v4, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 174
    .end local v3    # "i":I
    :cond_e
    return-object v4
.end method

.method private _findPotentialFactories(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 179
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 182
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 183
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 184
    goto :goto_1

    .line 188
    :cond_0
    if-nez v0, :cond_1

    .line 189
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 191
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    :cond_2
    if-nez v0, :cond_3

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 197
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 198
    .local v1, "factoryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v5, 0x0

    if-ge v4, v1, :cond_4

    .line 200
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 203
    .end local v4    # "i":I
    :cond_4
    if-eqz p2, :cond_9

    .line 204
    const/4 v4, 0x0

    .line 205
    .local v4, "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    :goto_3
    if-ge v3, v7, :cond_9

    aget-object v8, v6, v3

    .line 206
    .local v8, "mixinFactory":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 207
    goto :goto_6

    .line 209
    :cond_5
    if-nez v4, :cond_6

    .line 210
    new-array v4, v1, [Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 211
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    if-ge v9, v1, :cond_6

    .line 212
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v10, v4, v9

    .line 211
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 215
    .end local v9    # "i":I
    :cond_6
    new-instance v9, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v9, v8}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 216
    .local v9, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5
    if-ge v10, v1, :cond_8

    .line 217
    aget-object v11, v4, v10

    invoke-virtual {v9, v11}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 218
    nop

    .line 219
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v11, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v11

    .line 218
    invoke-interface {v2, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    goto :goto_6

    .line 216
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 205
    .end local v8    # "mixinFactory":Ljava/lang/reflect/Method;
    .end local v9    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v10    # "i":I
    :cond_8
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 226
    .end local v4    # "methodKeys":[Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    :cond_9
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, v1, :cond_b

    .line 227
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 228
    .local v4, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-nez v4, :cond_a

    .line 229
    nop

    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v6, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->constructFactoryCreator(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    .line 229
    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v4    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 233
    .end local v3    # "i":I
    :cond_b
    return-object v2
.end method

.method private collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "main"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 339
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 340
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 341
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 343
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    return-object v1
.end method

.method private final collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 2
    .param p1, "main"    # Ljava/lang/reflect/AnnotatedElement;
    .param p2, "mixin"    # Ljava/lang/reflect/AnnotatedElement;

    .line 347
    invoke-interface {p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 348
    .local v0, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 349
    invoke-interface {p2}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 351
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v1

    return-object v1
.end method

.method private collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .locals 5
    .param p1, "mainAnns"    # [[Ljava/lang/annotation/Annotation;
    .param p2, "mixinAnns"    # [[Ljava/lang/annotation/Annotation;

    .line 323
    array-length v0, p1

    .line 324
    .local v0, "count":I
    new-array v1, v0, [Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    .line 325
    .local v1, "result":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 326
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 328
    .local v3, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    if-eqz p2, :cond_0

    .line 329
    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v3

    .line 331
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    aput-object v4, v1, v2

    .line 325
    .end local v3    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public static collectCreators(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 1
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 46
    .local p3, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;)V

    .line 47
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collect(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    move-result-object v0

    .line 46
    return-object v0
.end method

.method private static isIncludableConstructor(Ljava/lang/reflect/Constructor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)Z"
        }
    .end annotation

    .line 356
    .local p0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->isSynthetic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method collect(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;
    .locals 5
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;"
        }
    .end annotation

    .line 56
    .local p2, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialConstructors(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "constructors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_findPotentialFactories(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v2, :cond_4

    .line 64
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 70
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "i":I
    :cond_1
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_2

    .line 71
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 75
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .restart local v2    # "i":I
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_4

    .line 76
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 81
    .end local v2    # "i":I
    :cond_4
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_defaultConstructor:Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass$Creators;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method protected constructDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 5
    .param p1, "ctor"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 239
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 241
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 240
    return-object v0

    .line 243
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 244
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 243
    return-object v0
.end method

.method protected constructFactoryCreator(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "mixin"    # Ljava/lang/reflect/Method;

    .line 308
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 309
    .local v0, "paramCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 310
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    .line 311
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 310
    return-object v1

    .line 313
    :cond_0
    if-nez v0, :cond_1

    .line 314
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    return-object v1

    .line 317
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/reflect/AnnotatedElement;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v3

    .line 318
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez p2, :cond_2

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [[Ljava/lang/annotation/Annotation;

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 318
    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 317
    return-object v1
.end method

.method protected constructNonDefaultConstructor(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 10
    .param p1, "ctor"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .param p2, "mixin"    # Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 252
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParamCount()I

    move-result v0

    .line 253
    .local v0, "paramCount":I
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v1, :cond_0

    .line 254
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 255
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMap()Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_emptyAnnotationMaps(I)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 254
    return-object v1

    .line 262
    :cond_0
    if-nez v0, :cond_1

    .line 263
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATION_MAPS:[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 263
    return-object v1

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 270
    .local v1, "paramAnns":[[Ljava/lang/annotation/Annotation;
    array-length v2, v1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 277
    .local v4, "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-eqz v5, :cond_3

    array-length v5, v1

    add-int/2addr v5, v8

    if-ne v0, v5, :cond_3

    .line 278
    move-object v5, v1

    .line 279
    .local v5, "old":[[Ljava/lang/annotation/Annotation;
    array-length v9, v5

    add-int/2addr v9, v8

    new-array v1, v9, [[Ljava/lang/annotation/Annotation;

    .line 280
    array-length v9, v5

    invoke-static {v5, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    move-object v9, v3

    check-cast v9, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 282
    .end local v5    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    array-length v5, v1

    add-int/2addr v5, v7

    if-ne v0, v5, :cond_4

    .line 286
    move-object v5, v1

    .line 287
    .restart local v5    # "old":[[Ljava/lang/annotation/Annotation;
    array-length v9, v5

    add-int/2addr v9, v7

    new-array v1, v9, [[Ljava/lang/annotation/Annotation;

    .line 288
    array-length v9, v5

    invoke-static {v5, v6, v1, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    sget-object v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    aput-object v9, v1, v6

    .line 290
    move-object v9, v3

    check-cast v9, [[Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 293
    .end local v5    # "old":[[Ljava/lang/annotation/Annotation;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 298
    .end local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_2

    .line 294
    .restart local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 296
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 294
    const-string v6, "Internal error: constructor for %s has mismatch: %d parameters; %d sets of annotations"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 299
    .end local v2    # "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    .end local v4    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    if-nez p2, :cond_7

    move-object v2, v3

    check-cast v2, [[Ljava/lang/annotation/Annotation;

    goto :goto_1

    .line 300
    :cond_7
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 299
    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations([[Ljava/lang/annotation/Annotation;[[Ljava/lang/annotation/Annotation;)[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v2

    .line 302
    .restart local v2    # "resolvedAnnotations":[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;
    :goto_2
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->_typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;->getConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 303
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedCreatorCollector;->collectAnnotations(Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;)Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Constructor;Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;[Lcom/fasterxml/jackson/databind/introspect/AnnotationMap;)V

    .line 302
    return-object v3
.end method
