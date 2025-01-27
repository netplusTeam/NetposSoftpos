.class public abstract Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;
.super Ljava/lang/Object;
.source "JavaUtilCollectionsDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    }
.end annotation


# static fields
.field private static final CLASS_AS_ARRAYS_LIST:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_SINGLETON_LIST:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_SINGLETON_MAP:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_SINGLETON_SET:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_UNMODIFIABLE_LIST_ALIAS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final TYPE_AS_LIST:I = 0x7

.field private static final TYPE_SINGLETON_LIST:I = 0x2

.field private static final TYPE_SINGLETON_MAP:I = 0x3

.field private static final TYPE_SINGLETON_SET:I = 0x1

.field private static final TYPE_UNMODIFIABLE_LIST:I = 0x5

.field private static final TYPE_UNMODIFIABLE_MAP:I = 0x6

.field private static final TYPE_UNMODIFIABLE_SET:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_AS_ARRAYS_LIST:Ljava/lang/Class;

    .line 51
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 52
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_SINGLETON_SET:Ljava/lang/Class;

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    .line 55
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 56
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    .line 57
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    .line 59
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_LIST_ALIAS:Ljava/lang/Class;

    .line 61
    const-string v2, "a"

    const-string v3, "b"

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 62
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_SINGLETON_MAP:Ljava/lang/Class;

    .line 63
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

    .line 64
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    .locals 3
    .param p0, "kind"    # I
    .param p1, "concreteType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;"
        }
    .end annotation

    .line 110
    .local p2, "rawSuper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;-><init>(ILcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$1;)V

    return-object v0
.end method

.method public static findForCollection(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_AS_ARRAYS_LIST:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x7

    const-class v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .local v0, "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    goto :goto_1

    .line 75
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    const-class v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .restart local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    goto :goto_1

    .line 77
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_SINGLETON_SET:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const/4 v0, 0x1

    const-class v1, Ljava/util/Set;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .restart local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    goto :goto_1

    .line 80
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :cond_2
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_LIST_ALIAS:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    const/4 v0, 0x4

    const-class v1, Ljava/util/Set;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .restart local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    goto :goto_1

    .line 85
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 81
    :cond_5
    :goto_0
    const/4 v0, 0x5

    const-class v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .line 87
    .restart local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :goto_1
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    return-object v1
.end method

.method public static findForMap(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p0, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 97
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_SINGLETON_MAP:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x3

    const-class v1, Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .local v0, "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    goto :goto_0

    .line 99
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->CLASS_UNMODIFIABLE_MAP:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/4 v0, 0x6

    const-class v1, Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->converter(ILcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;

    move-result-object v0

    .line 104
    .restart local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;)V

    return-object v1

    .line 102
    .end local v0    # "conv":Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers$JavaUtilCollectionsConverter;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
