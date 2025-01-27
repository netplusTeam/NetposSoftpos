.class public abstract Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.source "BasicDeserializerFactory.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings;
    }
.end annotation


# static fields
.field private static final CLASS_CHAR_SEQUENCE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_ITERABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MAP_ENTRY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_SERIALIZABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final CLASS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected static final UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;


# instance fields
.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    .line 48
    const-class v0, Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    .line 49
    const-class v0, Ljava/lang/CharSequence;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    .line 50
    const-class v0, Ljava/lang/Iterable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    .line 51
    const-class v0, Ljava/util/Map$Entry;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    .line 52
    const-class v0, Ljava/io/Serializable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_SERIALIZABLE:Ljava/lang/Class;

    .line 58
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "@JsonUnwrapped"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 78
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 80
    return-void
.end method

.method private _checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z
    .locals 4
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 698
    const/4 v0, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 699
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 700
    :cond_1
    return v0

    .line 702
    :cond_2
    if-eqz p3, :cond_3

    .line 705
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "implName":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 707
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldSerialize()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    return v0

    .line 713
    .end local v2    # "implName":Ljava/lang/String;
    :cond_3
    return v1
.end method

.method private _checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/List;)V
    .locals 18
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 721
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    const/4 v0, 0x0

    .line 722
    .local v0, "found":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    const/4 v1, 0x0

    .line 729
    .local v1, "foundProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    .line 730
    .local v3, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object/from16 v4, p3

    invoke-interface {v4, v3}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 731
    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v5

    .line 735
    .local v5, "argCount":I
    new-array v6, v5, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 736
    .local v6, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v5, :cond_3

    .line 737
    invoke-virtual {v3, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v15

    .line 738
    .local v15, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move-object/from16 v14, p0

    move-object/from16 v13, p4

    invoke-direct {v14, v15, v13}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v16

    .line 741
    .local v16, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 742
    goto :goto_0

    .line 744
    :cond_2
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v12

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, v16

    move-object v13, v15

    move-object/from16 v14, v17

    invoke-virtual/range {v8 .. v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v8

    aput-object v8, v6, v7

    .line 736
    .end local v15    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v16    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 747
    .end local v7    # "i":I
    :cond_3
    if-eqz v0, :cond_4

    .line 748
    const/4 v0, 0x0

    .line 749
    goto :goto_2

    .line 751
    :cond_4
    move-object v0, v3

    .line 752
    move-object v1, v6

    .line 753
    .end local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v5    # "argCount":I
    .end local v6    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    goto :goto_0

    .line 729
    :cond_5
    move-object/from16 v4, p3

    .line 755
    :goto_2
    if-eqz v0, :cond_7

    .line 756
    const/4 v2, 0x0

    move-object/from16 v3, p5

    invoke-virtual {v3, v0, v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 757
    move-object/from16 v5, p2

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 759
    .local v5, "bbd":Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    array-length v6, v1

    :goto_3
    if-ge v2, v6, :cond_8

    aget-object v7, v1, v2

    .line 760
    .local v7, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v8

    .line 761
    .local v8, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->hasProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 762
    nop

    .line 763
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v10

    .line 762
    invoke-static {v9, v10, v8}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v9

    .line 764
    .local v9, "newDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v5, v9}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->addProperty(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    .line 759
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v9    # "newDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 755
    .end local v5    # "bbd":Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    :cond_7
    move-object/from16 v3, p5

    .line 768
    :cond_8
    return-void
.end method

.method private _createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1600
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 1601
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1603
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .line 1605
    .local v2, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 1606
    .local v3, "des":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-eqz v3, :cond_0

    .line 1607
    return-object v3

    .line 1610
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    .line 1611
    .local v4, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v4, :cond_1

    .line 1612
    invoke-static {v0, p2, v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    return-object v5

    .line 1614
    :cond_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 1615
    .local v5, "valueDesForKey":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v5, :cond_2

    .line 1616
    invoke-static {v0, p2, v5}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v6

    return-object v6

    .line 1619
    .end local v4    # "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v5    # "valueDesForKey":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v4

    .line 1621
    .local v4, "enumRes":Lcom/fasterxml/jackson/databind/util/EnumResolver;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1622
    .local v6, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1623
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v5

    .line 1624
    .local v5, "argCount":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_5

    .line 1625
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 1627
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1629
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_4

    .line 1632
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1633
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1634
    invoke-virtual {p1, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v9

    .line 1633
    invoke-static {v8, v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 1636
    :cond_3
    invoke-static {v4, v6}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v8

    return-object v8

    .line 1630
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Parameter #0 type for factory method ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") not suitable, must be java.lang.String"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1639
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsuitable method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1640
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1642
    .end local v5    # "argCount":I
    .end local v6    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_6
    goto/16 :goto_0

    .line 1644
    :cond_7
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    return-object v5
.end method

.method private _findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 1028
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1029
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 1030
    .local v0, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v0, :cond_0

    .line 1031
    return-object v0

    .line 1036
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1038
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    return-object v2

    .line 1041
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private _mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 179
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 180
    .local v0, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 182
    .local v2, "resolver":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;->findTypeMapping(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 183
    .local v3, "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 184
    return-object v3

    .line 186
    .end local v2    # "resolver":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    .end local v3    # "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    goto :goto_0

    .line 188
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method protected _addDeserializerConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V
    .locals 34
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 368
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p6

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->isNonStaticInnerClass()Z

    move-result v16

    .line 369
    .local v16, "isNonStaticInnerClass":Z
    if-eqz v16, :cond_0

    .line 371
    return-void

    .line 377
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v8

    .line 378
    .local v8, "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-eqz v8, :cond_2

    .line 379
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v11, v12, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    :cond_1
    invoke-virtual {v10, v8}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 384
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v7, v0

    .line 385
    .local v7, "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    const/4 v0, 0x0

    .line 386
    .local v0, "explCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v17, v0

    .end local v0    # "explCount":I
    .local v17, "explCount":I
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 387
    .local v0, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v15, v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    .line 388
    .local v2, "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v3, v2, :cond_4

    .line 389
    goto :goto_0

    .line 391
    :cond_4
    if-nez v2, :cond_5

    .line 393
    invoke-interface {v14, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v15, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 398
    :cond_5
    sget-object v3, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 408
    nop

    .line 409
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v15, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v3

    .line 408
    invoke-virtual {v11, v12, v13, v10, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    goto :goto_1

    .line 404
    :pswitch_0
    nop

    .line 405
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v15, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v3

    .line 404
    invoke-virtual {v11, v12, v13, v10, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 406
    goto :goto_1

    .line 400
    :pswitch_1
    nop

    .line 401
    invoke-static {v15, v0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v3

    .line 400
    invoke-virtual {v11, v12, v13, v10, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 402
    nop

    .line 412
    :goto_1
    nop

    .end local v0    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v2    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    add-int/lit8 v17, v17, 0x1

    .line 413
    goto :goto_0

    .line 415
    :cond_6
    if-lez v17, :cond_7

    .line 416
    return-void

    .line 418
    :cond_7
    const/4 v0, 0x0

    .line 419
    .local v0, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v19, v0

    .end local v0    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    .local v19, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    .line 420
    .local v5, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v4

    .line 421
    .local v4, "argCount":I
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v3

    .line 424
    .local v3, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne v4, v2, :cond_a

    .line 425
    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v0

    .line 426
    .local v0, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-direct {v11, v15, v3, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    move-result v20

    .line 428
    .local v20, "useProps":Z
    if-eqz v20, :cond_8

    .line 429
    new-array v2, v2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 430
    .local v2, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v21

    .line 431
    .local v21, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    const/16 v22, 0x0

    .line 432
    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v23

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v24

    .line 431
    move-object/from16 v25, v0

    .end local v0    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .local v25, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v27, v2

    .end local v2    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v27, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move-object/from16 v2, p2

    move-object v12, v3

    .end local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v12, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object/from16 v3, v21

    move v13, v4

    .end local v4    # "argCount":I
    .local v13, "argCount":I
    move/from16 v4, v22

    move-object/from16 v28, v5

    .end local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v28, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    move-object/from16 v5, v23

    move-object/from16 v22, v6

    move-object/from16 v6, v24

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    move-object/from16 v1, v27

    const/4 v6, 0x0

    .end local v27    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v1, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    aput-object v0, v1, v6

    .line 433
    invoke-virtual {v10, v12, v6, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 434
    .end local v1    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v21    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    move-object/from16 v26, v7

    move-object/from16 v32, v8

    move-object v2, v10

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    goto/16 :goto_8

    .line 435
    .end local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v13    # "argCount":I
    .end local v25    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v28    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v0    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v4    # "argCount":I
    .restart local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :cond_8
    move-object/from16 v25, v0

    move-object v12, v3

    move v13, v4

    move-object/from16 v28, v5

    move-object/from16 v22, v6

    move v6, v1

    .line 437
    .end local v0    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v4    # "argCount":I
    .end local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v13    # "argCount":I
    .restart local v25    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v28    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-interface {v14, v12}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v0

    .line 435
    invoke-virtual {v11, v10, v12, v6, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 440
    if-eqz v25, :cond_9

    .line 441
    move-object/from16 v0, v25

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    move-object/from16 v26, v7

    move-object/from16 v32, v8

    move-object v2, v10

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    goto/16 :goto_8

    .line 440
    :cond_9
    move-object/from16 v26, v7

    move-object/from16 v32, v8

    move-object v2, v10

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    goto/16 :goto_8

    .line 452
    .end local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v13    # "argCount":I
    .end local v20    # "useProps":Z
    .end local v25    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v28    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v4    # "argCount":I
    .restart local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :cond_a
    move-object v12, v3

    move v13, v4

    move-object/from16 v28, v5

    move-object/from16 v22, v6

    move v6, v1

    .end local v3    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v4    # "argCount":I
    .end local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v13    # "argCount":I
    .restart local v28    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    const/4 v0, -0x1

    .line 453
    .local v0, "nonAnnotatedParamIndex":I
    new-array v5, v13, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 454
    .local v5, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    .line 455
    .local v1, "explicitNameCount":I
    const/16 v20, 0x0

    .line 456
    .local v20, "implicitWithCreatorCount":I
    const/4 v3, 0x0

    .line 458
    .local v3, "injectCount":I
    const/4 v4, 0x0

    move/from16 v21, v3

    move/from16 v33, v4

    move v4, v0

    move/from16 v0, v33

    .end local v3    # "injectCount":I
    .local v0, "i":I
    .local v4, "nonAnnotatedParamIndex":I
    .local v21, "injectCount":I
    :goto_3
    if-ge v0, v13, :cond_10

    .line 459
    invoke-virtual {v12, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v3

    .line 460
    .local v3, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move-object/from16 v23, v12

    move-object/from16 v12, v28

    .end local v28    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v12, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v23, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-virtual {v12, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v24

    .line 461
    .local v24, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v15, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v25

    .line 462
    .local v25, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-nez v24, :cond_b

    move-object/from16 v26, v22

    goto :goto_4

    :cond_b
    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v26

    :goto_4
    move-object/from16 v27, v3

    .end local v3    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v27, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move-object/from16 v3, v26

    .line 464
    .local v3, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v24, :cond_c

    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 465
    add-int/lit8 v26, v1, 0x1

    .line 466
    .end local v1    # "explicitNameCount":I
    .local v26, "explicitNameCount":I
    move/from16 v28, v0

    .end local v0    # "i":I
    .local v28, "i":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v29, v2

    move-object/from16 v2, p2

    move/from16 v30, v13

    move v13, v4

    .end local v4    # "nonAnnotatedParamIndex":I
    .local v13, "nonAnnotatedParamIndex":I
    .local v30, "argCount":I
    move/from16 v4, v28

    move-object v14, v5

    .end local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .local v14, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move-object/from16 v5, v27

    move-object/from16 v31, v12

    move v12, v6

    .end local v12    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v31, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    move-object/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v14, v28

    .line 467
    move-object/from16 v32, v8

    move-object v2, v10

    move v4, v13

    move-object/from16 v6, v23

    move/from16 v1, v26

    move/from16 v5, v30

    move-object/from16 v8, p2

    move-object/from16 v26, v7

    move-object/from16 v7, p1

    goto/16 :goto_6

    .line 464
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v26    # "explicitNameCount":I
    .end local v28    # "i":I
    .end local v30    # "argCount":I
    .end local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v0    # "i":I
    .restart local v1    # "explicitNameCount":I
    .restart local v4    # "nonAnnotatedParamIndex":I
    .restart local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v12    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v13, "argCount":I
    :cond_c
    move/from16 v28, v0

    move/from16 v29, v2

    move-object v14, v5

    move-object/from16 v31, v12

    move/from16 v30, v13

    move v13, v4

    move v12, v6

    .line 469
    .end local v0    # "i":I
    .end local v4    # "nonAnnotatedParamIndex":I
    .end local v5    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v12    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v13, "nonAnnotatedParamIndex":I
    .restart local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v28    # "i":I
    .restart local v30    # "argCount":I
    .restart local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    if-eqz v25, :cond_d

    .line 470
    add-int/lit8 v21, v21, 0x1

    .line 471
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v26, v7

    .end local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .local v26, "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    move-object v7, v3

    move-object/from16 v32, v8

    .end local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .local v32, "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    move/from16 v8, v28

    move-object/from16 v9, v27

    move-object v2, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v14, v28

    .line 472
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v4, v13

    move-object/from16 v6, v23

    move/from16 v5, v30

    goto :goto_6

    .line 474
    .end local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_d
    move-object/from16 v26, v7

    move-object/from16 v32, v8

    move-object v2, v10

    .end local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    move-object/from16 v0, v27

    .end local v27    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v0, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v4

    .line 475
    .local v4, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v4, :cond_e

    .line 476
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v6, v23

    move/from16 v5, v30

    .end local v23    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v30    # "argCount":I
    .local v5, "argCount":I
    .local v6, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-virtual {v11, v7, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 481
    goto :goto_5

    .line 491
    .end local v5    # "argCount":I
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v23    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v30    # "argCount":I
    :cond_e
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v6, v23

    move/from16 v5, v30

    .end local v23    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v30    # "argCount":I
    .restart local v5    # "argCount":I
    .restart local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-gez v13, :cond_f

    .line 492
    move/from16 v9, v28

    move v4, v9

    .end local v13    # "nonAnnotatedParamIndex":I
    .local v9, "nonAnnotatedParamIndex":I
    goto :goto_6

    .line 458
    .end local v0    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v3    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v4    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .end local v9    # "nonAnnotatedParamIndex":I
    .end local v24    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v25    # "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .restart local v13    # "nonAnnotatedParamIndex":I
    :cond_f
    :goto_5
    move v4, v13

    .end local v13    # "nonAnnotatedParamIndex":I
    .local v4, "nonAnnotatedParamIndex":I
    :goto_6
    add-int/lit8 v0, v28, 0x1

    move-object/from16 v9, p6

    move-object v10, v2

    move v13, v5

    move-object v5, v14

    move-object/from16 v7, v26

    move/from16 v2, v29

    move-object/from16 v28, v31

    move-object/from16 v8, v32

    move-object/from16 v14, p3

    move/from16 v33, v12

    move-object v12, v6

    move/from16 v6, v33

    .end local v28    # "i":I
    .local v0, "i":I
    goto/16 :goto_3

    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .local v5, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .local v12, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v13, "argCount":I
    .local v28, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :cond_10
    move/from16 v29, v2

    move-object v14, v5

    move-object/from16 v26, v7

    move-object/from16 v32, v8

    move-object v2, v10

    move v5, v13

    move-object/from16 v31, v28

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v28, v0

    move v13, v4

    move-object/from16 v33, v12

    move v12, v6

    move-object/from16 v6, v33

    .line 496
    .end local v0    # "i":I
    .end local v4    # "nonAnnotatedParamIndex":I
    .end local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v28    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v5, "argCount":I
    .restart local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v13, "nonAnnotatedParamIndex":I
    .restart local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    add-int v0, v1, v20

    .line 498
    .local v0, "namedCount":I
    if-gtz v1, :cond_12

    if-lez v21, :cond_11

    goto :goto_7

    :cond_11
    move-object/from16 v3, v31

    goto :goto_9

    .line 500
    :cond_12
    :goto_7
    add-int v3, v0, v21

    if-ne v3, v5, :cond_13

    .line 501
    invoke-virtual {v2, v6, v12, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 502
    goto :goto_8

    .line 504
    :cond_13
    if-nez v1, :cond_14

    add-int/lit8 v3, v21, 0x1

    if-ne v3, v5, :cond_14

    .line 506
    invoke-virtual {v2, v6, v12, v14, v12}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 507
    nop

    .line 419
    .end local v0    # "namedCount":I
    .end local v1    # "explicitNameCount":I
    .end local v5    # "argCount":I
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v13    # "nonAnnotatedParamIndex":I
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v20    # "implicitWithCreatorCount":I
    .end local v21    # "injectCount":I
    .end local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :goto_8
    move-object/from16 v14, p3

    move-object/from16 v9, p6

    move-object v10, v2

    move-object v12, v7

    move-object v13, v8

    move-object/from16 v6, v22

    move-object/from16 v7, v26

    move-object/from16 v8, v32

    .end local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    goto/16 :goto_2

    .line 512
    .restart local v0    # "namedCount":I
    .restart local v1    # "explicitNameCount":I
    .restart local v5    # "argCount":I
    .restart local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v13    # "nonAnnotatedParamIndex":I
    .restart local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v20    # "implicitWithCreatorCount":I
    .restart local v21    # "injectCount":I
    .restart local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :cond_14
    move-object/from16 v3, v31

    .end local v31    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v3, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-virtual {v3, v13}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findImplicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 513
    .local v4, "impl":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 522
    :cond_15
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 524
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v6, v9, v29

    .line 522
    const-string v10, "Argument #%d of constructor %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v7, v8, v10, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v4    # "impl":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_16
    :goto_9
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z

    move-result v4

    if-nez v4, :cond_18

    .line 529
    if-nez v19, :cond_17

    .line 530
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v19, v4

    goto :goto_a

    .line 529
    :cond_17
    move-object/from16 v4, v19

    .line 532
    .end local v19    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    .local v4, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    :goto_a
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v4

    .line 534
    .end local v0    # "namedCount":I
    .end local v1    # "explicitNameCount":I
    .end local v3    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v4    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    .end local v5    # "argCount":I
    .end local v6    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v13    # "nonAnnotatedParamIndex":I
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v20    # "implicitWithCreatorCount":I
    .end local v21    # "injectCount":I
    .restart local v19    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;>;"
    :cond_18
    move-object/from16 v14, p3

    move-object/from16 v9, p6

    move-object v10, v2

    move-object v12, v7

    move-object v13, v8

    move-object/from16 v6, v22

    move-object/from16 v7, v26

    move-object/from16 v8, v32

    goto/16 :goto_2

    .line 537
    .end local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    :cond_19
    move-object/from16 v26, v7

    move-object/from16 v32, v8

    move-object v2, v10

    move-object v7, v12

    move-object v8, v13

    .end local v7    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v8    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v26    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v32    # "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-eqz v19, :cond_1a

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDelegatingCreator()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 538
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasPropertyBasedCreator()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/List;)V

    .line 542
    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _addDeserializerFactoryMethods(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V
    .locals 33
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 776
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p6

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v8, v0

    .line 777
    .local v8, "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    const/4 v0, 0x0

    .line 780
    .local v0, "explCount":I
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move/from16 v16, v0

    .end local v0    # "explCount":I
    .local v16, "explCount":I
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 781
    .local v0, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v15, v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    .line 782
    .local v2, "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    .line 783
    .local v3, "argCount":I
    if-nez v2, :cond_1

    .line 785
    if-ne v3, v6, :cond_0

    invoke-interface {v14, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 786
    invoke-static {v15, v0, v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_1
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v2, v4, :cond_2

    .line 791
    goto :goto_0

    .line 795
    :cond_2
    if-nez v3, :cond_3

    .line 796
    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 797
    goto :goto_0

    .line 800
    :cond_3
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonCreator$Mode:[I

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 811
    nop

    .line 812
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v15, v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v4

    .line 811
    invoke-virtual {v11, v12, v13, v10, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    goto :goto_1

    .line 806
    :pswitch_0
    nop

    .line 807
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    invoke-static {v15, v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v4

    .line 806
    invoke-virtual {v11, v12, v13, v10, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 808
    goto :goto_1

    .line 802
    :pswitch_1
    nop

    .line 803
    invoke-static {v15, v0, v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->construct(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    move-result-object v4

    .line 802
    invoke-virtual {v11, v12, v13, v10, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 804
    nop

    .line 815
    :goto_1
    nop

    .end local v0    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v2    # "creatorMode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .end local v3    # "argCount":I
    add-int/lit8 v16, v16, 0x1

    .line 816
    goto :goto_0

    .line 818
    :cond_4
    if-lez v16, :cond_5

    .line 819
    return-void

    .line 822
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;

    .line 823
    .local v5, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v4

    .line 824
    .local v4, "argCount":I
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    .line 825
    .local v2, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-interface {v9, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 827
    .local v18, "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-eq v4, v6, :cond_7

    .line 828
    goto :goto_2

    .line 830
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v0

    .line 831
    .local v0, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-direct {v11, v15, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    move-result v19

    .line 832
    .local v19, "useProps":Z
    if-nez v19, :cond_8

    .line 833
    nop

    .line 834
    invoke-interface {v14, v2}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v3

    .line 833
    invoke-virtual {v11, v10, v2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 837
    if-eqz v0, :cond_6

    .line 838
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    goto :goto_2

    .line 842
    :cond_8
    const/4 v3, 0x0

    .line 843
    .local v3, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    new-array v14, v4, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 844
    .local v14, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/16 v20, 0x0

    .line 845
    .local v20, "implicitNameCount":I
    const/16 v21, 0x0

    .line 846
    .local v21, "explicitNameCount":I
    const/16 v22, 0x0

    .line 848
    .local v22, "injectCount":I
    const/16 v23, 0x0

    move/from16 v32, v21

    move-object/from16 v21, v3

    move/from16 v3, v23

    move/from16 v23, v22

    move/from16 v22, v32

    .local v3, "i":I
    .local v21, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v22, "explicitNameCount":I
    .local v23, "injectCount":I
    :goto_3
    if-ge v3, v4, :cond_f

    .line 849
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v11

    .line 850
    .local v11, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    if-nez v18, :cond_9

    move-object/from16 v24, v7

    goto :goto_4

    :cond_9
    aget-object v24, v18, v3

    .line 851
    .local v24, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :goto_4
    invoke-virtual {v15, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValue(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v25

    .line 852
    .local v25, "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-nez v24, :cond_a

    move-object/from16 v26, v7

    goto :goto_5

    :cond_a
    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v26

    :goto_5
    move/from16 v27, v3

    .end local v3    # "i":I
    .local v27, "i":I
    move-object/from16 v3, v26

    .line 854
    .local v3, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v26

    if-eqz v26, :cond_b

    .line 855
    add-int/lit8 v22, v22, 0x1

    .line 856
    move-object/from16 v26, v0

    .end local v0    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .local v26, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v28, v2

    .end local v2    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v28, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    move-object/from16 v2, p2

    move/from16 v29, v4

    .end local v4    # "argCount":I
    .local v29, "argCount":I
    move/from16 v4, v27

    move-object/from16 v30, v5

    .end local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .local v30, "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    move-object v5, v11

    move/from16 v31, v6

    move-object/from16 v6, v25

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v14, v27

    .line 857
    move-object/from16 v5, p0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v10

    goto :goto_6

    .line 854
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v29    # "argCount":I
    .end local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v0    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v2    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v4    # "argCount":I
    .restart local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :cond_b
    move-object/from16 v26, v0

    move-object/from16 v28, v2

    move/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v31, v6

    .line 859
    .end local v0    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v2    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v4    # "argCount":I
    .end local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v29    # "argCount":I
    .restart local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    if-eqz v25, :cond_c

    .line 860
    add-int/lit8 v23, v23, 0x1

    .line 861
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v0, v7

    move-object v7, v3

    move-object v1, v8

    .end local v8    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .local v1, "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    move/from16 v8, v27

    move-object v9, v11

    move-object v2, v10

    move-object/from16 v10, v25

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    aput-object v4, v14, v27

    .line 862
    move-object/from16 v5, p0

    goto :goto_6

    .line 864
    .end local v1    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v8    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    :cond_c
    move-object v0, v7

    move-object v1, v8

    move-object v2, v10

    .end local v8    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v1    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    invoke-virtual {v15, v11}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v4

    .line 865
    .local v4, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v4, :cond_d

    .line 866
    move-object/from16 v5, p0

    move-object v6, v11

    .end local v11    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .local v6, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v5, v12, v13, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    .line 871
    goto :goto_6

    .line 895
    .end local v6    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .restart local v11    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    :cond_d
    move-object/from16 v5, p0

    move-object v6, v11

    .end local v11    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .restart local v6    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    if-nez v21, :cond_e

    .line 896
    move-object v7, v6

    move-object/from16 v21, v7

    .line 848
    .end local v3    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v4    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .end local v6    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v24    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v25    # "injectable":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    :cond_e
    :goto_6
    add-int/lit8 v3, v27, 0x1

    move-object/from16 v9, p6

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move-object v11, v5

    move-object/from16 v0, v26

    move-object/from16 v2, v28

    move/from16 v4, v29

    move-object/from16 v5, v30

    move/from16 v6, v31

    const/4 v1, 0x0

    .end local v27    # "i":I
    .local v3, "i":I
    goto/16 :goto_3

    .end local v1    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v29    # "argCount":I
    .end local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v0    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v2    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v4, "argCount":I
    .restart local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .restart local v8    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    :cond_f
    move-object/from16 v26, v0

    move-object/from16 v28, v2

    move/from16 v27, v3

    move/from16 v29, v4

    move-object/from16 v30, v5

    move/from16 v31, v6

    move-object v0, v7

    move-object v1, v8

    move-object v2, v10

    move-object v5, v11

    .line 899
    .end local v0    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v2    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v3    # "i":I
    .end local v4    # "argCount":I
    .end local v5    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .end local v8    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v1    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v29    # "argCount":I
    .restart local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    add-int v3, v22, v20

    .line 902
    .local v3, "namedCount":I
    if-gtz v22, :cond_10

    if-lez v23, :cond_13

    .line 904
    :cond_10
    add-int v4, v3, v23

    move/from16 v6, v29

    .end local v29    # "argCount":I
    .local v6, "argCount":I
    if-ne v4, v6, :cond_11

    .line 905
    move-object/from16 v4, v28

    const/4 v7, 0x0

    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .local v4, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-virtual {v2, v4, v7, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_7

    .line 906
    .end local v4    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    :cond_11
    move-object/from16 v4, v28

    const/4 v7, 0x0

    .end local v28    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .restart local v4    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-nez v22, :cond_12

    add-int/lit8 v8, v23, 0x1

    if-ne v8, v6, :cond_12

    .line 908
    invoke-virtual {v2, v4, v7, v14, v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    goto :goto_7

    .line 910
    :cond_12
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 912
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v7

    aput-object v4, v8, v31

    .line 910
    const-string v7, "Argument #%d of factory method %s has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v12, v13, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .end local v3    # "namedCount":I
    .end local v4    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v6    # "argCount":I
    .end local v14    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v18    # "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v19    # "useProps":Z
    .end local v20    # "implicitNameCount":I
    .end local v21    # "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v22    # "explicitNameCount":I
    .end local v23    # "injectCount":I
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v30    # "candidate":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    :cond_13
    :goto_7
    move-object/from16 v14, p3

    move-object/from16 v9, p6

    move-object v7, v0

    move-object v8, v1

    move-object v10, v2

    move-object v11, v5

    move/from16 v6, v31

    goto/16 :goto_2

    .line 916
    .end local v1    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    .restart local v8    # "nonAnnotated":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;>;"
    :cond_14
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected _addExplicitAnyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 647
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    .line 650
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findOnlyParamWithoutInjection()I

    move-result v2

    .line 651
    .local v2, "oneNotInjected":I
    if-ltz v2, :cond_0

    .line 653
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v3

    if-nez v3, :cond_0

    .line 654
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 655
    return-void

    .line 658
    :cond_0
    invoke-virtual/range {p0 .. p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V

    .line 659
    return-void

    .line 661
    .end local v2    # "oneNotInjected":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v11

    .line 662
    .local v11, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v12

    .line 663
    .local v12, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->explicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 664
    .local v4, "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v13

    .line 667
    .local v13, "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-nez v4, :cond_3

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    .line 668
    .local v5, "useProps":Z
    :goto_1
    if-nez v5, :cond_5

    if-eqz v13, :cond_5

    .line 675
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    .line 676
    if-eqz v4, :cond_4

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldSerialize()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    move v5, v6

    move-object v14, v4

    move v15, v5

    goto :goto_3

    .line 678
    :cond_5
    move-object v14, v4

    move v15, v5

    .end local v4    # "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v5    # "useProps":Z
    .local v14, "paramName":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v15, "useProps":Z
    :goto_3
    if-eqz v15, :cond_6

    .line 679
    new-array v10, v3, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v8, 0x0

    .line 680
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v14

    move-object v9, v11

    move-object/from16 v16, v10

    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    aput-object v4, v16, v2

    move-object/from16 v2, v16

    .line 682
    .local v2, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v4

    invoke-virtual {v0, v4, v3, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 683
    return-void

    .line 685
    .end local v2    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_6
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v2, v3, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 689
    if-eqz v13, :cond_7

    .line 690
    move-object v2, v13

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    .line 692
    :cond_7
    return-void
.end method

.method protected _addExplicitDelegatingCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 557
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, -0x1

    .line 558
    .local v0, "ix":I
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v11

    .line 559
    .local v11, "argCount":I
    new-array v12, v11, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 560
    .local v12, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    move v13, v0

    move v14, v1

    .end local v0    # "ix":I
    .local v13, "ix":I
    .local v14, "i":I
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge v14, v11, :cond_2

    .line 561
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v15

    .line 562
    .local v15, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v16

    .line 563
    .local v16, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    if-eqz v16, :cond_0

    .line 564
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v12, v14

    .line 565
    goto :goto_1

    .line 567
    :cond_0
    if-gez v13, :cond_1

    .line 568
    move v0, v14

    .line 569
    .end local v13    # "ix":I
    .restart local v0    # "ix":I
    move v13, v0

    goto :goto_1

    .line 572
    .end local v0    # "ix":I
    .restart local v13    # "ix":I
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 574
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    aput-object v10, v2, v0

    .line 572
    const-string v0, "More than one argument (#%d and #%d) left as delegating for Creator %s: only one allowed"

    invoke-virtual {v7, v8, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .end local v15    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v16    # "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 577
    .end local v14    # "i":I
    :cond_2
    if-gez v13, :cond_3

    .line 578
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v10, v2, v0

    const-string v3, "No argument left as delegating for Creator %s: exactly one required"

    invoke-virtual {v7, v8, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_3
    if-ne v11, v1, :cond_5

    .line 584
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-virtual {v3, v9, v2, v1, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z

    .line 587
    invoke-virtual {v10, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->propertyDef(I)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object v0

    .line 588
    .local v0, "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    if-eqz v0, :cond_4

    .line 589
    move-object v1, v0

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    .line 591
    :cond_4
    return-void

    .line 593
    .end local v0    # "paramDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_5
    move-object/from16 v3, p0

    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    invoke-virtual {v9, v0, v1, v12, v13}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 594
    return-void
.end method

.method protected _addExplicitPropertyCreator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;)V
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p4, "candidate"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 606
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramCount()I

    move-result v10

    .line 607
    .local v10, "paramCount":I
    new-array v11, v10, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 609
    .local v11, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    const/4 v0, 0x1

    if-ge v12, v10, :cond_3

    .line 610
    invoke-virtual {v9, v12}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->injection(I)Lcom/fasterxml/jackson/annotation/JacksonInject$Value;

    move-result-object v13

    .line 611
    .local v13, "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    invoke-virtual {v9, v12}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->parameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v14

    .line 612
    .local v14, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v9, v12}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->paramName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 613
    .local v1, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-nez v1, :cond_2

    .line 616
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v2

    .line 617
    .local v2, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v2, :cond_0

    .line 618
    move-object/from16 v15, p0

    invoke-virtual {v15, v7, v8, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V

    goto :goto_1

    .line 617
    :cond_0
    move-object/from16 v15, p0

    .line 624
    :goto_1
    invoke-virtual {v9, v12}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->findImplicitParamName(I)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 626
    if-nez v1, :cond_1

    if-nez v13, :cond_1

    .line 627
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 628
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v9, v3, v0

    .line 627
    const-string v0, "Argument #%d has no property name, is not Injectable: can not use as Creator %s"

    invoke-virtual {v7, v8, v0, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .end local v2    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    :cond_1
    move-object/from16 v16, v1

    goto :goto_2

    .line 613
    :cond_2
    move-object/from16 v15, p0

    move-object/from16 v16, v1

    .line 631
    .end local v1    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v16, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    move v4, v12

    move-object v5, v14

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    aput-object v0, v11, v12

    .line 609
    .end local v13    # "injectId":Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .end local v14    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v16    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v15, p0

    .line 633
    .end local v12    # "i":I
    invoke-virtual/range {p4 .. p4}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCandidate;->creator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1, v0, v11}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 634
    return-void
.end method

.method protected _constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 12
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 258
    .local v0, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 261
    .local v1, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    .line 262
    .local v9, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v2

    .line 263
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    .line 262
    invoke-virtual {v9, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultVisibilityChecker(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v10

    .line 273
    .local v10, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/util/Map;

    move-result-object v11

    .line 277
    .local v11, "creatorDefs":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v10

    move-object v6, v1

    move-object v7, v0

    move-object v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addDeserializerFactoryMethods(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V

    .line 279
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v10

    move-object v6, v1

    move-object v7, v0

    move-object v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addDeserializerConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V

    .line 282
    :cond_0
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v2

    return-object v2
.end method

.method protected _findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/util/Map;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 288
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 289
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 290
    .local v2, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getConstructorParameters()Ljava/util/Iterator;

    move-result-object v3

    .line 291
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 292
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 293
    .local v4, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v5

    .line 294
    .local v5, "owner":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 295
    .local v6, "defs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v7

    .line 297
    .local v7, "index":I
    if-nez v6, :cond_1

    .line 298
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 299
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, v8

    .line 301
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v8

    new-array v6, v8, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 302
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 304
    :cond_1
    aget-object v8, v6, v7

    if-eqz v8, :cond_2

    .line 305
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 307
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    const/4 v9, 0x2

    aget-object v10, v6, v7

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object v2, v8, v9

    .line 305
    const-string v9, "Conflict: parameter #%d of %s bound to more than one property; %s vs %s"

    invoke-virtual {p1, p2, v9, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_2
    :goto_2
    aput-object v2, v6, v7

    .line 311
    .end local v4    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v5    # "owner":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v6    # "defs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v7    # "index":I
    goto :goto_1

    .line 312
    .end local v2    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :cond_3
    goto :goto_0

    .line 313
    :cond_4
    return-object v0
.end method

.method protected _findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1848
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1849
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1851
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1852
    return-object v2

    .line 1854
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1855
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1835
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1836
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1837
    return-object v2

    .line 1839
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1840
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1863
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1864
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1866
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1867
    return-object v2

    .line 1869
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1870
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1878
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1879
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1881
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1882
    return-object v2

    .line 1884
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1885
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1892
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1893
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1894
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1895
    return-object v2

    .line 1897
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1898
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "keyDeserializer"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1907
    .local p6, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1908
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1910
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1911
    return-object v2

    .line 1913
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1914
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "keyDeserializer"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1923
    .local p6, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1924
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1926
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1927
    return-object v2

    .line 1929
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1930
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "contentTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1819
    .local p5, "contentDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1820
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1822
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1823
    return-object v2

    .line 1825
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1826
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1805
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1806
    .local v1, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1807
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_0

    .line 1808
    return-object v2

    .line 1810
    .end local v1    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    goto :goto_0

    .line 1811
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _findJsonValueFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "enumType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2127
    if-nez p2, :cond_0

    .line 2128
    const/4 v0, 0x0

    return-object v0

    .line 2130
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 2131
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v1

    return-object v1
.end method

.method protected _findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1791
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1792
    .local v0, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method protected _handleSingleArgumentCreator(Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;ZZ)Z
    .locals 4
    .param p1, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p2, "ctor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "isCreator"    # Z
    .param p4, "isVisible"    # Z

    .line 922
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v1

    .line 923
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_12

    sget-object v2, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 929
    :cond_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_f

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    goto :goto_3

    .line 935
    :cond_1
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_c

    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_2

    goto :goto_2

    .line 941
    :cond_2
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_9

    const-class v2, Ljava/lang/Double;

    if-ne v1, v2, :cond_3

    goto :goto_1

    .line 947
    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_6

    const-class v2, Ljava/lang/Boolean;

    if-ne v1, v2, :cond_4

    goto :goto_0

    .line 954
    :cond_4
    if-eqz p3, :cond_5

    .line 955
    const/4 v2, 0x0

    invoke-virtual {p1, p2, p3, v2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;I)V

    .line 956
    return v3

    .line 958
    :cond_5
    return v0

    .line 948
    :cond_6
    :goto_0
    if-nez p3, :cond_7

    if-eqz p4, :cond_8

    .line 949
    :cond_7
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 951
    :cond_8
    return v3

    .line 942
    :cond_9
    :goto_1
    if-nez p3, :cond_a

    if-eqz p4, :cond_b

    .line 943
    :cond_a
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 945
    :cond_b
    return v3

    .line 936
    :cond_c
    :goto_2
    if-nez p3, :cond_d

    if-eqz p4, :cond_e

    .line 937
    :cond_d
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 939
    :cond_e
    return v3

    .line 930
    :cond_f
    :goto_3
    if-nez p3, :cond_10

    if-eqz p4, :cond_11

    .line 931
    :cond_10
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 933
    :cond_11
    return v3

    .line 924
    :cond_12
    :goto_4
    if-nez p3, :cond_13

    if-eqz p4, :cond_14

    .line 925
    :cond_13
    invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 927
    :cond_14
    return v3
.end method

.method protected _hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 2078
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2079
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2080
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v2

    .line 2081
    .local v2, "mode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    if-eqz v2, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 2083
    .end local v2    # "mode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    :cond_1
    return v1
.end method

.method protected _mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1182
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings;->findCollectionFallback(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1183
    .local v0, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/CollectionType;

    return-object v1

    .line 1186
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _mapAbstractMapType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1331
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$ContainerDefaultMappings;->findMapFallback(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v0

    .line 1332
    .local v0, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/MapType;

    return-object v1

    .line 1335
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected _reportUnwrappedCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)V
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 967
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 969
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 967
    const-string v2, "Cannot define Creator parameter %d as `@JsonUnwrapped`: combination not yet supported"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadDefinition(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Ljava/lang/Object;

    .line 970
    return-void
.end method

.method public _valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "instDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 321
    return-object v0

    .line 326
    :cond_0
    instance-of v1, p3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    if-eqz v1, :cond_1

    .line 327
    move-object v0, p3

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v0

    .line 329
    :cond_1
    instance-of v1, p3, Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 334
    move-object v1, p3

    check-cast v1, Ljava/lang/Class;

    .line 335
    .local v1, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 336
    return-object v0

    .line 338
    :cond_2
    const-class v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 343
    .local v0, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v2

    .line 345
    .local v2, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    if-eqz v2, :cond_3

    .line 346
    return-object v2

    .line 349
    .end local v2    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_3
    nop

    .line 350
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    .line 349
    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    return-object v2

    .line 339
    .end local v0    # "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotationIntrospector returned Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; expected Class<ValueInstantiator>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    .end local v1    # "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/annotation/JacksonInject$Value;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 20
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "index"    # I
    .param p5, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p6, "injectable"    # Lcom/fasterxml/jackson/annotation/JacksonInject$Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 983
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p5

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v13

    .line 984
    .local v13, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v14

    .line 987
    .local v14, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v14, :cond_0

    .line 988
    sget-object v2, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v15, v2

    .local v2, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    goto :goto_0

    .line 990
    .end local v2    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :cond_0
    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v2

    .line 991
    .local v2, "b":Ljava/lang/Boolean;
    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v3

    .line 992
    .local v3, "desc":Ljava/lang/String;
    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;

    move-result-object v4

    .line 993
    .local v4, "idx":Ljava/lang/Integer;
    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v5

    .line 994
    .local v5, "def":Ljava/lang/String;
    invoke-static {v2, v3, v4, v5}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v6

    move-object v15, v6

    .line 997
    .end local v2    # "b":Ljava/lang/Boolean;
    .end local v3    # "desc":Ljava/lang/String;
    .end local v4    # "idx":Ljava/lang/Integer;
    .end local v5    # "def":Ljava/lang/String;
    .local v15, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v0, v1, v12, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 998
    .local v11, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v8, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    .line 999
    invoke-virtual {v14, v12}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    move-object v2, v8

    move-object/from16 v3, p3

    move-object v4, v11

    move-object/from16 v6, p5

    move-object v7, v15

    invoke-direct/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    move-object/from16 v16, v8

    .line 1001
    .local v16, "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1003
    .local v2, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_1

    .line 1004
    invoke-virtual {v0, v13, v11}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_1

    .line 1003
    :cond_1
    move-object/from16 v17, v2

    .line 1009
    .end local v2    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v17, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_1
    if-nez p6, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/fasterxml/jackson/annotation/JacksonInject$Value;->getId()Ljava/lang/Object;

    move-result-object v2

    :goto_2
    move-object v10, v2

    .line 1011
    .local v10, "injectableValueId":Ljava/lang/Object;
    new-instance v18, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 1012
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v7

    move-object/from16 v2, v18

    move-object/from16 v3, p3

    move-object v4, v11

    move-object/from16 v6, v17

    move-object/from16 v8, p5

    move/from16 v9, p4

    move-object/from16 v19, v11

    .end local v11    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .local v19, "type":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v11, v15

    invoke-direct/range {v2 .. v11}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 1014
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v0, v1, v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 1015
    .local v3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v3, :cond_3

    .line 1016
    invoke-virtual/range {v19 .. v19}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1018
    :cond_3
    if-eqz v3, :cond_4

    .line 1020
    move-object/from16 v4, v19

    .end local v19    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .local v4, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v1, v3, v2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 1021
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    goto :goto_3

    .line 1018
    .end local v4    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v19    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    move-object/from16 v4, v19

    .line 1023
    .end local v19    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v4    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_3
    return-object v2
.end method

.method protected constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "jsonValueAccessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .line 2060
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_1

    .line 2061
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2062
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 2063
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    .line 2062
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 2065
    :cond_0
    nop

    .line 2066
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2065
    invoke-static {p1, p3, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingMethod(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0

    .line 2070
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public createArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1055
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    .line 1056
    .local v6, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 1059
    .local v7, "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1061
    .local v8, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1063
    .local v0, "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v0, :cond_0

    .line 1064
    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    .line 1063
    :cond_0
    move-object v9, v0

    .line 1067
    .end local v0    # "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, v6

    move-object v3, p3

    move-object v4, v9

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1069
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v0, :cond_3

    .line 1070
    if-nez v8, :cond_2

    .line 1071
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1072
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1073
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 1075
    :cond_1
    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_2

    .line 1076
    sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;

    return-object v2

    .line 1079
    .end local v1    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    invoke-direct {v1, p2, v8, v9}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    move-object v0, v1

    .line 1082
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1083
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1084
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v2, v6, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1085
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 1087
    :cond_4
    return-object v0
.end method

.method public createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1101
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1103
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1104
    .local v1, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    .line 1107
    .local v8, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1109
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_0

    .line 1110
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 1109
    :cond_0
    move-object v9, v2

    .line 1113
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1115
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_1

    .line 1116
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 1117
    .local v3, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 1119
    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1120
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object v2, v4

    .line 1134
    .end local v3    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    if-nez v2, :cond_9

    .line 1135
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isInterface()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isAbstract()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1136
    :cond_2
    invoke-virtual {p0, p2, v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v3

    .line 1137
    .local v3, "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    if-nez v3, :cond_4

    .line 1139
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1142
    invoke-static {p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v2

    goto :goto_1

    .line 1140
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find a deserializer for non-concrete Collection type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1144
    :cond_4
    move-object p2, v3

    .line 1146
    invoke-virtual {v8, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p3

    .line 1149
    .end local v3    # "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    :cond_5
    :goto_1
    if-nez v2, :cond_9

    .line 1150
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v3

    .line 1151
    .local v3, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1153
    const-class v4, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/type/CollectionType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1154
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    invoke-direct {v4, p2, v1, v9, v3}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    return-object v4

    .line 1157
    :cond_6
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->findForCollection(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1158
    if-eqz v2, :cond_7

    .line 1159
    return-object v2

    .line 1163
    :cond_7
    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1165
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;

    invoke-direct {v4, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    move-object v2, v4

    goto :goto_2

    .line 1167
    :cond_8
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    invoke-direct {v4, p2, v1, v9, v3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    move-object v2, v4

    .line 1172
    .end local v3    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_9
    :goto_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1173
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1174
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v8, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1175
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_3

    .line 1177
    :cond_a
    return-object v2
.end method

.method public createCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1195
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1197
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1198
    .local v1, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    .line 1201
    .local v8, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1203
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_0

    .line 1204
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 1203
    :cond_0
    move-object v9, v2

    .line 1206
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1208
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_1

    .line 1210
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1211
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1212
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v8, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1213
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 1216
    :cond_1
    return-object v2
.end method

.method public createEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1393
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 1394
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1396
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1398
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_4

    .line 1399
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v3

    .line 1400
    .local v3, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    .line 1401
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    :goto_0
    nop

    .line 1403
    .local v4, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1404
    .local v6, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {p0, p1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1405
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 1406
    invoke-static {v0, v1, v6}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForNoArgsCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1407
    goto :goto_2

    .line 1409
    :cond_1
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 1411
    .local v7, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1412
    invoke-static {v0, v1, v6, v3, v4}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1413
    goto :goto_2

    .line 1416
    .end local v6    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v7    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_1

    .line 1419
    :cond_3
    :goto_2
    if-nez v2, :cond_4

    .line 1420
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;

    .line 1421
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    .line 1420
    invoke-virtual {p0, v1, v0, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/databind/MapperFeature;->ACCEPT_CASE_INSENSITIVE_ENUMS:Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 1422
    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Ljava/lang/Boolean;)V

    move-object v2, v5

    .line 1427
    .end local v3    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v4    # "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_4
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1428
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1429
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v0, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1430
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_3

    .line 1432
    :cond_5
    return-object v2
.end method

.method public createKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1566
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 1567
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v1, 0x0

    .line 1568
    .local v1, "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasKeyDeserializers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1569
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .line 1570
    .local v2, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 1571
    .local v4, "d":Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    invoke-interface {v4, p2, v0, v2}, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v1

    .line 1572
    if-eqz v1, :cond_0

    .line 1573
    goto :goto_1

    .line 1575
    .end local v4    # "d":Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    :cond_0
    goto :goto_0

    .line 1578
    .end local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_1
    :goto_1
    if-nez v1, :cond_3

    .line 1579
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1580
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v1

    goto :goto_2

    .line 1582
    :cond_2
    invoke-static {v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v1

    .line 1586
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 1587
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1588
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1589
    .local v3, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v3, v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v1

    .line 1590
    .end local v3    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_3

    .line 1593
    :cond_4
    return-object v1
.end method

.method public createMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 22
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1230
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v10

    .line 1231
    .local v10, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 1232
    .local v11, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v12

    .line 1236
    .local v12, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1239
    .local v13, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1241
    .local v14, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1243
    .local v0, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v0, :cond_0

    .line 1244
    invoke-virtual {v7, v10, v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    .line 1243
    :cond_0
    move-object v15, v0

    .line 1248
    .end local v0    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v15, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v14

    move-object v5, v15

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v16

    .line 1251
    .local v16, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v16, :cond_b

    .line 1253
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 1254
    .local v6, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1259
    const-class v0, Ljava/util/EnumMap;

    if-ne v6, v0, :cond_1

    .line 1260
    const/4 v0, 0x0

    move-object/from16 v5, p3

    move-object/from16 v17, v0

    .local v0, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    goto :goto_1

    .line 1262
    .end local v0    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_1
    move-object/from16 v5, p3

    invoke-virtual {v7, v8, v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1264
    .local v17, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :goto_1
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    .line 1265
    .local v18, "kt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1268
    new-instance v19, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;

    const/4 v3, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move-object v4, v13

    move-object v5, v15

    move-object/from16 v21, v6

    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v21, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/NullValueProvider;)V

    move-object/from16 v16, v19

    goto :goto_2

    .line 1265
    .end local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object/from16 v21, v6

    .line 1266
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1254
    .end local v17    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v18    # "kt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object/from16 v21, v6

    .line 1283
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-nez v16, :cond_a

    .line 1284
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isInterface()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isAbstract()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    .line 1300
    :cond_4
    invoke-static/range {p1 .. p2}, Lcom/fasterxml/jackson/databind/deser/impl/JavaUtilCollectionsDeserializers;->findForMap(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1301
    .end local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_5

    .line 1302
    return-object v0

    .line 1301
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v0, p3

    goto :goto_5

    .line 1285
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .restart local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_6
    :goto_3
    invoke-virtual {v7, v9, v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractMapType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    .line 1286
    .local v0, "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    if-eqz v0, :cond_7

    .line 1287
    move-object v1, v0

    .line 1288
    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .local v1, "type":Lcom/fasterxml/jackson/databind/type/MapType;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 1290
    .end local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .local v2, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    goto :goto_4

    .line 1293
    .end local v1    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1296
    invoke-static/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v16

    move-object/from16 v2, p3

    move-object v1, v9

    move-object/from16 v6, v21

    .line 1298
    .end local v0    # "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .restart local v1    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .restart local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    move-object v9, v1

    move-object v0, v2

    move-object/from16 v21, v6

    .line 1305
    .end local v1    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v2    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v6    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .local v9, "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    if-nez v16, :cond_c

    .line 1306
    invoke-virtual {v7, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v17

    .line 1311
    .restart local v17    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    new-instance v18, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-object/from16 v1, v18

    move-object v2, v9

    move-object/from16 v3, v17

    move-object v4, v14

    move-object v5, v13

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 1312
    .local v1, "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    const-class v2, Ljava/util/Map;

    .line 1313
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    .line 1312
    invoke-virtual {v10, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v2

    .line 1314
    .local v2, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-nez v2, :cond_8

    const/4 v3, 0x0

    goto :goto_6

    .line 1315
    :cond_8
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v3

    :goto_6
    nop

    .line 1316
    .local v3, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIgnorableProperties(Ljava/util/Set;)V

    .line 1317
    move-object/from16 v16, v1

    goto :goto_7

    .line 1294
    .end local v1    # "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .end local v2    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v3    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local v17    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .local v0, "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .restart local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find a deserializer for non-concrete Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1283
    .end local v0    # "fallback":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_a
    move-object/from16 v0, p3

    goto :goto_7

    .line 1251
    .end local v21    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move-object/from16 v0, p3

    .line 1321
    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .restart local v9    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_c
    :goto_7
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1322
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v2, v16

    .end local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1323
    .local v3, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v3, v10, v9, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1324
    .end local v3    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_8

    .line 1322
    :cond_d
    move-object/from16 v16, v2

    .line 1326
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .restart local v16    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_e
    return-object v16
.end method

.method public createMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 14
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1345
    move-object v7, p0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 1346
    .local v8, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 1347
    .local v9, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v10

    .line 1351
    .local v10, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1354
    .local v11, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1361
    .local v12, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1363
    .local v0, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v0, :cond_0

    .line 1364
    invoke-virtual {p0, v10, v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 1363
    :cond_0
    move-object v13, v0

    .line 1366
    .end local v0    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v13, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v12

    move-object v5, v13

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1368
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_3

    .line 1370
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1371
    iget-object v1, v7, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1372
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, v10, v3, v4, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1373
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_1

    .line 1371
    :cond_1
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_2

    .line 1370
    :cond_2
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    goto :goto_2

    .line 1368
    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1376
    :goto_2
    return-object v0
.end method

.method public createReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1456
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1458
    .local v0, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1459
    .local v1, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v8

    .line 1461
    .local v8, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1462
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v2, :cond_0

    .line 1463
    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    .line 1462
    :cond_0
    move-object v9, v2

    .line 1465
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_0
    move-object v2, p0

    move-object v3, p2

    move-object v4, v8

    move-object v5, p3

    move-object v6, v9

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1468
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_2

    .line 1470
    const-class v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1471
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 1473
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v3, v4, :cond_1

    .line 1474
    const/4 v4, 0x0

    .local v4, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    goto :goto_1

    .line 1480
    .end local v4    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v4

    .line 1482
    .restart local v4    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :goto_1
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;

    invoke-direct {v5, p2, v4, v9, v1}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    return-object v5

    .line 1485
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_2
    if-eqz v2, :cond_3

    .line 1487
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1488
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1489
    .local v4, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v4, v8, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1490
    .end local v4    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    goto :goto_2

    .line 1493
    :cond_3
    return-object v2
.end method

.method public createTreeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "nodeType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1441
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 1443
    .local v0, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-virtual {p0, v0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 1445
    .local v1, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 1446
    return-object v1

    .line 1448
    :cond_0
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2
.end method

.method protected findContentDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1987
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1988
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 1989
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 1990
    .local v1, "deserDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1991
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 1994
    .end local v1    # "deserDef":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1728
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 1730
    .local v0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    if-eq v0, v1, :cond_d

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_SERIALIZABLE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    .line 1744
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_SEQUENCE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    goto/16 :goto_2

    .line 1747
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 1749
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v4

    .line 1750
    .local v4, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    invoke-virtual {v4, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 1751
    .local v1, "tps":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-eq v5, v2, :cond_2

    goto :goto_0

    :cond_2
    aget-object v2, v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1752
    .local v2, "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v4, v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v3

    .line 1754
    .local v3, "ct":Lcom/fasterxml/jackson/databind/type/CollectionType;
    invoke-virtual {p0, p1, v3, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    return-object v5

    .line 1756
    .end local v1    # "tps":[Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "ct":Lcom/fasterxml/jackson/databind/type/CollectionType;
    .end local v4    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1758
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 1759
    .local v1, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1760
    .local v2, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1761
    .local v3, "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v3, :cond_5

    .line 1762
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    .line 1764
    :cond_5
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1765
    .local v4, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1766
    .local v5, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;

    invoke-direct {v6, p2, v5, v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    return-object v6

    .line 1768
    .end local v1    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .end local v4    # "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v5    # "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .local v1, "clsName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1771
    :cond_7
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1772
    .local v2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v2, :cond_8

    .line 1773
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1775
    :cond_8
    if-eqz v2, :cond_9

    .line 1776
    return-object v2

    .line 1780
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_9
    const-class v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-ne v0, v2, :cond_a

    .line 1781
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;

    invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;-><init>()V

    return-object v2

    .line 1783
    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1784
    .restart local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_b

    .line 1785
    return-object v2

    .line 1787
    :cond_b
    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    return-object v3

    .line 1745
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v2    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_c
    :goto_2
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;

    return-object v1

    .line 1732
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 1735
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1736
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1737
    .local v2, "lt":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v3, Ljava/util/Map;

    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .local v3, "mt":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_4

    .line 1739
    .end local v2    # "lt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v3    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_e
    const/4 v2, 0x0

    move-object v3, v2

    .line 1741
    .restart local v2    # "lt":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v3    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_4
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    invoke-direct {v4, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v4
.end method

.method protected findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1951
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1952
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 1953
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 1954
    .local v1, "deserDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1955
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2

    .line 1958
    .end local v1    # "deserDef":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1970
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1971
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v0, :cond_0

    .line 1972
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 1973
    .local v1, "deserDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1974
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    return-object v2

    .line 1977
    .end local v1    # "deserDef":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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

    .line 1552
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "propertyEntity"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1704
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1705
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 1706
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1708
    .local v2, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_0

    .line 1709
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    return-object v3

    .line 1712
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p1, p3, v2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v3

    .line 1714
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    return-object v4
.end method

.method public findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1670
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1671
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 1673
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 1674
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    return-object v2

    .line 1677
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v2

    .line 1680
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    :try_start_0
    invoke-interface {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1681
    :catch_0
    move-exception v3

    .line 1682
    .local v3, "e0":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, Lcom/fasterxml/jackson/core/JsonParser;

    .line 1683
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    .line 1682
    invoke-static {v4, v5, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v4

    .line 1684
    .local v4, "e":Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1685
    throw v4
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 8
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1507
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 1508
    .local v0, "bean":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    .line 1509
    .local v1, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    .line 1510
    .local v2, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v2, p1, v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1514
    .local v3, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    const/4 v4, 0x0

    .line 1515
    .local v4, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1516
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1517
    if-nez v3, :cond_1

    .line 1518
    return-object v5

    .line 1521
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v4

    .line 1525
    :cond_1
    invoke-interface {v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1526
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1527
    .local v6, "defaultType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1528
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v3, v7}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v3

    .line 1534
    .end local v6    # "defaultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    :try_start_0
    invoke-interface {v3, p1, p2, v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 1535
    :catch_0
    move-exception v6

    .line 1536
    .local v6, "e0":Ljava/lang/IllegalArgumentException;
    move-object v7, v5

    check-cast v7, Lcom/fasterxml/jackson/core/JsonParser;

    .line 1537
    invoke-static {v6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->exceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 1536
    invoke-static {v5, v7, p2}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;

    move-result-object v5

    .line 1538
    .local v5, "e":Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;
    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/exc/InvalidDefinitionException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1539
    throw v5
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 209
    .local v0, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v1, 0x0

    .line 211
    .local v1, "instantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v2

    .line 212
    .local v2, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v3

    .line 213
    .local v3, "instDef":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 214
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 216
    :cond_0
    if-nez v1, :cond_1

    .line 219
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/JDKValueInstantiators;->findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 220
    if-nez v1, :cond_1

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 226
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasValueInstantiators()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 228
    .local v5, "insts":Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    invoke-interface {v5, v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 230
    if-nez v1, :cond_2

    .line 231
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 233
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 231
    const-string v7, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator"

    invoke-virtual {p1, p2, v7, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportBadTypeDefinition(Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v5    # "insts":Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    :cond_2
    goto :goto_0

    .line 239
    :cond_3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v4

    if-nez v4, :cond_4

    .line 246
    return-object v1

    .line 240
    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v4

    .line 241
    .local v4, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v5

    .line 242
    .local v5, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Argument #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " of constructor "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    return-object v0
.end method

.method public mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 157
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 158
    .local v0, "next":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 159
    return-object p2

    .line 163
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 164
    .local v1, "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 165
    .local v2, "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v1, v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    move-object p2, v0

    .line 169
    .end local v0    # "next":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v1    # "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 166
    .restart local v0    # "next":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v1    # "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid abstract type resolution from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": latter is not a subtype of former"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2104
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v0, :cond_0

    .line 2105
    return-object p3

    .line 2107
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    return-object v1
.end method

.method protected resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 2010
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 2011
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v0, :cond_0

    .line 2012
    return-object p3

    .line 2018
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2019
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 2020
    .local v1, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v1, :cond_1

    .line 2021
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v2

    .line 2022
    .local v2, "kdDef":Ljava/lang/Object;
    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 2023
    .local v3, "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-eqz v3, :cond_1

    .line 2024
    .end local v1    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v1, p3

    check-cast v1, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3

    .line 2025
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 2030
    .end local v2    # "kdDef":Ljava/lang/Object;
    .end local v3    # "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasContentType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2031
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 2032
    .local v1, "cdDef":Ljava/lang/Object;
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 2033
    .local v2, "cd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v2, :cond_2

    .line 2034
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2036
    :cond_2
    nop

    .line 2037
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    .line 2036
    invoke-virtual {p0, v3, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    .line 2038
    .local v3, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v3, :cond_3

    .line 2039
    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2042
    .end local v1    # "cdDef":Ljava/lang/Object;
    .end local v2    # "cd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v3    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v1

    .line 2044
    .local v1, "valueTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v1, :cond_4

    .line 2045
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2053
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 2054
    return-object p3
.end method

.method protected resolveType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2118
    invoke-virtual {p0, p1, p4, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "resolver"    # Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 134
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 107
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method protected abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public final withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "instantiators"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 143
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method
