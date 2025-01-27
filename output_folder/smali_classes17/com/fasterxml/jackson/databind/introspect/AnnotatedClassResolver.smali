.class public Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;
.super Ljava/lang/Object;
.source "AnnotatedClassResolver.java"


# static fields
.field private static final NO_ANNOTATIONS:Lcom/fasterxml/jackson/databind/util/Annotations;


# instance fields
.field private final _bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

.field private final _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field private final _intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field private final _mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

.field private final _primaryMixin:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final _type:Lcom/fasterxml/jackson/databind/JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->NO_ANNOTATIONS:Lcom/fasterxml/jackson/databind/util/Annotations;

    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V
    .locals 2
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "r"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")V"
        }
    .end annotation

    .line 36
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 38
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 39
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_class:Ljava/lang/Class;

    .line 40
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 42
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 44
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_primaryMixin:Ljava/lang/Class;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V
    .locals 2
    .param p3, "r"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")V"
        }
    .end annotation

    .line 47
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    .line 50
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_class:Ljava/lang/Class;

    .line 51
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 52
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 53
    if-nez p1, :cond_0

    .line 54
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 55
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_primaryMixin:Ljava/lang/Class;

    goto :goto_1

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 59
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_primaryMixin:Ljava/lang/Class;

    .line 61
    :goto_1
    return-void
.end method

.method private _addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 4
    .param p1, "c"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .param p2, "anns"    # [Ljava/lang/annotation/Annotation;

    .line 202
    if-eqz p2, :cond_1

    .line 203
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 205
    .local v2, "ann":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->isPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 207
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addFromBundleIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 203
    .end local v2    # "ann":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_1
    return-object p1
.end method

.method private _addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 3
    .param p1, "annotations"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;"
        }
    .end annotation

    .line 183
    .local p2, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "mixin":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_0

    .line 185
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 192
    const/4 v0, 0x0

    invoke-static {p3, p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperClasses(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 193
    .local v1, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 194
    .end local v1    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 196
    :cond_0
    return-object p1
.end method

.method private _addFromBundleIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .locals 5
    .param p1, "c"    # Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    .param p2, "bundle"    # Ljava/lang/annotation/Annotation;

    .line 219
    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 221
    .local v3, "ann":Ljava/lang/annotation/Annotation;
    instance-of v4, v3, Ljava/lang/annotation/Target;

    if-nez v4, :cond_1

    instance-of v4, v3, Ljava/lang/annotation/Retention;

    if-eqz v4, :cond_0

    .line 222
    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->isPresent(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->addOrOverride(Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 226
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    invoke-direct {p0, p1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addFromBundleIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object p1

    .line 219
    .end local v3    # "ann":Ljava/lang/annotation/Annotation;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_2
    return-object p1
.end method

.method static createArrayType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 112
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method static createPrimordial(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 104
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static resolve(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1
    .param p1, "forType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "r"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 66
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->skippableArray(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createArrayType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveFully()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method private resolveClassAnnotations(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/util/Annotations;"
        }
    .end annotation

    .line 144
    .local p1, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->NO_ANNOTATIONS:Lcom/fasterxml/jackson/databind/util/Annotations;

    return-object v0

    .line 147
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->emptyCollector()Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 149
    .local v0, "resolvedCA":Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_primaryMixin:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 150
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_class:Ljava/lang/Class;

    invoke-direct {p0, v0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_class:Ljava/lang/Class;

    .line 154
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 153
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JavaType;

    .line 159
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 161
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .line 162
    invoke-interface {v4, v3}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 161
    invoke-direct {p0, v0, v3, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 164
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    nop

    .line 165
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClassAnnotations(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 164
    invoke-direct {p0, v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addAnnotationsIfNotPresent(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;[Ljava/lang/annotation/Annotation;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 166
    .end local v2    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    if-eqz v1, :cond_4

    .line 174
    const-class v2, Ljava/lang/Object;

    const-class v3, Ljava/lang/Object;

    .line 175
    invoke-interface {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 174
    invoke-direct {p0, v0, v2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_addClassMixIns(Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;

    move-result-object v0

    .line 177
    :cond_4
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotationCollector;->asAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v1

    return-object v1
.end method

.method public static resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1
    .param p1, "forType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "r"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 79
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->skippableArray(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createArrayType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method public static resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 73
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method public static resolveWithoutSuperTypes(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 1
    .param p2, "r"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;"
        }
    .end annotation

    .line 88
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "forType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->skippableArray(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->createArrayType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveWithoutSuperTypes()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    return-object v0
.end method

.method private static skippableArray(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 95
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method resolveFully()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 13

    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findSuperTypes(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0

    .line 117
    .local v0, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_type:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_class:Ljava/lang/Class;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_primaryMixin:Ljava/lang/Class;

    .line 118
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveClassAnnotations(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v8

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_mixInResolver:Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 119
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v12

    move-object v3, v1

    move-object v6, v0

    invoke-direct/range {v3 .. v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 117
    return-object v1
.end method

.method resolveWithoutSuperTypes()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .locals 12

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 125
    .local v10, "superTypes":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JavaType;>;"
    new-instance v11, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_class:Ljava/lang/Class;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_primaryMixin:Ljava/lang/Class;

    .line 126
    invoke-direct {p0, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->resolveClassAnnotations(Ljava/util/List;)Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_intr:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClassResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 127
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v9

    const/4 v1, 0x0

    move-object v0, v11

    move-object v3, v10

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 125
    return-object v11
.end method
