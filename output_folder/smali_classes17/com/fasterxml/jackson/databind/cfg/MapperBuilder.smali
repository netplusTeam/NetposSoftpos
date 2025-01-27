.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
.super Ljava/lang/Object;
.source "MapperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        "B:",
        "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<",
        "TM;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final _mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 47
    return-void
.end method

.method public static findModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->findModules(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findModules(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 4
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v0, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/Module;>;"
    const-class v1, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 285
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/fasterxml/jackson/databind/Module;>;"
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/Module;

    .line 286
    .local v3, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v3    # "module":Lcom/fasterxml/jackson/databind/Module;
    goto :goto_0

    .line 288
    :cond_0
    return-object v0
.end method

.method private static secureGetServiceLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/ServiceLoader<",
            "TT;>;"
        }
    .end annotation

    .line 292
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 293
    .local v0, "sm":Ljava/lang/SecurityManager;
    if-nez v0, :cond_1

    .line 294
    if-nez p1, :cond_0

    .line 295
    invoke-static {p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 294
    :goto_0
    return-object v1

    .line 297
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;

    invoke-direct {v1, p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder$1;-><init>(Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ServiceLoader;

    return-object v1
.end method


# virtual methods
.method protected final _this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    return-object p0
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 610
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .param p2, "dti"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            ")TB;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 625
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .param p2, "applicability"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .param p3, "includeAs"    # Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;",
            ")TB;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 647
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypeValidator"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .param p2, "applicability"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .param p3, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            "Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->activateDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 665
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "h"    # Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;",
            ")TB;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 436
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 561
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "module"    # Lcom/fasterxml/jackson/databind/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/Module;",
            ")TB;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 244
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;)TB;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/fasterxml/jackson/databind/Module;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/Module;

    .line 258
    .local v1, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    .line 259
    .end local v1    # "module":Lcom/fasterxml/jackson/databind/Module;
    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs addModules([Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 3
    .param p1, "modules"    # [Lcom/fasterxml/jackson/databind/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/Module;",
            ")TB;"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 250
    .local v2, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    .line 249
    .end local v2    # "module":Lcom/fasterxml/jackson/databind/Module;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public annotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")TB;"
        }
    .end annotation

    .line 337
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 338
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public clearProblemHandlers()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->clearProblemHandlers()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 445
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 188
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            "Z)TB;"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 173
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamReadFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/StreamReadFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 213
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/StreamWriteFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 2
    .param p1, "feature"    # Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 232
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/MapperFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            "Z)TB;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 133
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 675
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->deactivateDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 676
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/core/Base64Variant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/Base64Variant;",
            ")TB;"
        }
    .end annotation

    .line 529
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 530
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "df"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            ")TB;"
        }
    .end annotation

    .line 492
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 493
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 475
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultLeniency(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 476
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")TB;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 511
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "b"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")TB;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultMergeable(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 466
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/PrettyPrinter;",
            ")TB;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 415
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/annotation/JsonSetter$Value;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonSetter$Value;",
            ")TB;"
        }
    .end annotation

    .line 455
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultSetterInfo(Lcom/fasterxml/jackson/annotation/JsonSetter$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public defaultTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            ")TB;"
        }
    .end annotation

    .line 501
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 502
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 183
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 168
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 206
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 205
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 225
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 224
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 145
    .local v2, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 144
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/MapperFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 108
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 126
    .local v2, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 125
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonGenerator$Feature;",
            ")TB;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 178
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/JsonParser$Feature;",
            ")TB;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 163
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/StreamReadFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamReadFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamReadFeature;",
            ")TB;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 199
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamReadFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonParser$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 198
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamReadFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/StreamWriteFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 7
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/StreamWriteFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/core/StreamWriteFeature;",
            ")TB;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 218
    .local v3, "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/StreamWriteFeature;->mappedFeature()Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 217
    .end local v3    # "f":Lcom/fasterxml/jackson/core/StreamWriteFeature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/DeserializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 138
    .local v2, "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 137
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/DeserializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/MapperFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/MapperFeature;",
            ")TB;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 102
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 4
    .param p1, "features"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/SerializationFeature;",
            ")TB;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 119
    .local v2, "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 118
    .end local v2    # "f":Lcom/fasterxml/jackson/databind/SerializationFeature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public filterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/FilterProvider;",
            ")TB;"
        }
    .end annotation

    .line 409
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setFilterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 410
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findAndAddModules()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->findModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->addModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public handlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "hi"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;",
            ")TB;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Ljava/lang/Object;

    .line 381
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public injectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/databind/InjectableValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/InjectableValues;",
            ")TB;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setInjectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 426
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .line 80
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .line 77
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .line 70
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/MapperFeature;

    .line 67
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .line 73
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public nodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            ")TB;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setNodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 343
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public polymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "ptv"    # Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;",
            ")TB;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPolymorphicTypeValidator(Lcom/fasterxml/jackson/databind/jsontype/PolymorphicTypeValidator;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 590
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public propertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;",
            ")TB;"
        }
    .end annotation

    .line 385
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 386
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtypes(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "*>;>;)TB;"
        }
    .end annotation

    .line 581
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes(Ljava/util/Collection;)V

    .line 582
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "subtypes"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ")TB;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 577
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)TB;"
        }
    .end annotation

    .line 571
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "subtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerSubtypes([Ljava/lang/Class;)V

    .line 572
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Include;",
            ")TB;"
        }
    .end annotation

    .line 534
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 535
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public serializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/SerializerFactory;",
            ")TB;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 397
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public streamFactory()Lcom/fasterxml/jackson/core/TokenStreamFactory;
    .locals 1

    .line 90
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->tokenStreamFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public subtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "r"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;",
            ")TB;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSubtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public typeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")TB;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 354
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public visibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .param p1, "forMethod"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "visibility"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/PropertyAccessor;",
            "Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;",
            ")TB;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 369
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method

.method public visibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;)TB;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;, "Lcom/fasterxml/jackson/databind/cfg/MapperBuilder<TM;TB;>;"
    .local p1, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 364
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;->_this()Lcom/fasterxml/jackson/databind/cfg/MapperBuilder;

    move-result-object v0

    return-object v0
.end method
