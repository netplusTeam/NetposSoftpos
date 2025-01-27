.class Ljavassist/util/proxy/SerializedProxy;
.super Ljava/lang/Object;
.source "SerializedProxy.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private filterSignature:[B

.field private handler:Ljavassist/util/proxy/MethodHandler;

.field private interfaces:[Ljava/lang/String;

.field private superClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;[BLjavassist/util/proxy/MethodHandler;)V
    .locals 7
    .param p2, "sig"    # [B
    .param p3, "h"    # Ljavassist/util/proxy/MethodHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[B",
            "Ljavassist/util/proxy/MethodHandler;",
            ")V"
        }
    .end annotation

    .line 42
    .local p1, "proxy":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Ljavassist/util/proxy/SerializedProxy;->filterSignature:[B

    .line 44
    iput-object p3, p0, Ljavassist/util/proxy/SerializedProxy;->handler:Ljavassist/util/proxy/MethodHandler;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/SerializedProxy;->superClass:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "infs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    .line 48
    .local v1, "n":I
    add-int/lit8 v2, v1, -0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    .line 49
    const-class v2, Ljavassist/util/proxy/ProxyObject;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "setterInf":Ljava/lang/String;
    const-class v3, Ljavassist/util/proxy/Proxy;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "setterInf2":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 52
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    iget-object v6, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    aput-object v5, v6, v4

    .line 51
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 67
    :try_start_0
    new-instance v0, Ljavassist/util/proxy/SerializedProxy$1;

    invoke-direct {v0, p0, p1}, Ljavassist/util/proxy/SerializedProxy$1;-><init>(Ljavassist/util/proxy/SerializedProxy;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "pae":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot load the class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    array-length v0, v0

    .line 83
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Class;

    .line 84
    .local v1, "infs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 85
    iget-object v3, p0, Ljavassist/util/proxy/SerializedProxy;->interfaces:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Ljavassist/util/proxy/SerializedProxy;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljavassist/util/proxy/ProxyFactory;

    invoke-direct {v2}, Ljavassist/util/proxy/ProxyFactory;-><init>()V

    .line 88
    .local v2, "f":Ljavassist/util/proxy/ProxyFactory;
    iget-object v3, p0, Ljavassist/util/proxy/SerializedProxy;->superClass:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljavassist/util/proxy/SerializedProxy;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavassist/util/proxy/ProxyFactory;->setSuperclass(Ljava/lang/Class;)V

    .line 89
    invoke-virtual {v2, v1}, Ljavassist/util/proxy/ProxyFactory;->setInterfaces([Ljava/lang/Class;)V

    .line 90
    iget-object v3, p0, Ljavassist/util/proxy/SerializedProxy;->filterSignature:[B

    invoke-virtual {v2, v3}, Ljavassist/util/proxy/ProxyFactory;->createClass([B)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavassist/util/proxy/Proxy;

    .line 91
    .local v3, "proxy":Ljavassist/util/proxy/Proxy;
    iget-object v4, p0, Ljavassist/util/proxy/SerializedProxy;->handler:Ljavassist/util/proxy/MethodHandler;

    invoke-interface {v3, v4}, Ljavassist/util/proxy/Proxy;->setHandler(Ljavassist/util/proxy/MethodHandler;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-object v3

    .line 106
    .end local v0    # "n":I
    .end local v1    # "infs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "f":Ljavassist/util/proxy/ProxyFactory;
    .end local v3    # "proxy":Ljavassist/util/proxy/Proxy;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e3":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "e3":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e2":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/io/InvalidObjectException;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v0    # "e2":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/io/InvalidClassException;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
