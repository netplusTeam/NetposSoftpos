.class public Lcom/fasterxml/jackson/databind/ext/Java7SupportImpl;
.super Lcom/fasterxml/jackson/databind/ext/Java7Support;
.source "Java7SupportImpl.java"


# instance fields
.field private final _bogus:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ext/Java7Support;-><init>()V

    .line 21
    const-class v0, Ljava/beans/Transient;

    .line 22
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/beans/ConstructorProperties;

    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ext/Java7SupportImpl;->_bogus:Ljava/lang/Class;

    .line 24
    return-void
.end method


# virtual methods
.method public findConstructorName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    .line 50
    .local v0, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    if-eqz v0, :cond_0

    .line 51
    const-class v1, Ljava/beans/ConstructorProperties;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Ljava/beans/ConstructorProperties;

    .line 52
    .local v1, "props":Ljava/beans/ConstructorProperties;
    if-eqz v1, :cond_0

    .line 53
    invoke-interface {v1}, Ljava/beans/ConstructorProperties;->value()[Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "names":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v3

    .line 55
    .local v3, "ix":I
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 56
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    return-object v4

    .line 60
    .end local v1    # "props":Ljava/beans/ConstructorProperties;
    .end local v2    # "names":[Ljava/lang/String;
    .end local v3    # "ix":I
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public findTransient(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 28
    const-class v0, Ljava/beans/Transient;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/beans/Transient;

    .line 29
    .local v0, "t":Ljava/beans/Transient;
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0}, Ljava/beans/Transient;->value()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 32
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .line 37
    const-class v0, Ljava/beans/ConstructorProperties;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/beans/ConstructorProperties;

    .line 40
    .local v0, "props":Ljava/beans/ConstructorProperties;
    if-eqz v0, :cond_0

    .line 41
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 43
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
