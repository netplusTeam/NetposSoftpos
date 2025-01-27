.class public Lorg/apache/commons/collections4/functors/InstantiateFactory;
.super Ljava/lang/Object;
.source "InstantiateFactory.java"

# interfaces
.implements Lorg/apache/commons/collections4/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final iArgs:[Ljava/lang/Object;

.field private final iClassToInstantiate:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transient iConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateFactory;, "Lorg/apache/commons/collections4/functors/InstantiateFactory<TT;>;"
    .local p1, "classToInstantiate":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    .line 83
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    .line 84
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    .line 85
    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->findConstructor()V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateFactory;, "Lorg/apache/commons/collections4/functors/InstantiateFactory<TT;>;"
    .local p1, "classToInstantiate":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    .line 99
    iput-object p1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    .line 100
    invoke-virtual {p2}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    .line 101
    invoke-virtual {p3}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    .line 102
    invoke-direct {p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->findConstructor()V

    .line 103
    return-void
.end method

.method private findConstructor()V
    .locals 3

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateFactory;, "Lorg/apache/commons/collections4/functors/InstantiateFactory<TT;>;"
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iClassToInstantiate:Ljava/lang/Class;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    nop

    .line 114
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "InstantiateFactory: The constructor must exist and be public "

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static instantiateFactory(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 2
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 60
    .local p0, "classToInstantiate":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p0, :cond_6

    .line 63
    if-nez p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must match the arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_3
    :goto_0
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_4

    goto :goto_1

    .line 72
    :cond_4
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0

    .line 70
    :cond_5
    :goto_1
    new-instance v0, Lorg/apache/commons/collections4/functors/InstantiateFactory;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 61
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Class to instantiate must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/functors/InstantiateFactory;, "Lorg/apache/commons/collections4/functors/InstantiateFactory<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/apache/commons/collections4/functors/InstantiateFactory;->findConstructor()V

    .line 129
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iConstructor:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lorg/apache/commons/collections4/functors/InstantiateFactory;->iArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateFactory: Constructor threw an exception"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 132
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateFactory: Constructor must be public"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 130
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/InstantiationException;
    new-instance v1, Lorg/apache/commons/collections4/FunctorException;

    const-string v2, "InstantiateFactory: InstantiationException"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/collections4/FunctorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
