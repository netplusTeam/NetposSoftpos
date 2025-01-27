.class public abstract Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;
.super Ljava/lang/Object;
.source "ConcreteBeanPropertyBase.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/BeanProperty;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation
.end field

.field protected final _metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

.field protected transient _propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
    .locals 1
    .param p1, "md"    # Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 46
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 50
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 51
    return-void
.end method


# virtual methods
.method public findAliases(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            ">;"
        }
    .end annotation

    .line 127
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_aliases:Ljava/util/List;

    .line 128
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/PropertyName;>;"
    if-nez v0, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 130
    .local v1, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    .line 132
    .local v2, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyAliases(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;

    move-result-object v0

    .line 136
    .end local v2    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_0
    if-nez v0, :cond_1

    .line 137
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 139
    :cond_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_aliases:Ljava/util/List;

    .line 141
    .end local v1    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    :cond_2
    return-object v0
.end method

.method public final findFormatOverrides(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "f":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 68
    .local v1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    .line 72
    .end local v1    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_0
    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->EMPTY_FORMAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 75
    :cond_1
    return-object v0
.end method

.method public findPropertyFormat(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonFormat$Value;"
        }
    .end annotation

    .line 83
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 84
    .local v0, "v":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-nez v0, :cond_4

    .line 85
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 86
    .local v1, "v1":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    const/4 v2, 0x0

    .line 87
    .local v2, "v2":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 88
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v4

    .line 90
    .local v4, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v4, :cond_0

    .line 91
    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v2

    .line 94
    .end local v4    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_0
    if-nez v1, :cond_2

    .line 95
    if-nez v2, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->EMPTY_FORMAT:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    move-object v0, v4

    goto :goto_2

    .line 97
    :cond_2
    if-nez v2, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 99
    :goto_2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_propertyFormat:Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    .line 101
    .end local v1    # "v1":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v2    # "v2":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v3    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    :cond_4
    return-object v0
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    .line 107
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 108
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 109
    .local v1, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v1, :cond_0

    .line 110
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 111
    .local v2, "def":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    return-object v2

    .line 113
    .end local v2    # "def":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultInclusion(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v2

    .line 114
    .local v2, "v0":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-nez v0, :cond_1

    .line 115
    return-object v2

    .line 117
    :cond_1
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v3

    .line 118
    .local v3, "v":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-nez v2, :cond_2

    .line 119
    return-object v3

    .line 121
    :cond_2
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v4

    return-object v4
.end method

.method public getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    return-object v0
.end method

.method public isRequired()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->_metadata:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method
