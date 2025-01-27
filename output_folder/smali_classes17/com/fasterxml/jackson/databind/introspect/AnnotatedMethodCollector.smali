.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;
.super Lcom/fasterxml/jackson/databind/introspect/CollectorBase;
.source "AnnotatedMethodCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    }
.end annotation


# instance fields
.field private final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V
    .locals 1
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 22
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/CollectorBase;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    .line 23
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 24
    return-void
.end method

.method private _addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V
    .locals 8
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/MemberKey;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 103
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "methods":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .local p4, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_0

    .line 104
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 106
    :cond_0
    if-nez p2, :cond_1

    .line 107
    return-void

    .line 110
    :cond_1
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getClassMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    aget-object v3, v0, v2

    .line 111
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 112
    goto :goto_2

    .line 114
    :cond_2
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v4, v3}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 115
    .local v4, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 116
    .local v5, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    if-nez v5, :cond_4

    .line 117
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v6, :cond_3

    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v6

    goto :goto_1

    .line 118
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v6

    :goto_1
    nop

    .line 119
    .local v6, "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    invoke-direct {v7, p1, v3, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;)V

    invoke-interface {p3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .end local v6    # "c":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    goto :goto_2

    .line 121
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v6, :cond_5

    .line 122
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v6

    iput-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 124
    :cond_5
    iget-object v6, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    .line 125
    .local v6, "old":Ljava/lang/reflect/Method;
    if-nez v6, :cond_6

    .line 126
    iput-object v3, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 129
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 136
    iput-object v3, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;

    .line 139
    iput-object p1, v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->typeContext:Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;

    .line 110
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v5    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    .end local v6    # "old":Ljava/lang/reflect/Method;
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_8
    return-void
.end method

.method private _isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z
    .locals 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 172
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 175
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 181
    .local v0, "pcount":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 176
    .end local v0    # "pcount":I
    :cond_2
    :goto_0
    return v1
.end method

.method public static collectMethods(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .locals 6
    .param p0, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p2, "mixins"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .param p3, "types"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p4, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;"
        }
    .end annotation

    .line 32
    .local p5, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    .local p6, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;

    invoke-direct {v0, p0, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V

    .line 33
    move-object v1, p3

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    move-result-object v0

    .line 32
    return-object v0
.end method


# virtual methods
.method protected _addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V
    .locals 17
    .param p1, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/MemberKey;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 148
    .local p2, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "methods":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .local p4, "mixInCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v2, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-static {v4, v3, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findRawSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 152
    .local v5, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 153
    .local v9, "m":Ljava/lang/reflect/Method;
    invoke-direct {v0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_isIncludableMemberMethod(Ljava/lang/reflect/Method;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 154
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    goto :goto_2

    .line 156
    :cond_1
    new-instance v10, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    invoke-direct {v10, v9}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;-><init>(Ljava/lang/reflect/Method;)V

    .line 157
    .local v10, "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 158
    .local v11, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v12

    .line 159
    .local v12, "anns":[Ljava/lang/annotation/Annotation;
    if-nez v11, :cond_2

    .line 162
    new-instance v13, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    const/4 v14, 0x0

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectAnnotations([Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v15

    move-object/from16 v16, v2

    move-object/from16 v2, p1

    invoke-direct {v13, v2, v14, v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;-><init>(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;)V

    invoke-interface {v1, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 164
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    iget-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    invoke-virtual {v0, v13, v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v13

    iput-object v13, v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 152
    .end local v9    # "m":Ljava/lang/reflect/Method;
    .end local v10    # "key":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    .end local v11    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    .end local v12    # "anns":[Ljava/lang/annotation/Annotation;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v16

    goto :goto_1

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v2, p1

    .line 167
    .end local v5    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, v16

    goto :goto_0

    .line 168
    :cond_4
    move-object/from16 v2, p1

    return-void
.end method

.method collect(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/List;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;
    .locals 9
    .param p1, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .param p2, "tc"    # Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;
    .param p3, "mainType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            "Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;"
        }
    .end annotation

    .line 39
    .local p4, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    .local p5, "primaryMixIn":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    .local v0, "methods":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0, p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 45
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 46
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 47
    .local v3, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    new-instance v4, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;

    .line 48
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext$Basic;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V

    .line 49
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    .line 47
    invoke-direct {p0, v4, v5, v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMemberMethods(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 50
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    .line 53
    .local v1, "checkJavaLangObject":Z
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v2, :cond_2

    .line 54
    const-class v3, Ljava/lang/Object;

    invoke-interface {v2, v3}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 55
    .local v2, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p2, v3, v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_addMethodMixIns(Lcom/fasterxml/jackson/databind/introspect/TypeResolutionContext;Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Class;)V

    .line 57
    const/4 v1, 0x1

    .line 65
    .end local v2    # "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 67
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/MemberKey;

    .line 69
    .local v4, "k":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "hashCode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->argCount()I

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    goto :goto_2

    .line 74
    :cond_4
    :try_start_0
    const-class v5, Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/MemberKey;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 75
    .local v5, "m":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_5

    .line 76
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    .line 77
    .local v6, "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    iget-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 78
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 77
    invoke-virtual {p0, v7, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector;->collectDefaultAnnotations(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v7

    iput-object v7, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->annotations:Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    .line 79
    iput-object v5, v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 81
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "b":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;
    :catch_0
    move-exception v5

    :cond_5
    :goto_3
    nop

    .line 82
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .end local v4    # "k":Lcom/fasterxml/jackson/databind/introspect/MemberKey;
    goto :goto_2

    .line 86
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    new-instance v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>()V

    return-object v2

    .line 89
    :cond_7
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 90
    .local v2, "actual":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 91
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;->build()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 92
    .local v5, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v5, :cond_8

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/fasterxml/jackson/databind/introspect/MemberKey;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodCollector$MethodBuilder;>;"
    .end local v5    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_8
    goto :goto_4

    .line 96
    :cond_9
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethodMap;-><init>(Ljava/util/Map;)V

    return-object v3
.end method
