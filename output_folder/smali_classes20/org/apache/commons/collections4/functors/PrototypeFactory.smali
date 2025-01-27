.class public Lorg/apache/commons/collections4/functors/PrototypeFactory;
.super Ljava/lang/Object;
.source "PrototypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;,
        Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static prototypeFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/apache/commons/collections4/Factory<",
            "TT;>;"
        }
    .end annotation

    .line 66
    .local p0, "prototype":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 67
    invoke-static {v0}, Lorg/apache/commons/collections4/functors/ConstantFactory;->constantFactory(Ljava/lang/Object;)Lorg/apache/commons/collections4/Factory;

    move-result-object v0

    return-object v0

    .line 70
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clone"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 71
    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v2, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;

    invoke-direct {v2, p0, v1, v0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeCloneFactory;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 73
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 76
    new-instance v2, Lorg/apache/commons/collections4/functors/InstantiateFactory;

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Class;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-direct {v2, v4, v5, v3}, Lorg/apache/commons/collections4/functors/InstantiateFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    return-object v2

    .line 80
    :catch_1
    move-exception v2

    .line 81
    .local v2, "ex2":Ljava/lang/NoSuchMethodException;
    instance-of v3, p0, Ljava/io/Serializable;

    if-eqz v3, :cond_1

    .line 82
    new-instance v3, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;

    move-object v4, p0

    check-cast v4, Ljava/io/Serializable;

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/collections4/functors/PrototypeFactory$PrototypeSerializationFactory;-><init>(Ljava/io/Serializable;Lorg/apache/commons/collections4/functors/PrototypeFactory$1;)V

    return-object v3

    .line 86
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v2    # "ex2":Ljava/lang/NoSuchMethodException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The prototype must be cloneable via a public clone method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
